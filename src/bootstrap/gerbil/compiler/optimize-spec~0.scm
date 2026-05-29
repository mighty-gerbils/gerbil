(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1779967247)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp237786 (list gxc#::identity::t))
            (__tmp237785 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp237786
         '()
         __tmp237785
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args236583%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args236583%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp237787
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
        (__make-atomic-promise __tmp237787)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx236575%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self236578%_
                (let ((__obj237778
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj237778))
               (__tmp237788
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self236578%_ _%stx236575%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp237788
           gxc#current-compile-method
           _%self236578%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp237790 (list gxc#::false::t))
            (__tmp237789 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp237790
         '()
         __tmp237789
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args236572%_
        (apply make-instance gxc#::extract-receiver::t _%$args236572%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp237791
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
        (__make-atomic-promise __tmp237791)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx236564%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self236567%_
                (let ((__obj237780
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj237780))
               (__tmp237792
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self236567%_ _%stx236564%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp237792
           gxc#current-compile-method
           _%self236567%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp237794 (list gxc#::void::t))
            (__tmp237793 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp237794
         '(receiver methods slots)
         __tmp237793
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args236561%_
        (apply make-instance gxc#::collect-object-refs::t _%$args236561%_)))
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
      (let ((__tmp237795
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
        (__make-atomic-promise __tmp237795)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords236530%_
               _%receiver236525236531%_
               _%methods236526236532%_
               _%slots236527236533%_
               _%stx236534%_)
        (let* ((_%receiver236537%_
                (if (eq? _%receiver236525236531%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver236525236531%_))
               (_%methods236539%_
                (if (eq? _%methods236526236532%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods236526236532%_))
               (_%slots236541%_
                (if (eq? _%slots236527236533%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots236527236533%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self236543%_
                  (let ((__obj237782
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
                       __obj237782
                       _%receiver236537%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj237782
                       _%methods236539%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj237782
                       _%slots236541%_
                       '3
                       '#f
                       '#f))
                    __obj237782))
                 (__tmp237796
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self236543%_ _%stx236534%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp237796
             gxc#current-compile-method
             _%self236543%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords236550%_ . _%args236551%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords236550%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords236550%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords236550%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords236550%_
                  'slots:
                  absent-value))
               _%args236551%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args236528236557%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args236528236557%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp237798 (list gxc#::basic-xform-expression::t))
            (__tmp237797 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp237798
         '(receiver klass methods slots)
         __tmp237797
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args236521%_
        (apply make-instance gxc#::subst-object-refs::t _%$args236521%_)))
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
      (let ((__tmp237799
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
        (__make-atomic-promise __tmp237799)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords236487%_
               _%receiver236481236488%_
               _%klass236482236489%_
               _%methods236483236490%_
               _%slots236484236491%_
               _%stx236492%_)
        (let* ((_%receiver236495%_
                (if (eq? _%receiver236481236488%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver236481236488%_))
               (_%klass236497%_
                (if (eq? _%klass236482236489%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass236482236489%_))
               (_%methods236499%_
                (if (eq? _%methods236483236490%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods236483236490%_))
               (_%slots236501%_
                (if (eq? _%slots236484236491%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots236484236491%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self236503%_
                  (let ((__obj237784
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
                       __obj237784
                       _%receiver236495%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj237784
                       _%klass236497%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj237784
                       _%methods236499%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj237784
                       _%slots236501%_
                       '4
                       '#f
                       '#f))
                    __obj237784))
                 (__tmp237800
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self236503%_ _%stx236492%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp237800
             gxc#current-compile-method
             _%self236503%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords236510%_ . _%args236511%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords236510%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords236510%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords236510%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords236510%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords236510%_
                  'slots:
                  absent-value))
               _%args236511%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args236485236517%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args236485236517%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self233612%_ _%stx233613%_)
        (letrec ((_%generate-method-bind233615%_
                  (lambda (_%$klass236473%_
                           _%$method-table236474%_
                           _%id236475%_
                           _%$id236476%_)
                    (let ((_%$tmp236478%_
                           (let ((__tmp237801
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp237801))))
                      (cons (cons _%$id236476%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp236478%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table236474%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id236475%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp236478%_ '()))
                    (cons (cons '%#ref (cons _%$tmp236478%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id236475%_
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
                 (_%generate-slot-bind233616%_
                  (lambda (_%$klass236467%_ _%id236468%_ _%$id236469%_)
                    (let ((_%$tmp236471%_
                           (let ((__tmp237802
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp237802))))
                      (cons (cons _%$id236469%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp236471%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass236467%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id236468%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp236471%_ '()))
                        (cons (cons '%#ref (cons _%$tmp236471%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id236468%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl233617%_
                  (lambda (_%$klass236461%_
                           _%$method-table236462%_
                           _%methods-bind236463%_
                           _%slots-bind236464%_
                           _%specializer-impl236465%_)
                    (let ((__tmp237803
                           (cons '%#lambda
                                 (cons (cons _%$klass236461%_
                                             (cons _%$method-table236462%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind236464%_
                                                            _%methods-bind236463%_))
                                                         (cons _%specializer-impl236465%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp237803 _%stx233613%_))))
                 (_%generate-specializer-def233618%_
                  (lambda (_%id236457%_
                           _%specializer-id236458%_
                           _%specializer-impl236459%_)
                    (let ((__tmp237804
                           (cons '%#begin
                                 (cons _%stx233613%_
                                       (cons (let ((__tmp237805
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id236458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl236459%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp237805
                                                _%stx233613%_))
                                             (cons (let ((__tmp237806
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id236457%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id236458%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp237806
                                                      _%stx233613%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp237804 _%stx233613%_)))))
          (let* ((_%__stx236672236673%_ _%stx233613%_)
                 (_%g233621233641%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx236672236673%_)))))
            (let ((_%__kont236674236675%_
                   (lambda (_%g233623233685%_ _%g233624233686%_)
                     (let ((_%method-calls233705%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs233706%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty233707%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?233709%_
                                 (lambda ()
                                   (if (let ((__tmp237807
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls233705%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp237807))
                                       (let ((__tmp237808
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs233706%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp237808))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g233623233685%_))
                             (let* ((_%__stx236586236587%_ _%g233623233685%_)
                                    (_%g234093234111%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx236586236587%_)))))
                               (let ((_%__kont236588236589%_
                                      (lambda (_%g234095234147%_
                                               _%g234096234148%_
                                               _%g234097234149%_)
                                        (let ((_%receiver234169%_
                                               (let ((_%$e234166%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g234095234147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e234166%_
                                                     _%$e234166%_
                                                     _%g234097234149%_))))
                                          (for-each
                                           (lambda (_%g234170234172%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver234169%_
                                              _%method-calls233705%_
                                              _%slot-refs233706%_
                                              _%g234170234172%_))
                                           _%g234095234147%_)
                                          (if (_%no-specializer?233709%_)
                                              _%stx233613%_
                                              (let* ((_%specializer-id234181%_
                                                      (let* ((_%id234175%_
                                                              (let ((__tmp237809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g233624233686%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp237809 '"::specialize")))
                     (_%specializer-id234178%_
                      (let ((__tmp237810
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx233613%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id234175%_ __tmp237810))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id234178%_))
                _%specializer-id234178%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass234183%_
                                                      (let ((__tmp237811
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp237811)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table234185%_
                                                      (let ((__tmp237812
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp237812)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods234187%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls233705%_)))
                                                     (_%$methods234191%_
                                                      (let ((__tmp237813
                                                             (lambda (_%id234189%_)
                                                               (let ((__tmp237814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id234189%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp237814)))))
                (declare (not safe))
                (##map __tmp237813 _%methods234187%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_234200%_
                                                      (let ((__tmp237815
                                                             (lambda (_%g234192234195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g234193234197%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls233705%_
                          _%g234192234195%_
                          _%g234193234197%_)))))
                (declare (not safe))
                (##for-each __tmp237815 _%methods234187%_ _%$methods234191%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind234210%_
                                                      (let ((__tmp237816
                                                             (lambda (_%g234202234205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g234203234207%_)
                       (_%generate-method-bind233615%_
                        _%$klass234183%_
                        _%$method-table234185%_
                        _%g234202234205%_
                        _%g234203234207%_))))
                (declare (not safe))
                (##map __tmp237816 _%methods234187%_ _%$methods234191%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots234212%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs233706%_)))
                                                     (_%$slots234216%_
                                                      (let ((__tmp237817
                                                             (lambda (_%id234214%_)
                                                               (let ((__tmp237818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id234214%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp237818)))))
                (declare (not safe))
                (##map __tmp237817 _%slots234212%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_234225%_
                                                      (let ((__tmp237819
                                                             (lambda (_%g234217234220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g234218234222%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs233706%_
                          _%g234217234220%_
                          _%g234218234222%_)))))
                (declare (not safe))
                (##for-each __tmp237819 _%slots234212%_ _%$slots234216%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind234234%_
                                                      (let ((__tmp237820
                                                             (lambda (_%g234226234229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g234227234231%_)
                       (_%generate-slot-bind233616%_
                        _%$klass234183%_
                        _%g234226234229%_
                        _%g234227234231%_))))
                (declare (not safe))
                (##map __tmp237820 _%slots234212%_ _%$slots234216%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body234240%_
                                                      (map (lambda (_%g234235234237%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver234169%_
                                                              _%$klass234183%_
                                                              _%method-calls233705%_
                                                              _%slot-refs233706%_
                                                              _%g234235234237%_))
                                                           _%g234095234147%_))
                                                     (_%specializer-impl234242%_
                                                      (let ((__tmp237821
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g234097234149%_ _%g234096234148%_)
                                 _%specializer-body234240%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp237821 _%stx233613%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl234244%_
                                                      (_%generate-specializer-impl233617%_
                                                       _%$klass234183%_
                                                       _%$method-table234185%_
                                                       _%methods-bind234210%_
                                                       _%slots-bind234234%_
                                                       _%specializer-impl234242%_)))
                                                (let ((__tmp237823
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g233624233686%_)))
                                                      (__tmp237822
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id234181%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp237823
                                                   '" => "
                                                   __tmp237822))
                                                (_%generate-specializer-def233618%_
                                                 _%g233624233686%_
                                                 _%specializer-id234181%_
                                                 _%specializer-impl234244%_))))))
                                     (_%__kont236590236591%_
                                      (lambda () _%stx233613%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx236586236587%_))
                                     (let ((_%e234098234123%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx236586236587%_))))
                                       (let ((_%tl234100234128%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e234098234123%_)))
                                             (_%hd234099234126%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e234098234123%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl234100234128%_))
                                             (let ((_%e234101234131%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl234100234128%_))))
                                               (let ((_%tl234103234136%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e234101234131%_)))
                                                     (_%hd234102234134%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e234101234131%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd234102234134%_))
                                                     (let ((_%e234104234139%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd234102234134%_))))
                                                       (let ((_%tl234106234144%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e234104234139%_)))
                     (_%hd234105234142%_
                      (let () (declare (not safe)) (##car _%e234104234139%_))))
                 (_%__kont236588236589%_
                  _%tl234103234136%_
                  _%tl234106234144%_
                  _%hd234105234142%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont236590236591%_))))
                                             (_%__kont236590236591%_))))
                                     (_%__kont236590236591%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g233623233685%_))
                                 (let* ((_%g234251234270%_
                                         (lambda (_%g234252234267%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g234252234267%_))))
                                        (_%g234250234566%_
                                         (lambda (_%g234252234273%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g234252234273%_))
                                               (let ((_%e234254234275%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g234252234273%_))))
                                                 (let ((_%hd234255234278%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e234254234275%_)))
                                                       (_%tl234256234280%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e234254234275%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl234256234280%_))
                                                       (let ((_g237824_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl234256234280%_ '0))))
                 (begin
                   (let ((_g237825_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g237824_)
                                (##values-length _g237824_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g237825_ 2)))
                         (error "Context expects 2 values" _g237825_)))
                   (let ((_%target234257234283%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g237824_ 0)))
                         (_%tl234259234285%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g237824_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl234259234285%_))
                         (letrec ((_%loop234260234288%_
                                   (lambda (_%hd234258234291%_
                                            _%clause234264234293%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd234258234291%_))
                                         (let ((_%e234261234295%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd234258234291%_))))
                                           (let ((_%lp-hd234262234298%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e234261234295%_)))
                                                 (_%lp-tl234263234300%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e234261234295%_))))
                                             (_%loop234260234288%_
                                              _%lp-tl234263234300%_
                                              (cons _%lp-hd234262234298%_
                                                    _%clause234264234293%_))))
                                         (let ((_%clause234265234303%_
                                                (reverse _%clause234264234293%_)))
                                           (for-each
                                            (lambda (_%clause234319%_)
                                              (let* ((_%__stx236612236613%_
                                                      _%clause234319%_)
                                                     (_%g234322234337%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx236612236613%_)))))
                                                (let ((_%__kont236614236615%_
                                                       (lambda (_%g234324234365%_
                                                                _%g234325234366%_
                                                                _%g234326234367%_)
                                                         (let ((_%receiver234386%_
                                                                (let ((_%$e234383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gxc#apply-extract-receiver
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f '%#begin))
                                      _%g234324234365%_))))
                          (if _%$e234383%_ _%$e234383%_ _%g234326234367%_))))
                   (for-each
                    (lambda (_%g234387234389%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver234386%_
                       _%method-calls233705%_
                       _%slot-refs233706%_
                       _%g234387234389%_))
                    _%g234324234365%_))))
              (_%__kont236616236617%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx236612236613%_))
                                                      (let ((_%e234327234349%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx236612236613%_))))
                (let ((_%tl234329234354%_
                       (let () (declare (not safe)) (##cdr _%e234327234349%_)))
                      (_%hd234328234352%_
                       (let ()
                         (declare (not safe))
                         (##car _%e234327234349%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd234328234352%_))
                      (let ((_%e234330234357%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd234328234352%_))))
                        (let ((_%tl234332234362%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e234330234357%_)))
                              (_%hd234331234360%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e234330234357%_))))
                          (_%__kont236614236615%_
                           _%tl234329234354%_
                           _%tl234332234362%_
                           _%hd234331234360%_)))
                      '#!void)))
              '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((__tmp237826
                                                   (lambda (_%g234394234397%_
                                                            _%g234395234399%_)
                                                     (cons _%g234394234397%_
                                                           _%g234395234399%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp237826
                                               '()
                                               _%clause234265234303%_)))
                                           (if (_%no-specializer?233709%_)
                                               _%stx233613%_
                                               (let* ((_%specializer-id234408%_
                                                       (let* ((_%id234402%_
                                                               (let ((__tmp237827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g233624233686%_))))
                         (declare (not safe))
                         (make-symbol__1 __tmp237827 '"::specialize")))
                      (_%specializer-id234405%_
                       (let ((__tmp237828
                              (let ()
                                (declare (not safe))
                                (gx#stx-source _%stx233613%_))))
                         (declare (not safe))
                         (gx#core-quote-syntax__1 _%id234402%_ __tmp237828))))
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _%specializer-id234405%_))
                 _%specializer-id234405%_))
              (_%$klass234410%_
               (let ((__tmp237829
                      (let () (declare (not safe)) (##gensym '__klass))))
                 (declare (not safe))
                 (make-symbol__0 __tmp237829)))
              (_%$method-table234412%_
               (let ((__tmp237830
                      (let ()
                        (declare (not safe))
                        (##gensym '__method-table))))
                 (declare (not safe))
                 (make-symbol__0 __tmp237830)))
              (_%methods234414%_
               (let ()
                 (declare (not safe))
                 (__hash-keys _%method-calls233705%_)))
              (_%$methods234418%_
               (let ((__tmp237831
                      (lambda (_%id234416%_)
                        (let ((__tmp237832 (gensym _%id234416%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp237832)))))
                 (declare (not safe))
                 (##map __tmp237831 _%methods234414%_)))
              (_%_234427%_
               (let ((__tmp237833
                      (lambda (_%g234419234422%_ _%g234420234424%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%method-calls233705%_
                           _%g234419234422%_
                           _%g234420234424%_)))))
                 (declare (not safe))
                 (##for-each
                  __tmp237833
                  _%methods234414%_
                  _%$methods234418%_)))
              (_%methods-bind234437%_
               (let ((__tmp237834
                      (lambda (_%g234429234432%_ _%g234430234434%_)
                        (_%generate-method-bind233615%_
                         _%$klass234410%_
                         _%$method-table234412%_
                         _%g234429234432%_
                         _%g234430234434%_))))
                 (declare (not safe))
                 (##map __tmp237834 _%methods234414%_ _%$methods234418%_)))
              (_%slots234439%_
               (let () (declare (not safe)) (__hash-keys _%slot-refs233706%_)))
              (_%$slots234443%_
               (let ((__tmp237835
                      (lambda (_%id234441%_)
                        (let ((__tmp237836 (gensym _%id234441%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp237836)))))
                 (declare (not safe))
                 (##map __tmp237835 _%slots234439%_)))
              (_%_234452%_
               (let ((__tmp237837
                      (lambda (_%g234444234447%_ _%g234445234449%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%slot-refs233706%_
                           _%g234444234447%_
                           _%g234445234449%_)))))
                 (declare (not safe))
                 (##for-each __tmp237837 _%slots234439%_ _%$slots234443%_)))
              (_%slots-bind234461%_
               (let ((__tmp237838
                      (lambda (_%g234453234456%_ _%g234454234458%_)
                        (_%generate-slot-bind233616%_
                         _%$klass234410%_
                         _%g234453234456%_
                         _%g234454234458%_))))
                 (declare (not safe))
                 (##map __tmp237838 _%slots234439%_ _%$slots234443%_)))
              (_%specializer-clauses234559%_
               (map (lambda (_%clause234463%_)
                      (let* ((_%__stx236632236633%_ _%clause234463%_)
                             (_%g234466234481%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx236632236633%_)))))
                        (let ((_%__kont236634236635%_
                               (lambda (_%g234468234509%_
                                        _%g234469234510%_
                                        _%g234470234511%_)
                                 (let* ((_%receiver234540%_
                                         (let ((_%$e234537%_
                                                (gxc#apply-extract-receiver
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#begin))
                                                       _%g234468234509%_))))
                                           (if _%$e234537%_
                                               _%$e234537%_
                                               _%g234470234511%_)))
                                        (_%body234546%_
                                         (map (lambda (_%g234541234543%_)
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%receiver234540%_
                                                 _%$klass234410%_
                                                 _%method-calls233705%_
                                                 _%slot-refs233706%_
                                                 _%g234541234543%_))
                                              _%g234468234509%_)))
                                   (cons (cons _%g234470234511%_
                                               _%g234469234510%_)
                                         _%body234546%_))))
                              (_%__kont236636236637%_
                               (lambda () _%clause234463%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx236632236633%_))
                              (let ((_%e234471234493%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx236632236633%_))))
                                (let ((_%tl234473234498%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e234471234493%_)))
                                      (_%hd234472234496%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e234471234493%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd234472234496%_))
                                      (let ((_%e234474234501%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd234472234496%_))))
                                        (let ((_%tl234476234506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234474234501%_)))
                                              (_%hd234475234504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234474234501%_))))
                                          (_%__kont236634236635%_
                                           _%tl234473234498%_
                                           _%tl234476234506%_
                                           _%hd234475234504%_)))
                                      (_%__kont236636236637%_))))
                              (_%__kont236636236637%_)))))
                    (let ((__tmp237839
                           (lambda (_%g234551234554%_ _%g234552234556%_)
                             (cons _%g234551234554%_ _%g234552234556%_))))
                      (declare (not safe))
                      (foldr__0 __tmp237839 '() _%clause234265234303%_))))
              (_%specializer-impl234561%_
               (let ((__tmp237840
                      (cons '%#case-lambda _%specializer-clauses234559%_)))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp237840 _%stx233613%_)))
              (_%specializer-impl234563%_
               (_%generate-specializer-impl233617%_
                _%$klass234410%_
                _%$method-table234412%_
                _%methods-bind234437%_
                _%slots-bind234461%_
                _%specializer-impl234561%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp237842
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g233624233686%_)))
                                                       (__tmp237841
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%specializer-id234408%_))))
                                                   (declare (not safe))
                                                   (gxc#verbose
                                                    '"generate method specializer "
                                                    __tmp237842
                                                    '" => "
                                                    __tmp237841))
                                                 (_%generate-specializer-def233618%_
                                                  _%g233624233686%_
                                                  _%specializer-id234408%_
                                                  _%specializer-impl234563%_))))))))
                           (_%loop234260234288%_ _%target234257234283%_ '()))
                         (_%g234251234270%_ _%g234252234273%_)))))
               (_%g234251234270%_ _%g234252234273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g234251234270%_
                                                _%g234252234273%_)))))
                                   (_%g234250234566%_ _%g233623233685%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g233623233685%_))
                                     (let* ((_%g234570234600%_
                                             (lambda (_%g234571234597%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g234571234597%_))))
                                            (_%g234569235227%_
                                             (lambda (_%g234571234603%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g234571234603%_))
                                                   (let ((_%e234575234605%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g234571234603%_))))
                                                     (let ((_%hd234576234608%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e234575234605%_)))
                                                           (_%tl234577234610%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e234575234605%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl234577234610%_))
                                                           (let ((_%e234578234613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl234577234610%_))))
                     (let ((_%hd234579234616%_
                            (let ()
                              (declare (not safe))
                              (##car _%e234578234613%_)))
                           (_%tl234580234618%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e234578234613%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd234579234616%_))
                           (let ((_%e234581234621%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd234579234616%_))))
                             (let ((_%hd234582234624%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e234581234621%_)))
                                   (_%tl234583234626%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e234581234621%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd234582234624%_))
                                   (let ((_%e234584234629%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd234582234624%_))))
                                     (let ((_%hd234585234632%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e234584234629%_)))
                                           (_%tl234586234634%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e234584234629%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd234585234632%_))
                                           (let ((_%e234587234637%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd234585234632%_))))
                                             (let ((_%hd234588234640%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e234587234637%_)))
                                                   (_%tl234589234642%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e234587234637%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl234589234642%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl234586234634%_))
                                                       (let ((_%e234590234645%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl234586234634%_))))
                 (let ((_%hd234591234648%_
                        (let ()
                          (declare (not safe))
                          (##car _%e234590234645%_)))
                       (_%tl234592234650%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e234590234645%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl234592234650%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl234583234626%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl234580234618%_))
                               (let ((_%e234593234653%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl234580234618%_))))
                                 (let ((_%hd234594234656%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e234593234653%_)))
                                       (_%tl234595234658%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e234593234653%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl234595234658%_))
                                       (let ()
                                         (let* ((_%g234687234705%_
                                                 (lambda (_%g234688234702%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g234688234702%_))))
                                                (_%g234686234761%_
                                                 (lambda (_%g234688234708%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g234688234708%_))
                                                       (let ((_%e234692234710%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g234688234708%_))))
                 (let ((_%hd234693234713%_
                        (let ()
                          (declare (not safe))
                          (##car _%e234692234710%_)))
                       (_%tl234694234715%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e234692234710%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl234694234715%_))
                       (let ((_%e234695234718%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl234694234715%_))))
                         (let ((_%hd234696234721%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e234695234718%_)))
                               (_%tl234697234723%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e234695234718%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd234696234721%_))
                               (let ((_%e234698234726%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd234696234721%_))))
                                 (let ((_%hd234699234729%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e234698234726%_)))
                                       (_%tl234700234731%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e234698234726%_))))
                                   (let ((_%receiver234755%_
                                          (let ((_%$e234752%_
                                                 (gxc#apply-extract-receiver
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#begin))
                                                        _%tl234697234723%_))))
                                            (if _%$e234752%_
                                                _%$e234752%_
                                                _%hd234699234729%_))))
                                     (for-each
                                      (lambda (_%g234756234758%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver234755%_
                                         _%method-calls233705%_
                                         _%slot-refs233706%_
                                         _%g234756234758%_))
                                      _%tl234697234723%_))))
                               (_%g234687234705%_ _%g234688234708%_))))
                       (_%g234687234705%_ _%g234688234708%_))))
               (_%g234687234705%_ _%g234688234708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g234686234761%_
                                            _%hd234591234648%_))
                                         (let* ((_%g234764234783%_
                                                 (lambda (_%g234765234780%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g234765234780%_))))
                                                (_%g234763234905%_
                                                 (lambda (_%g234765234786%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g234765234786%_))
                                                       (let ((_%e234767234788%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g234765234786%_))))
                 (let ((_%hd234768234791%_
                        (let ()
                          (declare (not safe))
                          (##car _%e234767234788%_)))
                       (_%tl234769234793%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e234767234788%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? _%tl234769234793%_))
                       (let ((_g237843_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 _%tl234769234793%_
                                 '0))))
                         (begin
                           (let ((_g237844_
                                  (let ()
                                    (declare (not safe))
                                    (if (##values? _g237843_)
                                        (##values-length _g237843_)
                                        1))))
                             (if (not (let ()
                                        (declare (not safe))
                                        (##fx= _g237844_ 2)))
                                 (error "Context expects 2 values" _g237844_)))
                           (let ((_%target234770234796%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g237843_ 0)))
                                 (_%tl234772234798%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g237843_ 1))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl234772234798%_))
                                 (letrec ((_%loop234773234801%_
                                           (lambda (_%hd234771234804%_
                                                    _%clause234777234806%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd234771234804%_))
                                                 (let ((_%e234774234808%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd234771234804%_))))
                                                   (let ((_%lp-hd234775234811%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e234774234808%_)))
                                                         (_%lp-tl234776234813%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e234774234808%_))))
                                                     (_%loop234773234801%_
                                                      _%lp-tl234776234813%_
                                                      (cons _%lp-hd234775234811%_
                                                            _%clause234777234806%_))))
                                                 (let ((_%clause234778234816%_
                                                        (reverse _%clause234777234806%_)))
                                                   (for-each
                                                    (lambda (_%clause234831%_)
                                                      (let* ((_%g234833234848%_
                                                              (lambda (_%g234834234845%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g234834234845%_))))
                     (_%g234832234895%_
                      (lambda (_%g234834234851%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g234834234851%_))
                            (let ((_%e234838234853%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g234834234851%_))))
                              (let ((_%hd234839234856%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e234838234853%_)))
                                    (_%tl234840234858%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e234838234853%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd234839234856%_))
                                    (let ((_%e234841234861%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd234839234856%_))))
                                      (let ((_%hd234842234864%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e234841234861%_)))
                                            (_%tl234843234866%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e234841234861%_))))
                                        (let ((_%receiver234889%_
                                               (let ((_%$e234886%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%tl234840234858%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e234886%_
                                                     _%$e234886%_
                                                     _%hd234842234864%_))))
                                          (for-each
                                           (lambda (_%g234890234892%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver234889%_
                                              _%method-calls233705%_
                                              _%slot-refs233706%_
                                              _%g234890234892%_))
                                           _%tl234840234858%_))))
                                    (_%g234833234848%_ _%g234834234851%_))))
                            (_%g234833234848%_ _%g234834234851%_)))))
                (_%g234832234895%_ _%clause234831%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp237845
                                                           (lambda (_%g234897234900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g234898234902%_)
                     (cons _%g234897234900%_ _%g234898234902%_))))
              (declare (not safe))
              (foldr__0 __tmp237845 '() _%clause234778234816%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%loop234773234801%_
                                    _%target234770234796%_
                                    '()))
                                 (_%g234764234783%_ _%g234765234786%_)))))
                       (_%g234764234783%_ _%g234765234786%_))))
               (_%g234764234783%_ _%g234765234786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g234763234905%_
                                            _%hd234594234656%_))
                                         (if (_%no-specializer?233709%_)
                                             _%stx233613%_
                                             (let* ((_%specializer-id234914%_
                                                     (let* ((_%id234908%_
                                                             (let ((__tmp237846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g233624233686%_))))
                       (declare (not safe))
                       (make-symbol__1 __tmp237846 '"::specialize")))
                    (_%specializer-id234911%_
                     (let ((__tmp237847
                            (let ()
                              (declare (not safe))
                              (gx#stx-source _%stx233613%_))))
                       (declare (not safe))
                       (gx#core-quote-syntax__1 _%id234908%_ __tmp237847))))
               (let ()
                 (declare (not safe))
                 (gx#core-bind-runtime!__0 _%specializer-id234911%_))
               _%specializer-id234911%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$klass234916%_
                                                     (let ((__tmp237848
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__klass))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp237848)))
                                                    (_%$method-table234918%_
                                                     (let ((__tmp237849
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__method-table))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp237849)))
                                                    (_%methods234920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%method-calls233705%_)))
                                                    (_%$methods234924%_
                                                     (let ((__tmp237850
                                                            (lambda (_%id234922%_)
                                                              (let ((__tmp237851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id234922%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp237851)))))
               (declare (not safe))
               (##map __tmp237850 _%methods234920%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_234933%_
                                                     (let ((__tmp237852
                                                            (lambda (_%g234925234928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g234926234930%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%method-calls233705%_
                         _%g234925234928%_
                         _%g234926234930%_)))))
               (declare (not safe))
               (##for-each __tmp237852 _%methods234920%_ _%$methods234924%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%methods-bind234943%_
                                                     (let ((__tmp237853
                                                            (lambda (_%g234935234938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g234936234940%_)
                      (_%generate-method-bind233615%_
                       _%$klass234916%_
                       _%$method-table234918%_
                       _%g234935234938%_
                       _%g234936234940%_))))
               (declare (not safe))
               (##map __tmp237853 _%methods234920%_ _%$methods234924%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots234945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%slot-refs233706%_)))
                                                    (_%$slots234949%_
                                                     (let ((__tmp237854
                                                            (lambda (_%id234947%_)
                                                              (let ((__tmp237855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id234947%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp237855)))))
               (declare (not safe))
               (##map __tmp237854 _%slots234945%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_234958%_
                                                     (let ((__tmp237856
                                                            (lambda (_%g234950234953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g234951234955%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%slot-refs233706%_
                         _%g234950234953%_
                         _%g234951234955%_)))))
               (declare (not safe))
               (##for-each __tmp237856 _%slots234945%_ _%$slots234949%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots-bind234967%_
                                                     (let ((__tmp237857
                                                            (lambda (_%g234959234962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g234960234964%_)
                      (_%generate-slot-bind233616%_
                       _%$klass234916%_
                       _%g234959234962%_
                       _%g234960234964%_))))
               (declare (not safe))
               (##map __tmp237857 _%slots234945%_ _%$slots234949%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-lambda-expr235059%_
                                                     (let* ((_%g234969234987%_
                                                             (lambda (_%g234970234984%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g234970234984%_))))
                    (_%g234968235056%_
                     (lambda (_%g234970234990%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%g234970234990%_))
                           (let ((_%e234974234992%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%g234970234990%_))))
                             (let ((_%hd234975234995%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e234974234992%_)))
                                   (_%tl234976234997%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e234974234992%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl234976234997%_))
                                   (let ((_%e234977235000%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl234976234997%_))))
                                     (let ((_%hd234978235003%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e234977235000%_)))
                                           (_%tl234979235005%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e234977235000%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd234978235003%_))
                                           (let ((_%e234980235008%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd234978235003%_))))
                                             (let ((_%hd234981235011%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e234980235008%_)))
                                                   (_%tl234982235013%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e234980235008%_))))
                                               (let* ((_%receiver235047%_
                                                       (let ((_%$e235044%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%tl234979235005%_))))
                 (if _%$e235044%_ _%$e235044%_ _%hd234981235011%_)))
              (_%body235053%_
               (map (lambda (_%g235048235050%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver235047%_
                       _%$klass234916%_
                       _%method-calls233705%_
                       _%slot-refs233706%_
                       _%g235048235050%_))
                    _%tl234979235005%_))
              (__tmp237858
               (cons '%#lambda
                     (cons (cons _%hd234981235011%_ _%tl234982235013%_)
                           _%body235053%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp237858
                                                  _%hd234591234648%_))))
                                           (_%g234969234987%_
                                            _%g234970234990%_))))
                                   (_%g234969234987%_ _%g234970234990%_))))
                           (_%g234969234987%_ _%g234970234990%_)))))
               (_%g234968235056%_ _%hd234591234648%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-case-lambda-expr235220%_
                                                     (let* ((_%g235061235080%_
                                                             (lambda (_%g235062235077%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g235062235077%_))))
                    (_%g235060235217%_
                     (lambda (_%g235062235083%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%g235062235083%_))
                           (let ((_%e235064235085%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%g235062235083%_))))
                             (let ((_%hd235065235088%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e235064235085%_)))
                                   (_%tl235066235090%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e235064235085%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair/null? _%tl235066235090%_))
                                   (let ((_g237859_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-split-splice
                                             _%tl235066235090%_
                                             '0))))
                                     (begin
                                       (let ((_g237860_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g237859_)
                                                    (##values-length _g237859_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g237860_ 2)))
                                             (error "Context expects 2 values"
                                                    _g237860_)))
                                       (let ((_%target235067235093%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g237859_ 0)))
                                             (_%tl235069235095%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g237859_ 1))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl235069235095%_))
                                             (letrec ((_%loop235070235098%_
                                                       (lambda (_%hd235068235101%_
                                                                _%clause235074235103%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%hd235068235101%_))
                     (let ((_%e235071235105%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%hd235068235101%_))))
                       (let ((_%lp-hd235072235108%_
                              (let ()
                                (declare (not safe))
                                (##car _%e235071235105%_)))
                             (_%lp-tl235073235110%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e235071235105%_))))
                         (_%loop235070235098%_
                          _%lp-tl235073235110%_
                          (cons _%lp-hd235072235108%_
                                _%clause235074235103%_))))
                     (let* ((_%clause235075235113%_
                             (reverse _%clause235074235103%_))
                            (_%clauses235215%_
                             (map (lambda (_%clause235129%_)
                                    (let* ((_%__stx236652236653%_
                                            _%clause235129%_)
                                           (_%g235132235147%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%__stx236652236653%_)))))
                                      (let ((_%__kont236654236655%_
                                             (lambda (_%g235134235175%_
                                                      _%g235135235176%_
                                                      _%g235136235177%_)
                                               (let* ((_%receiver235196%_
                                                       (let ((_%$e235193%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g235134235175%_))))
                 (if _%$e235193%_ _%$e235193%_ _%g235136235177%_)))
              (_%body235202%_
               (map (lambda (_%g235197235199%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver235196%_
                       _%$klass234916%_
                       _%method-calls233705%_
                       _%slot-refs233706%_
                       _%g235197235199%_))
                    _%g235134235175%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g235136235177%_
                                                             _%g235135235176%_)
                                                       _%body235202%_))))
                                            (_%__kont236656236657%_
                                             (lambda () _%clause235129%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%__stx236652236653%_))
                                            (let ((_%e235137235159%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%__stx236652236653%_))))
                                              (let ((_%tl235139235164%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e235137235159%_)))
                                                    (_%hd235138235162%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e235137235159%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd235138235162%_))
                                                    (let ((_%e235140235167%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd235138235162%_))))
                                                      (let ((_%tl235142235172%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e235140235167%_)))
                    (_%hd235141235170%_
                     (let () (declare (not safe)) (##car _%e235140235167%_))))
                (_%__kont236654236655%_
                 _%tl235139235164%_
                 _%tl235142235172%_
                 _%hd235141235170%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont236656236657%_))))
                                            (_%__kont236656236657%_)))))
                                  (let ((__tmp237861
                                         (lambda (_%g235207235210%_
                                                  _%g235208235212%_)
                                           (cons _%g235207235210%_
                                                 _%g235208235212%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp237861
                                     '()
                                     _%clause235075235113%_))))
                            (__tmp237862
                             (cons '%#case-lambda _%clauses235215%_)))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp237862
                        _%hd234594234656%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop235070235098%_
                                                _%target235067235093%_
                                                '()))
                                             (_%g235061235080%_
                                              _%g235062235083%_)))))
                                   (_%g235061235080%_ _%g235062235083%_))))
                           (_%g235061235080%_ _%g235062235083%_)))))
               (_%g235060235217%_ _%hd234594234656%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl235222%_
                                                     (let ((__tmp237863
                                                            (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _%hd234588234640%_ '())
                                            (cons _%specializer-lambda-expr235059%_
                                                  '()))
                                      '())
                                (cons _%specializer-case-lambda-expr235220%_
                                      '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp237863 _%stx233613%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl235224%_
                                                     (_%generate-specializer-impl233617%_
                                                      _%$klass234916%_
                                                      _%$method-table234918%_
                                                      _%methods-bind234943%_
                                                      _%slots-bind234967%_
                                                      _%specializer-impl235222%_)))
                                               (let ((__tmp237865
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g233624233686%_)))
                                                     (__tmp237864
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%specializer-id234914%_))))
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"generate method specializer "
                                                  __tmp237865
                                                  '" => "
                                                  __tmp237864))
                                               (_%generate-specializer-def233618%_
                                                _%g233624233686%_
                                                _%specializer-id234914%_
                                                _%specializer-impl235224%_))))
                                       (_%g234570234600%_ _%g234571234603%_))))
                               (_%g234570234600%_ _%g234571234603%_))
                           (_%g234570234600%_ _%g234571234603%_))
                       (_%g234570234600%_ _%g234571234603%_))))
               (_%g234570234600%_ _%g234571234603%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g234570234600%_
                                                    _%g234571234603%_))))
                                           (_%g234570234600%_
                                            _%g234571234603%_))))
                                   (_%g234570234600%_ _%g234571234603%_))))
                           (_%g234570234600%_ _%g234571234603%_))))
                   (_%g234570234600%_ _%g234571234603%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g234570234600%_
                                                    _%g234571234603%_)))))
                                       (_%g234569235227%_ _%g233623233685%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g233623233685%_))
                                         (let* ((_%g235231235284%_
                                                 (lambda (_%g235232235281%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g235232235281%_))))
                                                (_%g235230236449%_
                                                 (lambda (_%g235232235287%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g235232235287%_))
                                                       (let ((_%e235238235289%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g235232235287%_))))
                 (let ((_%hd235239235292%_
                        (let ()
                          (declare (not safe))
                          (##car _%e235238235289%_)))
                       (_%tl235240235294%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e235238235289%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd235239235292%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd235239235292%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl235240235294%_))
                               (let ((_%e235241235297%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl235240235294%_))))
                                 (let ((_%hd235242235300%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e235241235297%_)))
                                       (_%tl235243235302%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e235241235297%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd235242235300%_))
                                       (let ((_%e235244235305%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd235242235300%_))))
                                         (let ((_%hd235245235308%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e235244235305%_)))
                                               (_%tl235246235310%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e235244235305%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd235245235308%_))
                                               (let ((_%e235247235313%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd235245235308%_))))
                                                 (let ((_%hd235248235316%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e235247235313%_)))
                                                       (_%tl235249235318%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e235247235313%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd235248235316%_))
                                                       (let ((_%e235250235321%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd235248235316%_))))
                 (let ((_%hd235251235324%_
                        (let ()
                          (declare (not safe))
                          (##car _%e235250235321%_)))
                       (_%tl235252235326%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e235250235321%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl235252235326%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl235249235318%_))
                           (let ((_%e235253235329%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl235249235318%_))))
                             (let ((_%hd235254235332%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e235253235329%_)))
                                   (_%tl235255235334%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e235253235329%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd235254235332%_))
                                   (let ((_%e235256235337%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd235254235332%_))))
                                     (let ((_%hd235257235340%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e235256235337%_)))
                                           (_%tl235258235342%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e235256235337%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd235257235340%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd235257235340%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl235258235342%_))
                                                   (let ((_%e235259235345%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl235258235342%_))))
                                                     (let ((_%hd235260235348%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e235259235345%_)))
                                                           (_%tl235261235350%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e235259235345%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd235260235348%_))
                                                           (let ((_%e235262235353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd235260235348%_))))
                     (let ((_%hd235263235356%_
                            (let ()
                              (declare (not safe))
                              (##car _%e235262235353%_)))
                           (_%tl235264235358%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e235262235353%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd235263235356%_))
                           (let ((_%e235265235361%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd235263235356%_))))
                             (let ((_%hd235266235364%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e235265235361%_)))
                                   (_%tl235267235366%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e235265235361%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd235266235364%_))
                                   (let ((_%e235268235369%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd235266235364%_))))
                                     (let ((_%hd235269235372%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e235268235369%_)))
                                           (_%tl235270235374%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e235268235369%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl235270235374%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl235267235366%_))
                                               (let ((_%e235271235377%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl235267235366%_))))
                                                 (let ((_%hd235272235380%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e235271235377%_)))
                                                       (_%tl235273235382%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e235271235377%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl235273235382%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl235264235358%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl235261235350%_))
                       (let ((_%e235274235385%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl235261235350%_))))
                         (let ((_%hd235275235388%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e235274235385%_)))
                               (_%tl235276235390%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e235274235385%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl235276235390%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl235255235334%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl235246235310%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl235243235302%_))
                                           (let ((_%e235277235393%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl235243235302%_))))
                                             (let ((_%hd235278235396%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e235277235393%_)))
                                                   (_%tl235279235398%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e235277235393%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl235279235398%_))
                                                   (let* ((_%g235445235507%_
                                                           (lambda (_%g235446235504%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g235446235504%_))))
                  (_%g235444236446%_
                   (lambda (_%g235446235510%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%g235446235510%_))
                         (let ((_%e235452235512%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%g235446235510%_))))
                           (let ((_%hd235453235515%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e235452235512%_)))
                                 (_%tl235454235517%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e235452235512%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd235453235515%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#lambda
                                        _%hd235453235515%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl235454235517%_))
                                         (let ((_%e235455235520%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl235454235517%_))))
                                           (let ((_%hd235456235523%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e235455235520%_)))
                                                 (_%tl235457235525%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e235455235520%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl235457235525%_))
                                                 (let ((_%e235458235528%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl235457235525%_))))
                                                   (let ((_%hd235459235531%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e235458235528%_)))
                                                         (_%tl235460235533%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e235458235528%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd235459235531%_))
                                                         (let ((_%e235461235536%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd235459235531%_))))
                   (let ((_%hd235462235539%_
                          (let ()
                            (declare (not safe))
                            (##car _%e235461235536%_)))
                         (_%tl235463235541%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e235461235536%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd235462235539%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#call _%hd235462235539%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl235463235541%_))
                                 (let ((_%e235464235544%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl235463235541%_))))
                                   (let ((_%hd235465235547%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e235464235544%_)))
                                         (_%tl235466235549%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e235464235544%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd235465235547%_))
                                         (let ((_%e235467235552%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd235465235547%_))))
                                           (let ((_%hd235468235555%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e235467235552%_)))
                                                 (_%tl235469235557%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e235467235552%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd235468235555%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd235468235555%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl235469235557%_))
                                                         (let ((_%e235470235560%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl235469235557%_))))
                   (let ((_%hd235471235563%_
                          (let ()
                            (declare (not safe))
                            (##car _%e235470235560%_)))
                         (_%tl235472235565%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e235470235560%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl235472235565%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl235466235549%_))
                             (let ((_%e235473235568%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl235466235549%_))))
                               (let ((_%hd235474235571%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e235473235568%_)))
                                     (_%tl235475235573%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e235473235568%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd235474235571%_))
                                     (let ((_%e235476235576%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd235474235571%_))))
                                       (let ((_%hd235477235579%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e235476235576%_)))
                                             (_%tl235478235581%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e235476235576%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%hd235477235579%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#ref
                                                    _%hd235477235579%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl235478235581%_))
                                                     (let ((_%e235479235584%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl235478235581%_))))
                                                       (let ((_%hd235480235587%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e235479235584%_)))
                     (_%tl235481235589%_
                      (let () (declare (not safe)) (##cdr _%e235479235584%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl235481235589%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl235475235573%_))
                         (let ((_%e235482235592%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl235475235573%_))))
                           (let ((_%hd235483235595%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e235482235592%_)))
                                 (_%tl235484235597%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e235482235592%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd235483235595%_))
                                 (let ((_%e235485235600%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%hd235483235595%_))))
                                   (let ((_%hd235486235603%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e235485235600%_)))
                                         (_%tl235487235605%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e235485235600%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd235486235603%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd235486235603%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl235487235605%_))
                                                 (let ((_%e235488235608%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl235487235605%_))))
                                                   (let ((_%hd235489235611%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e235488235608%_)))
                                                         (_%tl235490235613%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e235488235608%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl235490235613%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair/null? _%tl235484235597%_))
                     (if (let ((__tmp237866
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-length _%tl235484235597%_))))
                           (declare (not safe))
                           (##fx>= __tmp237866 '1))
                         (let ((_g237867_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-split-splice
                                   _%tl235484235597%_
                                   '1))))
                           (begin
                             (let ((_g237868_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g237867_)
                                          (##values-length _g237867_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g237868_ 2)))
                                   (error "Context expects 2 values"
                                          _g237868_)))
                             (let ((_%target235491235616%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g237867_ 0)))
                                   (_%tl235493235618%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g237867_ 1))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl235493235618%_))
                                   (let ((_%e235500235621%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl235493235618%_))))
                                     (let ((_%hd235501235624%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e235500235621%_)))
                                           (_%tl235502235626%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e235500235621%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl235502235626%_))
                                           (letrec ((_%loop235494235629%_
                                                     (lambda (_%hd235492235632%_
                                                              _%kw-ref235498235634%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd235492235632%_))
                                                           (let ((_%e235495235636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd235492235632%_))))
                     (let ((_%lp-hd235496235639%_
                            (let ()
                              (declare (not safe))
                              (##car _%e235495235636%_)))
                           (_%lp-tl235497235641%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e235495235636%_))))
                       (_%loop235494235629%_
                        _%lp-tl235497235641%_
                        (cons _%lp-hd235496235639%_ _%kw-ref235498235634%_))))
                   (let ((_%kw-ref235499235644%_
                          (reverse _%kw-ref235498235634%_)))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl235460235533%_))
                         (let* ((_%kw-count235701%_
                                 (length (let ((__tmp237869
                                                (lambda (_%g235693235696%_
                                                         _%g235694235698%_)
                                                  (cons _%g235693235696%_
                                                        _%g235694235698%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp237869
                                            '()
                                            _%kw-ref235499235644%_))))
                                (_%self-index235703%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%kw-count235701%_ '1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#lambda-expr? _%hd235272235380%_))
                               (let* ((_%g235707235721%_
                                       (lambda (_%g235708235718%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g235708235718%_))))
                                      (_%g235706235844%_
                                       (lambda (_%g235708235724%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%g235708235724%_))
                                             (let ((_%e235711235726%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%g235708235724%_))))
                                               (let ((_%hd235712235729%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e235711235726%_)))
                                                     (_%tl235713235731%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e235711235726%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl235713235731%_))
                                                     (let ((_%e235714235734%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl235713235731%_))))
                                                       (let ((_%hd235715235737%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e235714235734%_)))
                     (_%tl235716235739%_
                      (let () (declare (not safe)) (##cdr _%e235714235734%_))))
                 (let* ((_%self235760%_
                         (list-ref _%hd235715235737%_ _%self-index235703%_))
                        (_%receiver235765%_
                         (let ((_%$e235762%_
                                (gxc#apply-extract-receiver
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '%#begin))
                                       _%tl235716235739%_))))
                           (if _%$e235762%_ _%$e235762%_ _%self235760%_))))
                   (for-each
                    (lambda (_%g235767235769%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver235765%_
                       _%method-calls233705%_
                       _%slot-refs233706%_
                       _%g235767235769%_))
                    _%tl235716235739%_)
                   (if (_%no-specializer?233709%_)
                       _%stx233613%_
                       (let* ((_%specializer-id235778%_
                               (let* ((_%id235772%_
                                       (let ((__tmp237870
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _%g233624233686%_))))
                                         (declare (not safe))
                                         (make-symbol__1
                                          __tmp237870
                                          '"::specialize")))
                                      (_%specializer-id235775%_
                                       (let ((__tmp237871
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-source
                                                 _%stx233613%_))))
                                         (declare (not safe))
                                         (gx#core-quote-syntax__1
                                          _%id235772%_
                                          __tmp237871))))
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-bind-runtime!__0
                                    _%specializer-id235775%_))
                                 _%specializer-id235775%_))
                              (_%$klass235780%_
                               (let ((__tmp237872
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__klass))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp237872)))
                              (_%$method-table235782%_
                               (let ((__tmp237873
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__method-table))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp237873)))
                              (_%methods235784%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%method-calls233705%_)))
                              (_%$methods235788%_
                               (let ((__tmp237874
                                      (lambda (_%id235786%_)
                                        (let ((__tmp237875
                                               (gensym _%id235786%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp237875)))))
                                 (declare (not safe))
                                 (##map __tmp237874 _%methods235784%_)))
                              (_%_235797%_
                               (let ((__tmp237876
                                      (lambda (_%g235789235792%_
                                               _%g235790235794%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%method-calls233705%_
                                           _%g235789235792%_
                                           _%g235790235794%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp237876
                                  _%methods235784%_
                                  _%$methods235788%_)))
                              (_%methods-bind235807%_
                               (let ((__tmp237877
                                      (lambda (_%g235799235802%_
                                               _%g235800235804%_)
                                        (_%generate-method-bind233615%_
                                         _%$klass235780%_
                                         _%$method-table235782%_
                                         _%g235799235802%_
                                         _%g235800235804%_))))
                                 (declare (not safe))
                                 (##map __tmp237877
                                        _%methods235784%_
                                        _%$methods235788%_)))
                              (_%slots235809%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%slot-refs233706%_)))
                              (_%$slots235813%_
                               (let ((__tmp237878
                                      (lambda (_%id235811%_)
                                        (let ((__tmp237879
                                               (gensym _%id235811%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp237879)))))
                                 (declare (not safe))
                                 (##map __tmp237878 _%slots235809%_)))
                              (_%_235822%_
                               (let ((__tmp237880
                                      (lambda (_%g235814235817%_
                                               _%g235815235819%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%slot-refs233706%_
                                           _%g235814235817%_
                                           _%g235815235819%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp237880
                                  _%slots235809%_
                                  _%$slots235813%_)))
                              (_%slots-bind235831%_
                               (let ((__tmp237881
                                      (lambda (_%g235823235826%_
                                               _%g235824235828%_)
                                        (_%generate-slot-bind233616%_
                                         _%$klass235780%_
                                         _%g235823235826%_
                                         _%g235824235828%_))))
                                 (declare (not safe))
                                 (##map __tmp237881
                                        _%slots235809%_
                                        _%$slots235813%_)))
                              (_%specializer-impl235839%_
                               (let* ((_%specializer-body235837%_
                                       (map (lambda (_%g235832235834%_)
                                              (gxc#apply-subst-object-refs__%
                                               '#f
                                               _%receiver235765%_
                                               _%$klass235780%_
                                               _%method-calls233705%_
                                               _%slot-refs233706%_
                                               _%g235832235834%_))
                                            _%tl235716235739%_))
                                      (__tmp237882
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _%hd235251235324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#let-values
                                   (cons (cons (cons (cons _%hd235269235372%_
                                                           '())
                                                     (cons (let ((__tmp237883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#lambda
                                (cons _%hd235715235737%_
                                      _%specializer-body235837%_))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp237883 _%hd235272235380%_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%hd235275235388%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%hd235278235396%_
                                                         '())))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp237882
                                  _%stx233613%_)))
                              (_%specializer-impl235841%_
                               (_%generate-specializer-impl233617%_
                                _%$klass235780%_
                                _%$method-table235782%_
                                _%methods-bind235807%_
                                _%slots-bind235831%_
                                _%specializer-impl235839%_)))
                         (let ((__tmp237885
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%g233624233686%_)))
                               (__tmp237884
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%specializer-id235778%_))))
                           (declare (not safe))
                           (gxc#verbose
                            '"generate method specializer "
                            __tmp237885
                            '" => "
                            __tmp237884))
                         (_%generate-specializer-def233618%_
                          _%g233624233686%_
                          _%specializer-id235778%_
                          _%specializer-impl235841%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g235707235721%_
                                                      _%g235708235724%_))))
                                             (_%g235707235721%_
                                              _%g235708235724%_)))))
                                 (_%g235706235844%_ _%hd235272235380%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _%hd235272235380%_))
                                   (let* ((_%g235848235878%_
                                           (lambda (_%g235849235875%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g235849235875%_))))
                                          (_%g235847236442%_
                                           (lambda (_%g235849235881%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%g235849235881%_))
                                                 (let ((_%e235853235883%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g235849235881%_))))
                                                   (let ((_%hd235854235886%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e235853235883%_)))
                                                         (_%tl235855235888%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e235853235883%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl235855235888%_))
                                                         (let ((_%e235856235891%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl235855235888%_))))
                   (let ((_%hd235857235894%_
                          (let ()
                            (declare (not safe))
                            (##car _%e235856235891%_)))
                         (_%tl235858235896%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e235856235891%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd235857235894%_))
                         (let ((_%e235859235899%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd235857235894%_))))
                           (let ((_%hd235860235902%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e235859235899%_)))
                                 (_%tl235861235904%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e235859235899%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd235860235902%_))
                                 (let ((_%e235862235907%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%hd235860235902%_))))
                                   (let ((_%hd235863235910%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e235862235907%_)))
                                         (_%tl235864235912%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e235862235907%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd235863235910%_))
                                         (let ((_%e235865235915%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd235863235910%_))))
                                           (let ((_%hd235866235918%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e235865235915%_)))
                                                 (_%tl235867235920%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e235865235915%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl235867235920%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl235864235912%_))
                                                     (let ((_%e235868235923%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl235864235912%_))))
                                                       (let ((_%hd235869235926%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e235868235923%_)))
                     (_%tl235870235928%_
                      (let () (declare (not safe)) (##cdr _%e235868235923%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl235870235928%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl235861235904%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl235858235896%_))
                             (let ((_%e235871235931%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl235858235896%_))))
                               (let ((_%hd235872235934%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e235871235931%_)))
                                     (_%tl235873235936%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e235871235931%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl235873235936%_))
                                     (let ()
                                       (let* ((_%g235965235979%_
                                               (lambda (_%g235966235976%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g235966235976%_))))
                                              (_%g235964236026%_
                                               (lambda (_%g235966235982%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%g235966235982%_))
                                                     (let ((_%e235969235984%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%g235966235982%_))))
                                                       (let ((_%hd235970235987%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e235969235984%_)))
                     (_%tl235971235989%_
                      (let () (declare (not safe)) (##cdr _%e235969235984%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl235971235989%_))
                     (let ((_%e235972235992%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl235971235989%_))))
                       (let ((_%hd235973235995%_
                              (let ()
                                (declare (not safe))
                                (##car _%e235972235992%_)))
                             (_%tl235974235997%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e235972235992%_))))
                         (let* ((_%self236014%_
                                 (list-ref
                                  _%hd235973235995%_
                                  _%self-index235703%_))
                                (_%receiver236019%_
                                 (let ((_%$e236016%_
                                        (gxc#apply-extract-receiver
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin))
                                               _%tl235974235997%_))))
                                   (if _%$e236016%_
                                       _%$e236016%_
                                       _%self236014%_))))
                           (for-each
                            (lambda (_%g236021236023%_)
                              (gxc#apply-collect-object-refs__%
                               '#f
                               _%receiver236019%_
                               _%method-calls233705%_
                               _%slot-refs233706%_
                               _%g236021236023%_))
                            _%tl235974235997%_))))
                     (_%g235965235979%_ _%g235966235982%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g235965235979%_
                                                      _%g235966235982%_)))))
                                         (_%g235964236026%_
                                          _%hd235869235926%_))
                                       (let* ((_%g236029236048%_
                                               (lambda (_%g236030236045%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g236030236045%_))))
                                              (_%g236028236157%_
                                               (lambda (_%g236030236051%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%g236030236051%_))
                                                     (let ((_%e236032236053%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%g236030236051%_))))
                                                       (let ((_%hd236033236056%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e236032236053%_)))
                     (_%tl236034236058%_
                      (let () (declare (not safe)) (##cdr _%e236032236053%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair/null? _%tl236034236058%_))
                     (let ((_g237886_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-split-splice _%tl236034236058%_ '0))))
                       (begin
                         (let ((_g237887_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g237886_)
                                      (##values-length _g237886_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g237887_ 2)))
                               (error "Context expects 2 values" _g237887_)))
                         (let ((_%target236035236061%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g237886_ 0)))
                               (_%tl236037236063%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g237886_ 1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl236037236063%_))
                               (letrec ((_%loop236038236066%_
                                         (lambda (_%hd236036236069%_
                                                  _%clause236042236071%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd236036236069%_))
                                               (let ((_%e236039236073%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd236036236069%_))))
                                                 (let ((_%lp-hd236040236076%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e236039236073%_)))
                                                       (_%lp-tl236041236078%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e236039236073%_))))
                                                   (_%loop236038236066%_
                                                    _%lp-tl236041236078%_
                                                    (cons _%lp-hd236040236076%_
                                                          _%clause236042236071%_))))
                                               (let ((_%clause236043236081%_
                                                      (reverse _%clause236042236071%_)))
                                                 (for-each
                                                  (lambda (_%clause236096%_)
                                                    (let* ((_%g236098236109%_
                                                            (lambda (_%g236099236106%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g236099236106%_))))
                   (_%g236097236147%_
                    (lambda (_%g236099236112%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g236099236112%_))
                          (let ((_%e236102236114%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g236099236112%_))))
                            (let ((_%hd236103236117%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e236102236114%_)))
                                  (_%tl236104236119%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e236102236114%_))))
                              (let* ((_%self236135%_
                                      (list-ref
                                       _%hd236103236117%_
                                       _%self-index235703%_))
                                     (_%receiver236140%_
                                      (let ((_%$e236137%_
                                             (gxc#apply-extract-receiver
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#begin))
                                                    _%tl236104236119%_))))
                                        (if _%$e236137%_
                                            _%$e236137%_
                                            _%self236135%_))))
                                (for-each
                                 (lambda (_%g236142236144%_)
                                   (gxc#apply-collect-object-refs__%
                                    '#f
                                    _%receiver236140%_
                                    _%method-calls233705%_
                                    _%slot-refs233706%_
                                    _%g236142236144%_))
                                 _%tl236104236119%_))))
                          (_%g236098236109%_ _%g236099236112%_)))))
              (_%g236097236147%_ _%clause236096%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp237888
                                                         (lambda (_%g236149236152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g236150236154%_)
                   (cons _%g236149236152%_ _%g236150236154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp237888
                                                     '()
                                                     _%clause236043236081%_))))))))
                                 (_%loop236038236066%_
                                  _%target236035236061%_
                                  '()))
                               (_%g236029236048%_ _%g236030236051%_)))))
                     (_%g236029236048%_ _%g236030236051%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g236029236048%_
                                                      _%g236030236051%_)))))
                                         (_%g236028236157%_
                                          _%hd235872235934%_))
                                       (if (_%no-specializer?233709%_)
                                           _%stx233613%_
                                           (let* ((_%specializer-id236166%_
                                                   (let* ((_%id236160%_
                                                           (let ((__tmp237889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g233624233686%_))))
                     (declare (not safe))
                     (make-symbol__1 __tmp237889 '"::specialize")))
                  (_%specializer-id236163%_
                   (let ((__tmp237890
                          (let ()
                            (declare (not safe))
                            (gx#stx-source _%stx233613%_))))
                     (declare (not safe))
                     (gx#core-quote-syntax__1 _%id236160%_ __tmp237890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#core-bind-runtime!__0
                                                        _%specializer-id236163%_))
                                                     _%specializer-id236163%_))
                                                  (_%$klass236168%_
                                                   (let ((__tmp237891
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__klass))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp237891)))
                                                  (_%$method-table236170%_
                                                   (let ((__tmp237892
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__method-table))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp237892)))
                                                  (_%methods236172%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%method-calls233705%_)))
                                                  (_%$methods236176%_
                                                   (let ((__tmp237893
                                                          (lambda (_%id236174%_)
                                                            (let ((__tmp237894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id236174%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp237894)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp237893
                                                            _%methods236172%_)))
                                                  (_%_236185%_
                                                   (let ((__tmp237895
                                                          (lambda (_%g236177236180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g236178236182%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%method-calls233705%_
                       _%g236177236180%_
                       _%g236178236182%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp237895
                                                      _%methods236172%_
                                                      _%$methods236176%_)))
                                                  (_%methods-bind236195%_
                                                   (let ((__tmp237896
                                                          (lambda (_%g236187236190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g236188236192%_)
                    (_%generate-method-bind233615%_
                     _%$klass236168%_
                     _%$method-table236170%_
                     _%g236187236190%_
                     _%g236188236192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp237896
                                                            _%methods236172%_
                                                            _%$methods236176%_)))
                                                  (_%slots236197%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%slot-refs233706%_)))
                                                  (_%$slots236201%_
                                                   (let ((__tmp237897
                                                          (lambda (_%id236199%_)
                                                            (let ((__tmp237898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id236199%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp237898)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp237897
                                                            _%slots236197%_)))
                                                  (_%_236210%_
                                                   (let ((__tmp237899
                                                          (lambda (_%g236202236205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g236203236207%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%slot-refs233706%_
                       _%g236202236205%_
                       _%g236203236207%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp237899
                                                      _%slots236197%_
                                                      _%$slots236201%_)))
                                                  (_%slots-bind236219%_
                                                   (let ((__tmp237900
                                                          (lambda (_%g236211236214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g236212236216%_)
                    (_%generate-slot-bind233616%_
                     _%$klass236168%_
                     _%g236211236214%_
                     _%g236212236216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp237900
                                                            _%slots236197%_
                                                            _%$slots236201%_)))
                                                  (_%specializer-lambda-expr236297%_
                                                   (let* ((_%g236221236235%_
                                                           (lambda (_%g236222236232%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g236222236232%_))))
                  (_%g236220236294%_
                   (lambda (_%g236222236238%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%g236222236238%_))
                         (let ((_%e236225236240%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%g236222236238%_))))
                           (let ((_%hd236226236243%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e236225236240%_)))
                                 (_%tl236227236245%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e236225236240%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl236227236245%_))
                                 (let ((_%e236228236248%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl236227236245%_))))
                                   (let ((_%hd236229236251%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e236228236248%_)))
                                         (_%tl236230236253%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e236228236248%_))))
                                     (let* ((_%self236280%_
                                             (list-ref
                                              _%hd236229236251%_
                                              _%self-index235703%_))
                                            (_%receiver236285%_
                                             (let ((_%$e236282%_
                                                    (gxc#apply-extract-receiver
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%tl236230236253%_))))
                                               (if _%$e236282%_
                                                   _%$e236282%_
                                                   _%self236280%_)))
                                            (_%body236291%_
                                             (map (lambda (_%g236286236288%_)
                                                    (gxc#apply-subst-object-refs__%
                                                     '#f
                                                     _%receiver236285%_
                                                     _%$klass236168%_
                                                     _%method-calls233705%_
                                                     _%slot-refs233706%_
                                                     _%g236286236288%_))
                                                  _%tl236230236253%_))
                                            (__tmp237901
                                             (cons '%#lambda
                                                   (cons _%hd236229236251%_
                                                         _%body236291%_))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp237901
                                        _%hd235869235926%_))))
                                 (_%g236221236235%_ _%g236222236238%_))))
                         (_%g236221236235%_ _%g236222236238%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g236220236294%_
                                                      _%hd235869235926%_)))
                                                  (_%specializer-case-lambda-expr236435%_
                                                   (let* ((_%g236299236318%_
                                                           (lambda (_%g236300236315%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g236300236315%_))))
                  (_%g236298236432%_
                   (lambda (_%g236300236321%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%g236300236321%_))
                         (let ((_%e236302236323%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%g236300236321%_))))
                           (let ((_%hd236303236326%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e236302236323%_)))
                                 (_%tl236304236328%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e236302236323%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair/null? _%tl236304236328%_))
                                 (let ((_g237902_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-split-splice
                                           _%tl236304236328%_
                                           '0))))
                                   (begin
                                     (let ((_g237903_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g237902_)
                                                  (##values-length _g237902_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g237903_ 2)))
                                           (error "Context expects 2 values"
                                                  _g237903_)))
                                     (let ((_%target236305236331%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g237902_ 0)))
                                           (_%tl236307236333%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g237902_ 1))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl236307236333%_))
                                           (letrec ((_%loop236308236336%_
                                                     (lambda (_%hd236306236339%_
                                                              _%clause236312236341%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd236306236339%_))
                                                           (let ((_%e236309236343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd236306236339%_))))
                     (let ((_%lp-hd236310236346%_
                            (let ()
                              (declare (not safe))
                              (##car _%e236309236343%_)))
                           (_%lp-tl236311236348%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e236309236343%_))))
                       (_%loop236308236336%_
                        _%lp-tl236311236348%_
                        (cons _%lp-hd236310236346%_ _%clause236312236341%_))))
                   (let* ((_%clause236313236351%_
                           (reverse _%clause236312236341%_))
                          (_%clauses236430%_
                           (map (lambda (_%clause236367%_)
                                  (let* ((_%g236369236380%_
                                          (lambda (_%g236370236377%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g236370236377%_))))
                                         (_%g236368236420%_
                                          (lambda (_%g236370236383%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g236370236383%_))
                                                (let ((_%e236373236385%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g236370236383%_))))
                                                  (let ((_%hd236374236388%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e236373236385%_)))
                                                        (_%tl236375236390%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e236373236385%_))))
                                                    (let* ((_%self236406%_
                                                            (list-ref
                                                             _%hd236374236388%_
                                                             _%self-index235703%_))
                                                           (_%receiver236411%_
                                                            (let ((_%$e236408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-extract-receiver
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#begin))
                                  _%tl236375236390%_))))
                      (if _%$e236408%_ _%$e236408%_ _%self236406%_)))
                   (_%body236417%_
                    (map (lambda (_%g236412236414%_)
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%receiver236411%_
                            _%$klass236168%_
                            _%method-calls233705%_
                            _%slot-refs233706%_
                            _%g236412236414%_))
                         _%tl236375236390%_)))
              (cons _%hd236374236388%_ _%body236417%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g236369236380%_
                                                 _%g236370236383%_)))))
                                    (_%g236368236420%_ _%clause236367%_)))
                                (let ((__tmp237904
                                       (lambda (_%g236422236425%_
                                                _%g236423236427%_)
                                         (cons _%g236422236425%_
                                               _%g236423236427%_))))
                                  (declare (not safe))
                                  (foldr__0
                                   __tmp237904
                                   '()
                                   _%clause236313236351%_))))
                          (__tmp237905
                           (cons '%#case-lambda _%clauses236430%_)))
                     (declare (not safe))
                     (gxc#xform-wrap-source
                      __tmp237905
                      _%hd235872235934%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%loop236308236336%_
                                              _%target236305236331%_
                                              '()))
                                           (_%g236299236318%_
                                            _%g236300236321%_)))))
                                 (_%g236299236318%_ _%g236300236321%_))))
                         (_%g236299236318%_ _%g236300236321%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g236298236432%_
                                                      _%hd235872235934%_)))
                                                  (_%specializer-impl236437%_
                                                   (let ((__tmp237906
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%hd235251235324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons (cons '%#let-values
                                                      (cons (cons (cons (cons _%hd235269235372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (let ((__tmp237907
                                             (cons '%#let-values
                                                   (cons (cons (cons (cons _%hd235866235918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons _%specializer-lambda-expr236297%_ '()))
                       '())
                 (cons _%specializer-case-lambda-expr236435%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp237907
                                         _%stx233613%_))
                                      '()))
                          '())
                    (cons _%hd235275235388%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())
                              (cons _%hd235278235396%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp237906
                                                      _%stx233613%_)))
                                                  (_%specializer-impl236439%_
                                                   (_%generate-specializer-impl233617%_
                                                    _%$klass236168%_
                                                    _%$method-table236170%_
                                                    _%methods-bind236195%_
                                                    _%slots-bind236219%_
                                                    _%specializer-impl236437%_)))
                                             (let ((__tmp237909
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%g233624233686%_)))
                                                   (__tmp237908
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%specializer-id236166%_))))
                                               (declare (not safe))
                                               (gxc#verbose
                                                '"generate method specializer "
                                                __tmp237909
                                                '" => "
                                                __tmp237908))
                                             (_%generate-specializer-def233618%_
                                              _%g233624233686%_
                                              _%specializer-id236166%_
                                              _%specializer-impl236439%_))))
                                     (_%g235848235878%_ _%g235849235881%_))))
                             (_%g235848235878%_ _%g235849235881%_))
                         (_%g235848235878%_ _%g235849235881%_))
                     (_%g235848235878%_ _%g235849235881%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g235848235878%_
                                                      _%g235849235881%_))
                                                 (_%g235848235878%_
                                                  _%g235849235881%_))))
                                         (_%g235848235878%_
                                          _%g235849235881%_))))
                                 (_%g235848235878%_ _%g235849235881%_))))
                         (_%g235848235878%_ _%g235849235881%_))))
                 (_%g235848235878%_ _%g235849235881%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g235848235878%_
                                                  _%g235849235881%_)))))
                                     (_%g235847236442%_ _%hd235272235380%_))
                                   _%stx233613%_)))
                         (_%g235445235507%_ _%g235446235510%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%loop235494235629%_
                                              _%target235491235616%_
                                              '()))
                                           (_%g235445235507%_
                                            _%g235446235510%_))))
                                   (_%g235445235507%_ _%g235446235510%_)))))
                         (_%g235445235507%_ _%g235446235510%_))
                     (_%g235445235507%_ _%g235446235510%_))
                 (_%g235445235507%_ _%g235446235510%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g235445235507%_
                                                  _%g235446235510%_))
                                             (_%g235445235507%_
                                              _%g235446235510%_))
                                         (_%g235445235507%_
                                          _%g235446235510%_))))
                                 (_%g235445235507%_ _%g235446235510%_))))
                         (_%g235445235507%_ _%g235446235510%_))
                     (_%g235445235507%_ _%g235446235510%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g235445235507%_
                                                      _%g235446235510%_))
                                                 (_%g235445235507%_
                                                  _%g235446235510%_))
                                             (_%g235445235507%_
                                              _%g235446235510%_))))
                                     (_%g235445235507%_ _%g235446235510%_))))
                             (_%g235445235507%_ _%g235446235510%_))
                         (_%g235445235507%_ _%g235446235510%_))))
                 (_%g235445235507%_ _%g235446235510%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g235445235507%_
                                                      _%g235446235510%_))
                                                 (_%g235445235507%_
                                                  _%g235446235510%_))))
                                         (_%g235445235507%_
                                          _%g235446235510%_))))
                                 (_%g235445235507%_ _%g235446235510%_))
                             (_%g235445235507%_ _%g235446235510%_))
                         (_%g235445235507%_ _%g235446235510%_))))
                 (_%g235445235507%_ _%g235446235510%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g235445235507%_
                                                  _%g235446235510%_))))
                                         (_%g235445235507%_ _%g235446235510%_))
                                     (_%g235445235507%_ _%g235446235510%_))
                                 (_%g235445235507%_ _%g235446235510%_))))
                         (_%g235445235507%_ _%g235446235510%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g235444236446%_
                                                      _%hd235275235388%_))
                                                   (_%g235231235284%_
                                                    _%g235232235287%_))))
                                           (_%g235231235284%_
                                            _%g235232235287%_))
                                       (_%g235231235284%_ _%g235232235287%_))
                                   (_%g235231235284%_ _%g235232235287%_))
                               (_%g235231235284%_ _%g235232235287%_))))
                       (_%g235231235284%_ _%g235232235287%_))
                   (_%g235231235284%_ _%g235232235287%_))
               (_%g235231235284%_ _%g235232235287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g235231235284%_
                                                _%g235232235287%_))
                                           (_%g235231235284%_
                                            _%g235232235287%_))))
                                   (_%g235231235284%_ _%g235232235287%_))))
                           (_%g235231235284%_ _%g235232235287%_))))
                   (_%g235231235284%_ _%g235232235287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g235231235284%_
                                                    _%g235232235287%_))
                                               (_%g235231235284%_
                                                _%g235232235287%_))
                                           (_%g235231235284%_
                                            _%g235232235287%_))))
                                   (_%g235231235284%_ _%g235232235287%_))))
                           (_%g235231235284%_ _%g235232235287%_))
                       (_%g235231235284%_ _%g235232235287%_))))
               (_%g235231235284%_ _%g235232235287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g235231235284%_
                                                _%g235232235287%_))))
                                       (_%g235231235284%_ _%g235232235287%_))))
                               (_%g235231235284%_ _%g235232235287%_))
                           (_%g235231235284%_ _%g235232235287%_))
                       (_%g235231235284%_ _%g235232235287%_))))
               (_%g235231235284%_ _%g235232235287%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g235230236449%_
                                            _%g233623233685%_))
                                         _%stx233613%_))))))))
                  (_%__kont236676236677%_ (lambda () _%stx233613%_)))
              (let ((_%__match236705236706%_
                     (lambda (_%e233625233653%_
                              _%hd233626233656%_
                              _%tl233627233658%_
                              _%e233628233661%_
                              _%hd233629233664%_
                              _%tl233630233666%_
                              _%e233631233669%_
                              _%hd233632233672%_
                              _%tl233633233674%_
                              _%e233634233677%_
                              _%hd233635233680%_
                              _%tl233636233682%_)
                       (let ((_%g233623233685%_ _%hd233635233680%_)
                             (_%g233624233686%_ _%hd233632233672%_))
                         (if (let ((__tmp237910
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g233624233686%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp237910))
                             (_%__kont236674236675%_
                              _%g233623233685%_
                              _%g233624233686%_)
                             (_%__kont236676236677%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx236672236673%_))
                    (let ((_%e233625233653%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx236672236673%_))))
                      (let ((_%tl233627233658%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233625233653%_)))
                            (_%hd233626233656%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233625233653%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl233627233658%_))
                            (let ((_%e233628233661%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl233627233658%_))))
                              (let ((_%tl233630233666%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233628233661%_)))
                                    (_%hd233629233664%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233628233661%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd233629233664%_))
                                    (let ((_%e233631233669%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd233629233664%_))))
                                      (let ((_%tl233633233674%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233631233669%_)))
                                            (_%hd233632233672%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233631233669%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl233633233674%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl233630233666%_))
                                                (let ((_%e233634233677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl233630233666%_))))
                                                  (let ((_%tl233636233682%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e233634233677%_)))
                                                        (_%hd233635233680%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e233634233677%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl233636233682%_))
                                                        (_%__match236705236706%_
                                                         _%e233625233653%_
                                                         _%hd233626233656%_
                                                         _%tl233627233658%_
                                                         _%e233628233661%_
                                                         _%hd233629233664%_
                                                         _%tl233630233666%_
                                                         _%e233631233669%_
                                                         _%hd233632233672%_
                                                         _%tl233633233674%_
                                                         _%e233634233677%_
                                                         _%hd233635233680%_
                                                         _%tl233636233682%_)
                                                        (_%__kont236676236677%_))))
                                                (_%__kont236676236677%_))
                                            (_%__kont236676236677%_))))
                                    (_%__kont236676236677%_))))
                            (_%__kont236676236677%_))))
                    (_%__kont236676236677%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self233465%_ _%stx233466%_)
        (let* ((_%__stx236708236709%_ _%stx233466%_)
               (_%g233469233502%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx236708236709%_)))))
          (let ((_%__kont236710236711%_
                 (lambda (_%g233471233592%_) _%g233471233592%_))
                (_%__kont236712236713%_
                 (lambda (_%g233487233531%_ _%g233488233532%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self233465%_ _%g233487233531%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx236708236709%_))
                (let ((_%e233472233552%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx236708236709%_))))
                  (let ((_%tl233474233557%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e233472233552%_)))
                        (_%hd233473233555%_
                         (let ()
                           (declare (not safe))
                           (##car _%e233472233552%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl233474233557%_))
                        (let ((_%e233475233560%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl233474233557%_))))
                          (let ((_%tl233477233565%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e233475233560%_)))
                                (_%hd233476233563%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e233475233560%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd233476233563%_))
                                (let ((_%e233478233568%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd233476233563%_))))
                                  (let ((_%tl233480233573%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233478233568%_)))
                                        (_%hd233479233571%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233478233568%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd233479233571%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd233479233571%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl233480233573%_))
                                                (let ((_%e233481233576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl233480233573%_))))
                                                  (let ((_%tl233483233581%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e233481233576%_)))
                                                        (_%hd233482233579%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e233481233576%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl233483233581%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl233477233565%_))
                                                            (let ((_%e233484233584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl233477233565%_))))
                      (let ((_%tl233486233589%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233484233584%_)))
                            (_%hd233485233587%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233484233584%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl233486233589%_))
                            (_%__kont236710236711%_ _%hd233482233579%_)
                            (let ()
                              (declare (not safe))
                              (_%g233469233502%_)))))
                    (let () (declare (not safe)) (_%g233469233502%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl233477233565%_))
                    (let ((_%e233495233523%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl233477233565%_))))
                      (let ((_%tl233497233528%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233495233523%_)))
                            (_%hd233496233526%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233495233523%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl233497233528%_))
                            (_%__kont236712236713%_
                             _%hd233496233526%_
                             _%hd233476233563%_)
                            (let ()
                              (declare (not safe))
                              (_%g233469233502%_)))))
                    (let () (declare (not safe)) (_%g233469233502%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl233477233565%_))
                                                    (let ((_%e233495233523%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl233477233565%_))))
                                                      (let ((_%tl233497233528%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e233495233523%_)))
                    (_%hd233496233526%_
                     (let () (declare (not safe)) (##car _%e233495233523%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl233497233528%_))
                    (_%__kont236712236713%_
                     _%hd233496233526%_
                     _%hd233476233563%_)
                    (let () (declare (not safe)) (_%g233469233502%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g233469233502%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl233477233565%_))
                                                (let ((_%e233495233523%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl233477233565%_))))
                                                  (let ((_%tl233497233528%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e233495233523%_)))
                                                        (_%hd233496233526%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e233495233523%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl233497233528%_))
                                                        (_%__kont236712236713%_
                                                         _%hd233496233526%_
                                                         _%hd233476233563%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g233469233502%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g233469233502%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl233477233565%_))
                                            (let ((_%e233495233523%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl233477233565%_))))
                                              (let ((_%tl233497233528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e233495233523%_)))
                                                    (_%hd233496233526%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e233495233523%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl233497233528%_))
                                                    (_%__kont236712236713%_
                                                     _%hd233496233526%_
                                                     _%hd233476233563%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g233469233502%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g233469233502%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl233477233565%_))
                                    (let ((_%e233495233523%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl233477233565%_))))
                                      (let ((_%tl233497233528%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233495233523%_)))
                                            (_%hd233496233526%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233495233523%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl233497233528%_))
                                            (_%__kont236712236713%_
                                             _%hd233496233526%_
                                             _%hd233476233563%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g233469233502%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g233469233502%_))))))
                        (let () (declare (not safe)) (_%g233469233502%_)))))
                (let () (declare (not safe)) (_%g233469233502%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self233381%_ _%stx233382%_)
        (let* ((_%g233384233405%_
                (lambda (_%g233385233402%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g233385233402%_))))
               (_%g233383233462%_
                (lambda (_%g233385233408%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g233385233408%_))
                      (let ((_%e233389233410%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g233385233408%_))))
                        (let ((_%hd233390233413%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e233389233410%_)))
                              (_%tl233391233415%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e233389233410%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl233391233415%_))
                              (let ((_%e233392233418%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl233391233415%_))))
                                (let ((_%hd233393233421%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e233392233418%_)))
                                      (_%tl233394233423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e233392233418%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl233394233423%_))
                                      (let ((_%e233395233426%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl233394233423%_))))
                                        (let ((_%hd233396233429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e233395233426%_)))
                                              (_%tl233397233431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e233395233426%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl233397233431%_))
                                              (let ((_%e233398233434%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl233397233431%_))))
                                                (let ((_%hd233399233437%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e233398233434%_)))
                                                      (_%tl233400233439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e233398233434%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl233400233439%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self233381%_
                                                         _%hd233396233429%_))
                                                      (_%g233384233405%_
                                                       _%g233385233408%_))))
                                              (_%g233384233405%_
                                               _%g233385233408%_))))
                                      (_%g233384233405%_ _%g233385233408%_))))
                              (_%g233384233405%_ _%g233385233408%_))))
                      (_%g233384233405%_ _%g233385233408%_)))))
          (_%g233383233462%_ _%stx233382%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self232346%_ _%stx232347%_)
        (let* ((_%__stx236774236775%_ _%stx232347%_)
               (_%g232355232577%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx236774236775%_)))))
          (let ((_%__kont236776236777%_
                 (lambda (_%g232357233330%_
                          _%g232358233331%_
                          _%g232359233332%_
                          _%g232360233333%_)
                   (let ((__tmp237912
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self232346%_ 'methods)))
                         (__tmp237911
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g232358233331%_))))
                     (declare (not safe))
                     (hash-put! __tmp237912 __tmp237911 '#t))
                   (for-each
                    (lambda (_%g233366233368%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self232346%_ _%g233366233368%_)))
                    (let ((__tmp237913
                           (lambda (_%g233370233373%_ _%g233371233375%_)
                             (cons _%g233370233373%_ _%g233371233375%_))))
                      (declare (not safe))
                      (foldr__0 __tmp237913 '() _%g232357233330%_)))))
                (_%__kont236780236781%_
                 (lambda (_%g232400233167%_
                          _%g232401233168%_
                          _%g232402233169%_
                          _%g232403233170%_
                          _%g232404233171%_)
                   (let ((__tmp237915
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self232346%_ 'methods)))
                         (__tmp237914
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g232401233168%_))))
                     (declare (not safe))
                     (hash-put! __tmp237915 __tmp237914 '#t))
                   (for-each
                    (lambda (_%g233211233213%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self232346%_ _%g233211233213%_)))
                    (let ((__tmp237916
                           (lambda (_%g233215233218%_ _%g233216233220%_)
                             (cons _%g233215233218%_ _%g233216233220%_))))
                      (declare (not safe))
                      (foldr__0 __tmp237916 '() _%g232400233167%_)))))
                (_%__kont236784236785%_
                 (lambda (_%g232453233002%_
                          _%g232454233003%_
                          _%g232455233004%_)
                   (let ((__tmp237918
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self232346%_ 'slots)))
                         (__tmp237917
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g232453233002%_))))
                     (declare (not safe))
                     (hash-put! __tmp237918 __tmp237917 '#t))))
                (_%__kont236786236787%_
                 (lambda (_%g232486232879%_
                          _%g232487232880%_
                          _%g232488232881%_
                          _%g232489232882%_)
                   (let ((__tmp237920
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self232346%_ 'slots)))
                         (__tmp237919
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g232487232880%_))))
                     (declare (not safe))
                     (hash-put! __tmp237920 __tmp237919 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self232346%_ _%g232486232879%_))))
                (_%__kont236788236789%_
                 (lambda (_%g232523232753%_ _%g232524232754%_)
                   (let* ((_%accessor232776%_
                           (let ((__tmp237921
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g232524232754%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp237921)))
                          (_%klass232778%_
                           (let ((__tmp237922
                                  (##structure-ref
                                   _%accessor232776%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx232347%_
                              __tmp237922)))
                          (_%slot232780%_
                           (##structure-ref
                            _%accessor232776%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor232776%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass232778%_
                                    _%slot232780%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass232778%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp237924
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self232346%_ 'slots)))
                               (__tmp237923
                                (##structure-ref
                                 _%accessor232776%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp237924 __tmp237923 '#t))))))
                (_%__kont236790236791%_
                 (lambda (_%g232546232653%_
                          _%g232547232654%_
                          _%g232548232655%_)
                   (let* ((_%mutator232682%_
                           (let ((__tmp237925
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g232548232655%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp237925)))
                          (_%klass232684%_
                           (let ((__tmp237926
                                  (##structure-ref
                                   _%mutator232682%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx232347%_
                              __tmp237926)))
                          (_%slot232686%_
                           (##structure-ref
                            _%mutator232682%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator232682%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass232684%_
                                    _%slot232686%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass232684%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp237927
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self232346%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp237927 _%slot232686%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self232346%_ _%g232546232653%_)))))
                (_%__kont236792236793%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self232346%_ _%stx232347%_)))))
            (let* ((_%__match237273237274%_
                    (lambda (_%e232549232589%_
                             _%hd232550232592%_
                             _%tl232551232594%_
                             _%e232552232597%_
                             _%hd232553232600%_
                             _%tl232554232602%_
                             _%e232555232605%_
                             _%hd232556232608%_
                             _%tl232557232610%_
                             _%e232558232613%_
                             _%hd232559232616%_
                             _%tl232560232618%_
                             _%e232561232621%_
                             _%hd232562232624%_
                             _%tl232563232626%_
                             _%e232564232629%_
                             _%hd232565232632%_
                             _%tl232566232634%_
                             _%e232567232637%_
                             _%hd232568232640%_
                             _%tl232569232642%_
                             _%e232570232645%_
                             _%hd232571232648%_
                             _%tl232572232650%_)
                      (let ((_%g232546232653%_ _%hd232571232648%_)
                            (_%g232547232654%_ _%hd232568232640%_)
                            (_%g232548232655%_ _%hd232559232616%_))
                        (if (and (let ((__tmp237928
                                        (let ((__tmp237929
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g232548232655%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp237929))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp237928
                                    'gxc#!mutator::t))
                                 (let ((__tmp237930
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self232346%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g232547232654%_
                                    __tmp237930)))
                            (_%__kont236790236791%_
                             _%g232546232653%_
                             _%g232547232654%_
                             _%g232548232655%_)
                            (_%__kont236792236793%_)))))
                   (_%__match237271237272%_
                    (lambda (_%e232549232589%_
                             _%hd232550232592%_
                             _%tl232551232594%_
                             _%e232552232597%_
                             _%hd232553232600%_
                             _%tl232554232602%_
                             _%e232555232605%_
                             _%hd232556232608%_
                             _%tl232557232610%_
                             _%e232558232613%_
                             _%hd232559232616%_
                             _%tl232560232618%_
                             _%e232561232621%_
                             _%hd232562232624%_
                             _%tl232563232626%_
                             _%e232564232629%_
                             _%hd232565232632%_
                             _%tl232566232634%_
                             _%e232567232637%_
                             _%hd232568232640%_
                             _%tl232569232642%_
                             _%e232570232645%_
                             _%hd232571232648%_
                             _%tl232572232650%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl232572232650%_))
                          (_%__match237273237274%_
                           _%e232549232589%_
                           _%hd232550232592%_
                           _%tl232551232594%_
                           _%e232552232597%_
                           _%hd232553232600%_
                           _%tl232554232602%_
                           _%e232555232605%_
                           _%hd232556232608%_
                           _%tl232557232610%_
                           _%e232558232613%_
                           _%hd232559232616%_
                           _%tl232560232618%_
                           _%e232561232621%_
                           _%hd232562232624%_
                           _%tl232563232626%_
                           _%e232564232629%_
                           _%hd232565232632%_
                           _%tl232566232634%_
                           _%e232567232637%_
                           _%hd232568232640%_
                           _%tl232569232642%_
                           _%e232570232645%_
                           _%hd232571232648%_
                           _%tl232572232650%_)
                          (_%__kont236792236793%_))))
                   (_%__match237265237266%_
                    (lambda (_%e232549232589%_
                             _%hd232550232592%_
                             _%tl232551232594%_
                             _%e232552232597%_
                             _%hd232553232600%_
                             _%tl232554232602%_
                             _%e232555232605%_
                             _%hd232556232608%_
                             _%tl232557232610%_
                             _%e232558232613%_
                             _%hd232559232616%_
                             _%tl232560232618%_
                             _%e232561232621%_
                             _%hd232562232624%_
                             _%tl232563232626%_
                             _%e232564232629%_
                             _%hd232565232632%_
                             _%tl232566232634%_
                             _%e232567232637%_
                             _%hd232568232640%_
                             _%tl232569232642%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl232563232626%_))
                          (let ((_%e232570232645%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl232563232626%_))))
                            (let ((_%tl232572232650%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e232570232645%_)))
                                  (_%hd232571232648%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e232570232645%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl232572232650%_))
                                  (_%__match237273237274%_
                                   _%e232549232589%_
                                   _%hd232550232592%_
                                   _%tl232551232594%_
                                   _%e232552232597%_
                                   _%hd232553232600%_
                                   _%tl232554232602%_
                                   _%e232555232605%_
                                   _%hd232556232608%_
                                   _%tl232557232610%_
                                   _%e232558232613%_
                                   _%hd232559232616%_
                                   _%tl232560232618%_
                                   _%e232561232621%_
                                   _%hd232562232624%_
                                   _%tl232563232626%_
                                   _%e232564232629%_
                                   _%hd232565232632%_
                                   _%tl232566232634%_
                                   _%e232567232637%_
                                   _%hd232568232640%_
                                   _%tl232569232642%_
                                   _%e232570232645%_
                                   _%hd232571232648%_
                                   _%tl232572232650%_)
                                  (_%__kont236792236793%_))))
                          (_%__kont236792236793%_))))
                   (_%__match237211237212%_
                    (lambda (_%e232525232697%_
                             _%hd232526232700%_
                             _%tl232527232702%_
                             _%e232528232705%_
                             _%hd232529232708%_
                             _%tl232530232710%_
                             _%e232531232713%_
                             _%hd232532232716%_
                             _%tl232533232718%_
                             _%e232534232721%_
                             _%hd232535232724%_
                             _%tl232536232726%_
                             _%e232537232729%_
                             _%hd232538232732%_
                             _%tl232539232734%_
                             _%e232540232737%_
                             _%hd232541232740%_
                             _%tl232542232742%_
                             _%e232543232745%_
                             _%hd232544232748%_
                             _%tl232545232750%_)
                      (let ((_%g232523232753%_ _%hd232544232748%_)
                            (_%g232524232754%_ _%hd232535232724%_))
                        (if (and (let ((__tmp237931
                                        (let ((__tmp237932
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g232524232754%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp237932))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp237931
                                    'gxc#!accessor::t))
                                 (let ((__tmp237933
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self232346%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g232523232753%_
                                    __tmp237933)))
                            (_%__kont236788236789%_
                             _%g232523232753%_
                             _%g232524232754%_)
                            (_%__kont236792236793%_)))))
                   (_%__match237209237210%_
                    (lambda (_%e232525232697%_
                             _%hd232526232700%_
                             _%tl232527232702%_
                             _%e232528232705%_
                             _%hd232529232708%_
                             _%tl232530232710%_
                             _%e232531232713%_
                             _%hd232532232716%_
                             _%tl232533232718%_
                             _%e232534232721%_
                             _%hd232535232724%_
                             _%tl232536232726%_
                             _%e232537232729%_
                             _%hd232538232732%_
                             _%tl232539232734%_
                             _%e232540232737%_
                             _%hd232541232740%_
                             _%tl232542232742%_
                             _%e232543232745%_
                             _%hd232544232748%_
                             _%tl232545232750%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl232539232734%_))
                          (_%__match237211237212%_
                           _%e232525232697%_
                           _%hd232526232700%_
                           _%tl232527232702%_
                           _%e232528232705%_
                           _%hd232529232708%_
                           _%tl232530232710%_
                           _%e232531232713%_
                           _%hd232532232716%_
                           _%tl232533232718%_
                           _%e232534232721%_
                           _%hd232535232724%_
                           _%tl232536232726%_
                           _%e232537232729%_
                           _%hd232538232732%_
                           _%tl232539232734%_
                           _%e232540232737%_
                           _%hd232541232740%_
                           _%tl232542232742%_
                           _%e232543232745%_
                           _%hd232544232748%_
                           _%tl232545232750%_)
                          (_%__match237265237266%_
                           _%e232525232697%_
                           _%hd232526232700%_
                           _%tl232527232702%_
                           _%e232528232705%_
                           _%hd232529232708%_
                           _%tl232530232710%_
                           _%e232531232713%_
                           _%hd232532232716%_
                           _%tl232533232718%_
                           _%e232534232721%_
                           _%hd232535232724%_
                           _%tl232536232726%_
                           _%e232537232729%_
                           _%hd232538232732%_
                           _%tl232539232734%_
                           _%e232540232737%_
                           _%hd232541232740%_
                           _%tl232542232742%_
                           _%e232543232745%_
                           _%hd232544232748%_
                           _%tl232545232750%_))))
                   (_%__match237155237156%_
                    (lambda (_%e232490232791%_
                             _%hd232491232794%_
                             _%tl232492232796%_
                             _%e232493232799%_
                             _%hd232494232802%_
                             _%tl232495232804%_
                             _%e232496232807%_
                             _%hd232497232810%_
                             _%tl232498232812%_
                             _%e232499232815%_
                             _%hd232500232818%_
                             _%tl232501232820%_
                             _%e232502232823%_
                             _%hd232503232826%_
                             _%tl232504232828%_
                             _%e232505232831%_
                             _%hd232506232834%_
                             _%tl232507232836%_
                             _%e232508232839%_
                             _%hd232509232842%_
                             _%tl232510232844%_
                             _%e232511232847%_
                             _%hd232512232850%_
                             _%tl232513232852%_
                             _%e232514232855%_
                             _%hd232515232858%_
                             _%tl232516232860%_
                             _%e232517232863%_
                             _%hd232518232866%_
                             _%tl232519232868%_
                             _%e232520232871%_
                             _%hd232521232874%_
                             _%tl232522232876%_)
                      (let ((_%g232486232879%_ _%hd232521232874%_)
                            (_%g232487232880%_ _%hd232518232866%_)
                            (_%g232488232881%_ _%hd232509232842%_)
                            (_%g232489232882%_ _%hd232500232818%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g232489232882%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g232489232882%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp237934
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self232346%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g232488232881%_
                                    __tmp237934)))
                            (_%__kont236786236787%_
                             _%g232486232879%_
                             _%g232487232880%_
                             _%g232488232881%_
                             _%g232489232882%_)
                            (_%__kont236792236793%_)))))
                   (_%__match237147237148%_
                    (lambda (_%e232490232791%_
                             _%hd232491232794%_
                             _%tl232492232796%_
                             _%e232493232799%_
                             _%hd232494232802%_
                             _%tl232495232804%_
                             _%e232496232807%_
                             _%hd232497232810%_
                             _%tl232498232812%_
                             _%e232499232815%_
                             _%hd232500232818%_
                             _%tl232501232820%_
                             _%e232502232823%_
                             _%hd232503232826%_
                             _%tl232504232828%_
                             _%e232505232831%_
                             _%hd232506232834%_
                             _%tl232507232836%_
                             _%e232508232839%_
                             _%hd232509232842%_
                             _%tl232510232844%_
                             _%e232511232847%_
                             _%hd232512232850%_
                             _%tl232513232852%_
                             _%e232514232855%_
                             _%hd232515232858%_
                             _%tl232516232860%_
                             _%e232517232863%_
                             _%hd232518232866%_
                             _%tl232519232868%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl232513232852%_))
                          (let ((_%e232520232871%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl232513232852%_))))
                            (let ((_%tl232522232876%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e232520232871%_)))
                                  (_%hd232521232874%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e232520232871%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl232522232876%_))
                                  (_%__match237155237156%_
                                   _%e232490232791%_
                                   _%hd232491232794%_
                                   _%tl232492232796%_
                                   _%e232493232799%_
                                   _%hd232494232802%_
                                   _%tl232495232804%_
                                   _%e232496232807%_
                                   _%hd232497232810%_
                                   _%tl232498232812%_
                                   _%e232499232815%_
                                   _%hd232500232818%_
                                   _%tl232501232820%_
                                   _%e232502232823%_
                                   _%hd232503232826%_
                                   _%tl232504232828%_
                                   _%e232505232831%_
                                   _%hd232506232834%_
                                   _%tl232507232836%_
                                   _%e232508232839%_
                                   _%hd232509232842%_
                                   _%tl232510232844%_
                                   _%e232511232847%_
                                   _%hd232512232850%_
                                   _%tl232513232852%_
                                   _%e232514232855%_
                                   _%hd232515232858%_
                                   _%tl232516232860%_
                                   _%e232517232863%_
                                   _%hd232518232866%_
                                   _%tl232519232868%_
                                   _%e232520232871%_
                                   _%hd232521232874%_
                                   _%tl232522232876%_)
                                  (_%__kont236792236793%_))))
                          (_%__match237271237272%_
                           _%e232490232791%_
                           _%hd232491232794%_
                           _%tl232492232796%_
                           _%e232493232799%_
                           _%hd232494232802%_
                           _%tl232495232804%_
                           _%e232496232807%_
                           _%hd232497232810%_
                           _%tl232498232812%_
                           _%e232499232815%_
                           _%hd232500232818%_
                           _%tl232501232820%_
                           _%e232502232823%_
                           _%hd232503232826%_
                           _%tl232504232828%_
                           _%e232505232831%_
                           _%hd232506232834%_
                           _%tl232507232836%_
                           _%e232508232839%_
                           _%hd232509232842%_
                           _%tl232510232844%_
                           _%e232511232847%_
                           _%hd232512232850%_
                           _%tl232513232852%_))))
                   (_%__match237069237070%_
                    (lambda (_%e232456232922%_
                             _%hd232457232925%_
                             _%tl232458232927%_
                             _%e232459232930%_
                             _%hd232460232933%_
                             _%tl232461232935%_
                             _%e232462232938%_
                             _%hd232463232941%_
                             _%tl232464232943%_
                             _%e232465232946%_
                             _%hd232466232949%_
                             _%tl232467232951%_
                             _%e232468232954%_
                             _%hd232469232957%_
                             _%tl232470232959%_
                             _%e232471232962%_
                             _%hd232472232965%_
                             _%tl232473232967%_
                             _%e232474232970%_
                             _%hd232475232973%_
                             _%tl232476232975%_
                             _%e232477232978%_
                             _%hd232478232981%_
                             _%tl232479232983%_
                             _%e232480232986%_
                             _%hd232481232989%_
                             _%tl232482232991%_
                             _%e232483232994%_
                             _%hd232484232997%_
                             _%tl232485232999%_)
                      (let ((_%g232453233002%_ _%hd232484232997%_)
                            (_%g232454233003%_ _%hd232475232973%_)
                            (_%g232455233004%_ _%hd232466232949%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g232455233004%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g232455233004%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp237935
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self232346%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g232454233003%_
                                    __tmp237935)))
                            (_%__kont236784236785%_
                             _%g232453233002%_
                             _%g232454233003%_
                             _%g232455233004%_)
                            (_%__match237273237274%_
                             _%e232456232922%_
                             _%hd232457232925%_
                             _%tl232458232927%_
                             _%e232459232930%_
                             _%hd232460232933%_
                             _%tl232461232935%_
                             _%e232462232938%_
                             _%hd232463232941%_
                             _%tl232464232943%_
                             _%e232465232946%_
                             _%hd232466232949%_
                             _%tl232467232951%_
                             _%e232468232954%_
                             _%hd232469232957%_
                             _%tl232470232959%_
                             _%e232471232962%_
                             _%hd232472232965%_
                             _%tl232473232967%_
                             _%e232474232970%_
                             _%hd232475232973%_
                             _%tl232476232975%_
                             _%e232477232978%_
                             _%hd232478232981%_
                             _%tl232479232983%_)))))
                   (_%__match237067237068%_
                    (lambda (_%e232456232922%_
                             _%hd232457232925%_
                             _%tl232458232927%_
                             _%e232459232930%_
                             _%hd232460232933%_
                             _%tl232461232935%_
                             _%e232462232938%_
                             _%hd232463232941%_
                             _%tl232464232943%_
                             _%e232465232946%_
                             _%hd232466232949%_
                             _%tl232467232951%_
                             _%e232468232954%_
                             _%hd232469232957%_
                             _%tl232470232959%_
                             _%e232471232962%_
                             _%hd232472232965%_
                             _%tl232473232967%_
                             _%e232474232970%_
                             _%hd232475232973%_
                             _%tl232476232975%_
                             _%e232477232978%_
                             _%hd232478232981%_
                             _%tl232479232983%_
                             _%e232480232986%_
                             _%hd232481232989%_
                             _%tl232482232991%_
                             _%e232483232994%_
                             _%hd232484232997%_
                             _%tl232485232999%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl232479232983%_))
                          (_%__match237069237070%_
                           _%e232456232922%_
                           _%hd232457232925%_
                           _%tl232458232927%_
                           _%e232459232930%_
                           _%hd232460232933%_
                           _%tl232461232935%_
                           _%e232462232938%_
                           _%hd232463232941%_
                           _%tl232464232943%_
                           _%e232465232946%_
                           _%hd232466232949%_
                           _%tl232467232951%_
                           _%e232468232954%_
                           _%hd232469232957%_
                           _%tl232470232959%_
                           _%e232471232962%_
                           _%hd232472232965%_
                           _%tl232473232967%_
                           _%e232474232970%_
                           _%hd232475232973%_
                           _%tl232476232975%_
                           _%e232477232978%_
                           _%hd232478232981%_
                           _%tl232479232983%_
                           _%e232480232986%_
                           _%hd232481232989%_
                           _%tl232482232991%_
                           _%e232483232994%_
                           _%hd232484232997%_
                           _%tl232485232999%_)
                          (_%__match237147237148%_
                           _%e232456232922%_
                           _%hd232457232925%_
                           _%tl232458232927%_
                           _%e232459232930%_
                           _%hd232460232933%_
                           _%tl232461232935%_
                           _%e232462232938%_
                           _%hd232463232941%_
                           _%tl232464232943%_
                           _%e232465232946%_
                           _%hd232466232949%_
                           _%tl232467232951%_
                           _%e232468232954%_
                           _%hd232469232957%_
                           _%tl232470232959%_
                           _%e232471232962%_
                           _%hd232472232965%_
                           _%tl232473232967%_
                           _%e232474232970%_
                           _%hd232475232973%_
                           _%tl232476232975%_
                           _%e232477232978%_
                           _%hd232478232981%_
                           _%tl232479232983%_
                           _%e232480232986%_
                           _%hd232481232989%_
                           _%tl232482232991%_
                           _%e232483232994%_
                           _%hd232484232997%_
                           _%tl232485232999%_))))
                   (_%__match237057237058%_
                    (lambda (_%e232456232922%_
                             _%hd232457232925%_
                             _%tl232458232927%_
                             _%e232459232930%_
                             _%hd232460232933%_
                             _%tl232461232935%_
                             _%e232462232938%_
                             _%hd232463232941%_
                             _%tl232464232943%_
                             _%e232465232946%_
                             _%hd232466232949%_
                             _%tl232467232951%_
                             _%e232468232954%_
                             _%hd232469232957%_
                             _%tl232470232959%_
                             _%e232471232962%_
                             _%hd232472232965%_
                             _%tl232473232967%_
                             _%e232474232970%_
                             _%hd232475232973%_
                             _%tl232476232975%_
                             _%e232477232978%_
                             _%hd232478232981%_
                             _%tl232479232983%_
                             _%e232480232986%_
                             _%hd232481232989%_
                             _%tl232482232991%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd232481232989%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl232482232991%_))
                              (let ((_%e232483232994%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl232482232991%_))))
                                (let ((_%tl232485232999%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e232483232994%_)))
                                      (_%hd232484232997%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e232483232994%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl232485232999%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl232479232983%_))
                                          (_%__match237069237070%_
                                           _%e232456232922%_
                                           _%hd232457232925%_
                                           _%tl232458232927%_
                                           _%e232459232930%_
                                           _%hd232460232933%_
                                           _%tl232461232935%_
                                           _%e232462232938%_
                                           _%hd232463232941%_
                                           _%tl232464232943%_
                                           _%e232465232946%_
                                           _%hd232466232949%_
                                           _%tl232467232951%_
                                           _%e232468232954%_
                                           _%hd232469232957%_
                                           _%tl232470232959%_
                                           _%e232471232962%_
                                           _%hd232472232965%_
                                           _%tl232473232967%_
                                           _%e232474232970%_
                                           _%hd232475232973%_
                                           _%tl232476232975%_
                                           _%e232477232978%_
                                           _%hd232478232981%_
                                           _%tl232479232983%_
                                           _%e232480232986%_
                                           _%hd232481232989%_
                                           _%tl232482232991%_
                                           _%e232483232994%_
                                           _%hd232484232997%_
                                           _%tl232485232999%_)
                                          (_%__match237147237148%_
                                           _%e232456232922%_
                                           _%hd232457232925%_
                                           _%tl232458232927%_
                                           _%e232459232930%_
                                           _%hd232460232933%_
                                           _%tl232461232935%_
                                           _%e232462232938%_
                                           _%hd232463232941%_
                                           _%tl232464232943%_
                                           _%e232465232946%_
                                           _%hd232466232949%_
                                           _%tl232467232951%_
                                           _%e232468232954%_
                                           _%hd232469232957%_
                                           _%tl232470232959%_
                                           _%e232471232962%_
                                           _%hd232472232965%_
                                           _%tl232473232967%_
                                           _%e232474232970%_
                                           _%hd232475232973%_
                                           _%tl232476232975%_
                                           _%e232477232978%_
                                           _%hd232478232981%_
                                           _%tl232479232983%_
                                           _%e232480232986%_
                                           _%hd232481232989%_
                                           _%tl232482232991%_
                                           _%e232483232994%_
                                           _%hd232484232997%_
                                           _%tl232485232999%_))
                                      (_%__match237271237272%_
                                       _%e232456232922%_
                                       _%hd232457232925%_
                                       _%tl232458232927%_
                                       _%e232459232930%_
                                       _%hd232460232933%_
                                       _%tl232461232935%_
                                       _%e232462232938%_
                                       _%hd232463232941%_
                                       _%tl232464232943%_
                                       _%e232465232946%_
                                       _%hd232466232949%_
                                       _%tl232467232951%_
                                       _%e232468232954%_
                                       _%hd232469232957%_
                                       _%tl232470232959%_
                                       _%e232471232962%_
                                       _%hd232472232965%_
                                       _%tl232473232967%_
                                       _%e232474232970%_
                                       _%hd232475232973%_
                                       _%tl232476232975%_
                                       _%e232477232978%_
                                       _%hd232478232981%_
                                       _%tl232479232983%_))))
                              (_%__match237271237272%_
                               _%e232456232922%_
                               _%hd232457232925%_
                               _%tl232458232927%_
                               _%e232459232930%_
                               _%hd232460232933%_
                               _%tl232461232935%_
                               _%e232462232938%_
                               _%hd232463232941%_
                               _%tl232464232943%_
                               _%e232465232946%_
                               _%hd232466232949%_
                               _%tl232467232951%_
                               _%e232468232954%_
                               _%hd232469232957%_
                               _%tl232470232959%_
                               _%e232471232962%_
                               _%hd232472232965%_
                               _%tl232473232967%_
                               _%e232474232970%_
                               _%hd232475232973%_
                               _%tl232476232975%_
                               _%e232477232978%_
                               _%hd232478232981%_
                               _%tl232479232983%_))
                          (_%__match237271237272%_
                           _%e232456232922%_
                           _%hd232457232925%_
                           _%tl232458232927%_
                           _%e232459232930%_
                           _%hd232460232933%_
                           _%tl232461232935%_
                           _%e232462232938%_
                           _%hd232463232941%_
                           _%tl232464232943%_
                           _%e232465232946%_
                           _%hd232466232949%_
                           _%tl232467232951%_
                           _%e232468232954%_
                           _%hd232469232957%_
                           _%tl232470232959%_
                           _%e232471232962%_
                           _%hd232472232965%_
                           _%tl232473232967%_
                           _%e232474232970%_
                           _%hd232475232973%_
                           _%tl232476232975%_
                           _%e232477232978%_
                           _%hd232478232981%_
                           _%tl232479232983%_))))
                   (_%__match236989236990%_
                    (lambda (_%e232405233041%_
                             _%hd232406233044%_
                             _%tl232407233046%_
                             _%e232408233049%_
                             _%hd232409233052%_
                             _%tl232410233054%_
                             _%e232411233057%_
                             _%hd232412233060%_
                             _%tl232413233062%_
                             _%e232414233065%_
                             _%hd232415233068%_
                             _%tl232416233070%_
                             _%e232417233073%_
                             _%hd232418233076%_
                             _%tl232419233078%_
                             _%e232420233081%_
                             _%hd232421233084%_
                             _%tl232422233086%_
                             _%e232423233089%_
                             _%hd232424233092%_
                             _%tl232425233094%_
                             _%e232426233097%_
                             _%hd232427233100%_
                             _%tl232428233102%_
                             _%e232429233105%_
                             _%hd232430233108%_
                             _%tl232431233110%_
                             _%e232432233113%_
                             _%hd232433233116%_
                             _%tl232434233118%_
                             _%e232435233121%_
                             _%hd232436233124%_
                             _%tl232437233126%_
                             _%e232438233129%_
                             _%hd232439233132%_
                             _%tl232440233134%_
                             _%e232441233137%_
                             _%hd232442233140%_
                             _%tl232443233142%_
                             _%__splice236782236783%_
                             _%target232444233145%_
                             _%tl232446233147%_)
                      (letrec ((_%loop232447233150%_
                                (lambda (_%hd232445233153%_
                                         _%args232451233155%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd232445233153%_))
                                      (let ((_%e232448233157%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd232445233153%_))))
                                        (let ((_%lp-tl232450233162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e232448233157%_)))
                                              (_%lp-hd232449233160%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e232448233157%_))))
                                          (_%loop232447233150%_
                                           _%lp-tl232450233162%_
                                           (cons _%lp-hd232449233160%_
                                                 _%args232451233155%_))))
                                      (let ((_%args232452233165%_
                                             (reverse _%args232451233155%_)))
                                        (let ((_%g232400233167%_
                                               _%args232452233165%_)
                                              (_%g232401233168%_
                                               _%hd232442233140%_)
                                              (_%g232402233169%_
                                               _%hd232433233116%_)
                                              (_%g232403233170%_
                                               _%hd232424233092%_)
                                              (_%g232404233171%_
                                               _%hd232415233068%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g232404233171%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g232403233170%_
                                                      'call-method))
                                                   (let ((__tmp237936
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self232346%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g232402233169%_
                                                      __tmp237936)))
                                              (_%__kont236780236781%_
                                               _%g232400233167%_
                                               _%g232401233168%_
                                               _%g232402233169%_
                                               _%g232403233170%_
                                               _%g232404233171%_)
                                              (_%__kont236792236793%_))))))))
                        (_%loop232447233150%_ _%target232444233145%_ '()))))
                   (_%__match236947236948%_
                    (lambda (_%e232405233041%_
                             _%hd232406233044%_
                             _%tl232407233046%_
                             _%e232408233049%_
                             _%hd232409233052%_
                             _%tl232410233054%_
                             _%e232411233057%_
                             _%hd232412233060%_
                             _%tl232413233062%_
                             _%e232414233065%_
                             _%hd232415233068%_
                             _%tl232416233070%_
                             _%e232417233073%_
                             _%hd232418233076%_
                             _%tl232419233078%_
                             _%e232420233081%_
                             _%hd232421233084%_
                             _%tl232422233086%_
                             _%e232423233089%_
                             _%hd232424233092%_
                             _%tl232425233094%_
                             _%e232426233097%_
                             _%hd232427233100%_
                             _%tl232428233102%_
                             _%e232429233105%_
                             _%hd232430233108%_
                             _%tl232431233110%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd232430233108%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl232431233110%_))
                              (let ((_%e232432233113%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl232431233110%_))))
                                (let ((_%tl232434233118%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e232432233113%_)))
                                      (_%hd232433233116%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e232432233113%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl232434233118%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl232428233102%_))
                                          (let ((_%e232435233121%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl232428233102%_))))
                                            (let ((_%tl232437233126%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e232435233121%_)))
                                                  (_%hd232436233124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e232435233121%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd232436233124%_))
                                                  (let ((_%e232438233129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd232436233124%_))))
                                                    (let ((_%tl232440233134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e232438233129%_)))
                                                          (_%hd232439233132%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e232438233129%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd232439233132%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd232439233132%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl232440233134%_))
                          (let ((_%e232441233137%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl232440233134%_))))
                            (let ((_%tl232443233142%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e232441233137%_)))
                                  (_%hd232442233140%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e232441233137%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl232443233142%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl232437233126%_))
                                      (let ((_%__splice236782236783%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl232437233126%_
                                                '0))))
                                        (let ((_%tl232446233147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice236782236783%_
                                                  '1)))
                                              (_%target232444233145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice236782236783%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl232446233147%_))
                                              (_%__match236989236990%_
                                               _%e232405233041%_
                                               _%hd232406233044%_
                                               _%tl232407233046%_
                                               _%e232408233049%_
                                               _%hd232409233052%_
                                               _%tl232410233054%_
                                               _%e232411233057%_
                                               _%hd232412233060%_
                                               _%tl232413233062%_
                                               _%e232414233065%_
                                               _%hd232415233068%_
                                               _%tl232416233070%_
                                               _%e232417233073%_
                                               _%hd232418233076%_
                                               _%tl232419233078%_
                                               _%e232420233081%_
                                               _%hd232421233084%_
                                               _%tl232422233086%_
                                               _%e232423233089%_
                                               _%hd232424233092%_
                                               _%tl232425233094%_
                                               _%e232426233097%_
                                               _%hd232427233100%_
                                               _%tl232428233102%_
                                               _%e232429233105%_
                                               _%hd232430233108%_
                                               _%tl232431233110%_
                                               _%e232432233113%_
                                               _%hd232433233116%_
                                               _%tl232434233118%_
                                               _%e232435233121%_
                                               _%hd232436233124%_
                                               _%tl232437233126%_
                                               _%e232438233129%_
                                               _%hd232439233132%_
                                               _%tl232440233134%_
                                               _%e232441233137%_
                                               _%hd232442233140%_
                                               _%tl232443233142%_
                                               _%__splice236782236783%_
                                               _%target232444233145%_
                                               _%tl232446233147%_)
                                              (_%__kont236792236793%_))))
                                      (_%__kont236792236793%_))
                                  (_%__kont236792236793%_))))
                          (_%__kont236792236793%_))
                      (_%__kont236792236793%_))
                  (_%__kont236792236793%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont236792236793%_))))
                                          (_%__match237271237272%_
                                           _%e232405233041%_
                                           _%hd232406233044%_
                                           _%tl232407233046%_
                                           _%e232408233049%_
                                           _%hd232409233052%_
                                           _%tl232410233054%_
                                           _%e232411233057%_
                                           _%hd232412233060%_
                                           _%tl232413233062%_
                                           _%e232414233065%_
                                           _%hd232415233068%_
                                           _%tl232416233070%_
                                           _%e232417233073%_
                                           _%hd232418233076%_
                                           _%tl232419233078%_
                                           _%e232420233081%_
                                           _%hd232421233084%_
                                           _%tl232422233086%_
                                           _%e232423233089%_
                                           _%hd232424233092%_
                                           _%tl232425233094%_
                                           _%e232426233097%_
                                           _%hd232427233100%_
                                           _%tl232428233102%_))
                                      (_%__match237271237272%_
                                       _%e232405233041%_
                                       _%hd232406233044%_
                                       _%tl232407233046%_
                                       _%e232408233049%_
                                       _%hd232409233052%_
                                       _%tl232410233054%_
                                       _%e232411233057%_
                                       _%hd232412233060%_
                                       _%tl232413233062%_
                                       _%e232414233065%_
                                       _%hd232415233068%_
                                       _%tl232416233070%_
                                       _%e232417233073%_
                                       _%hd232418233076%_
                                       _%tl232419233078%_
                                       _%e232420233081%_
                                       _%hd232421233084%_
                                       _%tl232422233086%_
                                       _%e232423233089%_
                                       _%hd232424233092%_
                                       _%tl232425233094%_
                                       _%e232426233097%_
                                       _%hd232427233100%_
                                       _%tl232428233102%_))))
                              (_%__match237271237272%_
                               _%e232405233041%_
                               _%hd232406233044%_
                               _%tl232407233046%_
                               _%e232408233049%_
                               _%hd232409233052%_
                               _%tl232410233054%_
                               _%e232411233057%_
                               _%hd232412233060%_
                               _%tl232413233062%_
                               _%e232414233065%_
                               _%hd232415233068%_
                               _%tl232416233070%_
                               _%e232417233073%_
                               _%hd232418233076%_
                               _%tl232419233078%_
                               _%e232420233081%_
                               _%hd232421233084%_
                               _%tl232422233086%_
                               _%e232423233089%_
                               _%hd232424233092%_
                               _%tl232425233094%_
                               _%e232426233097%_
                               _%hd232427233100%_
                               _%tl232428233102%_))
                          (_%__match237057237058%_
                           _%e232405233041%_
                           _%hd232406233044%_
                           _%tl232407233046%_
                           _%e232408233049%_
                           _%hd232409233052%_
                           _%tl232410233054%_
                           _%e232411233057%_
                           _%hd232412233060%_
                           _%tl232413233062%_
                           _%e232414233065%_
                           _%hd232415233068%_
                           _%tl232416233070%_
                           _%e232417233073%_
                           _%hd232418233076%_
                           _%tl232419233078%_
                           _%e232420233081%_
                           _%hd232421233084%_
                           _%tl232422233086%_
                           _%e232423233089%_
                           _%hd232424233092%_
                           _%tl232425233094%_
                           _%e232426233097%_
                           _%hd232427233100%_
                           _%tl232428233102%_
                           _%e232429233105%_
                           _%hd232430233108%_
                           _%tl232431233110%_))))
                   (_%__match236879236880%_
                    (lambda (_%e232361233228%_
                             _%hd232362233231%_
                             _%tl232363233233%_
                             _%e232364233236%_
                             _%hd232365233239%_
                             _%tl232366233241%_
                             _%e232367233244%_
                             _%hd232368233247%_
                             _%tl232369233249%_
                             _%e232370233252%_
                             _%hd232371233255%_
                             _%tl232372233257%_
                             _%e232373233260%_
                             _%hd232374233263%_
                             _%tl232375233265%_
                             _%e232376233268%_
                             _%hd232377233271%_
                             _%tl232378233273%_
                             _%e232379233276%_
                             _%hd232380233279%_
                             _%tl232381233281%_
                             _%e232382233284%_
                             _%hd232383233287%_
                             _%tl232384233289%_
                             _%e232385233292%_
                             _%hd232386233295%_
                             _%tl232387233297%_
                             _%e232388233300%_
                             _%hd232389233303%_
                             _%tl232390233305%_
                             _%__splice236778236779%_
                             _%target232391233308%_
                             _%tl232393233310%_)
                      (letrec ((_%loop232394233313%_
                                (lambda (_%hd232392233316%_
                                         _%args232398233318%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd232392233316%_))
                                      (let ((_%e232395233320%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd232392233316%_))))
                                        (let ((_%lp-tl232397233325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e232395233320%_)))
                                              (_%lp-hd232396233323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e232395233320%_))))
                                          (_%loop232394233313%_
                                           _%lp-tl232397233325%_
                                           (cons _%lp-hd232396233323%_
                                                 _%args232398233318%_))))
                                      (let ((_%args232399233328%_
                                             (reverse _%args232398233318%_)))
                                        (let ((_%g232357233330%_
                                               _%args232399233328%_)
                                              (_%g232358233331%_
                                               _%hd232389233303%_)
                                              (_%g232359233332%_
                                               _%hd232380233279%_)
                                              (_%g232360233333%_
                                               _%hd232371233255%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g232360233333%_
                                                      'call-method))
                                                   (let ((__tmp237937
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self232346%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g232359233332%_
                                                      __tmp237937)))
                                              (_%__kont236776236777%_
                                               _%g232357233330%_
                                               _%g232358233331%_
                                               _%g232359233332%_
                                               _%g232360233333%_)
                                              (_%__match237067237068%_
                                               _%e232361233228%_
                                               _%hd232362233231%_
                                               _%tl232363233233%_
                                               _%e232364233236%_
                                               _%hd232365233239%_
                                               _%tl232366233241%_
                                               _%e232367233244%_
                                               _%hd232368233247%_
                                               _%tl232369233249%_
                                               _%e232370233252%_
                                               _%hd232371233255%_
                                               _%tl232372233257%_
                                               _%e232373233260%_
                                               _%hd232374233263%_
                                               _%tl232375233265%_
                                               _%e232376233268%_
                                               _%hd232377233271%_
                                               _%tl232378233273%_
                                               _%e232379233276%_
                                               _%hd232380233279%_
                                               _%tl232381233281%_
                                               _%e232382233284%_
                                               _%hd232383233287%_
                                               _%tl232384233289%_
                                               _%e232385233292%_
                                               _%hd232386233295%_
                                               _%tl232387233297%_
                                               _%e232388233300%_
                                               _%hd232389233303%_
                                               _%tl232390233305%_))))))))
                        (_%loop232394233313%_ _%target232391233308%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx236774236775%_))
                  (let ((_%e232361233228%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx236774236775%_))))
                    (let ((_%tl232363233233%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e232361233228%_)))
                          (_%hd232362233231%_
                           (let ()
                             (declare (not safe))
                             (##car _%e232361233228%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl232363233233%_))
                          (let ((_%e232364233236%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl232363233233%_))))
                            (let ((_%tl232366233241%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e232364233236%_)))
                                  (_%hd232365233239%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e232364233236%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd232365233239%_))
                                  (let ((_%e232367233244%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd232365233239%_))))
                                    (let ((_%tl232369233249%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e232367233244%_)))
                                          (_%hd232368233247%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e232367233244%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd232368233247%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd232368233247%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl232369233249%_))
                                                  (let ((_%e232370233252%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl232369233249%_))))
                                                    (let ((_%tl232372233257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e232370233252%_)))
                                                          (_%hd232371233255%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e232370233252%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl232372233257%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl232366233241%_))
                      (let ((_%e232373233260%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl232366233241%_))))
                        (let ((_%tl232375233265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e232373233260%_)))
                              (_%hd232374233263%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e232373233260%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd232374233263%_))
                              (let ((_%e232376233268%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd232374233263%_))))
                                (let ((_%tl232378233273%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e232376233268%_)))
                                      (_%hd232377233271%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e232376233268%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd232377233271%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd232377233271%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl232378233273%_))
                                              (let ((_%e232379233276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl232378233273%_))))
                                                (let ((_%tl232381233281%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e232379233276%_)))
                                                      (_%hd232380233279%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e232379233276%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl232381233281%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl232375233265%_))
                                                          (let ((_%e232382233284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl232375233265%_))))
                    (let ((_%tl232384233289%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e232382233284%_)))
                          (_%hd232383233287%_
                           (let ()
                             (declare (not safe))
                             (##car _%e232382233284%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd232383233287%_))
                          (let ((_%e232385233292%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd232383233287%_))))
                            (let ((_%tl232387233297%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e232385233292%_)))
                                  (_%hd232386233295%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e232385233292%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd232386233295%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd232386233295%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl232387233297%_))
                                          (let ((_%e232388233300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl232387233297%_))))
                                            (let ((_%tl232390233305%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e232388233300%_)))
                                                  (_%hd232389233303%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e232388233300%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl232390233305%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl232384233289%_))
                                                      (let ((_%__splice236778236779%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl232384233289%_
                        '0))))
                (let ((_%tl232393233310%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice236778236779%_ '1)))
                      (_%target232391233308%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice236778236779%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl232393233310%_))
                      (_%__match236879236880%_
                       _%e232361233228%_
                       _%hd232362233231%_
                       _%tl232363233233%_
                       _%e232364233236%_
                       _%hd232365233239%_
                       _%tl232366233241%_
                       _%e232367233244%_
                       _%hd232368233247%_
                       _%tl232369233249%_
                       _%e232370233252%_
                       _%hd232371233255%_
                       _%tl232372233257%_
                       _%e232373233260%_
                       _%hd232374233263%_
                       _%tl232375233265%_
                       _%e232376233268%_
                       _%hd232377233271%_
                       _%tl232378233273%_
                       _%e232379233276%_
                       _%hd232380233279%_
                       _%tl232381233281%_
                       _%e232382233284%_
                       _%hd232383233287%_
                       _%tl232384233289%_
                       _%e232385233292%_
                       _%hd232386233295%_
                       _%tl232387233297%_
                       _%e232388233300%_
                       _%hd232389233303%_
                       _%tl232390233305%_
                       _%__splice236778236779%_
                       _%target232391233308%_
                       _%tl232393233310%_)
                      (_%__match237067237068%_
                       _%e232361233228%_
                       _%hd232362233231%_
                       _%tl232363233233%_
                       _%e232364233236%_
                       _%hd232365233239%_
                       _%tl232366233241%_
                       _%e232367233244%_
                       _%hd232368233247%_
                       _%tl232369233249%_
                       _%e232370233252%_
                       _%hd232371233255%_
                       _%tl232372233257%_
                       _%e232373233260%_
                       _%hd232374233263%_
                       _%tl232375233265%_
                       _%e232376233268%_
                       _%hd232377233271%_
                       _%tl232378233273%_
                       _%e232379233276%_
                       _%hd232380233279%_
                       _%tl232381233281%_
                       _%e232382233284%_
                       _%hd232383233287%_
                       _%tl232384233289%_
                       _%e232385233292%_
                       _%hd232386233295%_
                       _%tl232387233297%_
                       _%e232388233300%_
                       _%hd232389233303%_
                       _%tl232390233305%_))))
              (_%__match237067237068%_
               _%e232361233228%_
               _%hd232362233231%_
               _%tl232363233233%_
               _%e232364233236%_
               _%hd232365233239%_
               _%tl232366233241%_
               _%e232367233244%_
               _%hd232368233247%_
               _%tl232369233249%_
               _%e232370233252%_
               _%hd232371233255%_
               _%tl232372233257%_
               _%e232373233260%_
               _%hd232374233263%_
               _%tl232375233265%_
               _%e232376233268%_
               _%hd232377233271%_
               _%tl232378233273%_
               _%e232379233276%_
               _%hd232380233279%_
               _%tl232381233281%_
               _%e232382233284%_
               _%hd232383233287%_
               _%tl232384233289%_
               _%e232385233292%_
               _%hd232386233295%_
               _%tl232387233297%_
               _%e232388233300%_
               _%hd232389233303%_
               _%tl232390233305%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match237271237272%_
                                                   _%e232361233228%_
                                                   _%hd232362233231%_
                                                   _%tl232363233233%_
                                                   _%e232364233236%_
                                                   _%hd232365233239%_
                                                   _%tl232366233241%_
                                                   _%e232367233244%_
                                                   _%hd232368233247%_
                                                   _%tl232369233249%_
                                                   _%e232370233252%_
                                                   _%hd232371233255%_
                                                   _%tl232372233257%_
                                                   _%e232373233260%_
                                                   _%hd232374233263%_
                                                   _%tl232375233265%_
                                                   _%e232376233268%_
                                                   _%hd232377233271%_
                                                   _%tl232378233273%_
                                                   _%e232379233276%_
                                                   _%hd232380233279%_
                                                   _%tl232381233281%_
                                                   _%e232382233284%_
                                                   _%hd232383233287%_
                                                   _%tl232384233289%_))))
                                          (_%__match237271237272%_
                                           _%e232361233228%_
                                           _%hd232362233231%_
                                           _%tl232363233233%_
                                           _%e232364233236%_
                                           _%hd232365233239%_
                                           _%tl232366233241%_
                                           _%e232367233244%_
                                           _%hd232368233247%_
                                           _%tl232369233249%_
                                           _%e232370233252%_
                                           _%hd232371233255%_
                                           _%tl232372233257%_
                                           _%e232373233260%_
                                           _%hd232374233263%_
                                           _%tl232375233265%_
                                           _%e232376233268%_
                                           _%hd232377233271%_
                                           _%tl232378233273%_
                                           _%e232379233276%_
                                           _%hd232380233279%_
                                           _%tl232381233281%_
                                           _%e232382233284%_
                                           _%hd232383233287%_
                                           _%tl232384233289%_))
                                      (_%__match236947236948%_
                                       _%e232361233228%_
                                       _%hd232362233231%_
                                       _%tl232363233233%_
                                       _%e232364233236%_
                                       _%hd232365233239%_
                                       _%tl232366233241%_
                                       _%e232367233244%_
                                       _%hd232368233247%_
                                       _%tl232369233249%_
                                       _%e232370233252%_
                                       _%hd232371233255%_
                                       _%tl232372233257%_
                                       _%e232373233260%_
                                       _%hd232374233263%_
                                       _%tl232375233265%_
                                       _%e232376233268%_
                                       _%hd232377233271%_
                                       _%tl232378233273%_
                                       _%e232379233276%_
                                       _%hd232380233279%_
                                       _%tl232381233281%_
                                       _%e232382233284%_
                                       _%hd232383233287%_
                                       _%tl232384233289%_
                                       _%e232385233292%_
                                       _%hd232386233295%_
                                       _%tl232387233297%_))
                                  (_%__match237271237272%_
                                   _%e232361233228%_
                                   _%hd232362233231%_
                                   _%tl232363233233%_
                                   _%e232364233236%_
                                   _%hd232365233239%_
                                   _%tl232366233241%_
                                   _%e232367233244%_
                                   _%hd232368233247%_
                                   _%tl232369233249%_
                                   _%e232370233252%_
                                   _%hd232371233255%_
                                   _%tl232372233257%_
                                   _%e232373233260%_
                                   _%hd232374233263%_
                                   _%tl232375233265%_
                                   _%e232376233268%_
                                   _%hd232377233271%_
                                   _%tl232378233273%_
                                   _%e232379233276%_
                                   _%hd232380233279%_
                                   _%tl232381233281%_
                                   _%e232382233284%_
                                   _%hd232383233287%_
                                   _%tl232384233289%_))))
                          (_%__match237271237272%_
                           _%e232361233228%_
                           _%hd232362233231%_
                           _%tl232363233233%_
                           _%e232364233236%_
                           _%hd232365233239%_
                           _%tl232366233241%_
                           _%e232367233244%_
                           _%hd232368233247%_
                           _%tl232369233249%_
                           _%e232370233252%_
                           _%hd232371233255%_
                           _%tl232372233257%_
                           _%e232373233260%_
                           _%hd232374233263%_
                           _%tl232375233265%_
                           _%e232376233268%_
                           _%hd232377233271%_
                           _%tl232378233273%_
                           _%e232379233276%_
                           _%hd232380233279%_
                           _%tl232381233281%_
                           _%e232382233284%_
                           _%hd232383233287%_
                           _%tl232384233289%_))))
                  (_%__match237209237210%_
                   _%e232361233228%_
                   _%hd232362233231%_
                   _%tl232363233233%_
                   _%e232364233236%_
                   _%hd232365233239%_
                   _%tl232366233241%_
                   _%e232367233244%_
                   _%hd232368233247%_
                   _%tl232369233249%_
                   _%e232370233252%_
                   _%hd232371233255%_
                   _%tl232372233257%_
                   _%e232373233260%_
                   _%hd232374233263%_
                   _%tl232375233265%_
                   _%e232376233268%_
                   _%hd232377233271%_
                   _%tl232378233273%_
                   _%e232379233276%_
                   _%hd232380233279%_
                   _%tl232381233281%_))
              (_%__kont236792236793%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont236792236793%_))
                                          (_%__kont236792236793%_))
                                      (_%__kont236792236793%_))))
                              (_%__kont236792236793%_))))
                      (_%__kont236792236793%_))
                  (_%__kont236792236793%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont236792236793%_))
                                              (_%__kont236792236793%_))
                                          (_%__kont236792236793%_))))
                                  (_%__kont236792236793%_))))
                          (_%__kont236792236793%_))))
                  (_%__kont236792236793%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self231289%_ _%stx231290%_)
        (letrec ((_%force-e231292%_
                  (lambda (_%target232344%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target232344%_ '()))
                                      '()))))))
          (let* ((_%__stx237276237277%_ _%stx231290%_)
                 (_%g231300231522%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx237276237277%_)))))
            (let ((_%__kont237278237279%_
                   (lambda (_%g231302232290%_
                            _%g231303232291%_
                            _%g231304232292%_
                            _%g231305232293%_)
                     (let ((_%$method232338%_
                            (let ((__tmp237939
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self231289%_ 'methods)))
                                  (__tmp237938
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g231303232291%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp237939 __tmp237938)))
                           (_%args232339%_
                            (map (lambda (_%g232326232328%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self231289%_
                                      _%g232326232328%_)))
                                 (let ((__tmp237940
                                        (lambda (_%g232330232333%_
                                                 _%g232331232335%_)
                                          (cons _%g232330232333%_
                                                _%g232331232335%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp237940
                                    '()
                                    _%g231302232290%_)))))
                       (let ((__tmp237941
                              (cons '%#call
                                    (cons (_%force-e231292%_ _%$method232338%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self231289%_
                                                               'receiver))
                                                            '()))
                                                _%args232339%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp237941 _%stx231290%_)))))
                  (_%__kont237282237283%_
                   (lambda (_%g231345232124%_
                            _%g231346232125%_
                            _%g231347232126%_
                            _%g231348232127%_
                            _%g231349232128%_)
                     (let ((_%$method232180%_
                            (let ((__tmp237943
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self231289%_ 'methods)))
                                  (__tmp237942
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g231346232125%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp237943 __tmp237942)))
                           (_%args232181%_
                            (map (lambda (_%g232168232170%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self231289%_
                                      _%g232168232170%_)))
                                 (let ((__tmp237944
                                        (lambda (_%g232172232175%_
                                                 _%g232173232177%_)
                                          (cons _%g232172232175%_
                                                _%g232173232177%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp237944
                                    '()
                                    _%g231345232124%_)))))
                       (let ((__tmp237945
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e231292%_
                                                 _%$method232180%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self231289%_ 'receiver))
                          '()))
              _%args232181%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp237945 _%stx231290%_)))))
                  (_%__kont237286237287%_
                   (lambda (_%g231398231957%_
                            _%g231399231958%_
                            _%g231400231959%_)
                     (let* ((_%$field231991%_
                             (let ((__tmp237947
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self231289%_ 'slots)))
                                   (__tmp237946
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g231398231957%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp237947 __tmp237946)))
                            (__tmp237948
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self231289%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field231991%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self231289%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp237948 _%stx231290%_))))
                  (_%__kont237288237289%_
                   (lambda (_%g231431231831%_
                            _%g231432231832%_
                            _%g231433231833%_
                            _%g231434231834%_)
                     (let ((_%$field231869%_
                            (let ((__tmp237950
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self231289%_ 'slots)))
                                  (__tmp237949
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g231432231832%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp237950 __tmp237949)))
                           (_%expr231870%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self231289%_
                               _%g231431231831%_))))
                       (let ((__tmp237951
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self231289%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field231869%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self231289%_ 'receiver))
                          '()))
              (cons _%expr231870%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp237951 _%stx231290%_)))))
                  (_%__kont237290237291%_
                   (lambda (_%g231468231703%_ _%g231469231704%_)
                     (let* ((_%accessor231726%_
                             (let ((__tmp237952
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g231469231704%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp237952)))
                            (_%klass231728%_
                             (let ((__tmp237953
                                    (##structure-ref
                                     _%accessor231726%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx231290%_
                                __tmp237953)))
                            (_%slot231730%_
                             (##structure-ref
                              _%accessor231726%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor231726%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass231728%_
                                      _%slot231730%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass231728%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx231290%_
                           (let* ((_%$field231736%_
                                   (let ((__tmp237954
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self231289%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp237954 _%slot231730%_)))
                                  (__tmp237955
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self231289%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field231736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self231289%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp237955
                              _%stx231290%_))))))
                  (_%__kont237292237293%_
                   (lambda (_%g231491231598%_
                            _%g231492231599%_
                            _%g231493231600%_)
                     (let* ((_%mutator231628%_
                             (let ((__tmp237956
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g231493231600%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp237956)))
                            (_%klass231630%_
                             (let ((__tmp237957
                                    (##structure-ref
                                     _%mutator231628%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx231290%_
                                __tmp237957)))
                            (_%slot231632%_
                             (##structure-ref
                              _%mutator231628%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr231634%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self231289%_
                                _%g231491231598%_))))
                       (if (if (##structure-ref
                                _%mutator231628%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass231630%_
                                      _%slot231632%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass231630%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp237958
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g231493231600%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g231492231599%_
                                                                '()))
                                                    (cons _%expr231634%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp237958 _%stx231290%_))
                           (let* ((_%$field231640%_
                                   (let ((__tmp237959
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self231289%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp237959 _%slot231632%_)))
                                  (__tmp237960
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self231289%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field231640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self231289%_ 'receiver))
                               '()))
                   (cons _%expr231634%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp237960
                              _%stx231290%_))))))
                  (_%__kont237294237295%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self231289%_ _%stx231290%_)))))
              (let* ((_%__match237775237776%_
                      (lambda (_%e231494231534%_
                               _%hd231495231537%_
                               _%tl231496231539%_
                               _%e231497231542%_
                               _%hd231498231545%_
                               _%tl231499231547%_
                               _%e231500231550%_
                               _%hd231501231553%_
                               _%tl231502231555%_
                               _%e231503231558%_
                               _%hd231504231561%_
                               _%tl231505231563%_
                               _%e231506231566%_
                               _%hd231507231569%_
                               _%tl231508231571%_
                               _%e231509231574%_
                               _%hd231510231577%_
                               _%tl231511231579%_
                               _%e231512231582%_
                               _%hd231513231585%_
                               _%tl231514231587%_
                               _%e231515231590%_
                               _%hd231516231593%_
                               _%tl231517231595%_)
                        (let ((_%g231491231598%_ _%hd231516231593%_)
                              (_%g231492231599%_ _%hd231513231585%_)
                              (_%g231493231600%_ _%hd231504231561%_))
                          (if (and (let ((__tmp237961
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self231289%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g231492231599%_
                                      __tmp237961))
                                   (let ((__tmp237962
                                          (let ((__tmp237963
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g231493231600%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp237963))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp237962
                                      'gxc#!mutator::t)))
                              (_%__kont237292237293%_
                               _%g231491231598%_
                               _%g231492231599%_
                               _%g231493231600%_)
                              (_%__kont237294237295%_)))))
                     (_%__match237773237774%_
                      (lambda (_%e231494231534%_
                               _%hd231495231537%_
                               _%tl231496231539%_
                               _%e231497231542%_
                               _%hd231498231545%_
                               _%tl231499231547%_
                               _%e231500231550%_
                               _%hd231501231553%_
                               _%tl231502231555%_
                               _%e231503231558%_
                               _%hd231504231561%_
                               _%tl231505231563%_
                               _%e231506231566%_
                               _%hd231507231569%_
                               _%tl231508231571%_
                               _%e231509231574%_
                               _%hd231510231577%_
                               _%tl231511231579%_
                               _%e231512231582%_
                               _%hd231513231585%_
                               _%tl231514231587%_
                               _%e231515231590%_
                               _%hd231516231593%_
                               _%tl231517231595%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl231517231595%_))
                            (_%__match237775237776%_
                             _%e231494231534%_
                             _%hd231495231537%_
                             _%tl231496231539%_
                             _%e231497231542%_
                             _%hd231498231545%_
                             _%tl231499231547%_
                             _%e231500231550%_
                             _%hd231501231553%_
                             _%tl231502231555%_
                             _%e231503231558%_
                             _%hd231504231561%_
                             _%tl231505231563%_
                             _%e231506231566%_
                             _%hd231507231569%_
                             _%tl231508231571%_
                             _%e231509231574%_
                             _%hd231510231577%_
                             _%tl231511231579%_
                             _%e231512231582%_
                             _%hd231513231585%_
                             _%tl231514231587%_
                             _%e231515231590%_
                             _%hd231516231593%_
                             _%tl231517231595%_)
                            (_%__kont237294237295%_))))
                     (_%__match237767237768%_
                      (lambda (_%e231494231534%_
                               _%hd231495231537%_
                               _%tl231496231539%_
                               _%e231497231542%_
                               _%hd231498231545%_
                               _%tl231499231547%_
                               _%e231500231550%_
                               _%hd231501231553%_
                               _%tl231502231555%_
                               _%e231503231558%_
                               _%hd231504231561%_
                               _%tl231505231563%_
                               _%e231506231566%_
                               _%hd231507231569%_
                               _%tl231508231571%_
                               _%e231509231574%_
                               _%hd231510231577%_
                               _%tl231511231579%_
                               _%e231512231582%_
                               _%hd231513231585%_
                               _%tl231514231587%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl231508231571%_))
                            (let ((_%e231515231590%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl231508231571%_))))
                              (let ((_%tl231517231595%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231515231590%_)))
                                    (_%hd231516231593%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231515231590%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl231517231595%_))
                                    (_%__match237775237776%_
                                     _%e231494231534%_
                                     _%hd231495231537%_
                                     _%tl231496231539%_
                                     _%e231497231542%_
                                     _%hd231498231545%_
                                     _%tl231499231547%_
                                     _%e231500231550%_
                                     _%hd231501231553%_
                                     _%tl231502231555%_
                                     _%e231503231558%_
                                     _%hd231504231561%_
                                     _%tl231505231563%_
                                     _%e231506231566%_
                                     _%hd231507231569%_
                                     _%tl231508231571%_
                                     _%e231509231574%_
                                     _%hd231510231577%_
                                     _%tl231511231579%_
                                     _%e231512231582%_
                                     _%hd231513231585%_
                                     _%tl231514231587%_
                                     _%e231515231590%_
                                     _%hd231516231593%_
                                     _%tl231517231595%_)
                                    (_%__kont237294237295%_))))
                            (_%__kont237294237295%_))))
                     (_%__match237713237714%_
                      (lambda (_%e231470231647%_
                               _%hd231471231650%_
                               _%tl231472231652%_
                               _%e231473231655%_
                               _%hd231474231658%_
                               _%tl231475231660%_
                               _%e231476231663%_
                               _%hd231477231666%_
                               _%tl231478231668%_
                               _%e231479231671%_
                               _%hd231480231674%_
                               _%tl231481231676%_
                               _%e231482231679%_
                               _%hd231483231682%_
                               _%tl231484231684%_
                               _%e231485231687%_
                               _%hd231486231690%_
                               _%tl231487231692%_
                               _%e231488231695%_
                               _%hd231489231698%_
                               _%tl231490231700%_)
                        (let ((_%g231468231703%_ _%hd231489231698%_)
                              (_%g231469231704%_ _%hd231480231674%_))
                          (if (and (let ((__tmp237964
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self231289%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g231468231703%_
                                      __tmp237964))
                                   (let ((__tmp237965
                                          (let ((__tmp237966
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g231469231704%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp237966))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp237965
                                      'gxc#!accessor::t)))
                              (_%__kont237290237291%_
                               _%g231468231703%_
                               _%g231469231704%_)
                              (_%__kont237294237295%_)))))
                     (_%__match237711237712%_
                      (lambda (_%e231470231647%_
                               _%hd231471231650%_
                               _%tl231472231652%_
                               _%e231473231655%_
                               _%hd231474231658%_
                               _%tl231475231660%_
                               _%e231476231663%_
                               _%hd231477231666%_
                               _%tl231478231668%_
                               _%e231479231671%_
                               _%hd231480231674%_
                               _%tl231481231676%_
                               _%e231482231679%_
                               _%hd231483231682%_
                               _%tl231484231684%_
                               _%e231485231687%_
                               _%hd231486231690%_
                               _%tl231487231692%_
                               _%e231488231695%_
                               _%hd231489231698%_
                               _%tl231490231700%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl231484231684%_))
                            (_%__match237713237714%_
                             _%e231470231647%_
                             _%hd231471231650%_
                             _%tl231472231652%_
                             _%e231473231655%_
                             _%hd231474231658%_
                             _%tl231475231660%_
                             _%e231476231663%_
                             _%hd231477231666%_
                             _%tl231478231668%_
                             _%e231479231671%_
                             _%hd231480231674%_
                             _%tl231481231676%_
                             _%e231482231679%_
                             _%hd231483231682%_
                             _%tl231484231684%_
                             _%e231485231687%_
                             _%hd231486231690%_
                             _%tl231487231692%_
                             _%e231488231695%_
                             _%hd231489231698%_
                             _%tl231490231700%_)
                            (_%__match237767237768%_
                             _%e231470231647%_
                             _%hd231471231650%_
                             _%tl231472231652%_
                             _%e231473231655%_
                             _%hd231474231658%_
                             _%tl231475231660%_
                             _%e231476231663%_
                             _%hd231477231666%_
                             _%tl231478231668%_
                             _%e231479231671%_
                             _%hd231480231674%_
                             _%tl231481231676%_
                             _%e231482231679%_
                             _%hd231483231682%_
                             _%tl231484231684%_
                             _%e231485231687%_
                             _%hd231486231690%_
                             _%tl231487231692%_
                             _%e231488231695%_
                             _%hd231489231698%_
                             _%tl231490231700%_))))
                     (_%__match237657237658%_
                      (lambda (_%e231435231743%_
                               _%hd231436231746%_
                               _%tl231437231748%_
                               _%e231438231751%_
                               _%hd231439231754%_
                               _%tl231440231756%_
                               _%e231441231759%_
                               _%hd231442231762%_
                               _%tl231443231764%_
                               _%e231444231767%_
                               _%hd231445231770%_
                               _%tl231446231772%_
                               _%e231447231775%_
                               _%hd231448231778%_
                               _%tl231449231780%_
                               _%e231450231783%_
                               _%hd231451231786%_
                               _%tl231452231788%_
                               _%e231453231791%_
                               _%hd231454231794%_
                               _%tl231455231796%_
                               _%e231456231799%_
                               _%hd231457231802%_
                               _%tl231458231804%_
                               _%e231459231807%_
                               _%hd231460231810%_
                               _%tl231461231812%_
                               _%e231462231815%_
                               _%hd231463231818%_
                               _%tl231464231820%_
                               _%e231465231823%_
                               _%hd231466231826%_
                               _%tl231467231828%_)
                        (let ((_%g231431231831%_ _%hd231466231826%_)
                              (_%g231432231832%_ _%hd231463231818%_)
                              (_%g231433231833%_ _%hd231454231794%_)
                              (_%g231434231834%_ _%hd231445231770%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g231434231834%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g231434231834%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp237967
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self231289%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g231433231833%_
                                      __tmp237967)))
                              (_%__kont237288237289%_
                               _%g231431231831%_
                               _%g231432231832%_
                               _%g231433231833%_
                               _%g231434231834%_)
                              (_%__kont237294237295%_)))))
                     (_%__match237649237650%_
                      (lambda (_%e231435231743%_
                               _%hd231436231746%_
                               _%tl231437231748%_
                               _%e231438231751%_
                               _%hd231439231754%_
                               _%tl231440231756%_
                               _%e231441231759%_
                               _%hd231442231762%_
                               _%tl231443231764%_
                               _%e231444231767%_
                               _%hd231445231770%_
                               _%tl231446231772%_
                               _%e231447231775%_
                               _%hd231448231778%_
                               _%tl231449231780%_
                               _%e231450231783%_
                               _%hd231451231786%_
                               _%tl231452231788%_
                               _%e231453231791%_
                               _%hd231454231794%_
                               _%tl231455231796%_
                               _%e231456231799%_
                               _%hd231457231802%_
                               _%tl231458231804%_
                               _%e231459231807%_
                               _%hd231460231810%_
                               _%tl231461231812%_
                               _%e231462231815%_
                               _%hd231463231818%_
                               _%tl231464231820%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl231458231804%_))
                            (let ((_%e231465231823%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl231458231804%_))))
                              (let ((_%tl231467231828%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231465231823%_)))
                                    (_%hd231466231826%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231465231823%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl231467231828%_))
                                    (_%__match237657237658%_
                                     _%e231435231743%_
                                     _%hd231436231746%_
                                     _%tl231437231748%_
                                     _%e231438231751%_
                                     _%hd231439231754%_
                                     _%tl231440231756%_
                                     _%e231441231759%_
                                     _%hd231442231762%_
                                     _%tl231443231764%_
                                     _%e231444231767%_
                                     _%hd231445231770%_
                                     _%tl231446231772%_
                                     _%e231447231775%_
                                     _%hd231448231778%_
                                     _%tl231449231780%_
                                     _%e231450231783%_
                                     _%hd231451231786%_
                                     _%tl231452231788%_
                                     _%e231453231791%_
                                     _%hd231454231794%_
                                     _%tl231455231796%_
                                     _%e231456231799%_
                                     _%hd231457231802%_
                                     _%tl231458231804%_
                                     _%e231459231807%_
                                     _%hd231460231810%_
                                     _%tl231461231812%_
                                     _%e231462231815%_
                                     _%hd231463231818%_
                                     _%tl231464231820%_
                                     _%e231465231823%_
                                     _%hd231466231826%_
                                     _%tl231467231828%_)
                                    (_%__kont237294237295%_))))
                            (_%__match237773237774%_
                             _%e231435231743%_
                             _%hd231436231746%_
                             _%tl231437231748%_
                             _%e231438231751%_
                             _%hd231439231754%_
                             _%tl231440231756%_
                             _%e231441231759%_
                             _%hd231442231762%_
                             _%tl231443231764%_
                             _%e231444231767%_
                             _%hd231445231770%_
                             _%tl231446231772%_
                             _%e231447231775%_
                             _%hd231448231778%_
                             _%tl231449231780%_
                             _%e231450231783%_
                             _%hd231451231786%_
                             _%tl231452231788%_
                             _%e231453231791%_
                             _%hd231454231794%_
                             _%tl231455231796%_
                             _%e231456231799%_
                             _%hd231457231802%_
                             _%tl231458231804%_))))
                     (_%__match237571237572%_
                      (lambda (_%e231401231877%_
                               _%hd231402231880%_
                               _%tl231403231882%_
                               _%e231404231885%_
                               _%hd231405231888%_
                               _%tl231406231890%_
                               _%e231407231893%_
                               _%hd231408231896%_
                               _%tl231409231898%_
                               _%e231410231901%_
                               _%hd231411231904%_
                               _%tl231412231906%_
                               _%e231413231909%_
                               _%hd231414231912%_
                               _%tl231415231914%_
                               _%e231416231917%_
                               _%hd231417231920%_
                               _%tl231418231922%_
                               _%e231419231925%_
                               _%hd231420231928%_
                               _%tl231421231930%_
                               _%e231422231933%_
                               _%hd231423231936%_
                               _%tl231424231938%_
                               _%e231425231941%_
                               _%hd231426231944%_
                               _%tl231427231946%_
                               _%e231428231949%_
                               _%hd231429231952%_
                               _%tl231430231954%_)
                        (let ((_%g231398231957%_ _%hd231429231952%_)
                              (_%g231399231958%_ _%hd231420231928%_)
                              (_%g231400231959%_ _%hd231411231904%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g231400231959%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g231400231959%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp237968
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self231289%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g231399231958%_
                                      __tmp237968)))
                              (_%__kont237286237287%_
                               _%g231398231957%_
                               _%g231399231958%_
                               _%g231400231959%_)
                              (_%__match237775237776%_
                               _%e231401231877%_
                               _%hd231402231880%_
                               _%tl231403231882%_
                               _%e231404231885%_
                               _%hd231405231888%_
                               _%tl231406231890%_
                               _%e231407231893%_
                               _%hd231408231896%_
                               _%tl231409231898%_
                               _%e231410231901%_
                               _%hd231411231904%_
                               _%tl231412231906%_
                               _%e231413231909%_
                               _%hd231414231912%_
                               _%tl231415231914%_
                               _%e231416231917%_
                               _%hd231417231920%_
                               _%tl231418231922%_
                               _%e231419231925%_
                               _%hd231420231928%_
                               _%tl231421231930%_
                               _%e231422231933%_
                               _%hd231423231936%_
                               _%tl231424231938%_)))))
                     (_%__match237569237570%_
                      (lambda (_%e231401231877%_
                               _%hd231402231880%_
                               _%tl231403231882%_
                               _%e231404231885%_
                               _%hd231405231888%_
                               _%tl231406231890%_
                               _%e231407231893%_
                               _%hd231408231896%_
                               _%tl231409231898%_
                               _%e231410231901%_
                               _%hd231411231904%_
                               _%tl231412231906%_
                               _%e231413231909%_
                               _%hd231414231912%_
                               _%tl231415231914%_
                               _%e231416231917%_
                               _%hd231417231920%_
                               _%tl231418231922%_
                               _%e231419231925%_
                               _%hd231420231928%_
                               _%tl231421231930%_
                               _%e231422231933%_
                               _%hd231423231936%_
                               _%tl231424231938%_
                               _%e231425231941%_
                               _%hd231426231944%_
                               _%tl231427231946%_
                               _%e231428231949%_
                               _%hd231429231952%_
                               _%tl231430231954%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl231424231938%_))
                            (_%__match237571237572%_
                             _%e231401231877%_
                             _%hd231402231880%_
                             _%tl231403231882%_
                             _%e231404231885%_
                             _%hd231405231888%_
                             _%tl231406231890%_
                             _%e231407231893%_
                             _%hd231408231896%_
                             _%tl231409231898%_
                             _%e231410231901%_
                             _%hd231411231904%_
                             _%tl231412231906%_
                             _%e231413231909%_
                             _%hd231414231912%_
                             _%tl231415231914%_
                             _%e231416231917%_
                             _%hd231417231920%_
                             _%tl231418231922%_
                             _%e231419231925%_
                             _%hd231420231928%_
                             _%tl231421231930%_
                             _%e231422231933%_
                             _%hd231423231936%_
                             _%tl231424231938%_
                             _%e231425231941%_
                             _%hd231426231944%_
                             _%tl231427231946%_
                             _%e231428231949%_
                             _%hd231429231952%_
                             _%tl231430231954%_)
                            (_%__match237649237650%_
                             _%e231401231877%_
                             _%hd231402231880%_
                             _%tl231403231882%_
                             _%e231404231885%_
                             _%hd231405231888%_
                             _%tl231406231890%_
                             _%e231407231893%_
                             _%hd231408231896%_
                             _%tl231409231898%_
                             _%e231410231901%_
                             _%hd231411231904%_
                             _%tl231412231906%_
                             _%e231413231909%_
                             _%hd231414231912%_
                             _%tl231415231914%_
                             _%e231416231917%_
                             _%hd231417231920%_
                             _%tl231418231922%_
                             _%e231419231925%_
                             _%hd231420231928%_
                             _%tl231421231930%_
                             _%e231422231933%_
                             _%hd231423231936%_
                             _%tl231424231938%_
                             _%e231425231941%_
                             _%hd231426231944%_
                             _%tl231427231946%_
                             _%e231428231949%_
                             _%hd231429231952%_
                             _%tl231430231954%_))))
                     (_%__match237559237560%_
                      (lambda (_%e231401231877%_
                               _%hd231402231880%_
                               _%tl231403231882%_
                               _%e231404231885%_
                               _%hd231405231888%_
                               _%tl231406231890%_
                               _%e231407231893%_
                               _%hd231408231896%_
                               _%tl231409231898%_
                               _%e231410231901%_
                               _%hd231411231904%_
                               _%tl231412231906%_
                               _%e231413231909%_
                               _%hd231414231912%_
                               _%tl231415231914%_
                               _%e231416231917%_
                               _%hd231417231920%_
                               _%tl231418231922%_
                               _%e231419231925%_
                               _%hd231420231928%_
                               _%tl231421231930%_
                               _%e231422231933%_
                               _%hd231423231936%_
                               _%tl231424231938%_
                               _%e231425231941%_
                               _%hd231426231944%_
                               _%tl231427231946%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd231426231944%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl231427231946%_))
                                (let ((_%e231428231949%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl231427231946%_))))
                                  (let ((_%tl231430231954%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e231428231949%_)))
                                        (_%hd231429231952%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e231428231949%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl231430231954%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl231424231938%_))
                                            (_%__match237571237572%_
                                             _%e231401231877%_
                                             _%hd231402231880%_
                                             _%tl231403231882%_
                                             _%e231404231885%_
                                             _%hd231405231888%_
                                             _%tl231406231890%_
                                             _%e231407231893%_
                                             _%hd231408231896%_
                                             _%tl231409231898%_
                                             _%e231410231901%_
                                             _%hd231411231904%_
                                             _%tl231412231906%_
                                             _%e231413231909%_
                                             _%hd231414231912%_
                                             _%tl231415231914%_
                                             _%e231416231917%_
                                             _%hd231417231920%_
                                             _%tl231418231922%_
                                             _%e231419231925%_
                                             _%hd231420231928%_
                                             _%tl231421231930%_
                                             _%e231422231933%_
                                             _%hd231423231936%_
                                             _%tl231424231938%_
                                             _%e231425231941%_
                                             _%hd231426231944%_
                                             _%tl231427231946%_
                                             _%e231428231949%_
                                             _%hd231429231952%_
                                             _%tl231430231954%_)
                                            (_%__match237649237650%_
                                             _%e231401231877%_
                                             _%hd231402231880%_
                                             _%tl231403231882%_
                                             _%e231404231885%_
                                             _%hd231405231888%_
                                             _%tl231406231890%_
                                             _%e231407231893%_
                                             _%hd231408231896%_
                                             _%tl231409231898%_
                                             _%e231410231901%_
                                             _%hd231411231904%_
                                             _%tl231412231906%_
                                             _%e231413231909%_
                                             _%hd231414231912%_
                                             _%tl231415231914%_
                                             _%e231416231917%_
                                             _%hd231417231920%_
                                             _%tl231418231922%_
                                             _%e231419231925%_
                                             _%hd231420231928%_
                                             _%tl231421231930%_
                                             _%e231422231933%_
                                             _%hd231423231936%_
                                             _%tl231424231938%_
                                             _%e231425231941%_
                                             _%hd231426231944%_
                                             _%tl231427231946%_
                                             _%e231428231949%_
                                             _%hd231429231952%_
                                             _%tl231430231954%_))
                                        (_%__match237773237774%_
                                         _%e231401231877%_
                                         _%hd231402231880%_
                                         _%tl231403231882%_
                                         _%e231404231885%_
                                         _%hd231405231888%_
                                         _%tl231406231890%_
                                         _%e231407231893%_
                                         _%hd231408231896%_
                                         _%tl231409231898%_
                                         _%e231410231901%_
                                         _%hd231411231904%_
                                         _%tl231412231906%_
                                         _%e231413231909%_
                                         _%hd231414231912%_
                                         _%tl231415231914%_
                                         _%e231416231917%_
                                         _%hd231417231920%_
                                         _%tl231418231922%_
                                         _%e231419231925%_
                                         _%hd231420231928%_
                                         _%tl231421231930%_
                                         _%e231422231933%_
                                         _%hd231423231936%_
                                         _%tl231424231938%_))))
                                (_%__match237773237774%_
                                 _%e231401231877%_
                                 _%hd231402231880%_
                                 _%tl231403231882%_
                                 _%e231404231885%_
                                 _%hd231405231888%_
                                 _%tl231406231890%_
                                 _%e231407231893%_
                                 _%hd231408231896%_
                                 _%tl231409231898%_
                                 _%e231410231901%_
                                 _%hd231411231904%_
                                 _%tl231412231906%_
                                 _%e231413231909%_
                                 _%hd231414231912%_
                                 _%tl231415231914%_
                                 _%e231416231917%_
                                 _%hd231417231920%_
                                 _%tl231418231922%_
                                 _%e231419231925%_
                                 _%hd231420231928%_
                                 _%tl231421231930%_
                                 _%e231422231933%_
                                 _%hd231423231936%_
                                 _%tl231424231938%_))
                            (_%__match237773237774%_
                             _%e231401231877%_
                             _%hd231402231880%_
                             _%tl231403231882%_
                             _%e231404231885%_
                             _%hd231405231888%_
                             _%tl231406231890%_
                             _%e231407231893%_
                             _%hd231408231896%_
                             _%tl231409231898%_
                             _%e231410231901%_
                             _%hd231411231904%_
                             _%tl231412231906%_
                             _%e231413231909%_
                             _%hd231414231912%_
                             _%tl231415231914%_
                             _%e231416231917%_
                             _%hd231417231920%_
                             _%tl231418231922%_
                             _%e231419231925%_
                             _%hd231420231928%_
                             _%tl231421231930%_
                             _%e231422231933%_
                             _%hd231423231936%_
                             _%tl231424231938%_))))
                     (_%__match237491237492%_
                      (lambda (_%e231350231998%_
                               _%hd231351232001%_
                               _%tl231352232003%_
                               _%e231353232006%_
                               _%hd231354232009%_
                               _%tl231355232011%_
                               _%e231356232014%_
                               _%hd231357232017%_
                               _%tl231358232019%_
                               _%e231359232022%_
                               _%hd231360232025%_
                               _%tl231361232027%_
                               _%e231362232030%_
                               _%hd231363232033%_
                               _%tl231364232035%_
                               _%e231365232038%_
                               _%hd231366232041%_
                               _%tl231367232043%_
                               _%e231368232046%_
                               _%hd231369232049%_
                               _%tl231370232051%_
                               _%e231371232054%_
                               _%hd231372232057%_
                               _%tl231373232059%_
                               _%e231374232062%_
                               _%hd231375232065%_
                               _%tl231376232067%_
                               _%e231377232070%_
                               _%hd231378232073%_
                               _%tl231379232075%_
                               _%e231380232078%_
                               _%hd231381232081%_
                               _%tl231382232083%_
                               _%e231383232086%_
                               _%hd231384232089%_
                               _%tl231385232091%_
                               _%e231386232094%_
                               _%hd231387232097%_
                               _%tl231388232099%_
                               _%__splice237284237285%_
                               _%target231389232102%_
                               _%tl231391232104%_)
                        (letrec ((_%loop231392232107%_
                                  (lambda (_%hd231390232110%_
                                           _%args231396232112%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd231390232110%_))
                                        (let ((_%e231393232114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd231390232110%_))))
                                          (let ((_%lp-tl231395232119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e231393232114%_)))
                                                (_%lp-hd231394232117%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e231393232114%_))))
                                            (_%loop231392232107%_
                                             _%lp-tl231395232119%_
                                             (cons _%lp-hd231394232117%_
                                                   _%args231396232112%_))))
                                        (let ((_%args231397232122%_
                                               (reverse _%args231396232112%_)))
                                          (let ((_%g231345232124%_
                                                 _%args231397232122%_)
                                                (_%g231346232125%_
                                                 _%hd231387232097%_)
                                                (_%g231347232126%_
                                                 _%hd231378232073%_)
                                                (_%g231348232127%_
                                                 _%hd231369232049%_)
                                                (_%g231349232128%_
                                                 _%hd231360232025%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g231349232128%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g231348232127%_
                                                        'call-method))
                                                     (let ((__tmp237969
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self231289%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g231347232126%_
                                                        __tmp237969)))
                                                (_%__kont237282237283%_
                                                 _%g231345232124%_
                                                 _%g231346232125%_
                                                 _%g231347232126%_
                                                 _%g231348232127%_
                                                 _%g231349232128%_)
                                                (_%__kont237294237295%_))))))))
                          (_%loop231392232107%_ _%target231389232102%_ '()))))
                     (_%__match237449237450%_
                      (lambda (_%e231350231998%_
                               _%hd231351232001%_
                               _%tl231352232003%_
                               _%e231353232006%_
                               _%hd231354232009%_
                               _%tl231355232011%_
                               _%e231356232014%_
                               _%hd231357232017%_
                               _%tl231358232019%_
                               _%e231359232022%_
                               _%hd231360232025%_
                               _%tl231361232027%_
                               _%e231362232030%_
                               _%hd231363232033%_
                               _%tl231364232035%_
                               _%e231365232038%_
                               _%hd231366232041%_
                               _%tl231367232043%_
                               _%e231368232046%_
                               _%hd231369232049%_
                               _%tl231370232051%_
                               _%e231371232054%_
                               _%hd231372232057%_
                               _%tl231373232059%_
                               _%e231374232062%_
                               _%hd231375232065%_
                               _%tl231376232067%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd231375232065%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl231376232067%_))
                                (let ((_%e231377232070%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl231376232067%_))))
                                  (let ((_%tl231379232075%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e231377232070%_)))
                                        (_%hd231378232073%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e231377232070%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl231379232075%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl231373232059%_))
                                            (let ((_%e231380232078%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl231373232059%_))))
                                              (let ((_%tl231382232083%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e231380232078%_)))
                                                    (_%hd231381232081%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e231380232078%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd231381232081%_))
                                                    (let ((_%e231383232086%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd231381232081%_))))
                                                      (let ((_%tl231385232091%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e231383232086%_)))
                    (_%hd231384232089%_
                     (let () (declare (not safe)) (##car _%e231383232086%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd231384232089%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd231384232089%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl231385232091%_))
                            (let ((_%e231386232094%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl231385232091%_))))
                              (let ((_%tl231388232099%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231386232094%_)))
                                    (_%hd231387232097%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231386232094%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl231388232099%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl231382232083%_))
                                        (let ((_%__splice237284237285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl231382232083%_
                                                  '0))))
                                          (let ((_%tl231391232104%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice237284237285%_
                                                    '1)))
                                                (_%target231389232102%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice237284237285%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl231391232104%_))
                                                (_%__match237491237492%_
                                                 _%e231350231998%_
                                                 _%hd231351232001%_
                                                 _%tl231352232003%_
                                                 _%e231353232006%_
                                                 _%hd231354232009%_
                                                 _%tl231355232011%_
                                                 _%e231356232014%_
                                                 _%hd231357232017%_
                                                 _%tl231358232019%_
                                                 _%e231359232022%_
                                                 _%hd231360232025%_
                                                 _%tl231361232027%_
                                                 _%e231362232030%_
                                                 _%hd231363232033%_
                                                 _%tl231364232035%_
                                                 _%e231365232038%_
                                                 _%hd231366232041%_
                                                 _%tl231367232043%_
                                                 _%e231368232046%_
                                                 _%hd231369232049%_
                                                 _%tl231370232051%_
                                                 _%e231371232054%_
                                                 _%hd231372232057%_
                                                 _%tl231373232059%_
                                                 _%e231374232062%_
                                                 _%hd231375232065%_
                                                 _%tl231376232067%_
                                                 _%e231377232070%_
                                                 _%hd231378232073%_
                                                 _%tl231379232075%_
                                                 _%e231380232078%_
                                                 _%hd231381232081%_
                                                 _%tl231382232083%_
                                                 _%e231383232086%_
                                                 _%hd231384232089%_
                                                 _%tl231385232091%_
                                                 _%e231386232094%_
                                                 _%hd231387232097%_
                                                 _%tl231388232099%_
                                                 _%__splice237284237285%_
                                                 _%target231389232102%_
                                                 _%tl231391232104%_)
                                                (_%__kont237294237295%_))))
                                        (_%__kont237294237295%_))
                                    (_%__kont237294237295%_))))
                            (_%__kont237294237295%_))
                        (_%__kont237294237295%_))
                    (_%__kont237294237295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont237294237295%_))))
                                            (_%__match237773237774%_
                                             _%e231350231998%_
                                             _%hd231351232001%_
                                             _%tl231352232003%_
                                             _%e231353232006%_
                                             _%hd231354232009%_
                                             _%tl231355232011%_
                                             _%e231356232014%_
                                             _%hd231357232017%_
                                             _%tl231358232019%_
                                             _%e231359232022%_
                                             _%hd231360232025%_
                                             _%tl231361232027%_
                                             _%e231362232030%_
                                             _%hd231363232033%_
                                             _%tl231364232035%_
                                             _%e231365232038%_
                                             _%hd231366232041%_
                                             _%tl231367232043%_
                                             _%e231368232046%_
                                             _%hd231369232049%_
                                             _%tl231370232051%_
                                             _%e231371232054%_
                                             _%hd231372232057%_
                                             _%tl231373232059%_))
                                        (_%__match237773237774%_
                                         _%e231350231998%_
                                         _%hd231351232001%_
                                         _%tl231352232003%_
                                         _%e231353232006%_
                                         _%hd231354232009%_
                                         _%tl231355232011%_
                                         _%e231356232014%_
                                         _%hd231357232017%_
                                         _%tl231358232019%_
                                         _%e231359232022%_
                                         _%hd231360232025%_
                                         _%tl231361232027%_
                                         _%e231362232030%_
                                         _%hd231363232033%_
                                         _%tl231364232035%_
                                         _%e231365232038%_
                                         _%hd231366232041%_
                                         _%tl231367232043%_
                                         _%e231368232046%_
                                         _%hd231369232049%_
                                         _%tl231370232051%_
                                         _%e231371232054%_
                                         _%hd231372232057%_
                                         _%tl231373232059%_))))
                                (_%__match237773237774%_
                                 _%e231350231998%_
                                 _%hd231351232001%_
                                 _%tl231352232003%_
                                 _%e231353232006%_
                                 _%hd231354232009%_
                                 _%tl231355232011%_
                                 _%e231356232014%_
                                 _%hd231357232017%_
                                 _%tl231358232019%_
                                 _%e231359232022%_
                                 _%hd231360232025%_
                                 _%tl231361232027%_
                                 _%e231362232030%_
                                 _%hd231363232033%_
                                 _%tl231364232035%_
                                 _%e231365232038%_
                                 _%hd231366232041%_
                                 _%tl231367232043%_
                                 _%e231368232046%_
                                 _%hd231369232049%_
                                 _%tl231370232051%_
                                 _%e231371232054%_
                                 _%hd231372232057%_
                                 _%tl231373232059%_))
                            (_%__match237559237560%_
                             _%e231350231998%_
                             _%hd231351232001%_
                             _%tl231352232003%_
                             _%e231353232006%_
                             _%hd231354232009%_
                             _%tl231355232011%_
                             _%e231356232014%_
                             _%hd231357232017%_
                             _%tl231358232019%_
                             _%e231359232022%_
                             _%hd231360232025%_
                             _%tl231361232027%_
                             _%e231362232030%_
                             _%hd231363232033%_
                             _%tl231364232035%_
                             _%e231365232038%_
                             _%hd231366232041%_
                             _%tl231367232043%_
                             _%e231368232046%_
                             _%hd231369232049%_
                             _%tl231370232051%_
                             _%e231371232054%_
                             _%hd231372232057%_
                             _%tl231373232059%_
                             _%e231374232062%_
                             _%hd231375232065%_
                             _%tl231376232067%_))))
                     (_%__match237381237382%_
                      (lambda (_%e231306232188%_
                               _%hd231307232191%_
                               _%tl231308232193%_
                               _%e231309232196%_
                               _%hd231310232199%_
                               _%tl231311232201%_
                               _%e231312232204%_
                               _%hd231313232207%_
                               _%tl231314232209%_
                               _%e231315232212%_
                               _%hd231316232215%_
                               _%tl231317232217%_
                               _%e231318232220%_
                               _%hd231319232223%_
                               _%tl231320232225%_
                               _%e231321232228%_
                               _%hd231322232231%_
                               _%tl231323232233%_
                               _%e231324232236%_
                               _%hd231325232239%_
                               _%tl231326232241%_
                               _%e231327232244%_
                               _%hd231328232247%_
                               _%tl231329232249%_
                               _%e231330232252%_
                               _%hd231331232255%_
                               _%tl231332232257%_
                               _%e231333232260%_
                               _%hd231334232263%_
                               _%tl231335232265%_
                               _%__splice237280237281%_
                               _%target231336232268%_
                               _%tl231338232270%_)
                        (letrec ((_%loop231339232273%_
                                  (lambda (_%hd231337232276%_
                                           _%args231343232278%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd231337232276%_))
                                        (let ((_%e231340232280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd231337232276%_))))
                                          (let ((_%lp-tl231342232285%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e231340232280%_)))
                                                (_%lp-hd231341232283%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e231340232280%_))))
                                            (_%loop231339232273%_
                                             _%lp-tl231342232285%_
                                             (cons _%lp-hd231341232283%_
                                                   _%args231343232278%_))))
                                        (let ((_%args231344232288%_
                                               (reverse _%args231343232278%_)))
                                          (let ((_%g231302232290%_
                                                 _%args231344232288%_)
                                                (_%g231303232291%_
                                                 _%hd231334232263%_)
                                                (_%g231304232292%_
                                                 _%hd231325232239%_)
                                                (_%g231305232293%_
                                                 _%hd231316232215%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g231305232293%_
                                                        'call-method))
                                                     (let ((__tmp237970
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self231289%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g231304232292%_
                                                        __tmp237970)))
                                                (_%__kont237278237279%_
                                                 _%g231302232290%_
                                                 _%g231303232291%_
                                                 _%g231304232292%_
                                                 _%g231305232293%_)
                                                (_%__match237569237570%_
                                                 _%e231306232188%_
                                                 _%hd231307232191%_
                                                 _%tl231308232193%_
                                                 _%e231309232196%_
                                                 _%hd231310232199%_
                                                 _%tl231311232201%_
                                                 _%e231312232204%_
                                                 _%hd231313232207%_
                                                 _%tl231314232209%_
                                                 _%e231315232212%_
                                                 _%hd231316232215%_
                                                 _%tl231317232217%_
                                                 _%e231318232220%_
                                                 _%hd231319232223%_
                                                 _%tl231320232225%_
                                                 _%e231321232228%_
                                                 _%hd231322232231%_
                                                 _%tl231323232233%_
                                                 _%e231324232236%_
                                                 _%hd231325232239%_
                                                 _%tl231326232241%_
                                                 _%e231327232244%_
                                                 _%hd231328232247%_
                                                 _%tl231329232249%_
                                                 _%e231330232252%_
                                                 _%hd231331232255%_
                                                 _%tl231332232257%_
                                                 _%e231333232260%_
                                                 _%hd231334232263%_
                                                 _%tl231335232265%_))))))))
                          (_%loop231339232273%_ _%target231336232268%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx237276237277%_))
                    (let ((_%e231306232188%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx237276237277%_))))
                      (let ((_%tl231308232193%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231306232188%_)))
                            (_%hd231307232191%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231306232188%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl231308232193%_))
                            (let ((_%e231309232196%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl231308232193%_))))
                              (let ((_%tl231311232201%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231309232196%_)))
                                    (_%hd231310232199%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231309232196%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd231310232199%_))
                                    (let ((_%e231312232204%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd231310232199%_))))
                                      (let ((_%tl231314232209%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e231312232204%_)))
                                            (_%hd231313232207%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e231312232204%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd231313232207%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd231313232207%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl231314232209%_))
                                                    (let ((_%e231315232212%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl231314232209%_))))
                                                      (let ((_%tl231317232217%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e231315232212%_)))
                    (_%hd231316232215%_
                     (let () (declare (not safe)) (##car _%e231315232212%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl231317232217%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl231311232201%_))
                        (let ((_%e231318232220%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl231311232201%_))))
                          (let ((_%tl231320232225%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e231318232220%_)))
                                (_%hd231319232223%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e231318232220%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd231319232223%_))
                                (let ((_%e231321232228%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd231319232223%_))))
                                  (let ((_%tl231323232233%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e231321232228%_)))
                                        (_%hd231322232231%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e231321232228%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd231322232231%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd231322232231%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl231323232233%_))
                                                (let ((_%e231324232236%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl231323232233%_))))
                                                  (let ((_%tl231326232241%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e231324232236%_)))
                                                        (_%hd231325232239%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e231324232236%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl231326232241%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl231320232225%_))
                                                            (let ((_%e231327232244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl231320232225%_))))
                      (let ((_%tl231329232249%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231327232244%_)))
                            (_%hd231328232247%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231327232244%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd231328232247%_))
                            (let ((_%e231330232252%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd231328232247%_))))
                              (let ((_%tl231332232257%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231330232252%_)))
                                    (_%hd231331232255%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231330232252%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd231331232255%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd231331232255%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl231332232257%_))
                                            (let ((_%e231333232260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl231332232257%_))))
                                              (let ((_%tl231335232265%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e231333232260%_)))
                                                    (_%hd231334232263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e231333232260%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl231335232265%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl231329232249%_))
                                                        (let ((_%__splice237280237281%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl231329232249%_
                          '0))))
                  (let ((_%tl231338232270%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice237280237281%_ '1)))
                        (_%target231336232268%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice237280237281%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl231338232270%_))
                        (_%__match237381237382%_
                         _%e231306232188%_
                         _%hd231307232191%_
                         _%tl231308232193%_
                         _%e231309232196%_
                         _%hd231310232199%_
                         _%tl231311232201%_
                         _%e231312232204%_
                         _%hd231313232207%_
                         _%tl231314232209%_
                         _%e231315232212%_
                         _%hd231316232215%_
                         _%tl231317232217%_
                         _%e231318232220%_
                         _%hd231319232223%_
                         _%tl231320232225%_
                         _%e231321232228%_
                         _%hd231322232231%_
                         _%tl231323232233%_
                         _%e231324232236%_
                         _%hd231325232239%_
                         _%tl231326232241%_
                         _%e231327232244%_
                         _%hd231328232247%_
                         _%tl231329232249%_
                         _%e231330232252%_
                         _%hd231331232255%_
                         _%tl231332232257%_
                         _%e231333232260%_
                         _%hd231334232263%_
                         _%tl231335232265%_
                         _%__splice237280237281%_
                         _%target231336232268%_
                         _%tl231338232270%_)
                        (_%__match237569237570%_
                         _%e231306232188%_
                         _%hd231307232191%_
                         _%tl231308232193%_
                         _%e231309232196%_
                         _%hd231310232199%_
                         _%tl231311232201%_
                         _%e231312232204%_
                         _%hd231313232207%_
                         _%tl231314232209%_
                         _%e231315232212%_
                         _%hd231316232215%_
                         _%tl231317232217%_
                         _%e231318232220%_
                         _%hd231319232223%_
                         _%tl231320232225%_
                         _%e231321232228%_
                         _%hd231322232231%_
                         _%tl231323232233%_
                         _%e231324232236%_
                         _%hd231325232239%_
                         _%tl231326232241%_
                         _%e231327232244%_
                         _%hd231328232247%_
                         _%tl231329232249%_
                         _%e231330232252%_
                         _%hd231331232255%_
                         _%tl231332232257%_
                         _%e231333232260%_
                         _%hd231334232263%_
                         _%tl231335232265%_))))
                (_%__match237569237570%_
                 _%e231306232188%_
                 _%hd231307232191%_
                 _%tl231308232193%_
                 _%e231309232196%_
                 _%hd231310232199%_
                 _%tl231311232201%_
                 _%e231312232204%_
                 _%hd231313232207%_
                 _%tl231314232209%_
                 _%e231315232212%_
                 _%hd231316232215%_
                 _%tl231317232217%_
                 _%e231318232220%_
                 _%hd231319232223%_
                 _%tl231320232225%_
                 _%e231321232228%_
                 _%hd231322232231%_
                 _%tl231323232233%_
                 _%e231324232236%_
                 _%hd231325232239%_
                 _%tl231326232241%_
                 _%e231327232244%_
                 _%hd231328232247%_
                 _%tl231329232249%_
                 _%e231330232252%_
                 _%hd231331232255%_
                 _%tl231332232257%_
                 _%e231333232260%_
                 _%hd231334232263%_
                 _%tl231335232265%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match237773237774%_
                                                     _%e231306232188%_
                                                     _%hd231307232191%_
                                                     _%tl231308232193%_
                                                     _%e231309232196%_
                                                     _%hd231310232199%_
                                                     _%tl231311232201%_
                                                     _%e231312232204%_
                                                     _%hd231313232207%_
                                                     _%tl231314232209%_
                                                     _%e231315232212%_
                                                     _%hd231316232215%_
                                                     _%tl231317232217%_
                                                     _%e231318232220%_
                                                     _%hd231319232223%_
                                                     _%tl231320232225%_
                                                     _%e231321232228%_
                                                     _%hd231322232231%_
                                                     _%tl231323232233%_
                                                     _%e231324232236%_
                                                     _%hd231325232239%_
                                                     _%tl231326232241%_
                                                     _%e231327232244%_
                                                     _%hd231328232247%_
                                                     _%tl231329232249%_))))
                                            (_%__match237773237774%_
                                             _%e231306232188%_
                                             _%hd231307232191%_
                                             _%tl231308232193%_
                                             _%e231309232196%_
                                             _%hd231310232199%_
                                             _%tl231311232201%_
                                             _%e231312232204%_
                                             _%hd231313232207%_
                                             _%tl231314232209%_
                                             _%e231315232212%_
                                             _%hd231316232215%_
                                             _%tl231317232217%_
                                             _%e231318232220%_
                                             _%hd231319232223%_
                                             _%tl231320232225%_
                                             _%e231321232228%_
                                             _%hd231322232231%_
                                             _%tl231323232233%_
                                             _%e231324232236%_
                                             _%hd231325232239%_
                                             _%tl231326232241%_
                                             _%e231327232244%_
                                             _%hd231328232247%_
                                             _%tl231329232249%_))
                                        (_%__match237449237450%_
                                         _%e231306232188%_
                                         _%hd231307232191%_
                                         _%tl231308232193%_
                                         _%e231309232196%_
                                         _%hd231310232199%_
                                         _%tl231311232201%_
                                         _%e231312232204%_
                                         _%hd231313232207%_
                                         _%tl231314232209%_
                                         _%e231315232212%_
                                         _%hd231316232215%_
                                         _%tl231317232217%_
                                         _%e231318232220%_
                                         _%hd231319232223%_
                                         _%tl231320232225%_
                                         _%e231321232228%_
                                         _%hd231322232231%_
                                         _%tl231323232233%_
                                         _%e231324232236%_
                                         _%hd231325232239%_
                                         _%tl231326232241%_
                                         _%e231327232244%_
                                         _%hd231328232247%_
                                         _%tl231329232249%_
                                         _%e231330232252%_
                                         _%hd231331232255%_
                                         _%tl231332232257%_))
                                    (_%__match237773237774%_
                                     _%e231306232188%_
                                     _%hd231307232191%_
                                     _%tl231308232193%_
                                     _%e231309232196%_
                                     _%hd231310232199%_
                                     _%tl231311232201%_
                                     _%e231312232204%_
                                     _%hd231313232207%_
                                     _%tl231314232209%_
                                     _%e231315232212%_
                                     _%hd231316232215%_
                                     _%tl231317232217%_
                                     _%e231318232220%_
                                     _%hd231319232223%_
                                     _%tl231320232225%_
                                     _%e231321232228%_
                                     _%hd231322232231%_
                                     _%tl231323232233%_
                                     _%e231324232236%_
                                     _%hd231325232239%_
                                     _%tl231326232241%_
                                     _%e231327232244%_
                                     _%hd231328232247%_
                                     _%tl231329232249%_))))
                            (_%__match237773237774%_
                             _%e231306232188%_
                             _%hd231307232191%_
                             _%tl231308232193%_
                             _%e231309232196%_
                             _%hd231310232199%_
                             _%tl231311232201%_
                             _%e231312232204%_
                             _%hd231313232207%_
                             _%tl231314232209%_
                             _%e231315232212%_
                             _%hd231316232215%_
                             _%tl231317232217%_
                             _%e231318232220%_
                             _%hd231319232223%_
                             _%tl231320232225%_
                             _%e231321232228%_
                             _%hd231322232231%_
                             _%tl231323232233%_
                             _%e231324232236%_
                             _%hd231325232239%_
                             _%tl231326232241%_
                             _%e231327232244%_
                             _%hd231328232247%_
                             _%tl231329232249%_))))
                    (_%__match237711237712%_
                     _%e231306232188%_
                     _%hd231307232191%_
                     _%tl231308232193%_
                     _%e231309232196%_
                     _%hd231310232199%_
                     _%tl231311232201%_
                     _%e231312232204%_
                     _%hd231313232207%_
                     _%tl231314232209%_
                     _%e231315232212%_
                     _%hd231316232215%_
                     _%tl231317232217%_
                     _%e231318232220%_
                     _%hd231319232223%_
                     _%tl231320232225%_
                     _%e231321232228%_
                     _%hd231322232231%_
                     _%tl231323232233%_
                     _%e231324232236%_
                     _%hd231325232239%_
                     _%tl231326232241%_))
                (_%__kont237294237295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont237294237295%_))
                                            (_%__kont237294237295%_))
                                        (_%__kont237294237295%_))))
                                (_%__kont237294237295%_))))
                        (_%__kont237294237295%_))
                    (_%__kont237294237295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont237294237295%_))
                                                (_%__kont237294237295%_))
                                            (_%__kont237294237295%_))))
                                    (_%__kont237294237295%_))))
                            (_%__kont237294237295%_))))
                    (_%__kont237294237295%_))))))))))
