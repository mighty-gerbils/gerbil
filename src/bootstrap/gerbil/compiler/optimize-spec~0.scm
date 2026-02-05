(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1770313939)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp201730 (list gxc#::identity::t))
            (__tmp201729 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp201730
         '()
         __tmp201729
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args200527%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args200527%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp201731
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
        (__make-atomic-promise __tmp201731)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx200519%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self200522%_
                (let ((__obj201722
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj201722))
               (__tmp201732
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200522%_ _%stx200519%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201732
           gxc#current-compile-method
           _%self200522%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp201734 (list gxc#::false::t))
            (__tmp201733 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp201734
         '()
         __tmp201733
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args200516%_
        (apply make-instance gxc#::extract-receiver::t _%$args200516%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp201735
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
        (__make-atomic-promise __tmp201735)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx200508%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self200511%_
                (let ((__obj201724
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj201724))
               (__tmp201736
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200511%_ _%stx200508%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201736
           gxc#current-compile-method
           _%self200511%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp201738 (list gxc#::void::t))
            (__tmp201737 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp201738
         '(receiver methods slots)
         __tmp201737
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args200505%_
        (apply make-instance gxc#::collect-object-refs::t _%$args200505%_)))
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
      (let ((__tmp201739
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
        (__make-atomic-promise __tmp201739)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords200474%_
               _%receiver200469200475%_
               _%methods200470200476%_
               _%slots200471200477%_
               _%stx200478%_)
        (let* ((_%receiver200481%_
                (if (eq? _%receiver200469200475%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver200469200475%_))
               (_%methods200483%_
                (if (eq? _%methods200470200476%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods200470200476%_))
               (_%slots200485%_
                (if (eq? _%slots200471200477%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots200471200477%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self200487%_
                  (let ((__obj201726
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
                       __obj201726
                       _%receiver200481%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201726
                       _%methods200483%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201726
                       _%slots200485%_
                       '3
                       '#f
                       '#f))
                    __obj201726))
                 (__tmp201740
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200487%_ _%stx200478%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp201740
             gxc#current-compile-method
             _%self200487%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords200494%_ . _%args200495%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords200494%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200494%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200494%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200494%_
                  'slots:
                  absent-value))
               _%args200495%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args200472200501%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args200472200501%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp201742 (list gxc#::basic-xform-expression::t))
            (__tmp201741 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp201742
         '(receiver klass methods slots)
         __tmp201741
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args200465%_
        (apply make-instance gxc#::subst-object-refs::t _%$args200465%_)))
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
      (let ((__tmp201743
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
        (__make-atomic-promise __tmp201743)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords200431%_
               _%receiver200425200432%_
               _%klass200426200433%_
               _%methods200427200434%_
               _%slots200428200435%_
               _%stx200436%_)
        (let* ((_%receiver200439%_
                (if (eq? _%receiver200425200432%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver200425200432%_))
               (_%klass200441%_
                (if (eq? _%klass200426200433%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass200426200433%_))
               (_%methods200443%_
                (if (eq? _%methods200427200434%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods200427200434%_))
               (_%slots200445%_
                (if (eq? _%slots200428200435%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots200428200435%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self200447%_
                  (let ((__obj201728
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
                       __obj201728
                       _%receiver200439%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201728
                       _%klass200441%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201728
                       _%methods200443%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201728
                       _%slots200445%_
                       '4
                       '#f
                       '#f))
                    __obj201728))
                 (__tmp201744
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200447%_ _%stx200436%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp201744
             gxc#current-compile-method
             _%self200447%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords200454%_ . _%args200455%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords200454%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200454%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200454%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200454%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200454%_
                  'slots:
                  absent-value))
               _%args200455%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args200429200461%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args200429200461%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self197556%_ _%stx197557%_)
        (letrec ((_%generate-method-bind197559%_
                  (lambda (_%$klass200417%_
                           _%$method-table200418%_
                           _%id200419%_
                           _%$id200420%_)
                    (let ((_%$tmp200422%_
                           (let ((__tmp201745
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp201745))))
                      (cons (cons _%$id200420%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp200422%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table200418%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id200419%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp200422%_ '()))
                    (cons (cons '%#ref (cons _%$tmp200422%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id200419%_
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
                 (_%generate-slot-bind197560%_
                  (lambda (_%$klass200411%_ _%id200412%_ _%$id200413%_)
                    (let ((_%$tmp200415%_
                           (let ((__tmp201746
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp201746))))
                      (cons (cons _%$id200413%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp200415%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass200411%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id200412%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp200415%_ '()))
                        (cons (cons '%#ref (cons _%$tmp200415%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id200412%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl197561%_
                  (lambda (_%$klass200405%_
                           _%$method-table200406%_
                           _%methods-bind200407%_
                           _%slots-bind200408%_
                           _%specializer-impl200409%_)
                    (let ((__tmp201747
                           (cons '%#lambda
                                 (cons (cons _%$klass200405%_
                                             (cons _%$method-table200406%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind200408%_
                                                            _%methods-bind200407%_))
                                                         (cons _%specializer-impl200409%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp201747 _%stx197557%_))))
                 (_%generate-specializer-def197562%_
                  (lambda (_%id200401%_
                           _%specializer-id200402%_
                           _%specializer-impl200403%_)
                    (let ((__tmp201748
                           (cons '%#begin
                                 (cons _%stx197557%_
                                       (cons (let ((__tmp201749
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id200402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl200403%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp201749
                                                _%stx197557%_))
                                             (cons (let ((__tmp201750
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id200401%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id200402%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp201750
                                                      _%stx197557%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp201748 _%stx197557%_)))))
          (let* ((_%__stx200616200617%_ _%stx197557%_)
                 (_%g197565197585%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx200616200617%_)))))
            (let ((_%__kont200618200619%_
                   (lambda (_%g197567197629%_ _%g197568197630%_)
                     (let ((_%method-calls197649%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs197650%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty197651%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?197653%_
                                 (lambda ()
                                   (if (let ((__tmp201751
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls197649%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp201751))
                                       (let ((__tmp201752
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs197650%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp201752))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g197567197629%_))
                             (let* ((_%__stx200530200531%_ _%g197567197629%_)
                                    (_%g198037198055%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx200530200531%_)))))
                               (let ((_%__kont200532200533%_
                                      (lambda (_%g198039198091%_
                                               _%g198040198092%_
                                               _%g198041198093%_)
                                        (let ((_%receiver198113%_
                                               (let ((_%$e198110%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g198039198091%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e198110%_
                                                     _%$e198110%_
                                                     _%g198041198093%_))))
                                          (for-each
                                           (lambda (_%g198114198116%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver198113%_
                                              _%method-calls197649%_
                                              _%slot-refs197650%_
                                              _%g198114198116%_))
                                           _%g198039198091%_)
                                          (if (_%no-specializer?197653%_)
                                              _%stx197557%_
                                              (let* ((_%specializer-id198125%_
                                                      (let* ((_%id198119%_
                                                              (let ((__tmp201753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197568197630%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp201753 '"::specialize")))
                     (_%specializer-id198122%_
                      (let ((__tmp201754
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx197557%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id198119%_ __tmp201754))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id198122%_))
                _%specializer-id198122%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass198127%_
                                                      (let ((__tmp201755
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp201755)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table198129%_
                                                      (let ((__tmp201756
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp201756)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods198131%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls197649%_)))
                                                     (_%$methods198135%_
                                                      (let ((__tmp201757
                                                             (lambda (_%id198133%_)
                                                               (let ((__tmp201758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198133%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201758)))))
                (declare (not safe))
                (##map __tmp201757 _%methods198131%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198144%_
                                                      (let ((__tmp201759
                                                             (lambda (_%g198136198139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198137198141%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls197649%_
                          _%g198136198139%_
                          _%g198137198141%_)))))
                (declare (not safe))
                (##for-each __tmp201759 _%methods198131%_ _%$methods198135%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind198154%_
                                                      (let ((__tmp201760
                                                             (lambda (_%g198146198149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198147198151%_)
                       (_%generate-method-bind197559%_
                        _%$klass198127%_
                        _%$method-table198129%_
                        _%g198146198149%_
                        _%g198147198151%_))))
                (declare (not safe))
                (##map __tmp201760 _%methods198131%_ _%$methods198135%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots198156%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs197650%_)))
                                                     (_%$slots198160%_
                                                      (let ((__tmp201761
                                                             (lambda (_%id198158%_)
                                                               (let ((__tmp201762
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198158%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201762)))))
                (declare (not safe))
                (##map __tmp201761 _%slots198156%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198169%_
                                                      (let ((__tmp201763
                                                             (lambda (_%g198161198164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198162198166%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs197650%_
                          _%g198161198164%_
                          _%g198162198166%_)))))
                (declare (not safe))
                (##for-each __tmp201763 _%slots198156%_ _%$slots198160%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind198178%_
                                                      (let ((__tmp201764
                                                             (lambda (_%g198170198173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198171198175%_)
                       (_%generate-slot-bind197560%_
                        _%$klass198127%_
                        _%g198170198173%_
                        _%g198171198175%_))))
                (declare (not safe))
                (##map __tmp201764 _%slots198156%_ _%$slots198160%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body198184%_
                                                      (map (lambda (_%g198179198181%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver198113%_
                                                              _%$klass198127%_
                                                              _%method-calls197649%_
                                                              _%slot-refs197650%_
                                                              _%g198179198181%_))
                                                           _%g198039198091%_))
                                                     (_%specializer-impl198186%_
                                                      (let ((__tmp201765
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g198041198093%_ _%g198040198092%_)
                                 _%specializer-body198184%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp201765 _%stx197557%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl198188%_
                                                      (_%generate-specializer-impl197561%_
                                                       _%$klass198127%_
                                                       _%$method-table198129%_
                                                       _%methods-bind198154%_
                                                       _%slots-bind198178%_
                                                       _%specializer-impl198186%_)))
                                                (let ((__tmp201767
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197568197630%_)))
                                                      (__tmp201766
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id198125%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp201767
                                                   '" => "
                                                   __tmp201766))
                                                (_%generate-specializer-def197562%_
                                                 _%g197568197630%_
                                                 _%specializer-id198125%_
                                                 _%specializer-impl198188%_))))))
                                     (_%__kont200534200535%_
                                      (lambda () _%stx197557%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx200530200531%_))
                                     (let ((_%e198042198067%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx200530200531%_))))
                                       (let ((_%tl198044198072%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198042198067%_)))
                                             (_%hd198043198070%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198042198067%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl198044198072%_))
                                             (let ((_%e198045198075%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl198044198072%_))))
                                               (let ((_%tl198047198080%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e198045198075%_)))
                                                     (_%hd198046198078%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e198045198075%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd198046198078%_))
                                                     (let ((_%e198048198083%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd198046198078%_))))
                                                       (let ((_%tl198050198088%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198048198083%_)))
                     (_%hd198049198086%_
                      (let () (declare (not safe)) (##car _%e198048198083%_))))
                 (_%__kont200532200533%_
                  _%tl198047198080%_
                  _%tl198050198088%_
                  _%hd198049198086%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont200534200535%_))))
                                             (_%__kont200534200535%_))))
                                     (_%__kont200534200535%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g197567197629%_))
                                 (let* ((_%g198195198214%_
                                         (lambda (_%g198196198211%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g198196198211%_))))
                                        (_%g198194198510%_
                                         (lambda (_%g198196198217%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g198196198217%_))
                                               (let ((_%e198198198219%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g198196198217%_))))
                                                 (let ((_%hd198199198222%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e198198198219%_)))
                                                       (_%tl198200198224%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e198198198219%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl198200198224%_))
                                                       (let ((_g201768_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl198200198224%_ '0))))
                 (begin
                   (let ((_g201769_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g201768_)
                                (##values-length _g201768_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g201769_ 2)))
                         (error "Context expects 2 values" _g201769_)))
                   (let ((_%target198201198227%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g201768_ 0)))
                         (_%tl198203198229%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g201768_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl198203198229%_))
                         (letrec ((_%loop198204198232%_
                                   (lambda (_%hd198202198235%_
                                            _%clause198208198237%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd198202198235%_))
                                         (let ((_%e198205198239%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd198202198235%_))))
                                           (let ((_%lp-hd198206198242%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198205198239%_)))
                                                 (_%lp-tl198207198244%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198205198239%_))))
                                             (_%loop198204198232%_
                                              _%lp-tl198207198244%_
                                              (cons _%lp-hd198206198242%_
                                                    _%clause198208198237%_))))
                                         (let ((_%clause198209198247%_
                                                (reverse _%clause198208198237%_)))
                                           ((lambda (_%g198197198249%_)
                                              (for-each
                                               (lambda (_%clause198263%_)
                                                 (let* ((_%__stx200556200557%_
                                                         _%clause198263%_)
                                                        (_%g198266198281%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx200556200557%_)))))
                                                   (let ((_%__kont200558200559%_
                                                          (lambda (_%g198268198309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g198269198310%_
                           _%g198270198311%_)
                    (let ((_%receiver198330%_
                           (let ((_%$e198327%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g198268198309%_))))
                             (if _%$e198327%_
                                 _%$e198327%_
                                 _%g198270198311%_))))
                      (for-each
                       (lambda (_%g198331198333%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver198330%_
                          _%method-calls197649%_
                          _%slot-refs197650%_
                          _%g198331198333%_))
                       _%g198268198309%_))))
                 (_%__kont200560200561%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx200556200557%_))
                                                         (let ((_%e198271198293%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx200556200557%_))))
                   (let ((_%tl198273198298%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e198271198293%_)))
                         (_%hd198272198296%_
                          (let ()
                            (declare (not safe))
                            (##car _%e198271198293%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd198272198296%_))
                         (let ((_%e198274198301%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd198272198296%_))))
                           (let ((_%tl198276198306%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e198274198301%_)))
                                 (_%hd198275198304%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e198274198301%_))))
                             (_%__kont200558200559%_
                              _%tl198273198298%_
                              _%tl198276198306%_
                              _%hd198275198304%_)))
                         (_%__kont200560200561%_))))
                 (_%__kont200560200561%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp201770
                                                      (lambda (_%g198338198341%_
                                                               _%g198339198343%_)
                                                        (cons _%g198338198341%_
                                                              _%g198339198343%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp201770
                                                  '()
                                                  _%g198197198249%_)))
                                              (if (_%no-specializer?197653%_)
                                                  _%stx197557%_
                                                  (let* ((_%specializer-id198352%_
                                                          (let* ((_%id198346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201771
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g197568197630%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp201771 '"::specialize")))
                         (_%specializer-id198349%_
                          (let ((__tmp201772
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx197557%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id198346%_
                             __tmp201772))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id198349%_))
                    _%specializer-id198349%_))
                 (_%$klass198354%_
                  (let ((__tmp201773
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201773)))
                 (_%$method-table198356%_
                  (let ((__tmp201774
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201774)))
                 (_%methods198358%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls197649%_)))
                 (_%$methods198362%_
                  (let ((__tmp201775
                         (lambda (_%id198360%_)
                           (let ((__tmp201776 (gensym _%id198360%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201776)))))
                    (declare (not safe))
                    (##map __tmp201775 _%methods198358%_)))
                 (_%_198371%_
                  (let ((__tmp201777
                         (lambda (_%g198363198366%_ _%g198364198368%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls197649%_
                              _%g198363198366%_
                              _%g198364198368%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp201777
                     _%methods198358%_
                     _%$methods198362%_)))
                 (_%methods-bind198381%_
                  (let ((__tmp201778
                         (lambda (_%g198373198376%_ _%g198374198378%_)
                           (_%generate-method-bind197559%_
                            _%$klass198354%_
                            _%$method-table198356%_
                            _%g198373198376%_
                            _%g198374198378%_))))
                    (declare (not safe))
                    (##map __tmp201778 _%methods198358%_ _%$methods198362%_)))
                 (_%slots198383%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs197650%_)))
                 (_%$slots198387%_
                  (let ((__tmp201779
                         (lambda (_%id198385%_)
                           (let ((__tmp201780 (gensym _%id198385%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201780)))))
                    (declare (not safe))
                    (##map __tmp201779 _%slots198383%_)))
                 (_%_198396%_
                  (let ((__tmp201781
                         (lambda (_%g198388198391%_ _%g198389198393%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs197650%_
                              _%g198388198391%_
                              _%g198389198393%_)))))
                    (declare (not safe))
                    (##for-each __tmp201781 _%slots198383%_ _%$slots198387%_)))
                 (_%slots-bind198405%_
                  (let ((__tmp201782
                         (lambda (_%g198397198400%_ _%g198398198402%_)
                           (_%generate-slot-bind197560%_
                            _%$klass198354%_
                            _%g198397198400%_
                            _%g198398198402%_))))
                    (declare (not safe))
                    (##map __tmp201782 _%slots198383%_ _%$slots198387%_)))
                 (_%specializer-clauses198503%_
                  (map (lambda (_%clause198407%_)
                         (let* ((_%__stx200576200577%_ _%clause198407%_)
                                (_%g198410198425%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx200576200577%_)))))
                           (let ((_%__kont200578200579%_
                                  (lambda (_%g198412198453%_
                                           _%g198413198454%_
                                           _%g198414198455%_)
                                    (let* ((_%receiver198484%_
                                            (let ((_%$e198481%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g198412198453%_))))
                                              (if _%$e198481%_
                                                  _%$e198481%_
                                                  _%g198414198455%_)))
                                           (_%body198490%_
                                            (map (lambda (_%g198485198487%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver198484%_
                                                    _%$klass198354%_
                                                    _%method-calls197649%_
                                                    _%slot-refs197650%_
                                                    _%g198485198487%_))
                                                 _%g198412198453%_)))
                                      (cons (cons _%g198414198455%_
                                                  _%g198413198454%_)
                                            _%body198490%_))))
                                 (_%__kont200580200581%_
                                  (lambda () _%clause198407%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx200576200577%_))
                                 (let ((_%e198415198437%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx200576200577%_))))
                                   (let ((_%tl198417198442%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e198415198437%_)))
                                         (_%hd198416198440%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e198415198437%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd198416198440%_))
                                         (let ((_%e198418198445%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd198416198440%_))))
                                           (let ((_%tl198420198450%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198418198445%_)))
                                                 (_%hd198419198448%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198418198445%_))))
                                             (_%__kont200578200579%_
                                              _%tl198417198442%_
                                              _%tl198420198450%_
                                              _%hd198419198448%_)))
                                         (_%__kont200580200581%_))))
                                 (_%__kont200580200581%_)))))
                       (let ((__tmp201783
                              (lambda (_%g198495198498%_ _%g198496198500%_)
                                (cons _%g198495198498%_ _%g198496198500%_))))
                         (declare (not safe))
                         (__foldr1 __tmp201783 '() _%g198197198249%_))))
                 (_%specializer-impl198505%_
                  (let ((__tmp201784
                         (cons '%#case-lambda _%specializer-clauses198503%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp201784 _%stx197557%_)))
                 (_%specializer-impl198507%_
                  (_%generate-specializer-impl197561%_
                   _%$klass198354%_
                   _%$method-table198356%_
                   _%methods-bind198381%_
                   _%slots-bind198405%_
                   _%specializer-impl198505%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp201786
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g197568197630%_)))
                                                          (__tmp201785
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id198352%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp201786
                                                       '" => "
                                                       __tmp201785))
                                                    (_%generate-specializer-def197562%_
                                                     _%g197568197630%_
                                                     _%specializer-id198352%_
                                                     _%specializer-impl198507%_))))
                                            _%clause198209198247%_))))))
                           (_%loop198204198232%_ _%target198201198227%_ '()))
                         (_%g198195198214%_ _%g198196198217%_)))))
               (_%g198195198214%_ _%g198196198217%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g198195198214%_
                                                _%g198196198217%_)))))
                                   (_%g198194198510%_ _%g197567197629%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g197567197629%_))
                                     (let* ((_%g198514198544%_
                                             (lambda (_%g198515198541%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g198515198541%_))))
                                            (_%g198513199171%_
                                             (lambda (_%g198515198547%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g198515198547%_))
                                                   (let ((_%e198519198549%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g198515198547%_))))
                                                     (let ((_%hd198520198552%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e198519198549%_)))
                                                           (_%tl198521198554%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e198519198549%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl198521198554%_))
                                                           (let ((_%e198522198557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl198521198554%_))))
                     (let ((_%hd198523198560%_
                            (let ()
                              (declare (not safe))
                              (##car _%e198522198557%_)))
                           (_%tl198524198562%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e198522198557%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd198523198560%_))
                           (let ((_%e198525198565%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd198523198560%_))))
                             (let ((_%hd198526198568%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e198525198565%_)))
                                   (_%tl198527198570%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e198525198565%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd198526198568%_))
                                   (let ((_%e198528198573%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd198526198568%_))))
                                     (let ((_%hd198529198576%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e198528198573%_)))
                                           (_%tl198530198578%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e198528198573%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd198529198576%_))
                                           (let ((_%e198531198581%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd198529198576%_))))
                                             (let ((_%hd198532198584%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e198531198581%_)))
                                                   (_%tl198533198586%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e198531198581%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl198533198586%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl198530198578%_))
                                                       (let ((_%e198534198589%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl198530198578%_))))
                 (let ((_%hd198535198592%_
                        (let ()
                          (declare (not safe))
                          (##car _%e198534198589%_)))
                       (_%tl198536198594%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e198534198589%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl198536198594%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl198527198570%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl198524198562%_))
                               (let ((_%e198537198597%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl198524198562%_))))
                                 (let ((_%hd198538198600%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e198537198597%_)))
                                       (_%tl198539198602%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e198537198597%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl198539198602%_))
                                       ((lambda (_%g198516198605%_
                                                 _%g198517198606%_
                                                 _%g198518198607%_)
                                          (let* ((_%g198631198649%_
                                                  (lambda (_%g198632198646%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g198632198646%_))))
                                                 (_%g198630198705%_
                                                  (lambda (_%g198632198652%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g198632198652%_))
                                                        (let ((_%e198636198654%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g198632198652%_))))
                  (let ((_%hd198637198657%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198636198654%_)))
                        (_%tl198638198659%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198636198654%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198638198659%_))
                        (let ((_%e198639198662%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl198638198659%_))))
                          (let ((_%hd198640198665%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198639198662%_)))
                                (_%tl198641198667%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198639198662%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd198640198665%_))
                                (let ((_%e198642198670%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd198640198665%_))))
                                  (let ((_%hd198643198673%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198642198670%_)))
                                        (_%tl198644198675%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198642198670%_))))
                                    ((lambda (_%g198633198678%_
                                              _%g198634198679%_
                                              _%g198635198680%_)
                                       (let ((_%receiver198699%_
                                              (let ((_%$e198696%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g198633198678%_))))
                                                (if _%$e198696%_
                                                    _%$e198696%_
                                                    _%g198635198680%_))))
                                         (for-each
                                          (lambda (_%g198700198702%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver198699%_
                                             _%method-calls197649%_
                                             _%slot-refs197650%_
                                             _%g198700198702%_))
                                          _%g198633198678%_)))
                                     _%tl198641198667%_
                                     _%tl198644198675%_
                                     _%hd198643198673%_)))
                                (_%g198631198649%_ _%g198632198652%_))))
                        (_%g198631198649%_ _%g198632198652%_))))
                (_%g198631198649%_ _%g198632198652%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g198630198705%_
                                             _%g198517198606%_))
                                          (let* ((_%g198708198727%_
                                                  (lambda (_%g198709198724%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g198709198724%_))))
                                                 (_%g198707198849%_
                                                  (lambda (_%g198709198730%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g198709198730%_))
                                                        (let ((_%e198711198732%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g198709198730%_))))
                  (let ((_%hd198712198735%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198711198732%_)))
                        (_%tl198713198737%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198711198732%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl198713198737%_))
                        (let ((_g201787_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl198713198737%_
                                  '0))))
                          (begin
                            (let ((_g201788_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201787_)
                                         (##values-length _g201787_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201788_ 2)))
                                  (error "Context expects 2 values"
                                         _g201788_)))
                            (let ((_%target198714198740%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201787_ 0)))
                                  (_%tl198716198742%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201787_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198716198742%_))
                                  (letrec ((_%loop198717198745%_
                                            (lambda (_%hd198715198748%_
                                                     _%clause198721198750%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198715198748%_))
                                                  (let ((_%e198718198752%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd198715198748%_))))
                                                    (let ((_%lp-hd198719198755%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198718198752%_)))
                                                          (_%lp-tl198720198757%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198718198752%_))))
                                                      (_%loop198717198745%_
                                                       _%lp-tl198720198757%_
                                                       (cons _%lp-hd198719198755%_
                                                             _%clause198721198750%_))))
                                                  (let ((_%clause198722198760%_
                                                         (reverse _%clause198721198750%_)))
                                                    ((lambda (_%g198710198762%_)
                                                       (for-each
                                                        (lambda (_%clause198775%_)
                                                          (let* ((_%g198777198792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g198778198789%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g198778198789%_))))
                         (_%g198776198839%_
                          (lambda (_%g198778198795%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g198778198795%_))
                                (let ((_%e198782198797%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g198778198795%_))))
                                  (let ((_%hd198783198800%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198782198797%_)))
                                        (_%tl198784198802%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198782198797%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd198783198800%_))
                                        (let ((_%e198785198805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd198783198800%_))))
                                          (let ((_%hd198786198808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198785198805%_)))
                                                (_%tl198787198810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198785198805%_))))
                                            ((lambda (_%g198779198813%_
                                                      _%g198780198814%_
                                                      _%g198781198815%_)
                                               (let ((_%receiver198833%_
                                                      (let ((_%$e198830%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g198779198813%_))))
                (if _%$e198830%_ _%$e198830%_ _%g198781198815%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g198834198836%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver198833%_
                                                     _%method-calls197649%_
                                                     _%slot-refs197650%_
                                                     _%g198834198836%_))
                                                  _%g198779198813%_)))
                                             _%tl198784198802%_
                                             _%tl198787198810%_
                                             _%hd198786198808%_)))
                                        (_%g198777198792%_
                                         _%g198778198795%_))))
                                (_%g198777198792%_ _%g198778198795%_)))))
                    (_%g198776198839%_ _%clause198775%_)))
                (let ((__tmp201789
                       (lambda (_%g198841198844%_ _%g198842198846%_)
                         (cons _%g198841198844%_ _%g198842198846%_))))
                  (declare (not safe))
                  (__foldr1 __tmp201789 '() _%g198710198762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause198722198760%_))))))
                                    (_%loop198717198745%_
                                     _%target198714198740%_
                                     '()))
                                  (_%g198708198727%_ _%g198709198730%_)))))
                        (_%g198708198727%_ _%g198709198730%_))))
                (_%g198708198727%_ _%g198709198730%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g198707198849%_
                                             _%g198516198605%_))
                                          (if (_%no-specializer?197653%_)
                                              _%stx197557%_
                                              (let* ((_%specializer-id198858%_
                                                      (let* ((_%id198852%_
                                                              (let ((__tmp201790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197568197630%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp201790 '"::specialize")))
                     (_%specializer-id198855%_
                      (let ((__tmp201791
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx197557%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id198852%_ __tmp201791))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id198855%_))
                _%specializer-id198855%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass198860%_
                                                      (let ((__tmp201792
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp201792)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table198862%_
                                                      (let ((__tmp201793
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp201793)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods198864%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls197649%_)))
                                                     (_%$methods198868%_
                                                      (let ((__tmp201794
                                                             (lambda (_%id198866%_)
                                                               (let ((__tmp201795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198866%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201795)))))
                (declare (not safe))
                (##map __tmp201794 _%methods198864%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198877%_
                                                      (let ((__tmp201796
                                                             (lambda (_%g198869198872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198870198874%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls197649%_
                          _%g198869198872%_
                          _%g198870198874%_)))))
                (declare (not safe))
                (##for-each __tmp201796 _%methods198864%_ _%$methods198868%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind198887%_
                                                      (let ((__tmp201797
                                                             (lambda (_%g198879198882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198880198884%_)
                       (_%generate-method-bind197559%_
                        _%$klass198860%_
                        _%$method-table198862%_
                        _%g198879198882%_
                        _%g198880198884%_))))
                (declare (not safe))
                (##map __tmp201797 _%methods198864%_ _%$methods198868%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots198889%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs197650%_)))
                                                     (_%$slots198893%_
                                                      (let ((__tmp201798
                                                             (lambda (_%id198891%_)
                                                               (let ((__tmp201799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198891%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201799)))))
                (declare (not safe))
                (##map __tmp201798 _%slots198889%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198902%_
                                                      (let ((__tmp201800
                                                             (lambda (_%g198894198897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198895198899%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs197650%_
                          _%g198894198897%_
                          _%g198895198899%_)))))
                (declare (not safe))
                (##for-each __tmp201800 _%slots198889%_ _%$slots198893%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind198911%_
                                                      (let ((__tmp201801
                                                             (lambda (_%g198903198906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198904198908%_)
                       (_%generate-slot-bind197560%_
                        _%$klass198860%_
                        _%g198903198906%_
                        _%g198904198908%_))))
                (declare (not safe))
                (##map __tmp201801 _%slots198889%_ _%$slots198893%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr199003%_
                                                      (let* ((_%g198913198931%_
                                                              (lambda (_%g198914198928%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g198914198928%_))))
                     (_%g198912199000%_
                      (lambda (_%g198914198934%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g198914198934%_))
                            (let ((_%e198918198936%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g198914198934%_))))
                              (let ((_%hd198919198939%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198918198936%_)))
                                    (_%tl198920198941%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198918198936%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198920198941%_))
                                    (let ((_%e198921198944%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl198920198941%_))))
                                      (let ((_%hd198922198947%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198921198944%_)))
                                            (_%tl198923198949%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198921198944%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198922198947%_))
                                            (let ((_%e198924198952%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd198922198947%_))))
                                              (let ((_%hd198925198955%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198924198952%_)))
                                                    (_%tl198926198957%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198924198952%_))))
                                                ((lambda (_%g198915198960%_
                                                          _%g198916198961%_
                                                          _%g198917198962%_)
                                                   (let* ((_%receiver198991%_
                                                           (let ((_%$e198988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g198915198960%_))))
                     (if _%$e198988%_ _%$e198988%_ _%g198917198962%_)))
                  (_%body198997%_
                   (map (lambda (_%g198992198994%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver198991%_
                           _%$klass198860%_
                           _%method-calls197649%_
                           _%slot-refs197650%_
                           _%g198992198994%_))
                        _%g198915198960%_))
                  (__tmp201802
                   (cons '%#lambda
                         (cons (cons _%g198917198962%_ _%g198916198961%_)
                               _%body198997%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp201802
                                                      _%g198517198606%_)))
                                                 _%tl198923198949%_
                                                 _%tl198926198957%_
                                                 _%hd198925198955%_)))
                                            (_%g198913198931%_
                                             _%g198914198934%_))))
                                    (_%g198913198931%_ _%g198914198934%_))))
                            (_%g198913198931%_ _%g198914198934%_)))))
                (_%g198912199000%_ _%g198517198606%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr199164%_
                                                      (let* ((_%g199005199024%_
                                                              (lambda (_%g199006199021%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g199006199021%_))))
                     (_%g199004199161%_
                      (lambda (_%g199006199027%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g199006199027%_))
                            (let ((_%e199008199029%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g199006199027%_))))
                              (let ((_%hd199009199032%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199008199029%_)))
                                    (_%tl199010199034%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199008199029%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl199010199034%_))
                                    (let ((_g201803_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl199010199034%_
                                              '0))))
                                      (begin
                                        (let ((_g201804_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g201803_)
                                                     (##values-length
                                                      _g201803_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g201804_ 2)))
                                              (error "Context expects 2 values"
                                                     _g201804_)))
                                        (let ((_%target199011199037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g201803_ 0)))
                                              (_%tl199013199039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g201803_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199013199039%_))
                                              (letrec ((_%loop199014199042%_
                                                        (lambda (_%hd199012199045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause199018199047%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd199012199045%_))
                      (let ((_%e199015199049%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd199012199045%_))))
                        (let ((_%lp-hd199016199052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199015199049%_)))
                              (_%lp-tl199017199054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199015199049%_))))
                          (_%loop199014199042%_
                           _%lp-tl199017199054%_
                           (cons _%lp-hd199016199052%_
                                 _%clause199018199047%_))))
                      (let ((_%clause199019199057%_
                             (reverse _%clause199018199047%_)))
                        ((lambda (_%g199007199059%_)
                           (let* ((_%clauses199159%_
                                   (map (lambda (_%clause199073%_)
                                          (let* ((_%__stx200596200597%_
                                                  _%clause199073%_)
                                                 (_%g199076199091%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx200596200597%_)))))
                                            (let ((_%__kont200598200599%_
                                                   (lambda (_%g199078199119%_
                                                            _%g199079199120%_
                                                            _%g199080199121%_)
                                                     (let* ((_%receiver199140%_
                                                             (let ((_%$e199137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g199078199119%_))))
                       (if _%$e199137%_ _%$e199137%_ _%g199080199121%_)))
                    (_%body199146%_
                     (map (lambda (_%g199141199143%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver199140%_
                             _%$klass198860%_
                             _%method-calls197649%_
                             _%slot-refs197650%_
                             _%g199141199143%_))
                          _%g199078199119%_)))
               (cons (cons _%g199080199121%_ _%g199079199120%_)
                     _%body199146%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200600200601%_
                                                   (lambda ()
                                                     _%clause199073%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx200596200597%_))
                                                  (let ((_%e199081199103%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx200596200597%_))))
                                                    (let ((_%tl199083199108%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199081199103%_)))
                                                          (_%hd199082199106%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199081199103%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199082199106%_))
                                                          (let ((_%e199084199111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd199082199106%_))))
                    (let ((_%tl199086199116%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199084199111%_)))
                          (_%hd199085199114%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199084199111%_))))
                      (_%__kont200598200599%_
                       _%tl199083199108%_
                       _%tl199086199116%_
                       _%hd199085199114%_)))
                  (_%__kont200600200601%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200600200601%_)))))
                                        (let ((__tmp201805
                                               (lambda (_%g199151199154%_
                                                        _%g199152199156%_)
                                                 (cons _%g199151199154%_
                                                       _%g199152199156%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp201805
                                           '()
                                           _%g199007199059%_))))
                                  (__tmp201806
                                   (cons '%#case-lambda _%clauses199159%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201806
                              _%g198516198605%_)))
                         _%clause199019199057%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop199014199042%_
                                                 _%target199011199037%_
                                                 '()))
                                              (_%g199005199024%_
                                               _%g199006199027%_)))))
                                    (_%g199005199024%_ _%g199006199027%_))))
                            (_%g199005199024%_ _%g199006199027%_)))))
                (_%g199004199161%_ _%g198516198605%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl199166%_
                                                      (let ((__tmp201807
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g198518198607%_ '())
                                             (cons _%specializer-lambda-expr199003%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr199164%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp201807 _%stx197557%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl199168%_
                                                      (_%generate-specializer-impl197561%_
                                                       _%$klass198860%_
                                                       _%$method-table198862%_
                                                       _%methods-bind198887%_
                                                       _%slots-bind198911%_
                                                       _%specializer-impl199166%_)))
                                                (let ((__tmp201809
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197568197630%_)))
                                                      (__tmp201808
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id198858%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp201809
                                                   '" => "
                                                   __tmp201808))
                                                (_%generate-specializer-def197562%_
                                                 _%g197568197630%_
                                                 _%specializer-id198858%_
                                                 _%specializer-impl199168%_))))
                                        _%hd198538198600%_
                                        _%hd198535198592%_
                                        _%hd198532198584%_)
                                       (_%g198514198544%_ _%g198515198547%_))))
                               (_%g198514198544%_ _%g198515198547%_))
                           (_%g198514198544%_ _%g198515198547%_))
                       (_%g198514198544%_ _%g198515198547%_))))
               (_%g198514198544%_ _%g198515198547%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g198514198544%_
                                                    _%g198515198547%_))))
                                           (_%g198514198544%_
                                            _%g198515198547%_))))
                                   (_%g198514198544%_ _%g198515198547%_))))
                           (_%g198514198544%_ _%g198515198547%_))))
                   (_%g198514198544%_ _%g198515198547%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g198514198544%_
                                                    _%g198515198547%_)))))
                                       (_%g198513199171%_ _%g197567197629%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g197567197629%_))
                                         (let* ((_%g199175199228%_
                                                 (lambda (_%g199176199225%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g199176199225%_))))
                                                (_%g199174200393%_
                                                 (lambda (_%g199176199231%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g199176199231%_))
                                                       (let ((_%e199182199233%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g199176199231%_))))
                 (let ((_%hd199183199236%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199182199233%_)))
                       (_%tl199184199238%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199182199233%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd199183199236%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd199183199236%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl199184199238%_))
                               (let ((_%e199185199241%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl199184199238%_))))
                                 (let ((_%hd199186199244%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e199185199241%_)))
                                       (_%tl199187199246%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e199185199241%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd199186199244%_))
                                       (let ((_%e199188199249%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd199186199244%_))))
                                         (let ((_%hd199189199252%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199188199249%_)))
                                               (_%tl199190199254%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199188199249%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd199189199252%_))
                                               (let ((_%e199191199257%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd199189199252%_))))
                                                 (let ((_%hd199192199260%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199191199257%_)))
                                                       (_%tl199193199262%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199191199257%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd199192199260%_))
                                                       (let ((_%e199194199265%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd199192199260%_))))
                 (let ((_%hd199195199268%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199194199265%_)))
                       (_%tl199196199270%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199194199265%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199196199270%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl199193199262%_))
                           (let ((_%e199197199273%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl199193199262%_))))
                             (let ((_%hd199198199276%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199197199273%_)))
                                   (_%tl199199199278%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199197199273%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199198199276%_))
                                   (let ((_%e199200199281%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd199198199276%_))))
                                     (let ((_%hd199201199284%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199200199281%_)))
                                           (_%tl199202199286%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199200199281%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd199201199284%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd199201199284%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl199202199286%_))
                                                   (let ((_%e199203199289%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl199202199286%_))))
                                                     (let ((_%hd199204199292%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199203199289%_)))
                                                           (_%tl199205199294%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199203199289%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd199204199292%_))
                                                           (let ((_%e199206199297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd199204199292%_))))
                     (let ((_%hd199207199300%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199206199297%_)))
                           (_%tl199208199302%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199206199297%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd199207199300%_))
                           (let ((_%e199209199305%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd199207199300%_))))
                             (let ((_%hd199210199308%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199209199305%_)))
                                   (_%tl199211199310%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199209199305%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199210199308%_))
                                   (let ((_%e199212199313%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd199210199308%_))))
                                     (let ((_%hd199213199316%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199212199313%_)))
                                           (_%tl199214199318%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199212199313%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl199214199318%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl199211199310%_))
                                               (let ((_%e199215199321%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl199211199310%_))))
                                                 (let ((_%hd199216199324%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199215199321%_)))
                                                       (_%tl199217199326%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199215199321%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199217199326%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl199208199302%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl199205199294%_))
                       (let ((_%e199218199329%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl199205199294%_))))
                         (let ((_%hd199219199332%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199218199329%_)))
                               (_%tl199220199334%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199218199329%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl199220199334%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl199199199278%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl199190199254%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl199187199246%_))
                                           (let ((_%e199221199337%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl199187199246%_))))
                                             (let ((_%hd199222199340%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e199221199337%_)))
                                                   (_%tl199223199342%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e199221199337%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl199223199342%_))
                                                   ((lambda (_%g199177199345%_
                                                             _%g199178199346%_
                                                             _%g199179199347%_
                                                             _%g199180199348%_
                                                             _%g199181199349%_)
                                                      (let* ((_%g199389199451%_
                                                              (lambda (_%g199390199448%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g199390199448%_))))
                     (_%g199388200390%_
                      (lambda (_%g199390199454%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g199390199454%_))
                            (let ((_%e199396199456%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g199390199454%_))))
                              (let ((_%hd199397199459%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199396199456%_)))
                                    (_%tl199398199461%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199396199456%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199397199459%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd199397199459%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199398199461%_))
                                            (let ((_%e199399199464%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199398199461%_))))
                                              (let ((_%hd199400199467%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199399199464%_)))
                                                    (_%tl199401199469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199399199464%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199401199469%_))
                                                    (let ((_%e199402199472%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199401199469%_))))
                                                      (let ((_%hd199403199475%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e199402199472%_)))
                    (_%tl199404199477%_
                     (let () (declare (not safe)) (##cdr _%e199402199472%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd199403199475%_))
                    (let ((_%e199405199480%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd199403199475%_))))
                      (let ((_%hd199406199483%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199405199480%_)))
                            (_%tl199407199485%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199405199480%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd199406199483%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd199406199483%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199407199485%_))
                                    (let ((_%e199408199488%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl199407199485%_))))
                                      (let ((_%hd199409199491%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199408199488%_)))
                                            (_%tl199410199493%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199408199488%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199409199491%_))
                                            (let ((_%e199411199496%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd199409199491%_))))
                                              (let ((_%hd199412199499%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199411199496%_)))
                                                    (_%tl199413199501%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199411199496%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199412199499%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd199412199499%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199413199501%_))
                                                            (let ((_%e199414199504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199413199501%_))))
                      (let ((_%hd199415199507%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199414199504%_)))
                            (_%tl199416199509%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199414199504%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199416199509%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199410199493%_))
                                (let ((_%e199417199512%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199410199493%_))))
                                  (let ((_%hd199418199515%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199417199512%_)))
                                        (_%tl199419199517%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199417199512%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd199418199515%_))
                                        (let ((_%e199420199520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199418199515%_))))
                                          (let ((_%hd199421199523%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199420199520%_)))
                                                (_%tl199422199525%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199420199520%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd199421199523%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd199421199523%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199422199525%_))
                                                        (let ((_%e199423199528%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199422199525%_))))
                  (let ((_%hd199424199531%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199423199528%_)))
                        (_%tl199425199533%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199423199528%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199425199533%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199419199517%_))
                            (let ((_%e199426199536%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199419199517%_))))
                              (let ((_%hd199427199539%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199426199536%_)))
                                    (_%tl199428199541%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199426199536%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd199427199539%_))
                                    (let ((_%e199429199544%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199427199539%_))))
                                      (let ((_%hd199430199547%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199429199544%_)))
                                            (_%tl199431199549%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199429199544%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd199430199547%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd199430199547%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199431199549%_))
                                                    (let ((_%e199432199552%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199431199549%_))))
                                                      (let ((_%hd199433199555%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e199432199552%_)))
                    (_%tl199434199557%_
                     (let () (declare (not safe)) (##cdr _%e199432199552%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199434199557%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl199428199541%_))
                        (if (let ((__tmp201810
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl199428199541%_))))
                              (declare (not safe))
                              (##fx>= __tmp201810 '1))
                            (let ((_g201811_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl199428199541%_
                                      '1))))
                              (begin
                                (let ((_g201812_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g201811_)
                                             (##values-length _g201811_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g201812_ 2)))
                                      (error "Context expects 2 values"
                                             _g201812_)))
                                (let ((_%target199435199560%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201811_ 0)))
                                      (_%tl199437199562%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201811_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199437199562%_))
                                      (let ((_%e199444199565%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199437199562%_))))
                                        (let ((_%hd199445199568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199444199565%_)))
                                              (_%tl199446199570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199444199565%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199446199570%_))
                                              (letrec ((_%loop199438199573%_
                                                        (lambda (_%hd199436199576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref199442199578%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd199436199576%_))
                      (let ((_%e199439199580%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd199436199576%_))))
                        (let ((_%lp-hd199440199583%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199439199580%_)))
                              (_%lp-tl199441199585%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199439199580%_))))
                          (_%loop199438199573%_
                           _%lp-tl199441199585%_
                           (cons _%lp-hd199440199583%_
                                 _%kw-ref199442199578%_))))
                      (let ((_%kw-ref199443199588%_
                             (reverse _%kw-ref199442199578%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199404199477%_))
                            ((lambda (_%g199391199590%_
                                      _%g199392199591%_
                                      _%g199393199592%_
                                      _%g199394199593%_
                                      _%g199395199594%_)
                               (let* ((_%kw-count199645%_
                                       (length (let ((__tmp201813
                                                      (lambda (_%g199637199640%_
                                                               _%g199638199642%_)
                                                        (cons _%g199637199640%_
                                                              _%g199638199642%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp201813
                                                  '()
                                                  _%g199392199591%_))))
                                      (_%self-index199647%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count199645%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g199179199347%_))
                                     (let* ((_%g199651199665%_
                                             (lambda (_%g199652199662%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g199652199662%_))))
                                            (_%g199650199788%_
                                             (lambda (_%g199652199668%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g199652199668%_))
                                                   (let ((_%e199655199670%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g199652199668%_))))
                                                     (let ((_%hd199656199673%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199655199670%_)))
                                                           (_%tl199657199675%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199655199670%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199657199675%_))
                                                           (let ((_%e199658199678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199657199675%_))))
                     (let ((_%hd199659199681%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199658199678%_)))
                           (_%tl199660199683%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199658199678%_))))
                       ((lambda (_%g199653199686%_ _%g199654199687%_)
                          (let* ((_%self199704%_
                                  (list-ref
                                   _%g199654199687%_
                                   _%self-index199647%_))
                                 (_%receiver199709%_
                                  (let ((_%$e199706%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g199653199686%_))))
                                    (if _%$e199706%_
                                        _%$e199706%_
                                        _%self199704%_))))
                            (for-each
                             (lambda (_%g199711199713%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver199709%_
                                _%method-calls197649%_
                                _%slot-refs197650%_
                                _%g199711199713%_))
                             _%g199653199686%_)
                            (if (_%no-specializer?197653%_)
                                _%stx197557%_
                                (let* ((_%specializer-id199722%_
                                        (let* ((_%id199716%_
                                                (let ((__tmp201814
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197568197630%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp201814
                                                   '"::specialize")))
                                               (_%specializer-id199719%_
                                                (let ((__tmp201815
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx197557%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id199716%_
                                                   __tmp201815))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id199719%_))
                                          _%specializer-id199719%_))
                                       (_%$klass199724%_
                                        (let ((__tmp201816
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp201816)))
                                       (_%$method-table199726%_
                                        (let ((__tmp201817
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp201817)))
                                       (_%methods199728%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls197649%_)))
                                       (_%$methods199732%_
                                        (let ((__tmp201818
                                               (lambda (_%id199730%_)
                                                 (let ((__tmp201819
                                                        (gensym _%id199730%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp201819)))))
                                          (declare (not safe))
                                          (##map __tmp201818
                                                 _%methods199728%_)))
                                       (_%_199741%_
                                        (let ((__tmp201820
                                               (lambda (_%g199733199736%_
                                                        _%g199734199738%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls197649%_
                                                    _%g199733199736%_
                                                    _%g199734199738%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp201820
                                           _%methods199728%_
                                           _%$methods199732%_)))
                                       (_%methods-bind199751%_
                                        (let ((__tmp201821
                                               (lambda (_%g199743199746%_
                                                        _%g199744199748%_)
                                                 (_%generate-method-bind197559%_
                                                  _%$klass199724%_
                                                  _%$method-table199726%_
                                                  _%g199743199746%_
                                                  _%g199744199748%_))))
                                          (declare (not safe))
                                          (##map __tmp201821
                                                 _%methods199728%_
                                                 _%$methods199732%_)))
                                       (_%slots199753%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs197650%_)))
                                       (_%$slots199757%_
                                        (let ((__tmp201822
                                               (lambda (_%id199755%_)
                                                 (let ((__tmp201823
                                                        (gensym _%id199755%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp201823)))))
                                          (declare (not safe))
                                          (##map __tmp201822 _%slots199753%_)))
                                       (_%_199766%_
                                        (let ((__tmp201824
                                               (lambda (_%g199758199761%_
                                                        _%g199759199763%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs197650%_
                                                    _%g199758199761%_
                                                    _%g199759199763%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp201824
                                           _%slots199753%_
                                           _%$slots199757%_)))
                                       (_%slots-bind199775%_
                                        (let ((__tmp201825
                                               (lambda (_%g199767199770%_
                                                        _%g199768199772%_)
                                                 (_%generate-slot-bind197560%_
                                                  _%$klass199724%_
                                                  _%g199767199770%_
                                                  _%g199768199772%_))))
                                          (declare (not safe))
                                          (##map __tmp201825
                                                 _%slots199753%_
                                                 _%$slots199757%_)))
                                       (_%specializer-impl199783%_
                                        (let* ((_%specializer-body199781%_
                                                (map (lambda (_%g199776199778%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver199709%_
                                                        _%$klass199724%_
                                                        _%method-calls197649%_
                                                        _%slot-refs197650%_
                                                        _%g199776199778%_))
                                                     _%g199653199686%_))
                                               (__tmp201826
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g199181199349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g199180199348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp201827
                                   (cons '%#lambda
                                         (cons _%g199654199687%_
                                               _%specializer-body199781%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp201827
                               _%g199179199347%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g199178199346%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g199177199345%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp201826
                                           _%stx197557%_)))
                                       (_%specializer-impl199785%_
                                        (_%generate-specializer-impl197561%_
                                         _%$klass199724%_
                                         _%$method-table199726%_
                                         _%methods-bind199751%_
                                         _%slots-bind199775%_
                                         _%specializer-impl199783%_)))
                                  (let ((__tmp201829
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g197568197630%_)))
                                        (__tmp201828
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id199722%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp201829
                                     '" => "
                                     __tmp201828))
                                  (_%generate-specializer-def197562%_
                                   _%g197568197630%_
                                   _%specializer-id199722%_
                                   _%specializer-impl199785%_)))))
                        _%tl199660199683%_
                        _%hd199659199681%_)))
                   (_%g199651199665%_ _%g199652199668%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199651199665%_
                                                    _%g199652199668%_)))))
                                       (_%g199650199788%_ _%g199179199347%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g199179199347%_))
                                         (let* ((_%g199792199822%_
                                                 (lambda (_%g199793199819%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g199793199819%_))))
                                                (_%g199791200386%_
                                                 (lambda (_%g199793199825%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g199793199825%_))
                                                       (let ((_%e199797199827%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g199793199825%_))))
                 (let ((_%hd199798199830%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199797199827%_)))
                       (_%tl199799199832%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199797199827%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl199799199832%_))
                       (let ((_%e199800199835%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl199799199832%_))))
                         (let ((_%hd199801199838%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199800199835%_)))
                               (_%tl199802199840%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199800199835%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd199801199838%_))
                               (let ((_%e199803199843%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd199801199838%_))))
                                 (let ((_%hd199804199846%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e199803199843%_)))
                                       (_%tl199805199848%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e199803199843%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd199804199846%_))
                                       (let ((_%e199806199851%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd199804199846%_))))
                                         (let ((_%hd199807199854%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199806199851%_)))
                                               (_%tl199808199856%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199806199851%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd199807199854%_))
                                               (let ((_%e199809199859%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd199807199854%_))))
                                                 (let ((_%hd199810199862%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199809199859%_)))
                                                       (_%tl199811199864%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199809199859%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199811199864%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199808199856%_))
                                                           (let ((_%e199812199867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199808199856%_))))
                     (let ((_%hd199813199870%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199812199867%_)))
                           (_%tl199814199872%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199812199867%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl199814199872%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl199805199848%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl199802199840%_))
                                   (let ((_%e199815199875%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl199802199840%_))))
                                     (let ((_%hd199816199878%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199815199875%_)))
                                           (_%tl199817199880%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199815199875%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl199817199880%_))
                                           ((lambda (_%g199794199883%_
                                                     _%g199795199884%_
                                                     _%g199796199885%_)
                                              (let* ((_%g199909199923%_
                                                      (lambda (_%g199910199920%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199910199920%_))))
                                                     (_%g199908199970%_
                                                      (lambda (_%g199910199926%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199910199926%_))
                                                            (let ((_%e199913199928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g199910199926%_))))
                      (let ((_%hd199914199931%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199913199928%_)))
                            (_%tl199915199933%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199913199928%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199915199933%_))
                            (let ((_%e199916199936%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199915199933%_))))
                              (let ((_%hd199917199939%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199916199936%_)))
                                    (_%tl199918199941%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199916199936%_))))
                                ((lambda (_%g199911199944%_ _%g199912199945%_)
                                   (let* ((_%self199958%_
                                           (list-ref
                                            _%g199912199945%_
                                            _%self-index199647%_))
                                          (_%receiver199963%_
                                           (let ((_%$e199960%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g199911199944%_))))
                                             (if _%$e199960%_
                                                 _%$e199960%_
                                                 _%self199958%_))))
                                     (for-each
                                      (lambda (_%g199965199967%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver199963%_
                                         _%method-calls197649%_
                                         _%slot-refs197650%_
                                         _%g199965199967%_))
                                      _%g199911199944%_)))
                                 _%tl199918199941%_
                                 _%hd199917199939%_)))
                            (_%g199909199923%_ _%g199910199926%_))))
                    (_%g199909199923%_ _%g199910199926%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199908199970%_
                                                 _%g199795199884%_))
                                              (let* ((_%g199973199992%_
                                                      (lambda (_%g199974199989%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199974199989%_))))
                                                     (_%g199972200101%_
                                                      (lambda (_%g199974199995%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199974199995%_))
                                                            (let ((_%e199976199997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g199974199995%_))))
                      (let ((_%hd199977200000%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199976199997%_)))
                            (_%tl199978200002%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199976199997%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl199978200002%_))
                            (let ((_g201830_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl199978200002%_
                                      '0))))
                              (begin
                                (let ((_g201831_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g201830_)
                                             (##values-length _g201830_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g201831_ 2)))
                                      (error "Context expects 2 values"
                                             _g201831_)))
                                (let ((_%target199979200005%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201830_ 0)))
                                      (_%tl199981200007%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201830_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199981200007%_))
                                      (letrec ((_%loop199982200010%_
                                                (lambda (_%hd199980200013%_
                                                         _%clause199986200015%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd199980200013%_))
                                                      (let ((_%e199983200017%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd199980200013%_))))
                (let ((_%lp-hd199984200020%_
                       (let () (declare (not safe)) (##car _%e199983200017%_)))
                      (_%lp-tl199985200022%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e199983200017%_))))
                  (_%loop199982200010%_
                   _%lp-tl199985200022%_
                   (cons _%lp-hd199984200020%_ _%clause199986200015%_))))
              (let ((_%clause199987200025%_ (reverse _%clause199986200015%_)))
                ((lambda (_%g199975200027%_)
                   (for-each
                    (lambda (_%clause200040%_)
                      (let* ((_%g200042200053%_
                              (lambda (_%g200043200050%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g200043200050%_))))
                             (_%g200041200091%_
                              (lambda (_%g200043200056%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g200043200056%_))
                                    (let ((_%e200046200058%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g200043200056%_))))
                                      (let ((_%hd200047200061%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200046200058%_)))
                                            (_%tl200048200063%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200046200058%_))))
                                        ((lambda (_%g200044200066%_
                                                  _%g200045200067%_)
                                           (let* ((_%self200079%_
                                                   (list-ref
                                                    _%g200045200067%_
                                                    _%self-index199647%_))
                                                  (_%receiver200084%_
                                                   (let ((_%$e200081%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g200044200066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e200081%_
                                                         _%$e200081%_
                                                         _%self200079%_))))
                                             (for-each
                                              (lambda (_%g200086200088%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver200084%_
                                                 _%method-calls197649%_
                                                 _%slot-refs197650%_
                                                 _%g200086200088%_))
                                              _%g200044200066%_)))
                                         _%tl200048200063%_
                                         _%hd200047200061%_)))
                                    (_%g200042200053%_ _%g200043200056%_)))))
                        (_%g200041200091%_ _%clause200040%_)))
                    (let ((__tmp201832
                           (lambda (_%g200093200096%_ _%g200094200098%_)
                             (cons _%g200093200096%_ _%g200094200098%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201832 '() _%g199975200027%_))))
                 _%clause199987200025%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop199982200010%_
                                         _%target199979200005%_
                                         '()))
                                      (_%g199973199992%_ _%g199974199995%_)))))
                            (_%g199973199992%_ _%g199974199995%_))))
                    (_%g199973199992%_ _%g199974199995%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199972200101%_
                                                 _%g199794199883%_))
                                              (if (_%no-specializer?197653%_)
                                                  _%stx197557%_
                                                  (let* ((_%specializer-id200110%_
                                                          (let* ((_%id200104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201833
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g197568197630%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp201833 '"::specialize")))
                         (_%specializer-id200107%_
                          (let ((__tmp201834
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx197557%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id200104%_
                             __tmp201834))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id200107%_))
                    _%specializer-id200107%_))
                 (_%$klass200112%_
                  (let ((__tmp201835
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201835)))
                 (_%$method-table200114%_
                  (let ((__tmp201836
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201836)))
                 (_%methods200116%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls197649%_)))
                 (_%$methods200120%_
                  (let ((__tmp201837
                         (lambda (_%id200118%_)
                           (let ((__tmp201838 (gensym _%id200118%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201838)))))
                    (declare (not safe))
                    (##map __tmp201837 _%methods200116%_)))
                 (_%_200129%_
                  (let ((__tmp201839
                         (lambda (_%g200121200124%_ _%g200122200126%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls197649%_
                              _%g200121200124%_
                              _%g200122200126%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp201839
                     _%methods200116%_
                     _%$methods200120%_)))
                 (_%methods-bind200139%_
                  (let ((__tmp201840
                         (lambda (_%g200131200134%_ _%g200132200136%_)
                           (_%generate-method-bind197559%_
                            _%$klass200112%_
                            _%$method-table200114%_
                            _%g200131200134%_
                            _%g200132200136%_))))
                    (declare (not safe))
                    (##map __tmp201840 _%methods200116%_ _%$methods200120%_)))
                 (_%slots200141%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs197650%_)))
                 (_%$slots200145%_
                  (let ((__tmp201841
                         (lambda (_%id200143%_)
                           (let ((__tmp201842 (gensym _%id200143%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201842)))))
                    (declare (not safe))
                    (##map __tmp201841 _%slots200141%_)))
                 (_%_200154%_
                  (let ((__tmp201843
                         (lambda (_%g200146200149%_ _%g200147200151%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs197650%_
                              _%g200146200149%_
                              _%g200147200151%_)))))
                    (declare (not safe))
                    (##for-each __tmp201843 _%slots200141%_ _%$slots200145%_)))
                 (_%slots-bind200163%_
                  (let ((__tmp201844
                         (lambda (_%g200155200158%_ _%g200156200160%_)
                           (_%generate-slot-bind197560%_
                            _%$klass200112%_
                            _%g200155200158%_
                            _%g200156200160%_))))
                    (declare (not safe))
                    (##map __tmp201844 _%slots200141%_ _%$slots200145%_)))
                 (_%specializer-lambda-expr200241%_
                  (let* ((_%g200165200179%_
                          (lambda (_%g200166200176%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g200166200176%_))))
                         (_%g200164200238%_
                          (lambda (_%g200166200182%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g200166200182%_))
                                (let ((_%e200169200184%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g200166200182%_))))
                                  (let ((_%hd200170200187%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200169200184%_)))
                                        (_%tl200171200189%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200169200184%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200171200189%_))
                                        (let ((_%e200172200192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200171200189%_))))
                                          (let ((_%hd200173200195%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200172200192%_)))
                                                (_%tl200174200197%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200172200192%_))))
                                            ((lambda (_%g200167200200%_
                                                      _%g200168200201%_)
                                               (let* ((_%self200224%_
                                                       (list-ref
                                                        _%g200168200201%_
                                                        _%self-index199647%_))
                                                      (_%receiver200229%_
                                                       (let ((_%$e200226%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g200167200200%_))))
                 (if _%$e200226%_ _%$e200226%_ _%self200224%_)))
              (_%body200235%_
               (map (lambda (_%g200230200232%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver200229%_
                       _%$klass200112%_
                       _%method-calls197649%_
                       _%slot-refs197650%_
                       _%g200230200232%_))
                    _%g200167200200%_))
              (__tmp201845
               (cons '%#lambda (cons _%g200168200201%_ _%body200235%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp201845
                                                  _%g199795199884%_)))
                                             _%tl200174200197%_
                                             _%hd200173200195%_)))
                                        (_%g200165200179%_
                                         _%g200166200182%_))))
                                (_%g200165200179%_ _%g200166200182%_)))))
                    (_%g200164200238%_ _%g199795199884%_)))
                 (_%specializer-case-lambda-expr200379%_
                  (let* ((_%g200243200262%_
                          (lambda (_%g200244200259%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g200244200259%_))))
                         (_%g200242200376%_
                          (lambda (_%g200244200265%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g200244200265%_))
                                (let ((_%e200246200267%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g200244200265%_))))
                                  (let ((_%hd200247200270%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200246200267%_)))
                                        (_%tl200248200272%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200246200267%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl200248200272%_))
                                        (let ((_g201846_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl200248200272%_
                                                  '0))))
                                          (begin
                                            (let ((_g201847_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g201846_)
                                                         (##values-length
                                                          _g201846_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g201847_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g201847_)))
                                            (let ((_%target200249200275%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201846_
                                                      0)))
                                                  (_%tl200251200277%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201846_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200251200277%_))
                                                  (letrec ((_%loop200252200280%_
                                                            (lambda (_%hd200250200283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause200256200285%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200250200283%_))
                          (let ((_%e200253200287%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200250200283%_))))
                            (let ((_%lp-hd200254200290%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200253200287%_)))
                                  (_%lp-tl200255200292%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200253200287%_))))
                              (_%loop200252200280%_
                               _%lp-tl200255200292%_
                               (cons _%lp-hd200254200290%_
                                     _%clause200256200285%_))))
                          (let ((_%clause200257200295%_
                                 (reverse _%clause200256200285%_)))
                            ((lambda (_%g200245200297%_)
                               (let* ((_%clauses200374%_
                                       (map (lambda (_%clause200311%_)
                                              (let* ((_%g200313200324%_
                                                      (lambda (_%g200314200321%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g200314200321%_))))
                                                     (_%g200312200364%_
                                                      (lambda (_%g200314200327%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g200314200327%_))
                                                            (let ((_%e200317200329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g200314200327%_))))
                      (let ((_%hd200318200332%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200317200329%_)))
                            (_%tl200319200334%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200317200329%_))))
                        ((lambda (_%g200315200337%_ _%g200316200338%_)
                           (let* ((_%self200350%_
                                   (list-ref
                                    _%g200316200338%_
                                    _%self-index199647%_))
                                  (_%receiver200355%_
                                   (let ((_%$e200352%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g200315200337%_))))
                                     (if _%$e200352%_
                                         _%$e200352%_
                                         _%self200350%_)))
                                  (_%body200361%_
                                   (map (lambda (_%g200356200358%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver200355%_
                                           _%$klass200112%_
                                           _%method-calls197649%_
                                           _%slot-refs197650%_
                                           _%g200356200358%_))
                                        _%g200315200337%_)))
                             (cons _%g200316200338%_ _%body200361%_)))
                         _%tl200319200334%_
                         _%hd200318200332%_)))
                    (_%g200313200324%_ _%g200314200327%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g200312200364%_
                                                 _%clause200311%_)))
                                            (let ((__tmp201848
                                                   (lambda (_%g200366200369%_
                                                            _%g200367200371%_)
                                                     (cons _%g200366200369%_
                                                           _%g200367200371%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp201848
                                               '()
                                               _%g200245200297%_))))
                                      (__tmp201849
                                       (cons '%#case-lambda
                                             _%clauses200374%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp201849
                                  _%g199794199883%_)))
                             _%clause200257200295%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop200252200280%_
                                                     _%target200249200275%_
                                                     '()))
                                                  (_%g200243200262%_
                                                   _%g200244200265%_)))))
                                        (_%g200243200262%_
                                         _%g200244200265%_))))
                                (_%g200243200262%_ _%g200244200265%_)))))
                    (_%g200242200376%_ _%g199794199883%_)))
                 (_%specializer-impl200381%_
                  (let ((__tmp201850
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g199181199349%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g199180199348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp201851
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g199796199885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr200241%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr200379%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp201851
                                                _%stx197557%_))
                                             '()))
                                 '())
                           (cons _%g199178199346%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g199177199345%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp201850 _%stx197557%_)))
                 (_%specializer-impl200383%_
                  (_%generate-specializer-impl197561%_
                   _%$klass200112%_
                   _%$method-table200114%_
                   _%methods-bind200139%_
                   _%slots-bind200163%_
                   _%specializer-impl200381%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp201853
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g197568197630%_)))
                                                          (__tmp201852
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id200110%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp201853
                                                       '" => "
                                                       __tmp201852))
                                                    (_%generate-specializer-def197562%_
                                                     _%g197568197630%_
                                                     _%specializer-id200110%_
                                                     _%specializer-impl200383%_))))
                                            _%hd199816199878%_
                                            _%hd199813199870%_
                                            _%hd199810199862%_)
                                           (_%g199792199822%_
                                            _%g199793199825%_))))
                                   (_%g199792199822%_ _%g199793199825%_))
                               (_%g199792199822%_ _%g199793199825%_))
                           (_%g199792199822%_ _%g199793199825%_))))
                   (_%g199792199822%_ _%g199793199825%_))
               (_%g199792199822%_ _%g199793199825%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199792199822%_
                                                _%g199793199825%_))))
                                       (_%g199792199822%_ _%g199793199825%_))))
                               (_%g199792199822%_ _%g199793199825%_))))
                       (_%g199792199822%_ _%g199793199825%_))))
               (_%g199792199822%_ _%g199793199825%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g199791200386%_
                                            _%g199179199347%_))
                                         _%stx197557%_))))
                             _%hd199445199568%_
                             _%kw-ref199443199588%_
                             _%hd199433199555%_
                             _%hd199424199531%_
                             _%hd199415199507%_)
                            (_%g199389199451%_ _%g199390199454%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop199438199573%_
                                                 _%target199435199560%_
                                                 '()))
                                              (_%g199389199451%_
                                               _%g199390199454%_))))
                                      (_%g199389199451%_ _%g199390199454%_)))))
                            (_%g199389199451%_ _%g199390199454%_))
                        (_%g199389199451%_ _%g199390199454%_))
                    (_%g199389199451%_ _%g199390199454%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199389199451%_
                                                     _%g199390199454%_))
                                                (_%g199389199451%_
                                                 _%g199390199454%_))
                                            (_%g199389199451%_
                                             _%g199390199454%_))))
                                    (_%g199389199451%_ _%g199390199454%_))))
                            (_%g199389199451%_ _%g199390199454%_))
                        (_%g199389199451%_ _%g199390199454%_))))
                (_%g199389199451%_ _%g199390199454%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199389199451%_
                                                     _%g199390199454%_))
                                                (_%g199389199451%_
                                                 _%g199390199454%_))))
                                        (_%g199389199451%_
                                         _%g199390199454%_))))
                                (_%g199389199451%_ _%g199390199454%_))
                            (_%g199389199451%_ _%g199390199454%_))))
                    (_%g199389199451%_ _%g199390199454%_))
                (_%g199389199451%_ _%g199390199454%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199389199451%_
                                                     _%g199390199454%_))))
                                            (_%g199389199451%_
                                             _%g199390199454%_))))
                                    (_%g199389199451%_ _%g199390199454%_))
                                (_%g199389199451%_ _%g199390199454%_))
                            (_%g199389199451%_ _%g199390199454%_))))
                    (_%g199389199451%_ _%g199390199454%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199389199451%_
                                                     _%g199390199454%_))))
                                            (_%g199389199451%_
                                             _%g199390199454%_))
                                        (_%g199389199451%_ _%g199390199454%_))
                                    (_%g199389199451%_ _%g199390199454%_))))
                            (_%g199389199451%_ _%g199390199454%_)))))
                (_%g199388200390%_ _%g199178199346%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd199222199340%_
                                                    _%hd199219199332%_
                                                    _%hd199216199324%_
                                                    _%hd199213199316%_
                                                    _%hd199195199268%_)
                                                   (_%g199175199228%_
                                                    _%g199176199231%_))))
                                           (_%g199175199228%_
                                            _%g199176199231%_))
                                       (_%g199175199228%_ _%g199176199231%_))
                                   (_%g199175199228%_ _%g199176199231%_))
                               (_%g199175199228%_ _%g199176199231%_))))
                       (_%g199175199228%_ _%g199176199231%_))
                   (_%g199175199228%_ _%g199176199231%_))
               (_%g199175199228%_ _%g199176199231%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199175199228%_
                                                _%g199176199231%_))
                                           (_%g199175199228%_
                                            _%g199176199231%_))))
                                   (_%g199175199228%_ _%g199176199231%_))))
                           (_%g199175199228%_ _%g199176199231%_))))
                   (_%g199175199228%_ _%g199176199231%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199175199228%_
                                                    _%g199176199231%_))
                                               (_%g199175199228%_
                                                _%g199176199231%_))
                                           (_%g199175199228%_
                                            _%g199176199231%_))))
                                   (_%g199175199228%_ _%g199176199231%_))))
                           (_%g199175199228%_ _%g199176199231%_))
                       (_%g199175199228%_ _%g199176199231%_))))
               (_%g199175199228%_ _%g199176199231%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199175199228%_
                                                _%g199176199231%_))))
                                       (_%g199175199228%_ _%g199176199231%_))))
                               (_%g199175199228%_ _%g199176199231%_))
                           (_%g199175199228%_ _%g199176199231%_))
                       (_%g199175199228%_ _%g199176199231%_))))
               (_%g199175199228%_ _%g199176199231%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g199174200393%_
                                            _%g197567197629%_))
                                         _%stx197557%_))))))))
                  (_%__kont200620200621%_ (lambda () _%stx197557%_)))
              (let ((_%__match200649200650%_
                     (lambda (_%e197569197597%_
                              _%hd197570197600%_
                              _%tl197571197602%_
                              _%e197572197605%_
                              _%hd197573197608%_
                              _%tl197574197610%_
                              _%e197575197613%_
                              _%hd197576197616%_
                              _%tl197577197618%_
                              _%e197578197621%_
                              _%hd197579197624%_
                              _%tl197580197626%_)
                       (let ((_%g197567197629%_ _%hd197579197624%_)
                             (_%g197568197630%_ _%hd197576197616%_))
                         (if (let ((__tmp201854
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g197568197630%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp201854))
                             (_%__kont200618200619%_
                              _%g197567197629%_
                              _%g197568197630%_)
                             (_%__kont200620200621%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx200616200617%_))
                    (let ((_%e197569197597%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx200616200617%_))))
                      (let ((_%tl197571197602%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197569197597%_)))
                            (_%hd197570197600%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197569197597%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197571197602%_))
                            (let ((_%e197572197605%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl197571197602%_))))
                              (let ((_%tl197574197610%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197572197605%_)))
                                    (_%hd197573197608%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197572197605%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197573197608%_))
                                    (let ((_%e197575197613%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd197573197608%_))))
                                      (let ((_%tl197577197618%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197575197613%_)))
                                            (_%hd197576197616%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197575197613%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197577197618%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197574197610%_))
                                                (let ((_%e197578197621%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197574197610%_))))
                                                  (let ((_%tl197580197626%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197578197621%_)))
                                                        (_%hd197579197624%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197578197621%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197580197626%_))
                                                        (_%__match200649200650%_
                                                         _%e197569197597%_
                                                         _%hd197570197600%_
                                                         _%tl197571197602%_
                                                         _%e197572197605%_
                                                         _%hd197573197608%_
                                                         _%tl197574197610%_
                                                         _%e197575197613%_
                                                         _%hd197576197616%_
                                                         _%tl197577197618%_
                                                         _%e197578197621%_
                                                         _%hd197579197624%_
                                                         _%tl197580197626%_)
                                                        (_%__kont200620200621%_))))
                                                (_%__kont200620200621%_))
                                            (_%__kont200620200621%_))))
                                    (_%__kont200620200621%_))))
                            (_%__kont200620200621%_))))
                    (_%__kont200620200621%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self197409%_ _%stx197410%_)
        (let* ((_%__stx200652200653%_ _%stx197410%_)
               (_%g197413197446%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200652200653%_)))))
          (let ((_%__kont200654200655%_
                 (lambda (_%g197415197536%_) _%g197415197536%_))
                (_%__kont200656200657%_
                 (lambda (_%g197431197475%_ _%g197432197476%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self197409%_ _%g197431197475%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200652200653%_))
                (let ((_%e197416197496%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx200652200653%_))))
                  (let ((_%tl197418197501%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197416197496%_)))
                        (_%hd197417197499%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197416197496%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197418197501%_))
                        (let ((_%e197419197504%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl197418197501%_))))
                          (let ((_%tl197421197509%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197419197504%_)))
                                (_%hd197420197507%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197419197504%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd197420197507%_))
                                (let ((_%e197422197512%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd197420197507%_))))
                                  (let ((_%tl197424197517%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197422197512%_)))
                                        (_%hd197423197515%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197422197512%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd197423197515%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd197423197515%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197424197517%_))
                                                (let ((_%e197425197520%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197424197517%_))))
                                                  (let ((_%tl197427197525%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197425197520%_)))
                                                        (_%hd197426197523%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197425197520%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197427197525%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197421197509%_))
                                                            (let ((_%e197428197528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197421197509%_))))
                      (let ((_%tl197430197533%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197428197528%_)))
                            (_%hd197429197531%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197428197528%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197430197533%_))
                            (_%__kont200654200655%_ _%hd197426197523%_)
                            (let ()
                              (declare (not safe))
                              (_%g197413197446%_)))))
                    (let () (declare (not safe)) (_%g197413197446%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl197421197509%_))
                    (let ((_%e197439197467%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197421197509%_))))
                      (let ((_%tl197441197472%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197439197467%_)))
                            (_%hd197440197470%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197439197467%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197441197472%_))
                            (_%__kont200656200657%_
                             _%hd197440197470%_
                             _%hd197420197507%_)
                            (let ()
                              (declare (not safe))
                              (_%g197413197446%_)))))
                    (let () (declare (not safe)) (_%g197413197446%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197421197509%_))
                                                    (let ((_%e197439197467%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197421197509%_))))
                                                      (let ((_%tl197441197472%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197439197467%_)))
                    (_%hd197440197470%_
                     (let () (declare (not safe)) (##car _%e197439197467%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197441197472%_))
                    (_%__kont200656200657%_
                     _%hd197440197470%_
                     _%hd197420197507%_)
                    (let () (declare (not safe)) (_%g197413197446%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197413197446%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197421197509%_))
                                                (let ((_%e197439197467%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197421197509%_))))
                                                  (let ((_%tl197441197472%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197439197467%_)))
                                                        (_%hd197440197470%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197439197467%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197441197472%_))
                                                        (_%__kont200656200657%_
                                                         _%hd197440197470%_
                                                         _%hd197420197507%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197413197446%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197413197446%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197421197509%_))
                                            (let ((_%e197439197467%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197421197509%_))))
                                              (let ((_%tl197441197472%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197439197467%_)))
                                                    (_%hd197440197470%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197439197467%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197441197472%_))
                                                    (_%__kont200656200657%_
                                                     _%hd197440197470%_
                                                     _%hd197420197507%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197413197446%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197413197446%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197421197509%_))
                                    (let ((_%e197439197467%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl197421197509%_))))
                                      (let ((_%tl197441197472%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197439197467%_)))
                                            (_%hd197440197470%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197439197467%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197441197472%_))
                                            (_%__kont200656200657%_
                                             _%hd197440197470%_
                                             _%hd197420197507%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197413197446%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197413197446%_))))))
                        (let () (declare (not safe)) (_%g197413197446%_)))))
                (let () (declare (not safe)) (_%g197413197446%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self197325%_ _%stx197326%_)
        (let* ((_%g197328197349%_
                (lambda (_%g197329197346%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197329197346%_))))
               (_%g197327197406%_
                (lambda (_%g197329197352%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197329197352%_))
                      (let ((_%e197333197354%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197329197352%_))))
                        (let ((_%hd197334197357%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197333197354%_)))
                              (_%tl197335197359%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197333197354%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197335197359%_))
                              (let ((_%e197336197362%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197335197359%_))))
                                (let ((_%hd197337197365%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197336197362%_)))
                                      (_%tl197338197367%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197336197362%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197338197367%_))
                                      (let ((_%e197339197370%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197338197367%_))))
                                        (let ((_%hd197340197373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197339197370%_)))
                                              (_%tl197341197375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197339197370%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197341197375%_))
                                              (let ((_%e197342197378%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197341197375%_))))
                                                (let ((_%hd197343197381%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197342197378%_)))
                                                      (_%tl197344197383%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197342197378%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197344197383%_))
                                                      ((lambda (_%g197330197386%_
                                                                _%g197331197387%_
                                                                _%g197332197388%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self197325%_
                                                            _%g197331197387%_)))
                                                       _%hd197343197381%_
                                                       _%hd197340197373%_
                                                       _%hd197337197365%_)
                                                      (_%g197328197349%_
                                                       _%g197329197352%_))))
                                              (_%g197328197349%_
                                               _%g197329197352%_))))
                                      (_%g197328197349%_ _%g197329197352%_))))
                              (_%g197328197349%_ _%g197329197352%_))))
                      (_%g197328197349%_ _%g197329197352%_)))))
          (_%g197327197406%_ _%stx197326%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self196290%_ _%stx196291%_)
        (let* ((_%__stx200718200719%_ _%stx196291%_)
               (_%g196299196521%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200718200719%_)))))
          (let ((_%__kont200720200721%_
                 (lambda (_%g196301197274%_
                          _%g196302197275%_
                          _%g196303197276%_
                          _%g196304197277%_)
                   (let ((__tmp201856
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196290%_ 'methods)))
                         (__tmp201855
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196302197275%_))))
                     (declare (not safe))
                     (hash-put! __tmp201856 __tmp201855 '#t))
                   (for-each
                    (lambda (_%g197310197312%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self196290%_ _%g197310197312%_)))
                    (let ((__tmp201857
                           (lambda (_%g197314197317%_ _%g197315197319%_)
                             (cons _%g197314197317%_ _%g197315197319%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201857 '() _%g196301197274%_)))))
                (_%__kont200724200725%_
                 (lambda (_%g196344197111%_
                          _%g196345197112%_
                          _%g196346197113%_
                          _%g196347197114%_
                          _%g196348197115%_)
                   (let ((__tmp201859
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196290%_ 'methods)))
                         (__tmp201858
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196345197112%_))))
                     (declare (not safe))
                     (hash-put! __tmp201859 __tmp201858 '#t))
                   (for-each
                    (lambda (_%g197155197157%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self196290%_ _%g197155197157%_)))
                    (let ((__tmp201860
                           (lambda (_%g197159197162%_ _%g197160197164%_)
                             (cons _%g197159197162%_ _%g197160197164%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201860 '() _%g196344197111%_)))))
                (_%__kont200728200729%_
                 (lambda (_%g196397196946%_
                          _%g196398196947%_
                          _%g196399196948%_)
                   (let ((__tmp201862
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196290%_ 'slots)))
                         (__tmp201861
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196397196946%_))))
                     (declare (not safe))
                     (hash-put! __tmp201862 __tmp201861 '#t))))
                (_%__kont200730200731%_
                 (lambda (_%g196430196823%_
                          _%g196431196824%_
                          _%g196432196825%_
                          _%g196433196826%_)
                   (let ((__tmp201864
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196290%_ 'slots)))
                         (__tmp201863
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196431196824%_))))
                     (declare (not safe))
                     (hash-put! __tmp201864 __tmp201863 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self196290%_ _%g196430196823%_))))
                (_%__kont200732200733%_
                 (lambda (_%g196467196697%_ _%g196468196698%_)
                   (let* ((_%accessor196720%_
                           (let ((__tmp201865
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g196468196698%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp201865)))
                          (_%klass196722%_
                           (let ((__tmp201866
                                  (##structure-ref
                                   _%accessor196720%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx196291%_
                              __tmp201866)))
                          (_%slot196724%_
                           (##structure-ref
                            _%accessor196720%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor196720%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass196722%_
                                    _%slot196724%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass196722%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp201868
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self196290%_ 'slots)))
                               (__tmp201867
                                (##structure-ref
                                 _%accessor196720%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp201868 __tmp201867 '#t))))))
                (_%__kont200734200735%_
                 (lambda (_%g196490196597%_
                          _%g196491196598%_
                          _%g196492196599%_)
                   (let* ((_%mutator196626%_
                           (let ((__tmp201869
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g196492196599%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp201869)))
                          (_%klass196628%_
                           (let ((__tmp201870
                                  (##structure-ref
                                   _%mutator196626%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx196291%_
                              __tmp201870)))
                          (_%slot196630%_
                           (##structure-ref
                            _%mutator196626%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator196626%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass196628%_
                                    _%slot196630%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass196628%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp201871
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self196290%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp201871 _%slot196630%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self196290%_ _%g196490196597%_)))))
                (_%__kont200736200737%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self196290%_ _%stx196291%_)))))
            (let* ((_%__match201217201218%_
                    (lambda (_%e196493196533%_
                             _%hd196494196536%_
                             _%tl196495196538%_
                             _%e196496196541%_
                             _%hd196497196544%_
                             _%tl196498196546%_
                             _%e196499196549%_
                             _%hd196500196552%_
                             _%tl196501196554%_
                             _%e196502196557%_
                             _%hd196503196560%_
                             _%tl196504196562%_
                             _%e196505196565%_
                             _%hd196506196568%_
                             _%tl196507196570%_
                             _%e196508196573%_
                             _%hd196509196576%_
                             _%tl196510196578%_
                             _%e196511196581%_
                             _%hd196512196584%_
                             _%tl196513196586%_
                             _%e196514196589%_
                             _%hd196515196592%_
                             _%tl196516196594%_)
                      (let ((_%g196490196597%_ _%hd196515196592%_)
                            (_%g196491196598%_ _%hd196512196584%_)
                            (_%g196492196599%_ _%hd196503196560%_))
                        (if (and (let ((__tmp201872
                                        (let ((__tmp201873
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g196492196599%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp201873))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp201872
                                    'gxc#!mutator::t))
                                 (let ((__tmp201874
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196290%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196491196598%_
                                    __tmp201874)))
                            (_%__kont200734200735%_
                             _%g196490196597%_
                             _%g196491196598%_
                             _%g196492196599%_)
                            (_%__kont200736200737%_)))))
                   (_%__match201215201216%_
                    (lambda (_%e196493196533%_
                             _%hd196494196536%_
                             _%tl196495196538%_
                             _%e196496196541%_
                             _%hd196497196544%_
                             _%tl196498196546%_
                             _%e196499196549%_
                             _%hd196500196552%_
                             _%tl196501196554%_
                             _%e196502196557%_
                             _%hd196503196560%_
                             _%tl196504196562%_
                             _%e196505196565%_
                             _%hd196506196568%_
                             _%tl196507196570%_
                             _%e196508196573%_
                             _%hd196509196576%_
                             _%tl196510196578%_
                             _%e196511196581%_
                             _%hd196512196584%_
                             _%tl196513196586%_
                             _%e196514196589%_
                             _%hd196515196592%_
                             _%tl196516196594%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196516196594%_))
                          (_%__match201217201218%_
                           _%e196493196533%_
                           _%hd196494196536%_
                           _%tl196495196538%_
                           _%e196496196541%_
                           _%hd196497196544%_
                           _%tl196498196546%_
                           _%e196499196549%_
                           _%hd196500196552%_
                           _%tl196501196554%_
                           _%e196502196557%_
                           _%hd196503196560%_
                           _%tl196504196562%_
                           _%e196505196565%_
                           _%hd196506196568%_
                           _%tl196507196570%_
                           _%e196508196573%_
                           _%hd196509196576%_
                           _%tl196510196578%_
                           _%e196511196581%_
                           _%hd196512196584%_
                           _%tl196513196586%_
                           _%e196514196589%_
                           _%hd196515196592%_
                           _%tl196516196594%_)
                          (_%__kont200736200737%_))))
                   (_%__match201209201210%_
                    (lambda (_%e196493196533%_
                             _%hd196494196536%_
                             _%tl196495196538%_
                             _%e196496196541%_
                             _%hd196497196544%_
                             _%tl196498196546%_
                             _%e196499196549%_
                             _%hd196500196552%_
                             _%tl196501196554%_
                             _%e196502196557%_
                             _%hd196503196560%_
                             _%tl196504196562%_
                             _%e196505196565%_
                             _%hd196506196568%_
                             _%tl196507196570%_
                             _%e196508196573%_
                             _%hd196509196576%_
                             _%tl196510196578%_
                             _%e196511196581%_
                             _%hd196512196584%_
                             _%tl196513196586%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196507196570%_))
                          (let ((_%e196514196589%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196507196570%_))))
                            (let ((_%tl196516196594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196514196589%_)))
                                  (_%hd196515196592%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196514196589%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196516196594%_))
                                  (_%__match201217201218%_
                                   _%e196493196533%_
                                   _%hd196494196536%_
                                   _%tl196495196538%_
                                   _%e196496196541%_
                                   _%hd196497196544%_
                                   _%tl196498196546%_
                                   _%e196499196549%_
                                   _%hd196500196552%_
                                   _%tl196501196554%_
                                   _%e196502196557%_
                                   _%hd196503196560%_
                                   _%tl196504196562%_
                                   _%e196505196565%_
                                   _%hd196506196568%_
                                   _%tl196507196570%_
                                   _%e196508196573%_
                                   _%hd196509196576%_
                                   _%tl196510196578%_
                                   _%e196511196581%_
                                   _%hd196512196584%_
                                   _%tl196513196586%_
                                   _%e196514196589%_
                                   _%hd196515196592%_
                                   _%tl196516196594%_)
                                  (_%__kont200736200737%_))))
                          (_%__kont200736200737%_))))
                   (_%__match201155201156%_
                    (lambda (_%e196469196641%_
                             _%hd196470196644%_
                             _%tl196471196646%_
                             _%e196472196649%_
                             _%hd196473196652%_
                             _%tl196474196654%_
                             _%e196475196657%_
                             _%hd196476196660%_
                             _%tl196477196662%_
                             _%e196478196665%_
                             _%hd196479196668%_
                             _%tl196480196670%_
                             _%e196481196673%_
                             _%hd196482196676%_
                             _%tl196483196678%_
                             _%e196484196681%_
                             _%hd196485196684%_
                             _%tl196486196686%_
                             _%e196487196689%_
                             _%hd196488196692%_
                             _%tl196489196694%_)
                      (let ((_%g196467196697%_ _%hd196488196692%_)
                            (_%g196468196698%_ _%hd196479196668%_))
                        (if (and (let ((__tmp201875
                                        (let ((__tmp201876
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g196468196698%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp201876))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp201875
                                    'gxc#!accessor::t))
                                 (let ((__tmp201877
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196290%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196467196697%_
                                    __tmp201877)))
                            (_%__kont200732200733%_
                             _%g196467196697%_
                             _%g196468196698%_)
                            (_%__kont200736200737%_)))))
                   (_%__match201153201154%_
                    (lambda (_%e196469196641%_
                             _%hd196470196644%_
                             _%tl196471196646%_
                             _%e196472196649%_
                             _%hd196473196652%_
                             _%tl196474196654%_
                             _%e196475196657%_
                             _%hd196476196660%_
                             _%tl196477196662%_
                             _%e196478196665%_
                             _%hd196479196668%_
                             _%tl196480196670%_
                             _%e196481196673%_
                             _%hd196482196676%_
                             _%tl196483196678%_
                             _%e196484196681%_
                             _%hd196485196684%_
                             _%tl196486196686%_
                             _%e196487196689%_
                             _%hd196488196692%_
                             _%tl196489196694%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196483196678%_))
                          (_%__match201155201156%_
                           _%e196469196641%_
                           _%hd196470196644%_
                           _%tl196471196646%_
                           _%e196472196649%_
                           _%hd196473196652%_
                           _%tl196474196654%_
                           _%e196475196657%_
                           _%hd196476196660%_
                           _%tl196477196662%_
                           _%e196478196665%_
                           _%hd196479196668%_
                           _%tl196480196670%_
                           _%e196481196673%_
                           _%hd196482196676%_
                           _%tl196483196678%_
                           _%e196484196681%_
                           _%hd196485196684%_
                           _%tl196486196686%_
                           _%e196487196689%_
                           _%hd196488196692%_
                           _%tl196489196694%_)
                          (_%__match201209201210%_
                           _%e196469196641%_
                           _%hd196470196644%_
                           _%tl196471196646%_
                           _%e196472196649%_
                           _%hd196473196652%_
                           _%tl196474196654%_
                           _%e196475196657%_
                           _%hd196476196660%_
                           _%tl196477196662%_
                           _%e196478196665%_
                           _%hd196479196668%_
                           _%tl196480196670%_
                           _%e196481196673%_
                           _%hd196482196676%_
                           _%tl196483196678%_
                           _%e196484196681%_
                           _%hd196485196684%_
                           _%tl196486196686%_
                           _%e196487196689%_
                           _%hd196488196692%_
                           _%tl196489196694%_))))
                   (_%__match201099201100%_
                    (lambda (_%e196434196735%_
                             _%hd196435196738%_
                             _%tl196436196740%_
                             _%e196437196743%_
                             _%hd196438196746%_
                             _%tl196439196748%_
                             _%e196440196751%_
                             _%hd196441196754%_
                             _%tl196442196756%_
                             _%e196443196759%_
                             _%hd196444196762%_
                             _%tl196445196764%_
                             _%e196446196767%_
                             _%hd196447196770%_
                             _%tl196448196772%_
                             _%e196449196775%_
                             _%hd196450196778%_
                             _%tl196451196780%_
                             _%e196452196783%_
                             _%hd196453196786%_
                             _%tl196454196788%_
                             _%e196455196791%_
                             _%hd196456196794%_
                             _%tl196457196796%_
                             _%e196458196799%_
                             _%hd196459196802%_
                             _%tl196460196804%_
                             _%e196461196807%_
                             _%hd196462196810%_
                             _%tl196463196812%_
                             _%e196464196815%_
                             _%hd196465196818%_
                             _%tl196466196820%_)
                      (let ((_%g196430196823%_ _%hd196465196818%_)
                            (_%g196431196824%_ _%hd196462196810%_)
                            (_%g196432196825%_ _%hd196453196786%_)
                            (_%g196433196826%_ _%hd196444196762%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196433196826%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196433196826%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp201878
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196290%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196432196825%_
                                    __tmp201878)))
                            (_%__kont200730200731%_
                             _%g196430196823%_
                             _%g196431196824%_
                             _%g196432196825%_
                             _%g196433196826%_)
                            (_%__kont200736200737%_)))))
                   (_%__match201091201092%_
                    (lambda (_%e196434196735%_
                             _%hd196435196738%_
                             _%tl196436196740%_
                             _%e196437196743%_
                             _%hd196438196746%_
                             _%tl196439196748%_
                             _%e196440196751%_
                             _%hd196441196754%_
                             _%tl196442196756%_
                             _%e196443196759%_
                             _%hd196444196762%_
                             _%tl196445196764%_
                             _%e196446196767%_
                             _%hd196447196770%_
                             _%tl196448196772%_
                             _%e196449196775%_
                             _%hd196450196778%_
                             _%tl196451196780%_
                             _%e196452196783%_
                             _%hd196453196786%_
                             _%tl196454196788%_
                             _%e196455196791%_
                             _%hd196456196794%_
                             _%tl196457196796%_
                             _%e196458196799%_
                             _%hd196459196802%_
                             _%tl196460196804%_
                             _%e196461196807%_
                             _%hd196462196810%_
                             _%tl196463196812%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196457196796%_))
                          (let ((_%e196464196815%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196457196796%_))))
                            (let ((_%tl196466196820%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196464196815%_)))
                                  (_%hd196465196818%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196464196815%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196466196820%_))
                                  (_%__match201099201100%_
                                   _%e196434196735%_
                                   _%hd196435196738%_
                                   _%tl196436196740%_
                                   _%e196437196743%_
                                   _%hd196438196746%_
                                   _%tl196439196748%_
                                   _%e196440196751%_
                                   _%hd196441196754%_
                                   _%tl196442196756%_
                                   _%e196443196759%_
                                   _%hd196444196762%_
                                   _%tl196445196764%_
                                   _%e196446196767%_
                                   _%hd196447196770%_
                                   _%tl196448196772%_
                                   _%e196449196775%_
                                   _%hd196450196778%_
                                   _%tl196451196780%_
                                   _%e196452196783%_
                                   _%hd196453196786%_
                                   _%tl196454196788%_
                                   _%e196455196791%_
                                   _%hd196456196794%_
                                   _%tl196457196796%_
                                   _%e196458196799%_
                                   _%hd196459196802%_
                                   _%tl196460196804%_
                                   _%e196461196807%_
                                   _%hd196462196810%_
                                   _%tl196463196812%_
                                   _%e196464196815%_
                                   _%hd196465196818%_
                                   _%tl196466196820%_)
                                  (_%__kont200736200737%_))))
                          (_%__match201215201216%_
                           _%e196434196735%_
                           _%hd196435196738%_
                           _%tl196436196740%_
                           _%e196437196743%_
                           _%hd196438196746%_
                           _%tl196439196748%_
                           _%e196440196751%_
                           _%hd196441196754%_
                           _%tl196442196756%_
                           _%e196443196759%_
                           _%hd196444196762%_
                           _%tl196445196764%_
                           _%e196446196767%_
                           _%hd196447196770%_
                           _%tl196448196772%_
                           _%e196449196775%_
                           _%hd196450196778%_
                           _%tl196451196780%_
                           _%e196452196783%_
                           _%hd196453196786%_
                           _%tl196454196788%_
                           _%e196455196791%_
                           _%hd196456196794%_
                           _%tl196457196796%_))))
                   (_%__match201013201014%_
                    (lambda (_%e196400196866%_
                             _%hd196401196869%_
                             _%tl196402196871%_
                             _%e196403196874%_
                             _%hd196404196877%_
                             _%tl196405196879%_
                             _%e196406196882%_
                             _%hd196407196885%_
                             _%tl196408196887%_
                             _%e196409196890%_
                             _%hd196410196893%_
                             _%tl196411196895%_
                             _%e196412196898%_
                             _%hd196413196901%_
                             _%tl196414196903%_
                             _%e196415196906%_
                             _%hd196416196909%_
                             _%tl196417196911%_
                             _%e196418196914%_
                             _%hd196419196917%_
                             _%tl196420196919%_
                             _%e196421196922%_
                             _%hd196422196925%_
                             _%tl196423196927%_
                             _%e196424196930%_
                             _%hd196425196933%_
                             _%tl196426196935%_
                             _%e196427196938%_
                             _%hd196428196941%_
                             _%tl196429196943%_)
                      (let ((_%g196397196946%_ _%hd196428196941%_)
                            (_%g196398196947%_ _%hd196419196917%_)
                            (_%g196399196948%_ _%hd196410196893%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196399196948%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196399196948%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp201879
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196290%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196398196947%_
                                    __tmp201879)))
                            (_%__kont200728200729%_
                             _%g196397196946%_
                             _%g196398196947%_
                             _%g196399196948%_)
                            (_%__match201217201218%_
                             _%e196400196866%_
                             _%hd196401196869%_
                             _%tl196402196871%_
                             _%e196403196874%_
                             _%hd196404196877%_
                             _%tl196405196879%_
                             _%e196406196882%_
                             _%hd196407196885%_
                             _%tl196408196887%_
                             _%e196409196890%_
                             _%hd196410196893%_
                             _%tl196411196895%_
                             _%e196412196898%_
                             _%hd196413196901%_
                             _%tl196414196903%_
                             _%e196415196906%_
                             _%hd196416196909%_
                             _%tl196417196911%_
                             _%e196418196914%_
                             _%hd196419196917%_
                             _%tl196420196919%_
                             _%e196421196922%_
                             _%hd196422196925%_
                             _%tl196423196927%_)))))
                   (_%__match201011201012%_
                    (lambda (_%e196400196866%_
                             _%hd196401196869%_
                             _%tl196402196871%_
                             _%e196403196874%_
                             _%hd196404196877%_
                             _%tl196405196879%_
                             _%e196406196882%_
                             _%hd196407196885%_
                             _%tl196408196887%_
                             _%e196409196890%_
                             _%hd196410196893%_
                             _%tl196411196895%_
                             _%e196412196898%_
                             _%hd196413196901%_
                             _%tl196414196903%_
                             _%e196415196906%_
                             _%hd196416196909%_
                             _%tl196417196911%_
                             _%e196418196914%_
                             _%hd196419196917%_
                             _%tl196420196919%_
                             _%e196421196922%_
                             _%hd196422196925%_
                             _%tl196423196927%_
                             _%e196424196930%_
                             _%hd196425196933%_
                             _%tl196426196935%_
                             _%e196427196938%_
                             _%hd196428196941%_
                             _%tl196429196943%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196423196927%_))
                          (_%__match201013201014%_
                           _%e196400196866%_
                           _%hd196401196869%_
                           _%tl196402196871%_
                           _%e196403196874%_
                           _%hd196404196877%_
                           _%tl196405196879%_
                           _%e196406196882%_
                           _%hd196407196885%_
                           _%tl196408196887%_
                           _%e196409196890%_
                           _%hd196410196893%_
                           _%tl196411196895%_
                           _%e196412196898%_
                           _%hd196413196901%_
                           _%tl196414196903%_
                           _%e196415196906%_
                           _%hd196416196909%_
                           _%tl196417196911%_
                           _%e196418196914%_
                           _%hd196419196917%_
                           _%tl196420196919%_
                           _%e196421196922%_
                           _%hd196422196925%_
                           _%tl196423196927%_
                           _%e196424196930%_
                           _%hd196425196933%_
                           _%tl196426196935%_
                           _%e196427196938%_
                           _%hd196428196941%_
                           _%tl196429196943%_)
                          (_%__match201091201092%_
                           _%e196400196866%_
                           _%hd196401196869%_
                           _%tl196402196871%_
                           _%e196403196874%_
                           _%hd196404196877%_
                           _%tl196405196879%_
                           _%e196406196882%_
                           _%hd196407196885%_
                           _%tl196408196887%_
                           _%e196409196890%_
                           _%hd196410196893%_
                           _%tl196411196895%_
                           _%e196412196898%_
                           _%hd196413196901%_
                           _%tl196414196903%_
                           _%e196415196906%_
                           _%hd196416196909%_
                           _%tl196417196911%_
                           _%e196418196914%_
                           _%hd196419196917%_
                           _%tl196420196919%_
                           _%e196421196922%_
                           _%hd196422196925%_
                           _%tl196423196927%_
                           _%e196424196930%_
                           _%hd196425196933%_
                           _%tl196426196935%_
                           _%e196427196938%_
                           _%hd196428196941%_
                           _%tl196429196943%_))))
                   (_%__match201001201002%_
                    (lambda (_%e196400196866%_
                             _%hd196401196869%_
                             _%tl196402196871%_
                             _%e196403196874%_
                             _%hd196404196877%_
                             _%tl196405196879%_
                             _%e196406196882%_
                             _%hd196407196885%_
                             _%tl196408196887%_
                             _%e196409196890%_
                             _%hd196410196893%_
                             _%tl196411196895%_
                             _%e196412196898%_
                             _%hd196413196901%_
                             _%tl196414196903%_
                             _%e196415196906%_
                             _%hd196416196909%_
                             _%tl196417196911%_
                             _%e196418196914%_
                             _%hd196419196917%_
                             _%tl196420196919%_
                             _%e196421196922%_
                             _%hd196422196925%_
                             _%tl196423196927%_
                             _%e196424196930%_
                             _%hd196425196933%_
                             _%tl196426196935%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd196425196933%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196426196935%_))
                              (let ((_%e196427196938%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196426196935%_))))
                                (let ((_%tl196429196943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196427196938%_)))
                                      (_%hd196428196941%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196427196938%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196429196943%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196423196927%_))
                                          (_%__match201013201014%_
                                           _%e196400196866%_
                                           _%hd196401196869%_
                                           _%tl196402196871%_
                                           _%e196403196874%_
                                           _%hd196404196877%_
                                           _%tl196405196879%_
                                           _%e196406196882%_
                                           _%hd196407196885%_
                                           _%tl196408196887%_
                                           _%e196409196890%_
                                           _%hd196410196893%_
                                           _%tl196411196895%_
                                           _%e196412196898%_
                                           _%hd196413196901%_
                                           _%tl196414196903%_
                                           _%e196415196906%_
                                           _%hd196416196909%_
                                           _%tl196417196911%_
                                           _%e196418196914%_
                                           _%hd196419196917%_
                                           _%tl196420196919%_
                                           _%e196421196922%_
                                           _%hd196422196925%_
                                           _%tl196423196927%_
                                           _%e196424196930%_
                                           _%hd196425196933%_
                                           _%tl196426196935%_
                                           _%e196427196938%_
                                           _%hd196428196941%_
                                           _%tl196429196943%_)
                                          (_%__match201091201092%_
                                           _%e196400196866%_
                                           _%hd196401196869%_
                                           _%tl196402196871%_
                                           _%e196403196874%_
                                           _%hd196404196877%_
                                           _%tl196405196879%_
                                           _%e196406196882%_
                                           _%hd196407196885%_
                                           _%tl196408196887%_
                                           _%e196409196890%_
                                           _%hd196410196893%_
                                           _%tl196411196895%_
                                           _%e196412196898%_
                                           _%hd196413196901%_
                                           _%tl196414196903%_
                                           _%e196415196906%_
                                           _%hd196416196909%_
                                           _%tl196417196911%_
                                           _%e196418196914%_
                                           _%hd196419196917%_
                                           _%tl196420196919%_
                                           _%e196421196922%_
                                           _%hd196422196925%_
                                           _%tl196423196927%_
                                           _%e196424196930%_
                                           _%hd196425196933%_
                                           _%tl196426196935%_
                                           _%e196427196938%_
                                           _%hd196428196941%_
                                           _%tl196429196943%_))
                                      (_%__match201215201216%_
                                       _%e196400196866%_
                                       _%hd196401196869%_
                                       _%tl196402196871%_
                                       _%e196403196874%_
                                       _%hd196404196877%_
                                       _%tl196405196879%_
                                       _%e196406196882%_
                                       _%hd196407196885%_
                                       _%tl196408196887%_
                                       _%e196409196890%_
                                       _%hd196410196893%_
                                       _%tl196411196895%_
                                       _%e196412196898%_
                                       _%hd196413196901%_
                                       _%tl196414196903%_
                                       _%e196415196906%_
                                       _%hd196416196909%_
                                       _%tl196417196911%_
                                       _%e196418196914%_
                                       _%hd196419196917%_
                                       _%tl196420196919%_
                                       _%e196421196922%_
                                       _%hd196422196925%_
                                       _%tl196423196927%_))))
                              (_%__match201215201216%_
                               _%e196400196866%_
                               _%hd196401196869%_
                               _%tl196402196871%_
                               _%e196403196874%_
                               _%hd196404196877%_
                               _%tl196405196879%_
                               _%e196406196882%_
                               _%hd196407196885%_
                               _%tl196408196887%_
                               _%e196409196890%_
                               _%hd196410196893%_
                               _%tl196411196895%_
                               _%e196412196898%_
                               _%hd196413196901%_
                               _%tl196414196903%_
                               _%e196415196906%_
                               _%hd196416196909%_
                               _%tl196417196911%_
                               _%e196418196914%_
                               _%hd196419196917%_
                               _%tl196420196919%_
                               _%e196421196922%_
                               _%hd196422196925%_
                               _%tl196423196927%_))
                          (_%__match201215201216%_
                           _%e196400196866%_
                           _%hd196401196869%_
                           _%tl196402196871%_
                           _%e196403196874%_
                           _%hd196404196877%_
                           _%tl196405196879%_
                           _%e196406196882%_
                           _%hd196407196885%_
                           _%tl196408196887%_
                           _%e196409196890%_
                           _%hd196410196893%_
                           _%tl196411196895%_
                           _%e196412196898%_
                           _%hd196413196901%_
                           _%tl196414196903%_
                           _%e196415196906%_
                           _%hd196416196909%_
                           _%tl196417196911%_
                           _%e196418196914%_
                           _%hd196419196917%_
                           _%tl196420196919%_
                           _%e196421196922%_
                           _%hd196422196925%_
                           _%tl196423196927%_))))
                   (_%__match200933200934%_
                    (lambda (_%e196349196985%_
                             _%hd196350196988%_
                             _%tl196351196990%_
                             _%e196352196993%_
                             _%hd196353196996%_
                             _%tl196354196998%_
                             _%e196355197001%_
                             _%hd196356197004%_
                             _%tl196357197006%_
                             _%e196358197009%_
                             _%hd196359197012%_
                             _%tl196360197014%_
                             _%e196361197017%_
                             _%hd196362197020%_
                             _%tl196363197022%_
                             _%e196364197025%_
                             _%hd196365197028%_
                             _%tl196366197030%_
                             _%e196367197033%_
                             _%hd196368197036%_
                             _%tl196369197038%_
                             _%e196370197041%_
                             _%hd196371197044%_
                             _%tl196372197046%_
                             _%e196373197049%_
                             _%hd196374197052%_
                             _%tl196375197054%_
                             _%e196376197057%_
                             _%hd196377197060%_
                             _%tl196378197062%_
                             _%e196379197065%_
                             _%hd196380197068%_
                             _%tl196381197070%_
                             _%e196382197073%_
                             _%hd196383197076%_
                             _%tl196384197078%_
                             _%e196385197081%_
                             _%hd196386197084%_
                             _%tl196387197086%_
                             _%__splice200726200727%_
                             _%target196388197089%_
                             _%tl196390197091%_)
                      (letrec ((_%loop196391197094%_
                                (lambda (_%hd196389197097%_
                                         _%args196395197099%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196389197097%_))
                                      (let ((_%e196392197101%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196389197097%_))))
                                        (let ((_%lp-tl196394197106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196392197101%_)))
                                              (_%lp-hd196393197104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196392197101%_))))
                                          (_%loop196391197094%_
                                           _%lp-tl196394197106%_
                                           (cons _%lp-hd196393197104%_
                                                 _%args196395197099%_))))
                                      (let ((_%args196396197109%_
                                             (reverse _%args196395197099%_)))
                                        (let ((_%g196344197111%_
                                               _%args196396197109%_)
                                              (_%g196345197112%_
                                               _%hd196386197084%_)
                                              (_%g196346197113%_
                                               _%hd196377197060%_)
                                              (_%g196347197114%_
                                               _%hd196368197036%_)
                                              (_%g196348197115%_
                                               _%hd196359197012%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196348197115%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196347197114%_
                                                      'call-method))
                                                   (let ((__tmp201880
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self196290%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g196346197113%_
                                                      __tmp201880)))
                                              (_%__kont200724200725%_
                                               _%g196344197111%_
                                               _%g196345197112%_
                                               _%g196346197113%_
                                               _%g196347197114%_
                                               _%g196348197115%_)
                                              (_%__kont200736200737%_))))))))
                        (_%loop196391197094%_ _%target196388197089%_ '()))))
                   (_%__match200891200892%_
                    (lambda (_%e196349196985%_
                             _%hd196350196988%_
                             _%tl196351196990%_
                             _%e196352196993%_
                             _%hd196353196996%_
                             _%tl196354196998%_
                             _%e196355197001%_
                             _%hd196356197004%_
                             _%tl196357197006%_
                             _%e196358197009%_
                             _%hd196359197012%_
                             _%tl196360197014%_
                             _%e196361197017%_
                             _%hd196362197020%_
                             _%tl196363197022%_
                             _%e196364197025%_
                             _%hd196365197028%_
                             _%tl196366197030%_
                             _%e196367197033%_
                             _%hd196368197036%_
                             _%tl196369197038%_
                             _%e196370197041%_
                             _%hd196371197044%_
                             _%tl196372197046%_
                             _%e196373197049%_
                             _%hd196374197052%_
                             _%tl196375197054%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd196374197052%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196375197054%_))
                              (let ((_%e196376197057%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196375197054%_))))
                                (let ((_%tl196378197062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196376197057%_)))
                                      (_%hd196377197060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196376197057%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196378197062%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196372197046%_))
                                          (let ((_%e196379197065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196372197046%_))))
                                            (let ((_%tl196381197070%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196379197065%_)))
                                                  (_%hd196380197068%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196379197065%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196380197068%_))
                                                  (let ((_%e196382197073%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd196380197068%_))))
                                                    (let ((_%tl196384197078%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196382197073%_)))
                                                          (_%hd196383197076%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196382197073%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd196383197076%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd196383197076%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196384197078%_))
                          (let ((_%e196385197081%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196384197078%_))))
                            (let ((_%tl196387197086%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196385197081%_)))
                                  (_%hd196386197084%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196385197081%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196387197086%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196381197070%_))
                                      (let ((_%__splice200726200727%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl196381197070%_
                                                '0))))
                                        (let ((_%tl196390197091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200726200727%_
                                                  '1)))
                                              (_%target196388197089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200726200727%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196390197091%_))
                                              (_%__match200933200934%_
                                               _%e196349196985%_
                                               _%hd196350196988%_
                                               _%tl196351196990%_
                                               _%e196352196993%_
                                               _%hd196353196996%_
                                               _%tl196354196998%_
                                               _%e196355197001%_
                                               _%hd196356197004%_
                                               _%tl196357197006%_
                                               _%e196358197009%_
                                               _%hd196359197012%_
                                               _%tl196360197014%_
                                               _%e196361197017%_
                                               _%hd196362197020%_
                                               _%tl196363197022%_
                                               _%e196364197025%_
                                               _%hd196365197028%_
                                               _%tl196366197030%_
                                               _%e196367197033%_
                                               _%hd196368197036%_
                                               _%tl196369197038%_
                                               _%e196370197041%_
                                               _%hd196371197044%_
                                               _%tl196372197046%_
                                               _%e196373197049%_
                                               _%hd196374197052%_
                                               _%tl196375197054%_
                                               _%e196376197057%_
                                               _%hd196377197060%_
                                               _%tl196378197062%_
                                               _%e196379197065%_
                                               _%hd196380197068%_
                                               _%tl196381197070%_
                                               _%e196382197073%_
                                               _%hd196383197076%_
                                               _%tl196384197078%_
                                               _%e196385197081%_
                                               _%hd196386197084%_
                                               _%tl196387197086%_
                                               _%__splice200726200727%_
                                               _%target196388197089%_
                                               _%tl196390197091%_)
                                              (_%__kont200736200737%_))))
                                      (_%__kont200736200737%_))
                                  (_%__kont200736200737%_))))
                          (_%__kont200736200737%_))
                      (_%__kont200736200737%_))
                  (_%__kont200736200737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200736200737%_))))
                                          (_%__match201215201216%_
                                           _%e196349196985%_
                                           _%hd196350196988%_
                                           _%tl196351196990%_
                                           _%e196352196993%_
                                           _%hd196353196996%_
                                           _%tl196354196998%_
                                           _%e196355197001%_
                                           _%hd196356197004%_
                                           _%tl196357197006%_
                                           _%e196358197009%_
                                           _%hd196359197012%_
                                           _%tl196360197014%_
                                           _%e196361197017%_
                                           _%hd196362197020%_
                                           _%tl196363197022%_
                                           _%e196364197025%_
                                           _%hd196365197028%_
                                           _%tl196366197030%_
                                           _%e196367197033%_
                                           _%hd196368197036%_
                                           _%tl196369197038%_
                                           _%e196370197041%_
                                           _%hd196371197044%_
                                           _%tl196372197046%_))
                                      (_%__match201215201216%_
                                       _%e196349196985%_
                                       _%hd196350196988%_
                                       _%tl196351196990%_
                                       _%e196352196993%_
                                       _%hd196353196996%_
                                       _%tl196354196998%_
                                       _%e196355197001%_
                                       _%hd196356197004%_
                                       _%tl196357197006%_
                                       _%e196358197009%_
                                       _%hd196359197012%_
                                       _%tl196360197014%_
                                       _%e196361197017%_
                                       _%hd196362197020%_
                                       _%tl196363197022%_
                                       _%e196364197025%_
                                       _%hd196365197028%_
                                       _%tl196366197030%_
                                       _%e196367197033%_
                                       _%hd196368197036%_
                                       _%tl196369197038%_
                                       _%e196370197041%_
                                       _%hd196371197044%_
                                       _%tl196372197046%_))))
                              (_%__match201215201216%_
                               _%e196349196985%_
                               _%hd196350196988%_
                               _%tl196351196990%_
                               _%e196352196993%_
                               _%hd196353196996%_
                               _%tl196354196998%_
                               _%e196355197001%_
                               _%hd196356197004%_
                               _%tl196357197006%_
                               _%e196358197009%_
                               _%hd196359197012%_
                               _%tl196360197014%_
                               _%e196361197017%_
                               _%hd196362197020%_
                               _%tl196363197022%_
                               _%e196364197025%_
                               _%hd196365197028%_
                               _%tl196366197030%_
                               _%e196367197033%_
                               _%hd196368197036%_
                               _%tl196369197038%_
                               _%e196370197041%_
                               _%hd196371197044%_
                               _%tl196372197046%_))
                          (_%__match201001201002%_
                           _%e196349196985%_
                           _%hd196350196988%_
                           _%tl196351196990%_
                           _%e196352196993%_
                           _%hd196353196996%_
                           _%tl196354196998%_
                           _%e196355197001%_
                           _%hd196356197004%_
                           _%tl196357197006%_
                           _%e196358197009%_
                           _%hd196359197012%_
                           _%tl196360197014%_
                           _%e196361197017%_
                           _%hd196362197020%_
                           _%tl196363197022%_
                           _%e196364197025%_
                           _%hd196365197028%_
                           _%tl196366197030%_
                           _%e196367197033%_
                           _%hd196368197036%_
                           _%tl196369197038%_
                           _%e196370197041%_
                           _%hd196371197044%_
                           _%tl196372197046%_
                           _%e196373197049%_
                           _%hd196374197052%_
                           _%tl196375197054%_))))
                   (_%__match200823200824%_
                    (lambda (_%e196305197172%_
                             _%hd196306197175%_
                             _%tl196307197177%_
                             _%e196308197180%_
                             _%hd196309197183%_
                             _%tl196310197185%_
                             _%e196311197188%_
                             _%hd196312197191%_
                             _%tl196313197193%_
                             _%e196314197196%_
                             _%hd196315197199%_
                             _%tl196316197201%_
                             _%e196317197204%_
                             _%hd196318197207%_
                             _%tl196319197209%_
                             _%e196320197212%_
                             _%hd196321197215%_
                             _%tl196322197217%_
                             _%e196323197220%_
                             _%hd196324197223%_
                             _%tl196325197225%_
                             _%e196326197228%_
                             _%hd196327197231%_
                             _%tl196328197233%_
                             _%e196329197236%_
                             _%hd196330197239%_
                             _%tl196331197241%_
                             _%e196332197244%_
                             _%hd196333197247%_
                             _%tl196334197249%_
                             _%__splice200722200723%_
                             _%target196335197252%_
                             _%tl196337197254%_)
                      (letrec ((_%loop196338197257%_
                                (lambda (_%hd196336197260%_
                                         _%args196342197262%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196336197260%_))
                                      (let ((_%e196339197264%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196336197260%_))))
                                        (let ((_%lp-tl196341197269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196339197264%_)))
                                              (_%lp-hd196340197267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196339197264%_))))
                                          (_%loop196338197257%_
                                           _%lp-tl196341197269%_
                                           (cons _%lp-hd196340197267%_
                                                 _%args196342197262%_))))
                                      (let ((_%args196343197272%_
                                             (reverse _%args196342197262%_)))
                                        (let ((_%g196301197274%_
                                               _%args196343197272%_)
                                              (_%g196302197275%_
                                               _%hd196333197247%_)
                                              (_%g196303197276%_
                                               _%hd196324197223%_)
                                              (_%g196304197277%_
                                               _%hd196315197199%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196304197277%_
                                                      'call-method))
                                                   (let ((__tmp201881
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self196290%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g196303197276%_
                                                      __tmp201881)))
                                              (_%__kont200720200721%_
                                               _%g196301197274%_
                                               _%g196302197275%_
                                               _%g196303197276%_
                                               _%g196304197277%_)
                                              (_%__match201011201012%_
                                               _%e196305197172%_
                                               _%hd196306197175%_
                                               _%tl196307197177%_
                                               _%e196308197180%_
                                               _%hd196309197183%_
                                               _%tl196310197185%_
                                               _%e196311197188%_
                                               _%hd196312197191%_
                                               _%tl196313197193%_
                                               _%e196314197196%_
                                               _%hd196315197199%_
                                               _%tl196316197201%_
                                               _%e196317197204%_
                                               _%hd196318197207%_
                                               _%tl196319197209%_
                                               _%e196320197212%_
                                               _%hd196321197215%_
                                               _%tl196322197217%_
                                               _%e196323197220%_
                                               _%hd196324197223%_
                                               _%tl196325197225%_
                                               _%e196326197228%_
                                               _%hd196327197231%_
                                               _%tl196328197233%_
                                               _%e196329197236%_
                                               _%hd196330197239%_
                                               _%tl196331197241%_
                                               _%e196332197244%_
                                               _%hd196333197247%_
                                               _%tl196334197249%_))))))))
                        (_%loop196338197257%_ _%target196335197252%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200718200719%_))
                  (let ((_%e196305197172%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx200718200719%_))))
                    (let ((_%tl196307197177%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196305197172%_)))
                          (_%hd196306197175%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196305197172%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196307197177%_))
                          (let ((_%e196308197180%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196307197177%_))))
                            (let ((_%tl196310197185%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196308197180%_)))
                                  (_%hd196309197183%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196308197180%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd196309197183%_))
                                  (let ((_%e196311197188%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196309197183%_))))
                                    (let ((_%tl196313197193%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196311197188%_)))
                                          (_%hd196312197191%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196311197188%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd196312197191%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd196312197191%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196313197193%_))
                                                  (let ((_%e196314197196%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196313197193%_))))
                                                    (let ((_%tl196316197201%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196314197196%_)))
                                                          (_%hd196315197199%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196314197196%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196316197201%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl196310197185%_))
                      (let ((_%e196317197204%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl196310197185%_))))
                        (let ((_%tl196319197209%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196317197204%_)))
                              (_%hd196318197207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196317197204%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd196318197207%_))
                              (let ((_%e196320197212%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd196318197207%_))))
                                (let ((_%tl196322197217%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196320197212%_)))
                                      (_%hd196321197215%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196320197212%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd196321197215%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd196321197215%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196322197217%_))
                                              (let ((_%e196323197220%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196322197217%_))))
                                                (let ((_%tl196325197225%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196323197220%_)))
                                                      (_%hd196324197223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196323197220%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196325197225%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl196319197209%_))
                                                          (let ((_%e196326197228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl196319197209%_))))
                    (let ((_%tl196328197233%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196326197228%_)))
                          (_%hd196327197231%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196326197228%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd196327197231%_))
                          (let ((_%e196329197236%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196327197231%_))))
                            (let ((_%tl196331197241%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196329197236%_)))
                                  (_%hd196330197239%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196329197236%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd196330197239%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd196330197239%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196331197241%_))
                                          (let ((_%e196332197244%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196331197241%_))))
                                            (let ((_%tl196334197249%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196332197244%_)))
                                                  (_%hd196333197247%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196332197244%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl196334197249%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl196328197233%_))
                                                      (let ((_%__splice200722200723%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl196328197233%_
                        '0))))
                (let ((_%tl196337197254%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200722200723%_ '1)))
                      (_%target196335197252%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200722200723%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl196337197254%_))
                      (_%__match200823200824%_
                       _%e196305197172%_
                       _%hd196306197175%_
                       _%tl196307197177%_
                       _%e196308197180%_
                       _%hd196309197183%_
                       _%tl196310197185%_
                       _%e196311197188%_
                       _%hd196312197191%_
                       _%tl196313197193%_
                       _%e196314197196%_
                       _%hd196315197199%_
                       _%tl196316197201%_
                       _%e196317197204%_
                       _%hd196318197207%_
                       _%tl196319197209%_
                       _%e196320197212%_
                       _%hd196321197215%_
                       _%tl196322197217%_
                       _%e196323197220%_
                       _%hd196324197223%_
                       _%tl196325197225%_
                       _%e196326197228%_
                       _%hd196327197231%_
                       _%tl196328197233%_
                       _%e196329197236%_
                       _%hd196330197239%_
                       _%tl196331197241%_
                       _%e196332197244%_
                       _%hd196333197247%_
                       _%tl196334197249%_
                       _%__splice200722200723%_
                       _%target196335197252%_
                       _%tl196337197254%_)
                      (_%__match201011201012%_
                       _%e196305197172%_
                       _%hd196306197175%_
                       _%tl196307197177%_
                       _%e196308197180%_
                       _%hd196309197183%_
                       _%tl196310197185%_
                       _%e196311197188%_
                       _%hd196312197191%_
                       _%tl196313197193%_
                       _%e196314197196%_
                       _%hd196315197199%_
                       _%tl196316197201%_
                       _%e196317197204%_
                       _%hd196318197207%_
                       _%tl196319197209%_
                       _%e196320197212%_
                       _%hd196321197215%_
                       _%tl196322197217%_
                       _%e196323197220%_
                       _%hd196324197223%_
                       _%tl196325197225%_
                       _%e196326197228%_
                       _%hd196327197231%_
                       _%tl196328197233%_
                       _%e196329197236%_
                       _%hd196330197239%_
                       _%tl196331197241%_
                       _%e196332197244%_
                       _%hd196333197247%_
                       _%tl196334197249%_))))
              (_%__match201011201012%_
               _%e196305197172%_
               _%hd196306197175%_
               _%tl196307197177%_
               _%e196308197180%_
               _%hd196309197183%_
               _%tl196310197185%_
               _%e196311197188%_
               _%hd196312197191%_
               _%tl196313197193%_
               _%e196314197196%_
               _%hd196315197199%_
               _%tl196316197201%_
               _%e196317197204%_
               _%hd196318197207%_
               _%tl196319197209%_
               _%e196320197212%_
               _%hd196321197215%_
               _%tl196322197217%_
               _%e196323197220%_
               _%hd196324197223%_
               _%tl196325197225%_
               _%e196326197228%_
               _%hd196327197231%_
               _%tl196328197233%_
               _%e196329197236%_
               _%hd196330197239%_
               _%tl196331197241%_
               _%e196332197244%_
               _%hd196333197247%_
               _%tl196334197249%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match201215201216%_
                                                   _%e196305197172%_
                                                   _%hd196306197175%_
                                                   _%tl196307197177%_
                                                   _%e196308197180%_
                                                   _%hd196309197183%_
                                                   _%tl196310197185%_
                                                   _%e196311197188%_
                                                   _%hd196312197191%_
                                                   _%tl196313197193%_
                                                   _%e196314197196%_
                                                   _%hd196315197199%_
                                                   _%tl196316197201%_
                                                   _%e196317197204%_
                                                   _%hd196318197207%_
                                                   _%tl196319197209%_
                                                   _%e196320197212%_
                                                   _%hd196321197215%_
                                                   _%tl196322197217%_
                                                   _%e196323197220%_
                                                   _%hd196324197223%_
                                                   _%tl196325197225%_
                                                   _%e196326197228%_
                                                   _%hd196327197231%_
                                                   _%tl196328197233%_))))
                                          (_%__match201215201216%_
                                           _%e196305197172%_
                                           _%hd196306197175%_
                                           _%tl196307197177%_
                                           _%e196308197180%_
                                           _%hd196309197183%_
                                           _%tl196310197185%_
                                           _%e196311197188%_
                                           _%hd196312197191%_
                                           _%tl196313197193%_
                                           _%e196314197196%_
                                           _%hd196315197199%_
                                           _%tl196316197201%_
                                           _%e196317197204%_
                                           _%hd196318197207%_
                                           _%tl196319197209%_
                                           _%e196320197212%_
                                           _%hd196321197215%_
                                           _%tl196322197217%_
                                           _%e196323197220%_
                                           _%hd196324197223%_
                                           _%tl196325197225%_
                                           _%e196326197228%_
                                           _%hd196327197231%_
                                           _%tl196328197233%_))
                                      (_%__match200891200892%_
                                       _%e196305197172%_
                                       _%hd196306197175%_
                                       _%tl196307197177%_
                                       _%e196308197180%_
                                       _%hd196309197183%_
                                       _%tl196310197185%_
                                       _%e196311197188%_
                                       _%hd196312197191%_
                                       _%tl196313197193%_
                                       _%e196314197196%_
                                       _%hd196315197199%_
                                       _%tl196316197201%_
                                       _%e196317197204%_
                                       _%hd196318197207%_
                                       _%tl196319197209%_
                                       _%e196320197212%_
                                       _%hd196321197215%_
                                       _%tl196322197217%_
                                       _%e196323197220%_
                                       _%hd196324197223%_
                                       _%tl196325197225%_
                                       _%e196326197228%_
                                       _%hd196327197231%_
                                       _%tl196328197233%_
                                       _%e196329197236%_
                                       _%hd196330197239%_
                                       _%tl196331197241%_))
                                  (_%__match201215201216%_
                                   _%e196305197172%_
                                   _%hd196306197175%_
                                   _%tl196307197177%_
                                   _%e196308197180%_
                                   _%hd196309197183%_
                                   _%tl196310197185%_
                                   _%e196311197188%_
                                   _%hd196312197191%_
                                   _%tl196313197193%_
                                   _%e196314197196%_
                                   _%hd196315197199%_
                                   _%tl196316197201%_
                                   _%e196317197204%_
                                   _%hd196318197207%_
                                   _%tl196319197209%_
                                   _%e196320197212%_
                                   _%hd196321197215%_
                                   _%tl196322197217%_
                                   _%e196323197220%_
                                   _%hd196324197223%_
                                   _%tl196325197225%_
                                   _%e196326197228%_
                                   _%hd196327197231%_
                                   _%tl196328197233%_))))
                          (_%__match201215201216%_
                           _%e196305197172%_
                           _%hd196306197175%_
                           _%tl196307197177%_
                           _%e196308197180%_
                           _%hd196309197183%_
                           _%tl196310197185%_
                           _%e196311197188%_
                           _%hd196312197191%_
                           _%tl196313197193%_
                           _%e196314197196%_
                           _%hd196315197199%_
                           _%tl196316197201%_
                           _%e196317197204%_
                           _%hd196318197207%_
                           _%tl196319197209%_
                           _%e196320197212%_
                           _%hd196321197215%_
                           _%tl196322197217%_
                           _%e196323197220%_
                           _%hd196324197223%_
                           _%tl196325197225%_
                           _%e196326197228%_
                           _%hd196327197231%_
                           _%tl196328197233%_))))
                  (_%__match201153201154%_
                   _%e196305197172%_
                   _%hd196306197175%_
                   _%tl196307197177%_
                   _%e196308197180%_
                   _%hd196309197183%_
                   _%tl196310197185%_
                   _%e196311197188%_
                   _%hd196312197191%_
                   _%tl196313197193%_
                   _%e196314197196%_
                   _%hd196315197199%_
                   _%tl196316197201%_
                   _%e196317197204%_
                   _%hd196318197207%_
                   _%tl196319197209%_
                   _%e196320197212%_
                   _%hd196321197215%_
                   _%tl196322197217%_
                   _%e196323197220%_
                   _%hd196324197223%_
                   _%tl196325197225%_))
              (_%__kont200736200737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont200736200737%_))
                                          (_%__kont200736200737%_))
                                      (_%__kont200736200737%_))))
                              (_%__kont200736200737%_))))
                      (_%__kont200736200737%_))
                  (_%__kont200736200737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200736200737%_))
                                              (_%__kont200736200737%_))
                                          (_%__kont200736200737%_))))
                                  (_%__kont200736200737%_))))
                          (_%__kont200736200737%_))))
                  (_%__kont200736200737%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self195233%_ _%stx195234%_)
        (letrec ((_%force-e195236%_
                  (lambda (_%target196288%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target196288%_ '()))
                                      '()))))))
          (let* ((_%__stx201220201221%_ _%stx195234%_)
                 (_%g195244195466%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201220201221%_)))))
            (let ((_%__kont201222201223%_
                   (lambda (_%g195246196234%_
                            _%g195247196235%_
                            _%g195248196236%_
                            _%g195249196237%_)
                     (let ((_%$method196282%_
                            (let ((__tmp201883
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195233%_ 'methods)))
                                  (__tmp201882
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195247196235%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201883 __tmp201882)))
                           (_%args196283%_
                            (map (lambda (_%g196270196272%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self195233%_
                                      _%g196270196272%_)))
                                 (let ((__tmp201884
                                        (lambda (_%g196274196277%_
                                                 _%g196275196279%_)
                                          (cons _%g196274196277%_
                                                _%g196275196279%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp201884
                                    '()
                                    _%g195246196234%_)))))
                       (let ((__tmp201885
                              (cons '%#call
                                    (cons (_%force-e195236%_ _%$method196282%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195233%_
                                                               'receiver))
                                                            '()))
                                                _%args196283%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201885 _%stx195234%_)))))
                  (_%__kont201226201227%_
                   (lambda (_%g195289196068%_
                            _%g195290196069%_
                            _%g195291196070%_
                            _%g195292196071%_
                            _%g195293196072%_)
                     (let ((_%$method196124%_
                            (let ((__tmp201887
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195233%_ 'methods)))
                                  (__tmp201886
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195290196069%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201887 __tmp201886)))
                           (_%args196125%_
                            (map (lambda (_%g196112196114%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self195233%_
                                      _%g196112196114%_)))
                                 (let ((__tmp201888
                                        (lambda (_%g196116196119%_
                                                 _%g196117196121%_)
                                          (cons _%g196116196119%_
                                                _%g196117196121%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp201888
                                    '()
                                    _%g195289196068%_)))))
                       (let ((__tmp201889
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e195236%_
                                                 _%$method196124%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self195233%_ 'receiver))
                          '()))
              _%args196125%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201889 _%stx195234%_)))))
                  (_%__kont201230201231%_
                   (lambda (_%g195342195901%_
                            _%g195343195902%_
                            _%g195344195903%_)
                     (let* ((_%$field195935%_
                             (let ((__tmp201891
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self195233%_ 'slots)))
                                   (__tmp201890
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g195342195901%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp201891 __tmp201890)))
                            (__tmp201892
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self195233%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field195935%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self195233%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp201892 _%stx195234%_))))
                  (_%__kont201232201233%_
                   (lambda (_%g195375195775%_
                            _%g195376195776%_
                            _%g195377195777%_
                            _%g195378195778%_)
                     (let ((_%$field195813%_
                            (let ((__tmp201894
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195233%_ 'slots)))
                                  (__tmp201893
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195376195776%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201894 __tmp201893)))
                           (_%expr195814%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self195233%_
                               _%g195375195775%_))))
                       (let ((__tmp201895
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self195233%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field195813%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self195233%_ 'receiver))
                          '()))
              (cons _%expr195814%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201895 _%stx195234%_)))))
                  (_%__kont201234201235%_
                   (lambda (_%g195412195647%_ _%g195413195648%_)
                     (let* ((_%accessor195670%_
                             (let ((__tmp201896
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g195413195648%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp201896)))
                            (_%klass195672%_
                             (let ((__tmp201897
                                    (##structure-ref
                                     _%accessor195670%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx195234%_
                                __tmp201897)))
                            (_%slot195674%_
                             (##structure-ref
                              _%accessor195670%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor195670%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass195672%_
                                      _%slot195674%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195672%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx195234%_
                           (let* ((_%$field195680%_
                                   (let ((__tmp201898
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195233%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp201898 _%slot195674%_)))
                                  (__tmp201899
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self195233%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field195680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self195233%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201899
                              _%stx195234%_))))))
                  (_%__kont201236201237%_
                   (lambda (_%g195435195542%_
                            _%g195436195543%_
                            _%g195437195544%_)
                     (let* ((_%mutator195572%_
                             (let ((__tmp201900
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g195437195544%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp201900)))
                            (_%klass195574%_
                             (let ((__tmp201901
                                    (##structure-ref
                                     _%mutator195572%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx195234%_
                                __tmp201901)))
                            (_%slot195576%_
                             (##structure-ref
                              _%mutator195572%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr195578%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self195233%_
                                _%g195435195542%_))))
                       (if (if (##structure-ref
                                _%mutator195572%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass195574%_
                                      _%slot195576%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195574%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp201902
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g195437195544%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g195436195543%_
                                                                '()))
                                                    (cons _%expr195578%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp201902 _%stx195234%_))
                           (let* ((_%$field195584%_
                                   (let ((__tmp201903
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195233%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp201903 _%slot195576%_)))
                                  (__tmp201904
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self195233%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field195584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self195233%_ 'receiver))
                               '()))
                   (cons _%expr195578%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201904
                              _%stx195234%_))))))
                  (_%__kont201238201239%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self195233%_ _%stx195234%_)))))
              (let* ((_%__match201719201720%_
                      (lambda (_%e195438195478%_
                               _%hd195439195481%_
                               _%tl195440195483%_
                               _%e195441195486%_
                               _%hd195442195489%_
                               _%tl195443195491%_
                               _%e195444195494%_
                               _%hd195445195497%_
                               _%tl195446195499%_
                               _%e195447195502%_
                               _%hd195448195505%_
                               _%tl195449195507%_
                               _%e195450195510%_
                               _%hd195451195513%_
                               _%tl195452195515%_
                               _%e195453195518%_
                               _%hd195454195521%_
                               _%tl195455195523%_
                               _%e195456195526%_
                               _%hd195457195529%_
                               _%tl195458195531%_
                               _%e195459195534%_
                               _%hd195460195537%_
                               _%tl195461195539%_)
                        (let ((_%g195435195542%_ _%hd195460195537%_)
                              (_%g195436195543%_ _%hd195457195529%_)
                              (_%g195437195544%_ _%hd195448195505%_))
                          (if (and (let ((__tmp201905
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195233%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195436195543%_
                                      __tmp201905))
                                   (let ((__tmp201906
                                          (let ((__tmp201907
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g195437195544%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp201907))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp201906
                                      'gxc#!mutator::t)))
                              (_%__kont201236201237%_
                               _%g195435195542%_
                               _%g195436195543%_
                               _%g195437195544%_)
                              (_%__kont201238201239%_)))))
                     (_%__match201717201718%_
                      (lambda (_%e195438195478%_
                               _%hd195439195481%_
                               _%tl195440195483%_
                               _%e195441195486%_
                               _%hd195442195489%_
                               _%tl195443195491%_
                               _%e195444195494%_
                               _%hd195445195497%_
                               _%tl195446195499%_
                               _%e195447195502%_
                               _%hd195448195505%_
                               _%tl195449195507%_
                               _%e195450195510%_
                               _%hd195451195513%_
                               _%tl195452195515%_
                               _%e195453195518%_
                               _%hd195454195521%_
                               _%tl195455195523%_
                               _%e195456195526%_
                               _%hd195457195529%_
                               _%tl195458195531%_
                               _%e195459195534%_
                               _%hd195460195537%_
                               _%tl195461195539%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195461195539%_))
                            (_%__match201719201720%_
                             _%e195438195478%_
                             _%hd195439195481%_
                             _%tl195440195483%_
                             _%e195441195486%_
                             _%hd195442195489%_
                             _%tl195443195491%_
                             _%e195444195494%_
                             _%hd195445195497%_
                             _%tl195446195499%_
                             _%e195447195502%_
                             _%hd195448195505%_
                             _%tl195449195507%_
                             _%e195450195510%_
                             _%hd195451195513%_
                             _%tl195452195515%_
                             _%e195453195518%_
                             _%hd195454195521%_
                             _%tl195455195523%_
                             _%e195456195526%_
                             _%hd195457195529%_
                             _%tl195458195531%_
                             _%e195459195534%_
                             _%hd195460195537%_
                             _%tl195461195539%_)
                            (_%__kont201238201239%_))))
                     (_%__match201711201712%_
                      (lambda (_%e195438195478%_
                               _%hd195439195481%_
                               _%tl195440195483%_
                               _%e195441195486%_
                               _%hd195442195489%_
                               _%tl195443195491%_
                               _%e195444195494%_
                               _%hd195445195497%_
                               _%tl195446195499%_
                               _%e195447195502%_
                               _%hd195448195505%_
                               _%tl195449195507%_
                               _%e195450195510%_
                               _%hd195451195513%_
                               _%tl195452195515%_
                               _%e195453195518%_
                               _%hd195454195521%_
                               _%tl195455195523%_
                               _%e195456195526%_
                               _%hd195457195529%_
                               _%tl195458195531%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195452195515%_))
                            (let ((_%e195459195534%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195452195515%_))))
                              (let ((_%tl195461195539%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195459195534%_)))
                                    (_%hd195460195537%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195459195534%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195461195539%_))
                                    (_%__match201719201720%_
                                     _%e195438195478%_
                                     _%hd195439195481%_
                                     _%tl195440195483%_
                                     _%e195441195486%_
                                     _%hd195442195489%_
                                     _%tl195443195491%_
                                     _%e195444195494%_
                                     _%hd195445195497%_
                                     _%tl195446195499%_
                                     _%e195447195502%_
                                     _%hd195448195505%_
                                     _%tl195449195507%_
                                     _%e195450195510%_
                                     _%hd195451195513%_
                                     _%tl195452195515%_
                                     _%e195453195518%_
                                     _%hd195454195521%_
                                     _%tl195455195523%_
                                     _%e195456195526%_
                                     _%hd195457195529%_
                                     _%tl195458195531%_
                                     _%e195459195534%_
                                     _%hd195460195537%_
                                     _%tl195461195539%_)
                                    (_%__kont201238201239%_))))
                            (_%__kont201238201239%_))))
                     (_%__match201657201658%_
                      (lambda (_%e195414195591%_
                               _%hd195415195594%_
                               _%tl195416195596%_
                               _%e195417195599%_
                               _%hd195418195602%_
                               _%tl195419195604%_
                               _%e195420195607%_
                               _%hd195421195610%_
                               _%tl195422195612%_
                               _%e195423195615%_
                               _%hd195424195618%_
                               _%tl195425195620%_
                               _%e195426195623%_
                               _%hd195427195626%_
                               _%tl195428195628%_
                               _%e195429195631%_
                               _%hd195430195634%_
                               _%tl195431195636%_
                               _%e195432195639%_
                               _%hd195433195642%_
                               _%tl195434195644%_)
                        (let ((_%g195412195647%_ _%hd195433195642%_)
                              (_%g195413195648%_ _%hd195424195618%_))
                          (if (and (let ((__tmp201908
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195233%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195412195647%_
                                      __tmp201908))
                                   (let ((__tmp201909
                                          (let ((__tmp201910
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g195413195648%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp201910))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp201909
                                      'gxc#!accessor::t)))
                              (_%__kont201234201235%_
                               _%g195412195647%_
                               _%g195413195648%_)
                              (_%__kont201238201239%_)))))
                     (_%__match201655201656%_
                      (lambda (_%e195414195591%_
                               _%hd195415195594%_
                               _%tl195416195596%_
                               _%e195417195599%_
                               _%hd195418195602%_
                               _%tl195419195604%_
                               _%e195420195607%_
                               _%hd195421195610%_
                               _%tl195422195612%_
                               _%e195423195615%_
                               _%hd195424195618%_
                               _%tl195425195620%_
                               _%e195426195623%_
                               _%hd195427195626%_
                               _%tl195428195628%_
                               _%e195429195631%_
                               _%hd195430195634%_
                               _%tl195431195636%_
                               _%e195432195639%_
                               _%hd195433195642%_
                               _%tl195434195644%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195428195628%_))
                            (_%__match201657201658%_
                             _%e195414195591%_
                             _%hd195415195594%_
                             _%tl195416195596%_
                             _%e195417195599%_
                             _%hd195418195602%_
                             _%tl195419195604%_
                             _%e195420195607%_
                             _%hd195421195610%_
                             _%tl195422195612%_
                             _%e195423195615%_
                             _%hd195424195618%_
                             _%tl195425195620%_
                             _%e195426195623%_
                             _%hd195427195626%_
                             _%tl195428195628%_
                             _%e195429195631%_
                             _%hd195430195634%_
                             _%tl195431195636%_
                             _%e195432195639%_
                             _%hd195433195642%_
                             _%tl195434195644%_)
                            (_%__match201711201712%_
                             _%e195414195591%_
                             _%hd195415195594%_
                             _%tl195416195596%_
                             _%e195417195599%_
                             _%hd195418195602%_
                             _%tl195419195604%_
                             _%e195420195607%_
                             _%hd195421195610%_
                             _%tl195422195612%_
                             _%e195423195615%_
                             _%hd195424195618%_
                             _%tl195425195620%_
                             _%e195426195623%_
                             _%hd195427195626%_
                             _%tl195428195628%_
                             _%e195429195631%_
                             _%hd195430195634%_
                             _%tl195431195636%_
                             _%e195432195639%_
                             _%hd195433195642%_
                             _%tl195434195644%_))))
                     (_%__match201601201602%_
                      (lambda (_%e195379195687%_
                               _%hd195380195690%_
                               _%tl195381195692%_
                               _%e195382195695%_
                               _%hd195383195698%_
                               _%tl195384195700%_
                               _%e195385195703%_
                               _%hd195386195706%_
                               _%tl195387195708%_
                               _%e195388195711%_
                               _%hd195389195714%_
                               _%tl195390195716%_
                               _%e195391195719%_
                               _%hd195392195722%_
                               _%tl195393195724%_
                               _%e195394195727%_
                               _%hd195395195730%_
                               _%tl195396195732%_
                               _%e195397195735%_
                               _%hd195398195738%_
                               _%tl195399195740%_
                               _%e195400195743%_
                               _%hd195401195746%_
                               _%tl195402195748%_
                               _%e195403195751%_
                               _%hd195404195754%_
                               _%tl195405195756%_
                               _%e195406195759%_
                               _%hd195407195762%_
                               _%tl195408195764%_
                               _%e195409195767%_
                               _%hd195410195770%_
                               _%tl195411195772%_)
                        (let ((_%g195375195775%_ _%hd195410195770%_)
                              (_%g195376195776%_ _%hd195407195762%_)
                              (_%g195377195777%_ _%hd195398195738%_)
                              (_%g195378195778%_ _%hd195389195714%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195378195778%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195378195778%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp201911
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195233%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195377195777%_
                                      __tmp201911)))
                              (_%__kont201232201233%_
                               _%g195375195775%_
                               _%g195376195776%_
                               _%g195377195777%_
                               _%g195378195778%_)
                              (_%__kont201238201239%_)))))
                     (_%__match201593201594%_
                      (lambda (_%e195379195687%_
                               _%hd195380195690%_
                               _%tl195381195692%_
                               _%e195382195695%_
                               _%hd195383195698%_
                               _%tl195384195700%_
                               _%e195385195703%_
                               _%hd195386195706%_
                               _%tl195387195708%_
                               _%e195388195711%_
                               _%hd195389195714%_
                               _%tl195390195716%_
                               _%e195391195719%_
                               _%hd195392195722%_
                               _%tl195393195724%_
                               _%e195394195727%_
                               _%hd195395195730%_
                               _%tl195396195732%_
                               _%e195397195735%_
                               _%hd195398195738%_
                               _%tl195399195740%_
                               _%e195400195743%_
                               _%hd195401195746%_
                               _%tl195402195748%_
                               _%e195403195751%_
                               _%hd195404195754%_
                               _%tl195405195756%_
                               _%e195406195759%_
                               _%hd195407195762%_
                               _%tl195408195764%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195402195748%_))
                            (let ((_%e195409195767%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195402195748%_))))
                              (let ((_%tl195411195772%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195409195767%_)))
                                    (_%hd195410195770%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195409195767%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195411195772%_))
                                    (_%__match201601201602%_
                                     _%e195379195687%_
                                     _%hd195380195690%_
                                     _%tl195381195692%_
                                     _%e195382195695%_
                                     _%hd195383195698%_
                                     _%tl195384195700%_
                                     _%e195385195703%_
                                     _%hd195386195706%_
                                     _%tl195387195708%_
                                     _%e195388195711%_
                                     _%hd195389195714%_
                                     _%tl195390195716%_
                                     _%e195391195719%_
                                     _%hd195392195722%_
                                     _%tl195393195724%_
                                     _%e195394195727%_
                                     _%hd195395195730%_
                                     _%tl195396195732%_
                                     _%e195397195735%_
                                     _%hd195398195738%_
                                     _%tl195399195740%_
                                     _%e195400195743%_
                                     _%hd195401195746%_
                                     _%tl195402195748%_
                                     _%e195403195751%_
                                     _%hd195404195754%_
                                     _%tl195405195756%_
                                     _%e195406195759%_
                                     _%hd195407195762%_
                                     _%tl195408195764%_
                                     _%e195409195767%_
                                     _%hd195410195770%_
                                     _%tl195411195772%_)
                                    (_%__kont201238201239%_))))
                            (_%__match201717201718%_
                             _%e195379195687%_
                             _%hd195380195690%_
                             _%tl195381195692%_
                             _%e195382195695%_
                             _%hd195383195698%_
                             _%tl195384195700%_
                             _%e195385195703%_
                             _%hd195386195706%_
                             _%tl195387195708%_
                             _%e195388195711%_
                             _%hd195389195714%_
                             _%tl195390195716%_
                             _%e195391195719%_
                             _%hd195392195722%_
                             _%tl195393195724%_
                             _%e195394195727%_
                             _%hd195395195730%_
                             _%tl195396195732%_
                             _%e195397195735%_
                             _%hd195398195738%_
                             _%tl195399195740%_
                             _%e195400195743%_
                             _%hd195401195746%_
                             _%tl195402195748%_))))
                     (_%__match201515201516%_
                      (lambda (_%e195345195821%_
                               _%hd195346195824%_
                               _%tl195347195826%_
                               _%e195348195829%_
                               _%hd195349195832%_
                               _%tl195350195834%_
                               _%e195351195837%_
                               _%hd195352195840%_
                               _%tl195353195842%_
                               _%e195354195845%_
                               _%hd195355195848%_
                               _%tl195356195850%_
                               _%e195357195853%_
                               _%hd195358195856%_
                               _%tl195359195858%_
                               _%e195360195861%_
                               _%hd195361195864%_
                               _%tl195362195866%_
                               _%e195363195869%_
                               _%hd195364195872%_
                               _%tl195365195874%_
                               _%e195366195877%_
                               _%hd195367195880%_
                               _%tl195368195882%_
                               _%e195369195885%_
                               _%hd195370195888%_
                               _%tl195371195890%_
                               _%e195372195893%_
                               _%hd195373195896%_
                               _%tl195374195898%_)
                        (let ((_%g195342195901%_ _%hd195373195896%_)
                              (_%g195343195902%_ _%hd195364195872%_)
                              (_%g195344195903%_ _%hd195355195848%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195344195903%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195344195903%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp201912
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195233%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195343195902%_
                                      __tmp201912)))
                              (_%__kont201230201231%_
                               _%g195342195901%_
                               _%g195343195902%_
                               _%g195344195903%_)
                              (_%__match201719201720%_
                               _%e195345195821%_
                               _%hd195346195824%_
                               _%tl195347195826%_
                               _%e195348195829%_
                               _%hd195349195832%_
                               _%tl195350195834%_
                               _%e195351195837%_
                               _%hd195352195840%_
                               _%tl195353195842%_
                               _%e195354195845%_
                               _%hd195355195848%_
                               _%tl195356195850%_
                               _%e195357195853%_
                               _%hd195358195856%_
                               _%tl195359195858%_
                               _%e195360195861%_
                               _%hd195361195864%_
                               _%tl195362195866%_
                               _%e195363195869%_
                               _%hd195364195872%_
                               _%tl195365195874%_
                               _%e195366195877%_
                               _%hd195367195880%_
                               _%tl195368195882%_)))))
                     (_%__match201513201514%_
                      (lambda (_%e195345195821%_
                               _%hd195346195824%_
                               _%tl195347195826%_
                               _%e195348195829%_
                               _%hd195349195832%_
                               _%tl195350195834%_
                               _%e195351195837%_
                               _%hd195352195840%_
                               _%tl195353195842%_
                               _%e195354195845%_
                               _%hd195355195848%_
                               _%tl195356195850%_
                               _%e195357195853%_
                               _%hd195358195856%_
                               _%tl195359195858%_
                               _%e195360195861%_
                               _%hd195361195864%_
                               _%tl195362195866%_
                               _%e195363195869%_
                               _%hd195364195872%_
                               _%tl195365195874%_
                               _%e195366195877%_
                               _%hd195367195880%_
                               _%tl195368195882%_
                               _%e195369195885%_
                               _%hd195370195888%_
                               _%tl195371195890%_
                               _%e195372195893%_
                               _%hd195373195896%_
                               _%tl195374195898%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195368195882%_))
                            (_%__match201515201516%_
                             _%e195345195821%_
                             _%hd195346195824%_
                             _%tl195347195826%_
                             _%e195348195829%_
                             _%hd195349195832%_
                             _%tl195350195834%_
                             _%e195351195837%_
                             _%hd195352195840%_
                             _%tl195353195842%_
                             _%e195354195845%_
                             _%hd195355195848%_
                             _%tl195356195850%_
                             _%e195357195853%_
                             _%hd195358195856%_
                             _%tl195359195858%_
                             _%e195360195861%_
                             _%hd195361195864%_
                             _%tl195362195866%_
                             _%e195363195869%_
                             _%hd195364195872%_
                             _%tl195365195874%_
                             _%e195366195877%_
                             _%hd195367195880%_
                             _%tl195368195882%_
                             _%e195369195885%_
                             _%hd195370195888%_
                             _%tl195371195890%_
                             _%e195372195893%_
                             _%hd195373195896%_
                             _%tl195374195898%_)
                            (_%__match201593201594%_
                             _%e195345195821%_
                             _%hd195346195824%_
                             _%tl195347195826%_
                             _%e195348195829%_
                             _%hd195349195832%_
                             _%tl195350195834%_
                             _%e195351195837%_
                             _%hd195352195840%_
                             _%tl195353195842%_
                             _%e195354195845%_
                             _%hd195355195848%_
                             _%tl195356195850%_
                             _%e195357195853%_
                             _%hd195358195856%_
                             _%tl195359195858%_
                             _%e195360195861%_
                             _%hd195361195864%_
                             _%tl195362195866%_
                             _%e195363195869%_
                             _%hd195364195872%_
                             _%tl195365195874%_
                             _%e195366195877%_
                             _%hd195367195880%_
                             _%tl195368195882%_
                             _%e195369195885%_
                             _%hd195370195888%_
                             _%tl195371195890%_
                             _%e195372195893%_
                             _%hd195373195896%_
                             _%tl195374195898%_))))
                     (_%__match201503201504%_
                      (lambda (_%e195345195821%_
                               _%hd195346195824%_
                               _%tl195347195826%_
                               _%e195348195829%_
                               _%hd195349195832%_
                               _%tl195350195834%_
                               _%e195351195837%_
                               _%hd195352195840%_
                               _%tl195353195842%_
                               _%e195354195845%_
                               _%hd195355195848%_
                               _%tl195356195850%_
                               _%e195357195853%_
                               _%hd195358195856%_
                               _%tl195359195858%_
                               _%e195360195861%_
                               _%hd195361195864%_
                               _%tl195362195866%_
                               _%e195363195869%_
                               _%hd195364195872%_
                               _%tl195365195874%_
                               _%e195366195877%_
                               _%hd195367195880%_
                               _%tl195368195882%_
                               _%e195369195885%_
                               _%hd195370195888%_
                               _%tl195371195890%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd195370195888%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195371195890%_))
                                (let ((_%e195372195893%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195371195890%_))))
                                  (let ((_%tl195374195898%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195372195893%_)))
                                        (_%hd195373195896%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195372195893%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195374195898%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl195368195882%_))
                                            (_%__match201515201516%_
                                             _%e195345195821%_
                                             _%hd195346195824%_
                                             _%tl195347195826%_
                                             _%e195348195829%_
                                             _%hd195349195832%_
                                             _%tl195350195834%_
                                             _%e195351195837%_
                                             _%hd195352195840%_
                                             _%tl195353195842%_
                                             _%e195354195845%_
                                             _%hd195355195848%_
                                             _%tl195356195850%_
                                             _%e195357195853%_
                                             _%hd195358195856%_
                                             _%tl195359195858%_
                                             _%e195360195861%_
                                             _%hd195361195864%_
                                             _%tl195362195866%_
                                             _%e195363195869%_
                                             _%hd195364195872%_
                                             _%tl195365195874%_
                                             _%e195366195877%_
                                             _%hd195367195880%_
                                             _%tl195368195882%_
                                             _%e195369195885%_
                                             _%hd195370195888%_
                                             _%tl195371195890%_
                                             _%e195372195893%_
                                             _%hd195373195896%_
                                             _%tl195374195898%_)
                                            (_%__match201593201594%_
                                             _%e195345195821%_
                                             _%hd195346195824%_
                                             _%tl195347195826%_
                                             _%e195348195829%_
                                             _%hd195349195832%_
                                             _%tl195350195834%_
                                             _%e195351195837%_
                                             _%hd195352195840%_
                                             _%tl195353195842%_
                                             _%e195354195845%_
                                             _%hd195355195848%_
                                             _%tl195356195850%_
                                             _%e195357195853%_
                                             _%hd195358195856%_
                                             _%tl195359195858%_
                                             _%e195360195861%_
                                             _%hd195361195864%_
                                             _%tl195362195866%_
                                             _%e195363195869%_
                                             _%hd195364195872%_
                                             _%tl195365195874%_
                                             _%e195366195877%_
                                             _%hd195367195880%_
                                             _%tl195368195882%_
                                             _%e195369195885%_
                                             _%hd195370195888%_
                                             _%tl195371195890%_
                                             _%e195372195893%_
                                             _%hd195373195896%_
                                             _%tl195374195898%_))
                                        (_%__match201717201718%_
                                         _%e195345195821%_
                                         _%hd195346195824%_
                                         _%tl195347195826%_
                                         _%e195348195829%_
                                         _%hd195349195832%_
                                         _%tl195350195834%_
                                         _%e195351195837%_
                                         _%hd195352195840%_
                                         _%tl195353195842%_
                                         _%e195354195845%_
                                         _%hd195355195848%_
                                         _%tl195356195850%_
                                         _%e195357195853%_
                                         _%hd195358195856%_
                                         _%tl195359195858%_
                                         _%e195360195861%_
                                         _%hd195361195864%_
                                         _%tl195362195866%_
                                         _%e195363195869%_
                                         _%hd195364195872%_
                                         _%tl195365195874%_
                                         _%e195366195877%_
                                         _%hd195367195880%_
                                         _%tl195368195882%_))))
                                (_%__match201717201718%_
                                 _%e195345195821%_
                                 _%hd195346195824%_
                                 _%tl195347195826%_
                                 _%e195348195829%_
                                 _%hd195349195832%_
                                 _%tl195350195834%_
                                 _%e195351195837%_
                                 _%hd195352195840%_
                                 _%tl195353195842%_
                                 _%e195354195845%_
                                 _%hd195355195848%_
                                 _%tl195356195850%_
                                 _%e195357195853%_
                                 _%hd195358195856%_
                                 _%tl195359195858%_
                                 _%e195360195861%_
                                 _%hd195361195864%_
                                 _%tl195362195866%_
                                 _%e195363195869%_
                                 _%hd195364195872%_
                                 _%tl195365195874%_
                                 _%e195366195877%_
                                 _%hd195367195880%_
                                 _%tl195368195882%_))
                            (_%__match201717201718%_
                             _%e195345195821%_
                             _%hd195346195824%_
                             _%tl195347195826%_
                             _%e195348195829%_
                             _%hd195349195832%_
                             _%tl195350195834%_
                             _%e195351195837%_
                             _%hd195352195840%_
                             _%tl195353195842%_
                             _%e195354195845%_
                             _%hd195355195848%_
                             _%tl195356195850%_
                             _%e195357195853%_
                             _%hd195358195856%_
                             _%tl195359195858%_
                             _%e195360195861%_
                             _%hd195361195864%_
                             _%tl195362195866%_
                             _%e195363195869%_
                             _%hd195364195872%_
                             _%tl195365195874%_
                             _%e195366195877%_
                             _%hd195367195880%_
                             _%tl195368195882%_))))
                     (_%__match201435201436%_
                      (lambda (_%e195294195942%_
                               _%hd195295195945%_
                               _%tl195296195947%_
                               _%e195297195950%_
                               _%hd195298195953%_
                               _%tl195299195955%_
                               _%e195300195958%_
                               _%hd195301195961%_
                               _%tl195302195963%_
                               _%e195303195966%_
                               _%hd195304195969%_
                               _%tl195305195971%_
                               _%e195306195974%_
                               _%hd195307195977%_
                               _%tl195308195979%_
                               _%e195309195982%_
                               _%hd195310195985%_
                               _%tl195311195987%_
                               _%e195312195990%_
                               _%hd195313195993%_
                               _%tl195314195995%_
                               _%e195315195998%_
                               _%hd195316196001%_
                               _%tl195317196003%_
                               _%e195318196006%_
                               _%hd195319196009%_
                               _%tl195320196011%_
                               _%e195321196014%_
                               _%hd195322196017%_
                               _%tl195323196019%_
                               _%e195324196022%_
                               _%hd195325196025%_
                               _%tl195326196027%_
                               _%e195327196030%_
                               _%hd195328196033%_
                               _%tl195329196035%_
                               _%e195330196038%_
                               _%hd195331196041%_
                               _%tl195332196043%_
                               _%__splice201228201229%_
                               _%target195333196046%_
                               _%tl195335196048%_)
                        (letrec ((_%loop195336196051%_
                                  (lambda (_%hd195334196054%_
                                           _%args195340196056%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd195334196054%_))
                                        (let ((_%e195337196058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd195334196054%_))))
                                          (let ((_%lp-tl195339196063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195337196058%_)))
                                                (_%lp-hd195338196061%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195337196058%_))))
                                            (_%loop195336196051%_
                                             _%lp-tl195339196063%_
                                             (cons _%lp-hd195338196061%_
                                                   _%args195340196056%_))))
                                        (let ((_%args195341196066%_
                                               (reverse _%args195340196056%_)))
                                          (let ((_%g195289196068%_
                                                 _%args195341196066%_)
                                                (_%g195290196069%_
                                                 _%hd195331196041%_)
                                                (_%g195291196070%_
                                                 _%hd195322196017%_)
                                                (_%g195292196071%_
                                                 _%hd195313195993%_)
                                                (_%g195293196072%_
                                                 _%hd195304195969%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195293196072%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195292196071%_
                                                        'call-method))
                                                     (let ((__tmp201913
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195233%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g195291196070%_
                                                        __tmp201913)))
                                                (_%__kont201226201227%_
                                                 _%g195289196068%_
                                                 _%g195290196069%_
                                                 _%g195291196070%_
                                                 _%g195292196071%_
                                                 _%g195293196072%_)
                                                (_%__kont201238201239%_))))))))
                          (_%loop195336196051%_ _%target195333196046%_ '()))))
                     (_%__match201393201394%_
                      (lambda (_%e195294195942%_
                               _%hd195295195945%_
                               _%tl195296195947%_
                               _%e195297195950%_
                               _%hd195298195953%_
                               _%tl195299195955%_
                               _%e195300195958%_
                               _%hd195301195961%_
                               _%tl195302195963%_
                               _%e195303195966%_
                               _%hd195304195969%_
                               _%tl195305195971%_
                               _%e195306195974%_
                               _%hd195307195977%_
                               _%tl195308195979%_
                               _%e195309195982%_
                               _%hd195310195985%_
                               _%tl195311195987%_
                               _%e195312195990%_
                               _%hd195313195993%_
                               _%tl195314195995%_
                               _%e195315195998%_
                               _%hd195316196001%_
                               _%tl195317196003%_
                               _%e195318196006%_
                               _%hd195319196009%_
                               _%tl195320196011%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd195319196009%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195320196011%_))
                                (let ((_%e195321196014%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195320196011%_))))
                                  (let ((_%tl195323196019%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195321196014%_)))
                                        (_%hd195322196017%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195321196014%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195323196019%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl195317196003%_))
                                            (let ((_%e195324196022%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl195317196003%_))))
                                              (let ((_%tl195326196027%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e195324196022%_)))
                                                    (_%hd195325196025%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e195324196022%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd195325196025%_))
                                                    (let ((_%e195327196030%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd195325196025%_))))
                                                      (let ((_%tl195329196035%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e195327196030%_)))
                    (_%hd195328196033%_
                     (let () (declare (not safe)) (##car _%e195327196030%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd195328196033%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd195328196033%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195329196035%_))
                            (let ((_%e195330196038%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195329196035%_))))
                              (let ((_%tl195332196043%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195330196038%_)))
                                    (_%hd195331196041%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195330196038%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195332196043%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl195326196027%_))
                                        (let ((_%__splice201228201229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl195326196027%_
                                                  '0))))
                                          (let ((_%tl195335196048%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201228201229%_
                                                    '1)))
                                                (_%target195333196046%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201228201229%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195335196048%_))
                                                (_%__match201435201436%_
                                                 _%e195294195942%_
                                                 _%hd195295195945%_
                                                 _%tl195296195947%_
                                                 _%e195297195950%_
                                                 _%hd195298195953%_
                                                 _%tl195299195955%_
                                                 _%e195300195958%_
                                                 _%hd195301195961%_
                                                 _%tl195302195963%_
                                                 _%e195303195966%_
                                                 _%hd195304195969%_
                                                 _%tl195305195971%_
                                                 _%e195306195974%_
                                                 _%hd195307195977%_
                                                 _%tl195308195979%_
                                                 _%e195309195982%_
                                                 _%hd195310195985%_
                                                 _%tl195311195987%_
                                                 _%e195312195990%_
                                                 _%hd195313195993%_
                                                 _%tl195314195995%_
                                                 _%e195315195998%_
                                                 _%hd195316196001%_
                                                 _%tl195317196003%_
                                                 _%e195318196006%_
                                                 _%hd195319196009%_
                                                 _%tl195320196011%_
                                                 _%e195321196014%_
                                                 _%hd195322196017%_
                                                 _%tl195323196019%_
                                                 _%e195324196022%_
                                                 _%hd195325196025%_
                                                 _%tl195326196027%_
                                                 _%e195327196030%_
                                                 _%hd195328196033%_
                                                 _%tl195329196035%_
                                                 _%e195330196038%_
                                                 _%hd195331196041%_
                                                 _%tl195332196043%_
                                                 _%__splice201228201229%_
                                                 _%target195333196046%_
                                                 _%tl195335196048%_)
                                                (_%__kont201238201239%_))))
                                        (_%__kont201238201239%_))
                                    (_%__kont201238201239%_))))
                            (_%__kont201238201239%_))
                        (_%__kont201238201239%_))
                    (_%__kont201238201239%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont201238201239%_))))
                                            (_%__match201717201718%_
                                             _%e195294195942%_
                                             _%hd195295195945%_
                                             _%tl195296195947%_
                                             _%e195297195950%_
                                             _%hd195298195953%_
                                             _%tl195299195955%_
                                             _%e195300195958%_
                                             _%hd195301195961%_
                                             _%tl195302195963%_
                                             _%e195303195966%_
                                             _%hd195304195969%_
                                             _%tl195305195971%_
                                             _%e195306195974%_
                                             _%hd195307195977%_
                                             _%tl195308195979%_
                                             _%e195309195982%_
                                             _%hd195310195985%_
                                             _%tl195311195987%_
                                             _%e195312195990%_
                                             _%hd195313195993%_
                                             _%tl195314195995%_
                                             _%e195315195998%_
                                             _%hd195316196001%_
                                             _%tl195317196003%_))
                                        (_%__match201717201718%_
                                         _%e195294195942%_
                                         _%hd195295195945%_
                                         _%tl195296195947%_
                                         _%e195297195950%_
                                         _%hd195298195953%_
                                         _%tl195299195955%_
                                         _%e195300195958%_
                                         _%hd195301195961%_
                                         _%tl195302195963%_
                                         _%e195303195966%_
                                         _%hd195304195969%_
                                         _%tl195305195971%_
                                         _%e195306195974%_
                                         _%hd195307195977%_
                                         _%tl195308195979%_
                                         _%e195309195982%_
                                         _%hd195310195985%_
                                         _%tl195311195987%_
                                         _%e195312195990%_
                                         _%hd195313195993%_
                                         _%tl195314195995%_
                                         _%e195315195998%_
                                         _%hd195316196001%_
                                         _%tl195317196003%_))))
                                (_%__match201717201718%_
                                 _%e195294195942%_
                                 _%hd195295195945%_
                                 _%tl195296195947%_
                                 _%e195297195950%_
                                 _%hd195298195953%_
                                 _%tl195299195955%_
                                 _%e195300195958%_
                                 _%hd195301195961%_
                                 _%tl195302195963%_
                                 _%e195303195966%_
                                 _%hd195304195969%_
                                 _%tl195305195971%_
                                 _%e195306195974%_
                                 _%hd195307195977%_
                                 _%tl195308195979%_
                                 _%e195309195982%_
                                 _%hd195310195985%_
                                 _%tl195311195987%_
                                 _%e195312195990%_
                                 _%hd195313195993%_
                                 _%tl195314195995%_
                                 _%e195315195998%_
                                 _%hd195316196001%_
                                 _%tl195317196003%_))
                            (_%__match201503201504%_
                             _%e195294195942%_
                             _%hd195295195945%_
                             _%tl195296195947%_
                             _%e195297195950%_
                             _%hd195298195953%_
                             _%tl195299195955%_
                             _%e195300195958%_
                             _%hd195301195961%_
                             _%tl195302195963%_
                             _%e195303195966%_
                             _%hd195304195969%_
                             _%tl195305195971%_
                             _%e195306195974%_
                             _%hd195307195977%_
                             _%tl195308195979%_
                             _%e195309195982%_
                             _%hd195310195985%_
                             _%tl195311195987%_
                             _%e195312195990%_
                             _%hd195313195993%_
                             _%tl195314195995%_
                             _%e195315195998%_
                             _%hd195316196001%_
                             _%tl195317196003%_
                             _%e195318196006%_
                             _%hd195319196009%_
                             _%tl195320196011%_))))
                     (_%__match201325201326%_
                      (lambda (_%e195250196132%_
                               _%hd195251196135%_
                               _%tl195252196137%_
                               _%e195253196140%_
                               _%hd195254196143%_
                               _%tl195255196145%_
                               _%e195256196148%_
                               _%hd195257196151%_
                               _%tl195258196153%_
                               _%e195259196156%_
                               _%hd195260196159%_
                               _%tl195261196161%_
                               _%e195262196164%_
                               _%hd195263196167%_
                               _%tl195264196169%_
                               _%e195265196172%_
                               _%hd195266196175%_
                               _%tl195267196177%_
                               _%e195268196180%_
                               _%hd195269196183%_
                               _%tl195270196185%_
                               _%e195271196188%_
                               _%hd195272196191%_
                               _%tl195273196193%_
                               _%e195274196196%_
                               _%hd195275196199%_
                               _%tl195276196201%_
                               _%e195277196204%_
                               _%hd195278196207%_
                               _%tl195279196209%_
                               _%__splice201224201225%_
                               _%target195280196212%_
                               _%tl195282196214%_)
                        (letrec ((_%loop195283196217%_
                                  (lambda (_%hd195281196220%_
                                           _%args195287196222%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd195281196220%_))
                                        (let ((_%e195284196224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd195281196220%_))))
                                          (let ((_%lp-tl195286196229%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195284196224%_)))
                                                (_%lp-hd195285196227%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195284196224%_))))
                                            (_%loop195283196217%_
                                             _%lp-tl195286196229%_
                                             (cons _%lp-hd195285196227%_
                                                   _%args195287196222%_))))
                                        (let ((_%args195288196232%_
                                               (reverse _%args195287196222%_)))
                                          (let ((_%g195246196234%_
                                                 _%args195288196232%_)
                                                (_%g195247196235%_
                                                 _%hd195278196207%_)
                                                (_%g195248196236%_
                                                 _%hd195269196183%_)
                                                (_%g195249196237%_
                                                 _%hd195260196159%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195249196237%_
                                                        'call-method))
                                                     (let ((__tmp201914
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195233%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g195248196236%_
                                                        __tmp201914)))
                                                (_%__kont201222201223%_
                                                 _%g195246196234%_
                                                 _%g195247196235%_
                                                 _%g195248196236%_
                                                 _%g195249196237%_)
                                                (_%__match201513201514%_
                                                 _%e195250196132%_
                                                 _%hd195251196135%_
                                                 _%tl195252196137%_
                                                 _%e195253196140%_
                                                 _%hd195254196143%_
                                                 _%tl195255196145%_
                                                 _%e195256196148%_
                                                 _%hd195257196151%_
                                                 _%tl195258196153%_
                                                 _%e195259196156%_
                                                 _%hd195260196159%_
                                                 _%tl195261196161%_
                                                 _%e195262196164%_
                                                 _%hd195263196167%_
                                                 _%tl195264196169%_
                                                 _%e195265196172%_
                                                 _%hd195266196175%_
                                                 _%tl195267196177%_
                                                 _%e195268196180%_
                                                 _%hd195269196183%_
                                                 _%tl195270196185%_
                                                 _%e195271196188%_
                                                 _%hd195272196191%_
                                                 _%tl195273196193%_
                                                 _%e195274196196%_
                                                 _%hd195275196199%_
                                                 _%tl195276196201%_
                                                 _%e195277196204%_
                                                 _%hd195278196207%_
                                                 _%tl195279196209%_))))))))
                          (_%loop195283196217%_ _%target195280196212%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx201220201221%_))
                    (let ((_%e195250196132%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx201220201221%_))))
                      (let ((_%tl195252196137%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195250196132%_)))
                            (_%hd195251196135%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195250196132%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195252196137%_))
                            (let ((_%e195253196140%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195252196137%_))))
                              (let ((_%tl195255196145%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195253196140%_)))
                                    (_%hd195254196143%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195253196140%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd195254196143%_))
                                    (let ((_%e195256196148%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd195254196143%_))))
                                      (let ((_%tl195258196153%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e195256196148%_)))
                                            (_%hd195257196151%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e195256196148%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd195257196151%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd195257196151%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl195258196153%_))
                                                    (let ((_%e195259196156%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl195258196153%_))))
                                                      (let ((_%tl195261196161%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e195259196156%_)))
                    (_%hd195260196159%_
                     (let () (declare (not safe)) (##car _%e195259196156%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl195261196161%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl195255196145%_))
                        (let ((_%e195262196164%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl195255196145%_))))
                          (let ((_%tl195264196169%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195262196164%_)))
                                (_%hd195263196167%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195262196164%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd195263196167%_))
                                (let ((_%e195265196172%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd195263196167%_))))
                                  (let ((_%tl195267196177%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195265196172%_)))
                                        (_%hd195266196175%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195265196172%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd195266196175%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd195266196175%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl195267196177%_))
                                                (let ((_%e195268196180%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl195267196177%_))))
                                                  (let ((_%tl195270196185%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e195268196180%_)))
                                                        (_%hd195269196183%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e195268196180%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl195270196185%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl195264196169%_))
                                                            (let ((_%e195271196188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl195264196169%_))))
                      (let ((_%tl195273196193%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195271196188%_)))
                            (_%hd195272196191%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195271196188%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd195272196191%_))
                            (let ((_%e195274196196%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd195272196191%_))))
                              (let ((_%tl195276196201%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195274196196%_)))
                                    (_%hd195275196199%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195274196196%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd195275196199%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd195275196199%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl195276196201%_))
                                            (let ((_%e195277196204%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl195276196201%_))))
                                              (let ((_%tl195279196209%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e195277196204%_)))
                                                    (_%hd195278196207%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e195277196204%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl195279196209%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl195273196193%_))
                                                        (let ((_%__splice201224201225%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl195273196193%_
                          '0))))
                  (let ((_%tl195282196214%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice201224201225%_ '1)))
                        (_%target195280196212%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice201224201225%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl195282196214%_))
                        (_%__match201325201326%_
                         _%e195250196132%_
                         _%hd195251196135%_
                         _%tl195252196137%_
                         _%e195253196140%_
                         _%hd195254196143%_
                         _%tl195255196145%_
                         _%e195256196148%_
                         _%hd195257196151%_
                         _%tl195258196153%_
                         _%e195259196156%_
                         _%hd195260196159%_
                         _%tl195261196161%_
                         _%e195262196164%_
                         _%hd195263196167%_
                         _%tl195264196169%_
                         _%e195265196172%_
                         _%hd195266196175%_
                         _%tl195267196177%_
                         _%e195268196180%_
                         _%hd195269196183%_
                         _%tl195270196185%_
                         _%e195271196188%_
                         _%hd195272196191%_
                         _%tl195273196193%_
                         _%e195274196196%_
                         _%hd195275196199%_
                         _%tl195276196201%_
                         _%e195277196204%_
                         _%hd195278196207%_
                         _%tl195279196209%_
                         _%__splice201224201225%_
                         _%target195280196212%_
                         _%tl195282196214%_)
                        (_%__match201513201514%_
                         _%e195250196132%_
                         _%hd195251196135%_
                         _%tl195252196137%_
                         _%e195253196140%_
                         _%hd195254196143%_
                         _%tl195255196145%_
                         _%e195256196148%_
                         _%hd195257196151%_
                         _%tl195258196153%_
                         _%e195259196156%_
                         _%hd195260196159%_
                         _%tl195261196161%_
                         _%e195262196164%_
                         _%hd195263196167%_
                         _%tl195264196169%_
                         _%e195265196172%_
                         _%hd195266196175%_
                         _%tl195267196177%_
                         _%e195268196180%_
                         _%hd195269196183%_
                         _%tl195270196185%_
                         _%e195271196188%_
                         _%hd195272196191%_
                         _%tl195273196193%_
                         _%e195274196196%_
                         _%hd195275196199%_
                         _%tl195276196201%_
                         _%e195277196204%_
                         _%hd195278196207%_
                         _%tl195279196209%_))))
                (_%__match201513201514%_
                 _%e195250196132%_
                 _%hd195251196135%_
                 _%tl195252196137%_
                 _%e195253196140%_
                 _%hd195254196143%_
                 _%tl195255196145%_
                 _%e195256196148%_
                 _%hd195257196151%_
                 _%tl195258196153%_
                 _%e195259196156%_
                 _%hd195260196159%_
                 _%tl195261196161%_
                 _%e195262196164%_
                 _%hd195263196167%_
                 _%tl195264196169%_
                 _%e195265196172%_
                 _%hd195266196175%_
                 _%tl195267196177%_
                 _%e195268196180%_
                 _%hd195269196183%_
                 _%tl195270196185%_
                 _%e195271196188%_
                 _%hd195272196191%_
                 _%tl195273196193%_
                 _%e195274196196%_
                 _%hd195275196199%_
                 _%tl195276196201%_
                 _%e195277196204%_
                 _%hd195278196207%_
                 _%tl195279196209%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match201717201718%_
                                                     _%e195250196132%_
                                                     _%hd195251196135%_
                                                     _%tl195252196137%_
                                                     _%e195253196140%_
                                                     _%hd195254196143%_
                                                     _%tl195255196145%_
                                                     _%e195256196148%_
                                                     _%hd195257196151%_
                                                     _%tl195258196153%_
                                                     _%e195259196156%_
                                                     _%hd195260196159%_
                                                     _%tl195261196161%_
                                                     _%e195262196164%_
                                                     _%hd195263196167%_
                                                     _%tl195264196169%_
                                                     _%e195265196172%_
                                                     _%hd195266196175%_
                                                     _%tl195267196177%_
                                                     _%e195268196180%_
                                                     _%hd195269196183%_
                                                     _%tl195270196185%_
                                                     _%e195271196188%_
                                                     _%hd195272196191%_
                                                     _%tl195273196193%_))))
                                            (_%__match201717201718%_
                                             _%e195250196132%_
                                             _%hd195251196135%_
                                             _%tl195252196137%_
                                             _%e195253196140%_
                                             _%hd195254196143%_
                                             _%tl195255196145%_
                                             _%e195256196148%_
                                             _%hd195257196151%_
                                             _%tl195258196153%_
                                             _%e195259196156%_
                                             _%hd195260196159%_
                                             _%tl195261196161%_
                                             _%e195262196164%_
                                             _%hd195263196167%_
                                             _%tl195264196169%_
                                             _%e195265196172%_
                                             _%hd195266196175%_
                                             _%tl195267196177%_
                                             _%e195268196180%_
                                             _%hd195269196183%_
                                             _%tl195270196185%_
                                             _%e195271196188%_
                                             _%hd195272196191%_
                                             _%tl195273196193%_))
                                        (_%__match201393201394%_
                                         _%e195250196132%_
                                         _%hd195251196135%_
                                         _%tl195252196137%_
                                         _%e195253196140%_
                                         _%hd195254196143%_
                                         _%tl195255196145%_
                                         _%e195256196148%_
                                         _%hd195257196151%_
                                         _%tl195258196153%_
                                         _%e195259196156%_
                                         _%hd195260196159%_
                                         _%tl195261196161%_
                                         _%e195262196164%_
                                         _%hd195263196167%_
                                         _%tl195264196169%_
                                         _%e195265196172%_
                                         _%hd195266196175%_
                                         _%tl195267196177%_
                                         _%e195268196180%_
                                         _%hd195269196183%_
                                         _%tl195270196185%_
                                         _%e195271196188%_
                                         _%hd195272196191%_
                                         _%tl195273196193%_
                                         _%e195274196196%_
                                         _%hd195275196199%_
                                         _%tl195276196201%_))
                                    (_%__match201717201718%_
                                     _%e195250196132%_
                                     _%hd195251196135%_
                                     _%tl195252196137%_
                                     _%e195253196140%_
                                     _%hd195254196143%_
                                     _%tl195255196145%_
                                     _%e195256196148%_
                                     _%hd195257196151%_
                                     _%tl195258196153%_
                                     _%e195259196156%_
                                     _%hd195260196159%_
                                     _%tl195261196161%_
                                     _%e195262196164%_
                                     _%hd195263196167%_
                                     _%tl195264196169%_
                                     _%e195265196172%_
                                     _%hd195266196175%_
                                     _%tl195267196177%_
                                     _%e195268196180%_
                                     _%hd195269196183%_
                                     _%tl195270196185%_
                                     _%e195271196188%_
                                     _%hd195272196191%_
                                     _%tl195273196193%_))))
                            (_%__match201717201718%_
                             _%e195250196132%_
                             _%hd195251196135%_
                             _%tl195252196137%_
                             _%e195253196140%_
                             _%hd195254196143%_
                             _%tl195255196145%_
                             _%e195256196148%_
                             _%hd195257196151%_
                             _%tl195258196153%_
                             _%e195259196156%_
                             _%hd195260196159%_
                             _%tl195261196161%_
                             _%e195262196164%_
                             _%hd195263196167%_
                             _%tl195264196169%_
                             _%e195265196172%_
                             _%hd195266196175%_
                             _%tl195267196177%_
                             _%e195268196180%_
                             _%hd195269196183%_
                             _%tl195270196185%_
                             _%e195271196188%_
                             _%hd195272196191%_
                             _%tl195273196193%_))))
                    (_%__match201655201656%_
                     _%e195250196132%_
                     _%hd195251196135%_
                     _%tl195252196137%_
                     _%e195253196140%_
                     _%hd195254196143%_
                     _%tl195255196145%_
                     _%e195256196148%_
                     _%hd195257196151%_
                     _%tl195258196153%_
                     _%e195259196156%_
                     _%hd195260196159%_
                     _%tl195261196161%_
                     _%e195262196164%_
                     _%hd195263196167%_
                     _%tl195264196169%_
                     _%e195265196172%_
                     _%hd195266196175%_
                     _%tl195267196177%_
                     _%e195268196180%_
                     _%hd195269196183%_
                     _%tl195270196185%_))
                (_%__kont201238201239%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont201238201239%_))
                                            (_%__kont201238201239%_))
                                        (_%__kont201238201239%_))))
                                (_%__kont201238201239%_))))
                        (_%__kont201238201239%_))
                    (_%__kont201238201239%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont201238201239%_))
                                                (_%__kont201238201239%_))
                                            (_%__kont201238201239%_))))
                                    (_%__kont201238201239%_))))
                            (_%__kont201238201239%_))))
                    (_%__kont201238201239%_))))))))))
