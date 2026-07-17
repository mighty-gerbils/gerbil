(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1784279019)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp244788 (list gxc#::identity::t))
            (__tmp244787 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp244788
         '()
         __tmp244787
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args243585%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args243585%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp244789
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
        (__make-atomic-promise __tmp244789)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx243577%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self243580%_
                (let ((__obj244780
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj244780))
               (__tmp244790
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self243580%_ _%stx243577%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp244790
           gxc#current-compile-method
           _%self243580%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp244792 (list gxc#::false::t))
            (__tmp244791 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp244792
         '()
         __tmp244791
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args243574%_
        (apply make-instance gxc#::extract-receiver::t _%$args243574%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp244793
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
        (__make-atomic-promise __tmp244793)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx243566%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self243569%_
                (let ((__obj244782
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj244782))
               (__tmp244794
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self243569%_ _%stx243566%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp244794
           gxc#current-compile-method
           _%self243569%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp244796 (list gxc#::void::t))
            (__tmp244795 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp244796
         '(receiver methods slots)
         __tmp244795
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args243563%_
        (apply make-instance gxc#::collect-object-refs::t _%$args243563%_)))
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
      (let ((__tmp244797
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
        (__make-atomic-promise __tmp244797)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords243532%_
               _%$%receiver243527243533%_
               _%$%methods243528243534%_
               _%$%slots243529243535%_
               _%stx243536%_)
        (let* ((_%receiver243539%_
                (if (eq? _%$%receiver243527243533%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver243527243533%_))
               (_%methods243541%_
                (if (eq? _%$%methods243528243534%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods243528243534%_))
               (_%slots243543%_
                (if (eq? _%$%slots243529243535%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots243529243535%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self243545%_
                  (let ((__obj244784
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
                       __obj244784
                       _%receiver243539%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj244784
                       _%methods243541%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj244784
                       _%slots243543%_
                       '3
                       '#f
                       '#f))
                    __obj244784))
                 (__tmp244798
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self243545%_ _%stx243536%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp244798
             gxc#current-compile-method
             _%self243545%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords243552%_ . _%args243553%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords243552%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords243552%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords243552%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords243552%_
                  'slots:
                  absent-value))
               _%args243553%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%$%args243530243559%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%$%args243530243559%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp244800 (list gxc#::basic-xform-expression::t))
            (__tmp244799 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp244800
         '(receiver klass methods slots)
         __tmp244799
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args243523%_
        (apply make-instance gxc#::subst-object-refs::t _%$args243523%_)))
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
      (let ((__tmp244801
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
        (__make-atomic-promise __tmp244801)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords243489%_
               _%$%receiver243483243490%_
               _%$%klass243484243491%_
               _%$%methods243485243492%_
               _%$%slots243486243493%_
               _%stx243494%_)
        (let* ((_%receiver243497%_
                (if (eq? _%$%receiver243483243490%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver243483243490%_))
               (_%klass243499%_
                (if (eq? _%$%klass243484243491%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%$%klass243484243491%_))
               (_%methods243501%_
                (if (eq? _%$%methods243485243492%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods243485243492%_))
               (_%slots243503%_
                (if (eq? _%$%slots243486243493%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots243486243493%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self243505%_
                  (let ((__obj244786
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
                       __obj244786
                       _%receiver243497%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj244786
                       _%klass243499%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj244786
                       _%methods243501%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj244786
                       _%slots243503%_
                       '4
                       '#f
                       '#f))
                    __obj244786))
                 (__tmp244802
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self243505%_ _%stx243494%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp244802
             gxc#current-compile-method
             _%self243505%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords243512%_ . _%args243513%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords243512%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords243512%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords243512%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords243512%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords243512%_
                  'slots:
                  absent-value))
               _%args243513%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%$%args243487243519%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%$%args243487243519%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self240614%_ _%stx240615%_)
        (letrec ((_%generate-method-bind240617%_
                  (lambda (_%$klass243475%_
                           _%$method-table243476%_
                           _%id243477%_
                           _%$id243478%_)
                    (let ((_%$tmp243480%_
                           (let ((__tmp244803
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp244803))))
                      (cons (cons _%$id243478%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp243480%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table243476%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id243477%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp243480%_ '()))
                    (cons (cons '%#ref (cons _%$tmp243480%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id243477%_
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
                 (_%generate-slot-bind240618%_
                  (lambda (_%$klass243469%_ _%id243470%_ _%$id243471%_)
                    (let ((_%$tmp243473%_
                           (let ((__tmp244804
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp244804))))
                      (cons (cons _%$id243471%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp243473%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass243469%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id243470%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp243473%_ '()))
                        (cons (cons '%#ref (cons _%$tmp243473%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id243470%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl240619%_
                  (lambda (_%$klass243463%_
                           _%$method-table243464%_
                           _%methods-bind243465%_
                           _%slots-bind243466%_
                           _%specializer-impl243467%_)
                    (let ((__tmp244805
                           (cons '%#lambda
                                 (cons (cons _%$klass243463%_
                                             (cons _%$method-table243464%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (append _%methods-bind243465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%slots-bind243466%_)
                 (cons _%specializer-impl243467%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244805 _%stx240615%_))))
                 (_%generate-specializer-def240620%_
                  (lambda (_%id243459%_
                           _%specializer-id243460%_
                           _%specializer-impl243461%_)
                    (let ((__tmp244806
                           (cons '%#begin
                                 (cons _%stx240615%_
                                       (cons (let ((__tmp244807
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id243460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl243461%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp244807
                                                _%stx240615%_))
                                             (cons (let ((__tmp244808
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id243459%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id243460%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp244808
                                                      _%stx240615%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244806 _%stx240615%_)))))
          (let* ((_%__stx243674243675%_ _%stx240615%_)
                 (_%$%g240623240643%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx243674243675%_)))))
            (let ((_%__kont243676243677%_
                   (lambda (_%$%g240625240687%_ _%$%g240626240688%_)
                     (let ((_%method-calls240707%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs240708%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty240709%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?240711%_
                                 (lambda ()
                                   (if (let ((__tmp244809
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls240707%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp244809))
                                       (let ((__tmp244810
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs240708%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp244810))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%$%g240625240687%_))
                             (let* ((_%__stx243588243589%_ _%$%g240625240687%_)
                                    (_%$%g241095241113%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx243588243589%_)))))
                               (let ((_%__kont243590243591%_
                                      (lambda (_%$%g241097241149%_
                                               _%$%g241098241150%_
                                               _%$%g241099241151%_)
                                        (let ((_%receiver241171%_
                                               (let ((_%$e241168%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%g241097241149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e241168%_
                                                     _%$e241168%_
                                                     _%$%g241099241151%_))))
                                          (for-each
                                           (lambda (_%$%g241172241174%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver241171%_
                                              _%method-calls240707%_
                                              _%slot-refs240708%_
                                              _%$%g241172241174%_))
                                           _%$%g241097241149%_)
                                          (if (_%no-specializer?240711%_)
                                              _%stx240615%_
                                              (let* ((_%specializer-id241183%_
                                                      (let* ((_%id241177%_
                                                              (let ((__tmp244811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g240626240688%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp244811 '"::specialize")))
                     (_%specializer-id241180%_
                      (let ((__tmp244812
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx240615%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id241177%_ __tmp244812))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id241180%_))
                _%specializer-id241180%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass241185%_
                                                      (let ((__tmp244813
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp244813)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table241187%_
                                                      (let ((__tmp244814
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp244814)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods241189%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls240707%_)))
                                                     (_%$methods241193%_
                                                      (let ((__tmp244815
                                                             (lambda (_%id241191%_)
                                                               (let ((__tmp244816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id241191%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp244816)))))
                (declare (not safe))
                (##map __tmp244815 _%methods241189%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_241202%_
                                                      (let ((__tmp244817
                                                             (lambda (_%$%g241194241197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g241195241199%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls240707%_
                          _%$%g241194241197%_
                          _%$%g241195241199%_)))))
                (declare (not safe))
                (##for-each __tmp244817 _%methods241189%_ _%$methods241193%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind241212%_
                                                      (let ((__tmp244818
                                                             (lambda (_%$%g241204241207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g241205241209%_)
                       (_%generate-method-bind240617%_
                        _%$klass241185%_
                        _%$method-table241187%_
                        _%$%g241204241207%_
                        _%$%g241205241209%_))))
                (declare (not safe))
                (##map __tmp244818 _%methods241189%_ _%$methods241193%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots241214%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs240708%_)))
                                                     (_%$slots241218%_
                                                      (let ((__tmp244819
                                                             (lambda (_%id241216%_)
                                                               (let ((__tmp244820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id241216%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp244820)))))
                (declare (not safe))
                (##map __tmp244819 _%slots241214%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_241227%_
                                                      (let ((__tmp244821
                                                             (lambda (_%$%g241219241222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g241220241224%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs240708%_
                          _%$%g241219241222%_
                          _%$%g241220241224%_)))))
                (declare (not safe))
                (##for-each __tmp244821 _%slots241214%_ _%$slots241218%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind241236%_
                                                      (let ((__tmp244822
                                                             (lambda (_%$%g241228241231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g241229241233%_)
                       (_%generate-slot-bind240618%_
                        _%$klass241185%_
                        _%$%g241228241231%_
                        _%$%g241229241233%_))))
                (declare (not safe))
                (##map __tmp244822 _%slots241214%_ _%$slots241218%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body241242%_
                                                      (map (lambda (_%$%g241237241239%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver241171%_
                                                              _%$klass241185%_
                                                              _%method-calls240707%_
                                                              _%slot-refs240708%_
                                                              _%$%g241237241239%_))
                                                           _%$%g241097241149%_))
                                                     (_%specializer-impl241244%_
                                                      (let ((__tmp244823
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%$%g241099241151%_ _%$%g241098241150%_)
                                 _%specializer-body241242%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp244823 _%stx240615%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl241246%_
                                                      (_%generate-specializer-impl240619%_
                                                       _%$klass241185%_
                                                       _%$method-table241187%_
                                                       _%methods-bind241212%_
                                                       _%slots-bind241236%_
                                                       _%specializer-impl241244%_)))
                                                (let ((__tmp244825
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g240626240688%_)))
                                                      (__tmp244824
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id241183%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp244825
                                                   '" => "
                                                   __tmp244824))
                                                (_%generate-specializer-def240620%_
                                                 _%$%g240626240688%_
                                                 _%specializer-id241183%_
                                                 _%specializer-impl241246%_))))))
                                     (_%__kont243592243593%_
                                      (lambda () _%stx240615%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx243588243589%_))
                                     (let ((_%$%e241100241125%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx243588243589%_))))
                                       (let ((_%$%tl241102241130%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e241100241125%_)))
                                             (_%$%hd241101241128%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e241100241125%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl241102241130%_))
                                             (let ((_%$%e241103241133%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl241102241130%_))))
                                               (let ((_%$%tl241105241138%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e241103241133%_)))
                                                     (_%$%hd241104241136%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e241103241133%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%hd241104241136%_))
                                                     (let ((_%$%e241106241141%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%hd241104241136%_))))
                                                       (let ((_%$%tl241108241146%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e241106241141%_)))
                     (_%$%hd241107241144%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e241106241141%_))))
                 (_%__kont243590243591%_
                  _%$%tl241105241138%_
                  _%$%tl241108241146%_
                  _%$%hd241107241144%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont243592243593%_))))
                                             (_%__kont243592243593%_))))
                                     (_%__kont243592243593%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%$%g240625240687%_))
                                 (let* ((_%$%g241253241272%_
                                         (lambda (_%$%g241254241269%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g241254241269%_))))
                                        (_%$%g241252241568%_
                                         (lambda (_%$%g241254241275%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%g241254241275%_))
                                               (let ((_%$%e241256241277%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g241254241275%_))))
                                                 (let ((_%$%hd241257241280%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e241256241277%_)))
                                                       (_%$%tl241258241282%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e241256241277%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%$%tl241258241282%_))
                                                       (let ((_g244826_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%$%tl241258241282%_ '0))))
                 (begin
                   (let ((_g244827_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g244826_)
                                (##values-length _g244826_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g244827_ 2)))
                         (error "Context expects 2 values" _g244827_)))
                   (let ((_%$%target241259241285%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g244826_ 0)))
                         (_%$%tl241261241287%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g244826_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl241261241287%_))
                         (letrec ((_%$%loop241262241290%_
                                   (lambda (_%$%hd241260241293%_
                                            _%$%clause241266241295%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd241260241293%_))
                                         (let ((_%$%e241263241297%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd241260241293%_))))
                                           (let ((_%$%lp-hd241264241300%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e241263241297%_)))
                                                 (_%$%lp-tl241265241302%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e241263241297%_))))
                                             (_%$%loop241262241290%_
                                              _%$%lp-tl241265241302%_
                                              (cons _%$%lp-hd241264241300%_
                                                    _%$%clause241266241295%_))))
                                         (let ((_%$%clause241267241305%_
                                                (reverse _%$%clause241266241295%_)))
                                           (for-each
                                            (lambda (_%clause241321%_)
                                              (let* ((_%__stx243614243615%_
                                                      _%clause241321%_)
                                                     (_%$%g241324241339%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx243614243615%_)))))
                                                (let ((_%__kont243616243617%_
                                                       (lambda (_%$%g241326241367%_
                                                                _%$%g241327241368%_
                                                                _%$%g241328241369%_)
                                                         (let ((_%receiver241388%_
                                                                (let ((_%$e241385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gxc#apply-extract-receiver
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f '%#begin))
                                      _%$%g241326241367%_))))
                          (if _%$e241385%_ _%$e241385%_ _%$%g241328241369%_))))
                   (for-each
                    (lambda (_%$%g241389241391%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver241388%_
                       _%method-calls240707%_
                       _%slot-refs240708%_
                       _%$%g241389241391%_))
                    _%$%g241326241367%_))))
              (_%__kont243618243619%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx243614243615%_))
                                                      (let ((_%$%e241329241351%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx243614243615%_))))
                (let ((_%$%tl241331241356%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e241329241351%_)))
                      (_%$%hd241330241354%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e241329241351%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd241330241354%_))
                      (let ((_%$%e241332241359%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd241330241354%_))))
                        (let ((_%$%tl241334241364%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e241332241359%_)))
                              (_%$%hd241333241362%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e241332241359%_))))
                          (_%__kont243616243617%_
                           _%$%tl241331241356%_
                           _%$%tl241334241364%_
                           _%$%hd241333241362%_)))
                      '#!void)))
              '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((__tmp244828
                                                   (lambda (_%$%g241396241399%_
                                                            _%$%g241397241401%_)
                                                     (cons _%$%g241396241399%_
                                                           _%$%g241397241401%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp244828
                                               '()
                                               _%$%clause241267241305%_)))
                                           (if (_%no-specializer?240711%_)
                                               _%stx240615%_
                                               (let* ((_%specializer-id241410%_
                                                       (let* ((_%id241404%_
                                                               (let ((__tmp244829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g240626240688%_))))
                         (declare (not safe))
                         (make-symbol__1 __tmp244829 '"::specialize")))
                      (_%specializer-id241407%_
                       (let ((__tmp244830
                              (let ()
                                (declare (not safe))
                                (gx#stx-source _%stx240615%_))))
                         (declare (not safe))
                         (gx#core-quote-syntax__1 _%id241404%_ __tmp244830))))
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _%specializer-id241407%_))
                 _%specializer-id241407%_))
              (_%$klass241412%_
               (let ((__tmp244831
                      (let () (declare (not safe)) (##gensym '__klass))))
                 (declare (not safe))
                 (make-symbol__0 __tmp244831)))
              (_%$method-table241414%_
               (let ((__tmp244832
                      (let ()
                        (declare (not safe))
                        (##gensym '__method-table))))
                 (declare (not safe))
                 (make-symbol__0 __tmp244832)))
              (_%methods241416%_
               (let ()
                 (declare (not safe))
                 (__hash-keys _%method-calls240707%_)))
              (_%$methods241420%_
               (let ((__tmp244833
                      (lambda (_%id241418%_)
                        (let ((__tmp244834 (gensym _%id241418%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp244834)))))
                 (declare (not safe))
                 (##map __tmp244833 _%methods241416%_)))
              (_%_241429%_
               (let ((__tmp244835
                      (lambda (_%$%g241421241424%_ _%$%g241422241426%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%method-calls240707%_
                           _%$%g241421241424%_
                           _%$%g241422241426%_)))))
                 (declare (not safe))
                 (##for-each
                  __tmp244835
                  _%methods241416%_
                  _%$methods241420%_)))
              (_%methods-bind241439%_
               (let ((__tmp244836
                      (lambda (_%$%g241431241434%_ _%$%g241432241436%_)
                        (_%generate-method-bind240617%_
                         _%$klass241412%_
                         _%$method-table241414%_
                         _%$%g241431241434%_
                         _%$%g241432241436%_))))
                 (declare (not safe))
                 (##map __tmp244836 _%methods241416%_ _%$methods241420%_)))
              (_%slots241441%_
               (let () (declare (not safe)) (__hash-keys _%slot-refs240708%_)))
              (_%$slots241445%_
               (let ((__tmp244837
                      (lambda (_%id241443%_)
                        (let ((__tmp244838 (gensym _%id241443%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp244838)))))
                 (declare (not safe))
                 (##map __tmp244837 _%slots241441%_)))
              (_%_241454%_
               (let ((__tmp244839
                      (lambda (_%$%g241446241449%_ _%$%g241447241451%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%slot-refs240708%_
                           _%$%g241446241449%_
                           _%$%g241447241451%_)))))
                 (declare (not safe))
                 (##for-each __tmp244839 _%slots241441%_ _%$slots241445%_)))
              (_%slots-bind241463%_
               (let ((__tmp244840
                      (lambda (_%$%g241455241458%_ _%$%g241456241460%_)
                        (_%generate-slot-bind240618%_
                         _%$klass241412%_
                         _%$%g241455241458%_
                         _%$%g241456241460%_))))
                 (declare (not safe))
                 (##map __tmp244840 _%slots241441%_ _%$slots241445%_)))
              (_%specializer-clauses241561%_
               (map (lambda (_%clause241465%_)
                      (let* ((_%__stx243634243635%_ _%clause241465%_)
                             (_%$%g241468241483%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx243634243635%_)))))
                        (let ((_%__kont243636243637%_
                               (lambda (_%$%g241470241511%_
                                        _%$%g241471241512%_
                                        _%$%g241472241513%_)
                                 (let* ((_%receiver241542%_
                                         (let ((_%$e241539%_
                                                (gxc#apply-extract-receiver
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#begin))
                                                       _%$%g241470241511%_))))
                                           (if _%$e241539%_
                                               _%$e241539%_
                                               _%$%g241472241513%_)))
                                        (_%body241548%_
                                         (map (lambda (_%$%g241543241545%_)
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%receiver241542%_
                                                 _%$klass241412%_
                                                 _%method-calls240707%_
                                                 _%slot-refs240708%_
                                                 _%$%g241543241545%_))
                                              _%$%g241470241511%_)))
                                   (cons (cons _%$%g241472241513%_
                                               _%$%g241471241512%_)
                                         _%body241548%_))))
                              (_%__kont243638243639%_
                               (lambda () _%clause241465%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx243634243635%_))
                              (let ((_%$%e241473241495%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx243634243635%_))))
                                (let ((_%$%tl241475241500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e241473241495%_)))
                                      (_%$%hd241474241498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e241473241495%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd241474241498%_))
                                      (let ((_%$%e241476241503%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd241474241498%_))))
                                        (let ((_%$%tl241478241508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e241476241503%_)))
                                              (_%$%hd241477241506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e241476241503%_))))
                                          (_%__kont243636243637%_
                                           _%$%tl241475241500%_
                                           _%$%tl241478241508%_
                                           _%$%hd241477241506%_)))
                                      (_%__kont243638243639%_))))
                              (_%__kont243638243639%_)))))
                    (let ((__tmp244841
                           (lambda (_%$%g241553241556%_ _%$%g241554241558%_)
                             (cons _%$%g241553241556%_ _%$%g241554241558%_))))
                      (declare (not safe))
                      (foldr__0 __tmp244841 '() _%$%clause241267241305%_))))
              (_%specializer-impl241563%_
               (let ((__tmp244842
                      (cons '%#case-lambda _%specializer-clauses241561%_)))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp244842 _%stx240615%_)))
              (_%specializer-impl241565%_
               (_%generate-specializer-impl240619%_
                _%$klass241412%_
                _%$method-table241414%_
                _%methods-bind241439%_
                _%slots-bind241463%_
                _%specializer-impl241563%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp244844
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g240626240688%_)))
                                                       (__tmp244843
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%specializer-id241410%_))))
                                                   (declare (not safe))
                                                   (gxc#verbose
                                                    '"generate method specializer "
                                                    __tmp244844
                                                    '" => "
                                                    __tmp244843))
                                                 (_%generate-specializer-def240620%_
                                                  _%$%g240626240688%_
                                                  _%specializer-id241410%_
                                                  _%specializer-impl241565%_))))))))
                           (_%$%loop241262241290%_
                            _%$%target241259241285%_
                            '()))
                         (_%$%g241253241272%_ _%$%g241254241275%_)))))
               (_%$%g241253241272%_ _%$%g241254241275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g241253241272%_
                                                _%$%g241254241275%_)))))
                                   (_%$%g241252241568%_ _%$%g240625240687%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%$%g240625240687%_))
                                     (let* ((_%$%g241572241602%_
                                             (lambda (_%$%g241573241599%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g241573241599%_))))
                                            (_%$%g241571242229%_
                                             (lambda (_%$%g241573241605%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g241573241605%_))
                                                   (let ((_%$%e241577241607%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%g241573241605%_))))
                                                     (let ((_%$%hd241578241610%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e241577241607%_)))
                                                           (_%$%tl241579241612%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e241577241607%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl241579241612%_))
                                                           (let ((_%$%e241580241615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl241579241612%_))))
                     (let ((_%$%hd241581241618%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e241580241615%_)))
                           (_%$%tl241582241620%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e241580241615%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd241581241618%_))
                           (let ((_%$%e241583241623%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd241581241618%_))))
                             (let ((_%$%hd241584241626%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e241583241623%_)))
                                   (_%$%tl241585241628%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e241583241623%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd241584241626%_))
                                   (let ((_%$%e241586241631%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd241584241626%_))))
                                     (let ((_%$%hd241587241634%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e241586241631%_)))
                                           (_%$%tl241588241636%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e241586241631%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd241587241634%_))
                                           (let ((_%$%e241589241639%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd241587241634%_))))
                                             (let ((_%$%hd241590241642%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e241589241639%_)))
                                                   (_%$%tl241591241644%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e241589241639%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl241591241644%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl241588241636%_))
                                                       (let ((_%$%e241592241647%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl241588241636%_))))
                 (let ((_%$%hd241593241650%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e241592241647%_)))
                       (_%$%tl241594241652%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e241592241647%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl241594241652%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl241585241628%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl241582241620%_))
                               (let ((_%$%e241595241655%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl241582241620%_))))
                                 (let ((_%$%hd241596241658%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e241595241655%_)))
                                       (_%$%tl241597241660%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e241595241655%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl241597241660%_))
                                       (let ()
                                         (let* ((_%$%g241689241707%_
                                                 (lambda (_%$%g241690241704%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g241690241704%_))))
                                                (_%$%g241688241763%_
                                                 (lambda (_%$%g241690241710%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g241690241710%_))
                                                       (let ((_%$%e241694241712%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g241690241710%_))))
                 (let ((_%$%hd241695241715%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e241694241712%_)))
                       (_%$%tl241696241717%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e241694241712%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl241696241717%_))
                       (let ((_%$%e241697241720%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl241696241717%_))))
                         (let ((_%$%hd241698241723%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e241697241720%_)))
                               (_%$%tl241699241725%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e241697241720%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd241698241723%_))
                               (let ((_%$%e241700241728%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%hd241698241723%_))))
                                 (let ((_%$%hd241701241731%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e241700241728%_)))
                                       (_%$%tl241702241733%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e241700241728%_))))
                                   (let ((_%receiver241757%_
                                          (let ((_%$e241754%_
                                                 (gxc#apply-extract-receiver
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#begin))
                                                        _%$%tl241699241725%_))))
                                            (if _%$e241754%_
                                                _%$e241754%_
                                                _%$%hd241701241731%_))))
                                     (for-each
                                      (lambda (_%$%g241758241760%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver241757%_
                                         _%method-calls240707%_
                                         _%slot-refs240708%_
                                         _%$%g241758241760%_))
                                      _%$%tl241699241725%_))))
                               (_%$%g241689241707%_ _%$%g241690241710%_))))
                       (_%$%g241689241707%_ _%$%g241690241710%_))))
               (_%$%g241689241707%_ _%$%g241690241710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g241688241763%_
                                            _%$%hd241593241650%_))
                                         (let* ((_%$%g241766241785%_
                                                 (lambda (_%$%g241767241782%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g241767241782%_))))
                                                (_%$%g241765241907%_
                                                 (lambda (_%$%g241767241788%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g241767241788%_))
                                                       (let ((_%$%e241769241790%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g241767241788%_))))
                 (let ((_%$%hd241770241793%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e241769241790%_)))
                       (_%$%tl241771241795%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e241769241790%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? _%$%tl241771241795%_))
                       (let ((_g244845_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 _%$%tl241771241795%_
                                 '0))))
                         (begin
                           (let ((_g244846_
                                  (let ()
                                    (declare (not safe))
                                    (if (##values? _g244845_)
                                        (##values-length _g244845_)
                                        1))))
                             (if (not (let ()
                                        (declare (not safe))
                                        (##fx= _g244846_ 2)))
                                 (error "Context expects 2 values" _g244846_)))
                           (let ((_%$%target241772241798%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g244845_ 0)))
                                 (_%$%tl241774241800%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g244845_ 1))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl241774241800%_))
                                 (letrec ((_%$%loop241775241803%_
                                           (lambda (_%$%hd241773241806%_
                                                    _%$%clause241779241808%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd241773241806%_))
                                                 (let ((_%$%e241776241810%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd241773241806%_))))
                                                   (let ((_%$%lp-hd241777241813%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e241776241810%_)))
                                                         (_%$%lp-tl241778241815%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e241776241810%_))))
                                                     (_%$%loop241775241803%_
                                                      _%$%lp-tl241778241815%_
                                                      (cons _%$%lp-hd241777241813%_
                                                            _%$%clause241779241808%_))))
                                                 (let ((_%$%clause241780241818%_
                                                        (reverse _%$%clause241779241808%_)))
                                                   (for-each
                                                    (lambda (_%clause241833%_)
                                                      (let* ((_%$%g241835241850%_
                                                              (lambda (_%$%g241836241847%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g241836241847%_))))
                     (_%$%g241834241897%_
                      (lambda (_%$%g241836241853%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%g241836241853%_))
                            (let ((_%$%e241840241855%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g241836241853%_))))
                              (let ((_%$%hd241841241858%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e241840241855%_)))
                                    (_%$%tl241842241860%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e241840241855%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd241841241858%_))
                                    (let ((_%$%e241843241863%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd241841241858%_))))
                                      (let ((_%$%hd241844241866%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e241843241863%_)))
                                            (_%$%tl241845241868%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e241843241863%_))))
                                        (let ((_%receiver241891%_
                                               (let ((_%$e241888%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%tl241842241860%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e241888%_
                                                     _%$e241888%_
                                                     _%$%hd241844241866%_))))
                                          (for-each
                                           (lambda (_%$%g241892241894%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver241891%_
                                              _%method-calls240707%_
                                              _%slot-refs240708%_
                                              _%$%g241892241894%_))
                                           _%$%tl241842241860%_))))
                                    (_%$%g241835241850%_
                                     _%$%g241836241853%_))))
                            (_%$%g241835241850%_ _%$%g241836241853%_)))))
                (_%$%g241834241897%_ _%clause241833%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp244847
                                                           (lambda (_%$%g241899241902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g241900241904%_)
                     (cons _%$%g241899241902%_ _%$%g241900241904%_))))
              (declare (not safe))
              (foldr__0 __tmp244847 '() _%$%clause241780241818%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%loop241775241803%_
                                    _%$%target241772241798%_
                                    '()))
                                 (_%$%g241766241785%_ _%$%g241767241788%_)))))
                       (_%$%g241766241785%_ _%$%g241767241788%_))))
               (_%$%g241766241785%_ _%$%g241767241788%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g241765241907%_
                                            _%$%hd241596241658%_))
                                         (if (_%no-specializer?240711%_)
                                             _%stx240615%_
                                             (let* ((_%specializer-id241916%_
                                                     (let* ((_%id241910%_
                                                             (let ((__tmp244848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g240626240688%_))))
                       (declare (not safe))
                       (make-symbol__1 __tmp244848 '"::specialize")))
                    (_%specializer-id241913%_
                     (let ((__tmp244849
                            (let ()
                              (declare (not safe))
                              (gx#stx-source _%stx240615%_))))
                       (declare (not safe))
                       (gx#core-quote-syntax__1 _%id241910%_ __tmp244849))))
               (let ()
                 (declare (not safe))
                 (gx#core-bind-runtime!__0 _%specializer-id241913%_))
               _%specializer-id241913%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$klass241918%_
                                                     (let ((__tmp244850
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__klass))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp244850)))
                                                    (_%$method-table241920%_
                                                     (let ((__tmp244851
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__method-table))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp244851)))
                                                    (_%methods241922%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%method-calls240707%_)))
                                                    (_%$methods241926%_
                                                     (let ((__tmp244852
                                                            (lambda (_%id241924%_)
                                                              (let ((__tmp244853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id241924%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp244853)))))
               (declare (not safe))
               (##map __tmp244852 _%methods241922%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_241935%_
                                                     (let ((__tmp244854
                                                            (lambda (_%$%g241927241930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g241928241932%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%method-calls240707%_
                         _%$%g241927241930%_
                         _%$%g241928241932%_)))))
               (declare (not safe))
               (##for-each __tmp244854 _%methods241922%_ _%$methods241926%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%methods-bind241945%_
                                                     (let ((__tmp244855
                                                            (lambda (_%$%g241937241940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g241938241942%_)
                      (_%generate-method-bind240617%_
                       _%$klass241918%_
                       _%$method-table241920%_
                       _%$%g241937241940%_
                       _%$%g241938241942%_))))
               (declare (not safe))
               (##map __tmp244855 _%methods241922%_ _%$methods241926%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots241947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%slot-refs240708%_)))
                                                    (_%$slots241951%_
                                                     (let ((__tmp244856
                                                            (lambda (_%id241949%_)
                                                              (let ((__tmp244857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id241949%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp244857)))))
               (declare (not safe))
               (##map __tmp244856 _%slots241947%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_241960%_
                                                     (let ((__tmp244858
                                                            (lambda (_%$%g241952241955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g241953241957%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%slot-refs240708%_
                         _%$%g241952241955%_
                         _%$%g241953241957%_)))))
               (declare (not safe))
               (##for-each __tmp244858 _%slots241947%_ _%$slots241951%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots-bind241969%_
                                                     (let ((__tmp244859
                                                            (lambda (_%$%g241961241964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g241962241966%_)
                      (_%generate-slot-bind240618%_
                       _%$klass241918%_
                       _%$%g241961241964%_
                       _%$%g241962241966%_))))
               (declare (not safe))
               (##map __tmp244859 _%slots241947%_ _%$slots241951%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-lambda-expr242061%_
                                                     (let* ((_%$%g241971241989%_
                                                             (lambda (_%$%g241972241986%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g241972241986%_))))
                    (_%$%g241970242058%_
                     (lambda (_%$%g241972241992%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g241972241992%_))
                           (let ((_%$%e241976241994%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g241972241992%_))))
                             (let ((_%$%hd241977241997%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e241976241994%_)))
                                   (_%$%tl241978241999%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e241976241994%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl241978241999%_))
                                   (let ((_%$%e241979242002%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl241978241999%_))))
                                     (let ((_%$%hd241980242005%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e241979242002%_)))
                                           (_%$%tl241981242007%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e241979242002%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd241980242005%_))
                                           (let ((_%$%e241982242010%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd241980242005%_))))
                                             (let ((_%$%hd241983242013%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e241982242010%_)))
                                                   (_%$%tl241984242015%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e241982242010%_))))
                                               (let* ((_%receiver242049%_
                                                       (let ((_%$e242046%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%tl241981242007%_))))
                 (if _%$e242046%_ _%$e242046%_ _%$%hd241983242013%_)))
              (_%body242055%_
               (map (lambda (_%$%g242050242052%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver242049%_
                       _%$klass241918%_
                       _%method-calls240707%_
                       _%slot-refs240708%_
                       _%$%g242050242052%_))
                    _%$%tl241981242007%_))
              (__tmp244860
               (cons '%#lambda
                     (cons (cons _%$%hd241983242013%_ _%$%tl241984242015%_)
                           _%body242055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp244860
                                                  _%$%hd241593241650%_))))
                                           (_%$%g241971241989%_
                                            _%$%g241972241992%_))))
                                   (_%$%g241971241989%_ _%$%g241972241992%_))))
                           (_%$%g241971241989%_ _%$%g241972241992%_)))))
               (_%$%g241970242058%_ _%$%hd241593241650%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-case-lambda-expr242222%_
                                                     (let* ((_%$%g242063242082%_
                                                             (lambda (_%$%g242064242079%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g242064242079%_))))
                    (_%$%g242062242219%_
                     (lambda (_%$%g242064242085%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g242064242085%_))
                           (let ((_%$%e242066242087%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g242064242085%_))))
                             (let ((_%$%hd242067242090%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e242066242087%_)))
                                   (_%$%tl242068242092%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e242066242087%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair/null? _%$%tl242068242092%_))
                                   (let ((_g244861_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-split-splice
                                             _%$%tl242068242092%_
                                             '0))))
                                     (begin
                                       (let ((_g244862_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g244861_)
                                                    (##values-length _g244861_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g244862_ 2)))
                                             (error "Context expects 2 values"
                                                    _g244862_)))
                                       (let ((_%$%target242069242095%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g244861_ 0)))
                                             (_%$%tl242071242097%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g244861_ 1))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%$%tl242071242097%_))
                                             (letrec ((_%$%loop242072242100%_
                                                       (lambda (_%$%hd242070242103%_
                                                                _%$%clause242076242105%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%hd242070242103%_))
                     (let ((_%$%e242073242107%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%hd242070242103%_))))
                       (let ((_%$%lp-hd242074242110%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e242073242107%_)))
                             (_%$%lp-tl242075242112%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e242073242107%_))))
                         (_%$%loop242072242100%_
                          _%$%lp-tl242075242112%_
                          (cons _%$%lp-hd242074242110%_
                                _%$%clause242076242105%_))))
                     (let* ((_%$%clause242077242115%_
                             (reverse _%$%clause242076242105%_))
                            (_%clauses242217%_
                             (map (lambda (_%clause242131%_)
                                    (let* ((_%__stx243654243655%_
                                            _%clause242131%_)
                                           (_%$%g242134242149%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%__stx243654243655%_)))))
                                      (let ((_%__kont243656243657%_
                                             (lambda (_%$%g242136242177%_
                                                      _%$%g242137242178%_
                                                      _%$%g242138242179%_)
                                               (let* ((_%receiver242198%_
                                                       (let ((_%$e242195%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%g242136242177%_))))
                 (if _%$e242195%_ _%$e242195%_ _%$%g242138242179%_)))
              (_%body242204%_
               (map (lambda (_%$%g242199242201%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver242198%_
                       _%$klass241918%_
                       _%method-calls240707%_
                       _%slot-refs240708%_
                       _%$%g242199242201%_))
                    _%$%g242136242177%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g242138242179%_
                                                             _%$%g242137242178%_)
                                                       _%body242204%_))))
                                            (_%__kont243658243659%_
                                             (lambda () _%clause242131%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%__stx243654243655%_))
                                            (let ((_%$%e242139242161%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%__stx243654243655%_))))
                                              (let ((_%$%tl242141242166%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e242139242161%_)))
                                                    (_%$%hd242140242164%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e242139242161%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd242140242164%_))
                                                    (let ((_%$%e242142242169%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd242140242164%_))))
                                                      (let ((_%$%tl242144242174%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e242142242169%_)))
                    (_%$%hd242143242172%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e242142242169%_))))
                (_%__kont243656243657%_
                 _%$%tl242141242166%_
                 _%$%tl242144242174%_
                 _%$%hd242143242172%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont243658243659%_))))
                                            (_%__kont243658243659%_)))))
                                  (let ((__tmp244863
                                         (lambda (_%$%g242209242212%_
                                                  _%$%g242210242214%_)
                                           (cons _%$%g242209242212%_
                                                 _%$%g242210242214%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp244863
                                     '()
                                     _%$%clause242077242115%_))))
                            (__tmp244864
                             (cons '%#case-lambda _%clauses242217%_)))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp244864
                        _%$%hd241596241658%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop242072242100%_
                                                _%$%target242069242095%_
                                                '()))
                                             (_%$%g242063242082%_
                                              _%$%g242064242085%_)))))
                                   (_%$%g242063242082%_ _%$%g242064242085%_))))
                           (_%$%g242063242082%_ _%$%g242064242085%_)))))
               (_%$%g242062242219%_ _%$%hd241596241658%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl242224%_
                                                     (let ((__tmp244865
                                                            (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _%$%hd241590241642%_ '())
                                            (cons _%specializer-lambda-expr242061%_
                                                  '()))
                                      '())
                                (cons _%specializer-case-lambda-expr242222%_
                                      '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp244865 _%stx240615%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl242226%_
                                                     (_%generate-specializer-impl240619%_
                                                      _%$klass241918%_
                                                      _%$method-table241920%_
                                                      _%methods-bind241945%_
                                                      _%slots-bind241969%_
                                                      _%specializer-impl242224%_)))
                                               (let ((__tmp244867
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g240626240688%_)))
                                                     (__tmp244866
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%specializer-id241916%_))))
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"generate method specializer "
                                                  __tmp244867
                                                  '" => "
                                                  __tmp244866))
                                               (_%generate-specializer-def240620%_
                                                _%$%g240626240688%_
                                                _%specializer-id241916%_
                                                _%specializer-impl242226%_))))
                                       (_%$%g241572241602%_
                                        _%$%g241573241605%_))))
                               (_%$%g241572241602%_ _%$%g241573241605%_))
                           (_%$%g241572241602%_ _%$%g241573241605%_))
                       (_%$%g241572241602%_ _%$%g241573241605%_))))
               (_%$%g241572241602%_ _%$%g241573241605%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g241572241602%_
                                                    _%$%g241573241605%_))))
                                           (_%$%g241572241602%_
                                            _%$%g241573241605%_))))
                                   (_%$%g241572241602%_ _%$%g241573241605%_))))
                           (_%$%g241572241602%_ _%$%g241573241605%_))))
                   (_%$%g241572241602%_ _%$%g241573241605%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g241572241602%_
                                                    _%$%g241573241605%_)))))
                                       (_%$%g241571242229%_
                                        _%$%g240625240687%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%$%g240625240687%_))
                                         (let* ((_%$%g242233242286%_
                                                 (lambda (_%$%g242234242283%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g242234242283%_))))
                                                (_%$%g242232243451%_
                                                 (lambda (_%$%g242234242289%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g242234242289%_))
                                                       (let ((_%$%e242240242291%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g242234242289%_))))
                 (let ((_%$%hd242241242294%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e242240242291%_)))
                       (_%$%tl242242242296%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e242240242291%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%$%hd242241242294%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%$%hd242241242294%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl242242242296%_))
                               (let ((_%$%e242243242299%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl242242242296%_))))
                                 (let ((_%$%hd242244242302%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e242243242299%_)))
                                       (_%$%tl242245242304%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e242243242299%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd242244242302%_))
                                       (let ((_%$%e242246242307%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd242244242302%_))))
                                         (let ((_%$%hd242247242310%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e242246242307%_)))
                                               (_%$%tl242248242312%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e242246242307%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd242247242310%_))
                                               (let ((_%$%e242249242315%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd242247242310%_))))
                                                 (let ((_%$%hd242250242318%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e242249242315%_)))
                                                       (_%$%tl242251242320%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e242249242315%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%hd242250242318%_))
                                                       (let ((_%$%e242252242323%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%hd242250242318%_))))
                 (let ((_%$%hd242253242326%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e242252242323%_)))
                       (_%$%tl242254242328%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e242252242323%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl242254242328%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl242251242320%_))
                           (let ((_%$%e242255242331%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl242251242320%_))))
                             (let ((_%$%hd242256242334%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e242255242331%_)))
                                   (_%$%tl242257242336%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e242255242331%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd242256242334%_))
                                   (let ((_%$%e242258242339%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd242256242334%_))))
                                     (let ((_%$%hd242259242342%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e242258242339%_)))
                                           (_%$%tl242260242344%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e242258242339%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd242259242342%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%$%hd242259242342%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl242260242344%_))
                                                   (let ((_%$%e242261242347%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl242260242344%_))))
                                                     (let ((_%$%hd242262242350%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e242261242347%_)))
                                                           (_%$%tl242263242352%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e242261242347%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd242262242350%_))
                                                           (let ((_%$%e242264242355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd242262242350%_))))
                     (let ((_%$%hd242265242358%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e242264242355%_)))
                           (_%$%tl242266242360%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e242264242355%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd242265242358%_))
                           (let ((_%$%e242267242363%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd242265242358%_))))
                             (let ((_%$%hd242268242366%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e242267242363%_)))
                                   (_%$%tl242269242368%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e242267242363%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd242268242366%_))
                                   (let ((_%$%e242270242371%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd242268242366%_))))
                                     (let ((_%$%hd242271242374%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e242270242371%_)))
                                           (_%$%tl242272242376%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e242270242371%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl242272242376%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl242269242368%_))
                                               (let ((_%$%e242273242379%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl242269242368%_))))
                                                 (let ((_%$%hd242274242382%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e242273242379%_)))
                                                       (_%$%tl242275242384%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e242273242379%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl242275242384%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl242266242360%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl242263242352%_))
                       (let ((_%$%e242276242387%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl242263242352%_))))
                         (let ((_%$%hd242277242390%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e242276242387%_)))
                               (_%$%tl242278242392%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e242276242387%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl242278242392%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl242257242336%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl242248242312%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl242245242304%_))
                                           (let ((_%$%e242279242395%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl242245242304%_))))
                                             (let ((_%$%hd242280242398%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e242279242395%_)))
                                                   (_%$%tl242281242400%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e242279242395%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl242281242400%_))
                                                   (let* ((_%$%g242447242509%_
                                                           (lambda (_%$%g242448242506%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g242448242506%_))))
                  (_%$%g242446243448%_
                   (lambda (_%$%g242448242512%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g242448242512%_))
                         (let ((_%$%e242454242514%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g242448242512%_))))
                           (let ((_%$%hd242455242517%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e242454242514%_)))
                                 (_%$%tl242456242519%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e242454242514%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%hd242455242517%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#lambda
                                        _%$%hd242455242517%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%tl242456242519%_))
                                         (let ((_%$%e242457242522%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%tl242456242519%_))))
                                           (let ((_%$%hd242458242525%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e242457242522%_)))
                                                 (_%$%tl242459242527%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e242457242522%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl242459242527%_))
                                                 (let ((_%$%e242460242530%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl242459242527%_))))
                                                   (let ((_%$%hd242461242533%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e242460242530%_)))
                                                         (_%$%tl242462242535%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e242460242530%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%hd242461242533%_))
                                                         (let ((_%$%e242463242538%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd242461242533%_))))
                   (let ((_%$%hd242464242541%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e242463242538%_)))
                         (_%$%tl242465242543%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e242463242538%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%$%hd242464242541%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#call _%$%hd242464242541%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl242465242543%_))
                                 (let ((_%$%e242466242546%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl242465242543%_))))
                                   (let ((_%$%hd242467242549%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e242466242546%_)))
                                         (_%$%tl242468242551%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e242466242546%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd242467242549%_))
                                         (let ((_%$%e242469242554%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd242467242549%_))))
                                           (let ((_%$%hd242470242557%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e242469242554%_)))
                                                 (_%$%tl242471242559%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e242469242554%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%$%hd242470242557%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%$%hd242470242557%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl242471242559%_))
                                                         (let ((_%$%e242472242562%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl242471242559%_))))
                   (let ((_%$%hd242473242565%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e242472242562%_)))
                         (_%$%tl242474242567%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e242472242562%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl242474242567%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl242468242551%_))
                             (let ((_%$%e242475242570%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl242468242551%_))))
                               (let ((_%$%hd242476242573%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e242475242570%_)))
                                     (_%$%tl242477242575%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e242475242570%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd242476242573%_))
                                     (let ((_%$%e242478242578%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd242476242573%_))))
                                       (let ((_%$%hd242479242581%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e242478242578%_)))
                                             (_%$%tl242480242583%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e242478242578%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%hd242479242581%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#ref
                                                    _%$%hd242479242581%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl242480242583%_))
                                                     (let ((_%$%e242481242586%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl242480242583%_))))
                                                       (let ((_%$%hd242482242589%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e242481242586%_)))
                     (_%$%tl242483242591%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e242481242586%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl242483242591%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl242477242575%_))
                         (let ((_%$%e242484242594%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl242477242575%_))))
                           (let ((_%$%hd242485242597%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e242484242594%_)))
                                 (_%$%tl242486242599%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e242484242594%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd242485242597%_))
                                 (let ((_%$%e242487242602%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd242485242597%_))))
                                   (let ((_%$%hd242488242605%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e242487242602%_)))
                                         (_%$%tl242489242607%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e242487242602%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier?
                                            _%$%hd242488242605%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%$%hd242488242605%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl242489242607%_))
                                                 (let ((_%$%e242490242610%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl242489242607%_))))
                                                   (let ((_%$%hd242491242613%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e242490242610%_)))
                                                         (_%$%tl242492242615%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e242490242610%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl242492242615%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair/null? _%$%tl242486242599%_))
                     (if (let ((__tmp244868
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-length _%$%tl242486242599%_))))
                           (declare (not safe))
                           (##fx>= __tmp244868 '1))
                         (let ((_g244869_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-split-splice
                                   _%$%tl242486242599%_
                                   '1))))
                           (begin
                             (let ((_g244870_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g244869_)
                                          (##values-length _g244869_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g244870_ 2)))
                                   (error "Context expects 2 values"
                                          _g244870_)))
                             (let ((_%$%target242493242618%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g244869_ 0)))
                                   (_%$%tl242495242620%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g244869_ 1))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl242495242620%_))
                                   (let ((_%$%e242502242623%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl242495242620%_))))
                                     (let ((_%$%hd242503242626%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e242502242623%_)))
                                           (_%$%tl242504242628%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e242502242623%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl242504242628%_))
                                           (letrec ((_%$%loop242496242631%_
                                                     (lambda (_%$%hd242494242634%_
                                                              _%$%kw-ref242500242636%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd242494242634%_))
                                                           (let ((_%$%e242497242638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd242494242634%_))))
                     (let ((_%$%lp-hd242498242641%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e242497242638%_)))
                           (_%$%lp-tl242499242643%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e242497242638%_))))
                       (_%$%loop242496242631%_
                        _%$%lp-tl242499242643%_
                        (cons _%$%lp-hd242498242641%_
                              _%$%kw-ref242500242636%_))))
                   (let ((_%$%kw-ref242501242646%_
                          (reverse _%$%kw-ref242500242636%_)))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl242462242535%_))
                         (let* ((_%kw-count242703%_
                                 (length (let ((__tmp244871
                                                (lambda (_%$%g242695242698%_
                                                         _%$%g242696242700%_)
                                                  (cons _%$%g242695242698%_
                                                        _%$%g242696242700%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp244871
                                            '()
                                            _%$%kw-ref242501242646%_))))
                                (_%self-index242705%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%kw-count242703%_ '1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#lambda-expr? _%$%hd242274242382%_))
                               (let* ((_%$%g242709242723%_
                                       (lambda (_%$%g242710242720%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g242710242720%_))))
                                      (_%$%g242708242846%_
                                       (lambda (_%$%g242710242726%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%g242710242726%_))
                                             (let ((_%$%e242713242728%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g242710242726%_))))
                                               (let ((_%$%hd242714242731%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e242713242728%_)))
                                                     (_%$%tl242715242733%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e242713242728%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl242715242733%_))
                                                     (let ((_%$%e242716242736%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl242715242733%_))))
                                                       (let ((_%$%hd242717242739%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e242716242736%_)))
                     (_%$%tl242718242741%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e242716242736%_))))
                 (let* ((_%self242762%_
                         (list-ref _%$%hd242717242739%_ _%self-index242705%_))
                        (_%receiver242767%_
                         (let ((_%$e242764%_
                                (gxc#apply-extract-receiver
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '%#begin))
                                       _%$%tl242718242741%_))))
                           (if _%$e242764%_ _%$e242764%_ _%self242762%_))))
                   (for-each
                    (lambda (_%$%g242769242771%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver242767%_
                       _%method-calls240707%_
                       _%slot-refs240708%_
                       _%$%g242769242771%_))
                    _%$%tl242718242741%_)
                   (if (_%no-specializer?240711%_)
                       _%stx240615%_
                       (let* ((_%specializer-id242780%_
                               (let* ((_%id242774%_
                                       (let ((__tmp244872
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%g240626240688%_))))
                                         (declare (not safe))
                                         (make-symbol__1
                                          __tmp244872
                                          '"::specialize")))
                                      (_%specializer-id242777%_
                                       (let ((__tmp244873
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-source
                                                 _%stx240615%_))))
                                         (declare (not safe))
                                         (gx#core-quote-syntax__1
                                          _%id242774%_
                                          __tmp244873))))
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-bind-runtime!__0
                                    _%specializer-id242777%_))
                                 _%specializer-id242777%_))
                              (_%$klass242782%_
                               (let ((__tmp244874
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__klass))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp244874)))
                              (_%$method-table242784%_
                               (let ((__tmp244875
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__method-table))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp244875)))
                              (_%methods242786%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%method-calls240707%_)))
                              (_%$methods242790%_
                               (let ((__tmp244876
                                      (lambda (_%id242788%_)
                                        (let ((__tmp244877
                                               (gensym _%id242788%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp244877)))))
                                 (declare (not safe))
                                 (##map __tmp244876 _%methods242786%_)))
                              (_%_242799%_
                               (let ((__tmp244878
                                      (lambda (_%$%g242791242794%_
                                               _%$%g242792242796%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%method-calls240707%_
                                           _%$%g242791242794%_
                                           _%$%g242792242796%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp244878
                                  _%methods242786%_
                                  _%$methods242790%_)))
                              (_%methods-bind242809%_
                               (let ((__tmp244879
                                      (lambda (_%$%g242801242804%_
                                               _%$%g242802242806%_)
                                        (_%generate-method-bind240617%_
                                         _%$klass242782%_
                                         _%$method-table242784%_
                                         _%$%g242801242804%_
                                         _%$%g242802242806%_))))
                                 (declare (not safe))
                                 (##map __tmp244879
                                        _%methods242786%_
                                        _%$methods242790%_)))
                              (_%slots242811%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%slot-refs240708%_)))
                              (_%$slots242815%_
                               (let ((__tmp244880
                                      (lambda (_%id242813%_)
                                        (let ((__tmp244881
                                               (gensym _%id242813%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp244881)))))
                                 (declare (not safe))
                                 (##map __tmp244880 _%slots242811%_)))
                              (_%_242824%_
                               (let ((__tmp244882
                                      (lambda (_%$%g242816242819%_
                                               _%$%g242817242821%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%slot-refs240708%_
                                           _%$%g242816242819%_
                                           _%$%g242817242821%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp244882
                                  _%slots242811%_
                                  _%$slots242815%_)))
                              (_%slots-bind242833%_
                               (let ((__tmp244883
                                      (lambda (_%$%g242825242828%_
                                               _%$%g242826242830%_)
                                        (_%generate-slot-bind240618%_
                                         _%$klass242782%_
                                         _%$%g242825242828%_
                                         _%$%g242826242830%_))))
                                 (declare (not safe))
                                 (##map __tmp244883
                                        _%slots242811%_
                                        _%$slots242815%_)))
                              (_%specializer-impl242841%_
                               (let* ((_%specializer-body242839%_
                                       (map (lambda (_%$%g242834242836%_)
                                              (gxc#apply-subst-object-refs__%
                                               '#f
                                               _%receiver242767%_
                                               _%$klass242782%_
                                               _%method-calls240707%_
                                               _%slot-refs240708%_
                                               _%$%g242834242836%_))
                                            _%$%tl242718242741%_))
                                      (__tmp244884
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _%$%hd242253242326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#let-values
                                   (cons (cons (cons (cons _%$%hd242271242374%_
                                                           '())
                                                     (cons (let ((__tmp244885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#lambda
                                (cons _%$%hd242717242739%_
                                      _%specializer-body242839%_))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp244885 _%$%hd242274242382%_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%$%hd242277242390%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%$%hd242280242398%_
                                                         '())))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp244884
                                  _%stx240615%_)))
                              (_%specializer-impl242843%_
                               (_%generate-specializer-impl240619%_
                                _%$klass242782%_
                                _%$method-table242784%_
                                _%methods-bind242809%_
                                _%slots-bind242833%_
                                _%specializer-impl242841%_)))
                         (let ((__tmp244887
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g240626240688%_)))
                               (__tmp244886
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%specializer-id242780%_))))
                           (declare (not safe))
                           (gxc#verbose
                            '"generate method specializer "
                            __tmp244887
                            '" => "
                            __tmp244886))
                         (_%generate-specializer-def240620%_
                          _%$%g240626240688%_
                          _%specializer-id242780%_
                          _%specializer-impl242843%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g242709242723%_
                                                      _%$%g242710242726%_))))
                                             (_%$%g242709242723%_
                                              _%$%g242710242726%_)))))
                                 (_%$%g242708242846%_ _%$%hd242274242382%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr?
                                      _%$%hd242274242382%_))
                                   (let* ((_%$%g242850242880%_
                                           (lambda (_%$%g242851242877%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g242851242877%_))))
                                          (_%$%g242849243444%_
                                           (lambda (_%$%g242851242883%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%g242851242883%_))
                                                 (let ((_%$%e242855242885%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g242851242883%_))))
                                                   (let ((_%$%hd242856242888%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e242855242885%_)))
                                                         (_%$%tl242857242890%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e242855242885%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl242857242890%_))
                                                         (let ((_%$%e242858242893%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl242857242890%_))))
                   (let ((_%$%hd242859242896%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e242858242893%_)))
                         (_%$%tl242860242898%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e242858242893%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%hd242859242896%_))
                         (let ((_%$%e242861242901%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%hd242859242896%_))))
                           (let ((_%$%hd242862242904%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e242861242901%_)))
                                 (_%$%tl242863242906%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e242861242901%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd242862242904%_))
                                 (let ((_%$%e242864242909%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd242862242904%_))))
                                   (let ((_%$%hd242865242912%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e242864242909%_)))
                                         (_%$%tl242866242914%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e242864242909%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd242865242912%_))
                                         (let ((_%$%e242867242917%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd242865242912%_))))
                                           (let ((_%$%hd242868242920%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e242867242917%_)))
                                                 (_%$%tl242869242922%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e242867242917%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%$%tl242869242922%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl242866242914%_))
                                                     (let ((_%$%e242870242925%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl242866242914%_))))
                                                       (let ((_%$%hd242871242928%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e242870242925%_)))
                     (_%$%tl242872242930%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e242870242925%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl242872242930%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl242863242906%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl242860242898%_))
                             (let ((_%$%e242873242933%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl242860242898%_))))
                               (let ((_%$%hd242874242936%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e242873242933%_)))
                                     (_%$%tl242875242938%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e242873242933%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl242875242938%_))
                                     (let ()
                                       (let* ((_%$%g242967242981%_
                                               (lambda (_%$%g242968242978%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g242968242978%_))))
                                              (_%$%g242966243028%_
                                               (lambda (_%$%g242968242984%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g242968242984%_))
                                                     (let ((_%$%e242971242986%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g242968242984%_))))
                                                       (let ((_%$%hd242972242989%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e242971242986%_)))
                     (_%$%tl242973242991%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e242971242986%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl242973242991%_))
                     (let ((_%$%e242974242994%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl242973242991%_))))
                       (let ((_%$%hd242975242997%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e242974242994%_)))
                             (_%$%tl242976242999%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e242974242994%_))))
                         (let* ((_%self243016%_
                                 (list-ref
                                  _%$%hd242975242997%_
                                  _%self-index242705%_))
                                (_%receiver243021%_
                                 (let ((_%$e243018%_
                                        (gxc#apply-extract-receiver
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin))
                                               _%$%tl242976242999%_))))
                                   (if _%$e243018%_
                                       _%$e243018%_
                                       _%self243016%_))))
                           (for-each
                            (lambda (_%$%g243023243025%_)
                              (gxc#apply-collect-object-refs__%
                               '#f
                               _%receiver243021%_
                               _%method-calls240707%_
                               _%slot-refs240708%_
                               _%$%g243023243025%_))
                            _%$%tl242976242999%_))))
                     (_%$%g242967242981%_ _%$%g242968242984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g242967242981%_
                                                      _%$%g242968242984%_)))))
                                         (_%$%g242966243028%_
                                          _%$%hd242871242928%_))
                                       (let* ((_%$%g243031243050%_
                                               (lambda (_%$%g243032243047%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g243032243047%_))))
                                              (_%$%g243030243159%_
                                               (lambda (_%$%g243032243053%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g243032243053%_))
                                                     (let ((_%$%e243034243055%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g243032243053%_))))
                                                       (let ((_%$%hd243035243058%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e243034243055%_)))
                     (_%$%tl243036243060%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e243034243055%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair/null? _%$%tl243036243060%_))
                     (let ((_g244888_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-split-splice
                               _%$%tl243036243060%_
                               '0))))
                       (begin
                         (let ((_g244889_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g244888_)
                                      (##values-length _g244888_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g244889_ 2)))
                               (error "Context expects 2 values" _g244889_)))
                         (let ((_%$%target243037243063%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g244888_ 0)))
                               (_%$%tl243039243065%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g244888_ 1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl243039243065%_))
                               (letrec ((_%$%loop243040243068%_
                                         (lambda (_%$%hd243038243071%_
                                                  _%$%clause243044243073%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd243038243071%_))
                                               (let ((_%$%e243041243075%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd243038243071%_))))
                                                 (let ((_%$%lp-hd243042243078%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e243041243075%_)))
                                                       (_%$%lp-tl243043243080%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e243041243075%_))))
                                                   (_%$%loop243040243068%_
                                                    _%$%lp-tl243043243080%_
                                                    (cons _%$%lp-hd243042243078%_
                                                          _%$%clause243044243073%_))))
                                               (let ((_%$%clause243045243083%_
                                                      (reverse _%$%clause243044243073%_)))
                                                 (for-each
                                                  (lambda (_%clause243098%_)
                                                    (let* ((_%$%g243100243111%_
                                                            (lambda (_%$%g243101243108%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g243101243108%_))))
                   (_%$%g243099243149%_
                    (lambda (_%$%g243101243114%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g243101243114%_))
                          (let ((_%$%e243104243116%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g243101243114%_))))
                            (let ((_%$%hd243105243119%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e243104243116%_)))
                                  (_%$%tl243106243121%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e243104243116%_))))
                              (let* ((_%self243137%_
                                      (list-ref
                                       _%$%hd243105243119%_
                                       _%self-index242705%_))
                                     (_%receiver243142%_
                                      (let ((_%$e243139%_
                                             (gxc#apply-extract-receiver
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#begin))
                                                    _%$%tl243106243121%_))))
                                        (if _%$e243139%_
                                            _%$e243139%_
                                            _%self243137%_))))
                                (for-each
                                 (lambda (_%$%g243144243146%_)
                                   (gxc#apply-collect-object-refs__%
                                    '#f
                                    _%receiver243142%_
                                    _%method-calls240707%_
                                    _%slot-refs240708%_
                                    _%$%g243144243146%_))
                                 _%$%tl243106243121%_))))
                          (_%$%g243100243111%_ _%$%g243101243114%_)))))
              (_%$%g243099243149%_ _%clause243098%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp244890
                                                         (lambda (_%$%g243151243154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g243152243156%_)
                   (cons _%$%g243151243154%_ _%$%g243152243156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp244890
                                                     '()
                                                     _%$%clause243045243083%_))))))))
                                 (_%$%loop243040243068%_
                                  _%$%target243037243063%_
                                  '()))
                               (_%$%g243031243050%_ _%$%g243032243053%_)))))
                     (_%$%g243031243050%_ _%$%g243032243053%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g243031243050%_
                                                      _%$%g243032243053%_)))))
                                         (_%$%g243030243159%_
                                          _%$%hd242874242936%_))
                                       (if (_%no-specializer?240711%_)
                                           _%stx240615%_
                                           (let* ((_%specializer-id243168%_
                                                   (let* ((_%id243162%_
                                                           (let ((__tmp244891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g240626240688%_))))
                     (declare (not safe))
                     (make-symbol__1 __tmp244891 '"::specialize")))
                  (_%specializer-id243165%_
                   (let ((__tmp244892
                          (let ()
                            (declare (not safe))
                            (gx#stx-source _%stx240615%_))))
                     (declare (not safe))
                     (gx#core-quote-syntax__1 _%id243162%_ __tmp244892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#core-bind-runtime!__0
                                                        _%specializer-id243165%_))
                                                     _%specializer-id243165%_))
                                                  (_%$klass243170%_
                                                   (let ((__tmp244893
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__klass))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp244893)))
                                                  (_%$method-table243172%_
                                                   (let ((__tmp244894
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__method-table))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp244894)))
                                                  (_%methods243174%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%method-calls240707%_)))
                                                  (_%$methods243178%_
                                                   (let ((__tmp244895
                                                          (lambda (_%id243176%_)
                                                            (let ((__tmp244896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id243176%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp244896)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp244895
                                                            _%methods243174%_)))
                                                  (_%_243187%_
                                                   (let ((__tmp244897
                                                          (lambda (_%$%g243179243182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g243180243184%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%method-calls240707%_
                       _%$%g243179243182%_
                       _%$%g243180243184%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp244897
                                                      _%methods243174%_
                                                      _%$methods243178%_)))
                                                  (_%methods-bind243197%_
                                                   (let ((__tmp244898
                                                          (lambda (_%$%g243189243192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g243190243194%_)
                    (_%generate-method-bind240617%_
                     _%$klass243170%_
                     _%$method-table243172%_
                     _%$%g243189243192%_
                     _%$%g243190243194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp244898
                                                            _%methods243174%_
                                                            _%$methods243178%_)))
                                                  (_%slots243199%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%slot-refs240708%_)))
                                                  (_%$slots243203%_
                                                   (let ((__tmp244899
                                                          (lambda (_%id243201%_)
                                                            (let ((__tmp244900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id243201%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp244900)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp244899
                                                            _%slots243199%_)))
                                                  (_%_243212%_
                                                   (let ((__tmp244901
                                                          (lambda (_%$%g243204243207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g243205243209%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%slot-refs240708%_
                       _%$%g243204243207%_
                       _%$%g243205243209%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp244901
                                                      _%slots243199%_
                                                      _%$slots243203%_)))
                                                  (_%slots-bind243221%_
                                                   (let ((__tmp244902
                                                          (lambda (_%$%g243213243216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g243214243218%_)
                    (_%generate-slot-bind240618%_
                     _%$klass243170%_
                     _%$%g243213243216%_
                     _%$%g243214243218%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp244902
                                                            _%slots243199%_
                                                            _%$slots243203%_)))
                                                  (_%specializer-lambda-expr243299%_
                                                   (let* ((_%$%g243223243237%_
                                                           (lambda (_%$%g243224243234%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g243224243234%_))))
                  (_%$%g243222243296%_
                   (lambda (_%$%g243224243240%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g243224243240%_))
                         (let ((_%$%e243227243242%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g243224243240%_))))
                           (let ((_%$%hd243228243245%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e243227243242%_)))
                                 (_%$%tl243229243247%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e243227243242%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl243229243247%_))
                                 (let ((_%$%e243230243250%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl243229243247%_))))
                                   (let ((_%$%hd243231243253%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e243230243250%_)))
                                         (_%$%tl243232243255%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e243230243250%_))))
                                     (let* ((_%self243282%_
                                             (list-ref
                                              _%$%hd243231243253%_
                                              _%self-index242705%_))
                                            (_%receiver243287%_
                                             (let ((_%$e243284%_
                                                    (gxc#apply-extract-receiver
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%$%tl243232243255%_))))
                                               (if _%$e243284%_
                                                   _%$e243284%_
                                                   _%self243282%_)))
                                            (_%body243293%_
                                             (map (lambda (_%$%g243288243290%_)
                                                    (gxc#apply-subst-object-refs__%
                                                     '#f
                                                     _%receiver243287%_
                                                     _%$klass243170%_
                                                     _%method-calls240707%_
                                                     _%slot-refs240708%_
                                                     _%$%g243288243290%_))
                                                  _%$%tl243232243255%_))
                                            (__tmp244903
                                             (cons '%#lambda
                                                   (cons _%$%hd243231243253%_
                                                         _%body243293%_))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp244903
                                        _%$%hd242871242928%_))))
                                 (_%$%g243223243237%_ _%$%g243224243240%_))))
                         (_%$%g243223243237%_ _%$%g243224243240%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g243222243296%_
                                                      _%$%hd242871242928%_)))
                                                  (_%specializer-case-lambda-expr243437%_
                                                   (let* ((_%$%g243301243320%_
                                                           (lambda (_%$%g243302243317%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g243302243317%_))))
                  (_%$%g243300243434%_
                   (lambda (_%$%g243302243323%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g243302243323%_))
                         (let ((_%$%e243304243325%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g243302243323%_))))
                           (let ((_%$%hd243305243328%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e243304243325%_)))
                                 (_%$%tl243306243330%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e243304243325%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair/null? _%$%tl243306243330%_))
                                 (let ((_g244904_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-split-splice
                                           _%$%tl243306243330%_
                                           '0))))
                                   (begin
                                     (let ((_g244905_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g244904_)
                                                  (##values-length _g244904_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g244905_ 2)))
                                           (error "Context expects 2 values"
                                                  _g244905_)))
                                     (let ((_%$%target243307243333%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g244904_ 0)))
                                           (_%$%tl243309243335%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g244904_ 1))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl243309243335%_))
                                           (letrec ((_%$%loop243310243338%_
                                                     (lambda (_%$%hd243308243341%_
                                                              _%$%clause243314243343%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd243308243341%_))
                                                           (let ((_%$%e243311243345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd243308243341%_))))
                     (let ((_%$%lp-hd243312243348%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e243311243345%_)))
                           (_%$%lp-tl243313243350%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e243311243345%_))))
                       (_%$%loop243310243338%_
                        _%$%lp-tl243313243350%_
                        (cons _%$%lp-hd243312243348%_
                              _%$%clause243314243343%_))))
                   (let* ((_%$%clause243315243353%_
                           (reverse _%$%clause243314243343%_))
                          (_%clauses243432%_
                           (map (lambda (_%clause243369%_)
                                  (let* ((_%$%g243371243382%_
                                          (lambda (_%$%g243372243379%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g243372243379%_))))
                                         (_%$%g243370243422%_
                                          (lambda (_%$%g243372243385%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g243372243385%_))
                                                (let ((_%$%e243375243387%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g243372243385%_))))
                                                  (let ((_%$%hd243376243390%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e243375243387%_)))
                                                        (_%$%tl243377243392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e243375243387%_))))
                                                    (let* ((_%self243408%_
                                                            (list-ref
                                                             _%$%hd243376243390%_
                                                             _%self-index242705%_))
                                                           (_%receiver243413%_
                                                            (let ((_%$e243410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-extract-receiver
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#begin))
                                  _%$%tl243377243392%_))))
                      (if _%$e243410%_ _%$e243410%_ _%self243408%_)))
                   (_%body243419%_
                    (map (lambda (_%$%g243414243416%_)
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%receiver243413%_
                            _%$klass243170%_
                            _%method-calls240707%_
                            _%slot-refs240708%_
                            _%$%g243414243416%_))
                         _%$%tl243377243392%_)))
              (cons _%$%hd243376243390%_ _%body243419%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g243371243382%_
                                                 _%$%g243372243385%_)))))
                                    (_%$%g243370243422%_ _%clause243369%_)))
                                (let ((__tmp244906
                                       (lambda (_%$%g243424243427%_
                                                _%$%g243425243429%_)
                                         (cons _%$%g243424243427%_
                                               _%$%g243425243429%_))))
                                  (declare (not safe))
                                  (foldr__0
                                   __tmp244906
                                   '()
                                   _%$%clause243315243353%_))))
                          (__tmp244907
                           (cons '%#case-lambda _%clauses243432%_)))
                     (declare (not safe))
                     (gxc#xform-wrap-source
                      __tmp244907
                      _%$%hd242874242936%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop243310243338%_
                                              _%$%target243307243333%_
                                              '()))
                                           (_%$%g243301243320%_
                                            _%$%g243302243323%_)))))
                                 (_%$%g243301243320%_ _%$%g243302243323%_))))
                         (_%$%g243301243320%_ _%$%g243302243323%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g243300243434%_
                                                      _%$%hd242874242936%_)))
                                                  (_%specializer-impl243439%_
                                                   (let ((__tmp244908
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$%hd242253242326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons (cons '%#let-values
                                                      (cons (cons (cons (cons _%$%hd242271242374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (let ((__tmp244909
                                             (cons '%#let-values
                                                   (cons (cons (cons (cons _%$%hd242868242920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons _%specializer-lambda-expr243299%_ '()))
                       '())
                 (cons _%specializer-case-lambda-expr243437%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp244909
                                         _%stx240615%_))
                                      '()))
                          '())
                    (cons _%$%hd242277242390%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())
                              (cons _%$%hd242280242398%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp244908
                                                      _%stx240615%_)))
                                                  (_%specializer-impl243441%_
                                                   (_%generate-specializer-impl240619%_
                                                    _%$klass243170%_
                                                    _%$method-table243172%_
                                                    _%methods-bind243197%_
                                                    _%slots-bind243221%_
                                                    _%specializer-impl243439%_)))
                                             (let ((__tmp244911
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g240626240688%_)))
                                                   (__tmp244910
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%specializer-id243168%_))))
                                               (declare (not safe))
                                               (gxc#verbose
                                                '"generate method specializer "
                                                __tmp244911
                                                '" => "
                                                __tmp244910))
                                             (_%generate-specializer-def240620%_
                                              _%$%g240626240688%_
                                              _%specializer-id243168%_
                                              _%specializer-impl243441%_))))
                                     (_%$%g242850242880%_
                                      _%$%g242851242883%_))))
                             (_%$%g242850242880%_ _%$%g242851242883%_))
                         (_%$%g242850242880%_ _%$%g242851242883%_))
                     (_%$%g242850242880%_ _%$%g242851242883%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g242850242880%_
                                                      _%$%g242851242883%_))
                                                 (_%$%g242850242880%_
                                                  _%$%g242851242883%_))))
                                         (_%$%g242850242880%_
                                          _%$%g242851242883%_))))
                                 (_%$%g242850242880%_ _%$%g242851242883%_))))
                         (_%$%g242850242880%_ _%$%g242851242883%_))))
                 (_%$%g242850242880%_ _%$%g242851242883%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g242850242880%_
                                                  _%$%g242851242883%_)))))
                                     (_%$%g242849243444%_
                                      _%$%hd242274242382%_))
                                   _%stx240615%_)))
                         (_%$%g242447242509%_ _%$%g242448242512%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop242496242631%_
                                              _%$%target242493242618%_
                                              '()))
                                           (_%$%g242447242509%_
                                            _%$%g242448242512%_))))
                                   (_%$%g242447242509%_
                                    _%$%g242448242512%_)))))
                         (_%$%g242447242509%_ _%$%g242448242512%_))
                     (_%$%g242447242509%_ _%$%g242448242512%_))
                 (_%$%g242447242509%_ _%$%g242448242512%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g242447242509%_
                                                  _%$%g242448242512%_))
                                             (_%$%g242447242509%_
                                              _%$%g242448242512%_))
                                         (_%$%g242447242509%_
                                          _%$%g242448242512%_))))
                                 (_%$%g242447242509%_ _%$%g242448242512%_))))
                         (_%$%g242447242509%_ _%$%g242448242512%_))
                     (_%$%g242447242509%_ _%$%g242448242512%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g242447242509%_
                                                      _%$%g242448242512%_))
                                                 (_%$%g242447242509%_
                                                  _%$%g242448242512%_))
                                             (_%$%g242447242509%_
                                              _%$%g242448242512%_))))
                                     (_%$%g242447242509%_
                                      _%$%g242448242512%_))))
                             (_%$%g242447242509%_ _%$%g242448242512%_))
                         (_%$%g242447242509%_ _%$%g242448242512%_))))
                 (_%$%g242447242509%_ _%$%g242448242512%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g242447242509%_
                                                      _%$%g242448242512%_))
                                                 (_%$%g242447242509%_
                                                  _%$%g242448242512%_))))
                                         (_%$%g242447242509%_
                                          _%$%g242448242512%_))))
                                 (_%$%g242447242509%_ _%$%g242448242512%_))
                             (_%$%g242447242509%_ _%$%g242448242512%_))
                         (_%$%g242447242509%_ _%$%g242448242512%_))))
                 (_%$%g242447242509%_ _%$%g242448242512%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g242447242509%_
                                                  _%$%g242448242512%_))))
                                         (_%$%g242447242509%_
                                          _%$%g242448242512%_))
                                     (_%$%g242447242509%_ _%$%g242448242512%_))
                                 (_%$%g242447242509%_ _%$%g242448242512%_))))
                         (_%$%g242447242509%_ _%$%g242448242512%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g242446243448%_
                                                      _%$%hd242277242390%_))
                                                   (_%$%g242233242286%_
                                                    _%$%g242234242289%_))))
                                           (_%$%g242233242286%_
                                            _%$%g242234242289%_))
                                       (_%$%g242233242286%_
                                        _%$%g242234242289%_))
                                   (_%$%g242233242286%_ _%$%g242234242289%_))
                               (_%$%g242233242286%_ _%$%g242234242289%_))))
                       (_%$%g242233242286%_ _%$%g242234242289%_))
                   (_%$%g242233242286%_ _%$%g242234242289%_))
               (_%$%g242233242286%_ _%$%g242234242289%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g242233242286%_
                                                _%$%g242234242289%_))
                                           (_%$%g242233242286%_
                                            _%$%g242234242289%_))))
                                   (_%$%g242233242286%_ _%$%g242234242289%_))))
                           (_%$%g242233242286%_ _%$%g242234242289%_))))
                   (_%$%g242233242286%_ _%$%g242234242289%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g242233242286%_
                                                    _%$%g242234242289%_))
                                               (_%$%g242233242286%_
                                                _%$%g242234242289%_))
                                           (_%$%g242233242286%_
                                            _%$%g242234242289%_))))
                                   (_%$%g242233242286%_ _%$%g242234242289%_))))
                           (_%$%g242233242286%_ _%$%g242234242289%_))
                       (_%$%g242233242286%_ _%$%g242234242289%_))))
               (_%$%g242233242286%_ _%$%g242234242289%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g242233242286%_
                                                _%$%g242234242289%_))))
                                       (_%$%g242233242286%_
                                        _%$%g242234242289%_))))
                               (_%$%g242233242286%_ _%$%g242234242289%_))
                           (_%$%g242233242286%_ _%$%g242234242289%_))
                       (_%$%g242233242286%_ _%$%g242234242289%_))))
               (_%$%g242233242286%_ _%$%g242234242289%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g242232243451%_
                                            _%$%g240625240687%_))
                                         _%stx240615%_))))))))
                  (_%__kont243678243679%_ (lambda () _%stx240615%_)))
              (let ((_%__match243707243708%_
                     (lambda (_%$%e240627240655%_
                              _%$%hd240628240658%_
                              _%$%tl240629240660%_
                              _%$%e240630240663%_
                              _%$%hd240631240666%_
                              _%$%tl240632240668%_
                              _%$%e240633240671%_
                              _%$%hd240634240674%_
                              _%$%tl240635240676%_
                              _%$%e240636240679%_
                              _%$%hd240637240682%_
                              _%$%tl240638240684%_)
                       (let ((_%$%g240625240687%_ _%$%hd240637240682%_)
                             (_%$%g240626240688%_ _%$%hd240634240674%_))
                         (if (let ((__tmp244912
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g240626240688%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp244912))
                             (_%__kont243676243677%_
                              _%$%g240625240687%_
                              _%$%g240626240688%_)
                             (_%__kont243678243679%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx243674243675%_))
                    (let ((_%$%e240627240655%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx243674243675%_))))
                      (let ((_%$%tl240629240660%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e240627240655%_)))
                            (_%$%hd240628240658%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e240627240655%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl240629240660%_))
                            (let ((_%$%e240630240663%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl240629240660%_))))
                              (let ((_%$%tl240632240668%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e240630240663%_)))
                                    (_%$%hd240631240666%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e240630240663%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd240631240666%_))
                                    (let ((_%$%e240633240671%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd240631240666%_))))
                                      (let ((_%$%tl240635240676%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e240633240671%_)))
                                            (_%$%hd240634240674%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e240633240671%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl240635240676%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl240632240668%_))
                                                (let ((_%$%e240636240679%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl240632240668%_))))
                                                  (let ((_%$%tl240638240684%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e240636240679%_)))
                                                        (_%$%hd240637240682%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e240636240679%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl240638240684%_))
                                                        (_%__match243707243708%_
                                                         _%$%e240627240655%_
                                                         _%$%hd240628240658%_
                                                         _%$%tl240629240660%_
                                                         _%$%e240630240663%_
                                                         _%$%hd240631240666%_
                                                         _%$%tl240632240668%_
                                                         _%$%e240633240671%_
                                                         _%$%hd240634240674%_
                                                         _%$%tl240635240676%_
                                                         _%$%e240636240679%_
                                                         _%$%hd240637240682%_
                                                         _%$%tl240638240684%_)
                                                        (_%__kont243678243679%_))))
                                                (_%__kont243678243679%_))
                                            (_%__kont243678243679%_))))
                                    (_%__kont243678243679%_))))
                            (_%__kont243678243679%_))))
                    (_%__kont243678243679%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self240467%_ _%stx240468%_)
        (let* ((_%__stx243710243711%_ _%stx240468%_)
               (_%$%g240471240504%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx243710243711%_)))))
          (let ((_%__kont243712243713%_
                 (lambda (_%$%g240473240594%_) _%$%g240473240594%_))
                (_%__kont243714243715%_
                 (lambda (_%$%g240489240533%_ _%$%g240490240534%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self240467%_ _%$%g240489240533%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx243710243711%_))
                (let ((_%$%e240474240554%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx243710243711%_))))
                  (let ((_%$%tl240476240559%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e240474240554%_)))
                        (_%$%hd240475240557%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e240474240554%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl240476240559%_))
                        (let ((_%$%e240477240562%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl240476240559%_))))
                          (let ((_%$%tl240479240567%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e240477240562%_)))
                                (_%$%hd240478240565%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e240477240562%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd240478240565%_))
                                (let ((_%$%e240480240570%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd240478240565%_))))
                                  (let ((_%$%tl240482240575%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e240480240570%_)))
                                        (_%$%hd240481240573%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e240480240570%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd240481240573%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%$%hd240481240573%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl240482240575%_))
                                                (let ((_%$%e240483240578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl240482240575%_))))
                                                  (let ((_%$%tl240485240583%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e240483240578%_)))
                                                        (_%$%hd240484240581%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e240483240578%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl240485240583%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl240479240567%_))
                                                            (let ((_%$%e240486240586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl240479240567%_))))
                      (let ((_%$%tl240488240591%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e240486240586%_)))
                            (_%$%hd240487240589%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e240486240586%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl240488240591%_))
                            (_%__kont243712243713%_ _%$%hd240484240581%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g240471240504%_)))))
                    (let () (declare (not safe)) (_%$%g240471240504%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl240479240567%_))
                    (let ((_%$%e240497240525%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl240479240567%_))))
                      (let ((_%$%tl240499240530%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e240497240525%_)))
                            (_%$%hd240498240528%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e240497240525%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl240499240530%_))
                            (_%__kont243714243715%_
                             _%$%hd240498240528%_
                             _%$%hd240478240565%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g240471240504%_)))))
                    (let () (declare (not safe)) (_%$%g240471240504%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl240479240567%_))
                                                    (let ((_%$%e240497240525%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl240479240567%_))))
                                                      (let ((_%$%tl240499240530%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e240497240525%_)))
                    (_%$%hd240498240528%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e240497240525%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl240499240530%_))
                    (_%__kont243714243715%_
                     _%$%hd240498240528%_
                     _%$%hd240478240565%_)
                    (let () (declare (not safe)) (_%$%g240471240504%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g240471240504%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl240479240567%_))
                                                (let ((_%$%e240497240525%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl240479240567%_))))
                                                  (let ((_%$%tl240499240530%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e240497240525%_)))
                                                        (_%$%hd240498240528%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e240497240525%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl240499240530%_))
                                                        (_%__kont243714243715%_
                                                         _%$%hd240498240528%_
                                                         _%$%hd240478240565%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g240471240504%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g240471240504%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl240479240567%_))
                                            (let ((_%$%e240497240525%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl240479240567%_))))
                                              (let ((_%$%tl240499240530%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e240497240525%_)))
                                                    (_%$%hd240498240528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e240497240525%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl240499240530%_))
                                                    (_%__kont243714243715%_
                                                     _%$%hd240498240528%_
                                                     _%$%hd240478240565%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g240471240504%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g240471240504%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl240479240567%_))
                                    (let ((_%$%e240497240525%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl240479240567%_))))
                                      (let ((_%$%tl240499240530%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e240497240525%_)))
                                            (_%$%hd240498240528%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e240497240525%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl240499240530%_))
                                            (_%__kont243714243715%_
                                             _%$%hd240498240528%_
                                             _%$%hd240478240565%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g240471240504%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g240471240504%_))))))
                        (let () (declare (not safe)) (_%$%g240471240504%_)))))
                (let () (declare (not safe)) (_%$%g240471240504%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self240383%_ _%stx240384%_)
        (let* ((_%$%g240386240407%_
                (lambda (_%$%g240387240404%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g240387240404%_))))
               (_%$%g240385240464%_
                (lambda (_%$%g240387240410%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g240387240410%_))
                      (let ((_%$%e240391240412%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g240387240410%_))))
                        (let ((_%$%hd240392240415%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e240391240412%_)))
                              (_%$%tl240393240417%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e240391240412%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl240393240417%_))
                              (let ((_%$%e240394240420%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl240393240417%_))))
                                (let ((_%$%hd240395240423%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e240394240420%_)))
                                      (_%$%tl240396240425%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e240394240420%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl240396240425%_))
                                      (let ((_%$%e240397240428%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl240396240425%_))))
                                        (let ((_%$%hd240398240431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e240397240428%_)))
                                              (_%$%tl240399240433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e240397240428%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl240399240433%_))
                                              (let ((_%$%e240400240436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl240399240433%_))))
                                                (let ((_%$%hd240401240439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e240400240436%_)))
                                                      (_%$%tl240402240441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e240400240436%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl240402240441%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self240383%_
                                                         _%$%hd240398240431%_))
                                                      (_%$%g240386240407%_
                                                       _%$%g240387240410%_))))
                                              (_%$%g240386240407%_
                                               _%$%g240387240410%_))))
                                      (_%$%g240386240407%_
                                       _%$%g240387240410%_))))
                              (_%$%g240386240407%_ _%$%g240387240410%_))))
                      (_%$%g240386240407%_ _%$%g240387240410%_)))))
          (_%$%g240385240464%_ _%stx240384%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self239348%_ _%stx239349%_)
        (let* ((_%__stx243776243777%_ _%stx239349%_)
               (_%$%g239357239579%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx243776243777%_)))))
          (let ((_%__kont243778243779%_
                 (lambda (_%$%g239359240332%_
                          _%$%g239360240333%_
                          _%$%g239361240334%_
                          _%$%g239362240335%_)
                   (let ((__tmp244914
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self239348%_ 'methods)))
                         (__tmp244913
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g239360240333%_))))
                     (declare (not safe))
                     (hash-put! __tmp244914 __tmp244913 '#t))
                   (for-each
                    (lambda (_%$%g240368240370%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self239348%_ _%$%g240368240370%_)))
                    (let ((__tmp244915
                           (lambda (_%$%g240372240375%_ _%$%g240373240377%_)
                             (cons _%$%g240372240375%_ _%$%g240373240377%_))))
                      (declare (not safe))
                      (foldr__0 __tmp244915 '() _%$%g239359240332%_)))))
                (_%__kont243782243783%_
                 (lambda (_%$%g239402240169%_
                          _%$%g239403240170%_
                          _%$%g239404240171%_
                          _%$%g239405240172%_
                          _%$%g239406240173%_)
                   (let ((__tmp244917
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self239348%_ 'methods)))
                         (__tmp244916
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g239403240170%_))))
                     (declare (not safe))
                     (hash-put! __tmp244917 __tmp244916 '#t))
                   (for-each
                    (lambda (_%$%g240213240215%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self239348%_ _%$%g240213240215%_)))
                    (let ((__tmp244918
                           (lambda (_%$%g240217240220%_ _%$%g240218240222%_)
                             (cons _%$%g240217240220%_ _%$%g240218240222%_))))
                      (declare (not safe))
                      (foldr__0 __tmp244918 '() _%$%g239402240169%_)))))
                (_%__kont243786243787%_
                 (lambda (_%$%g239455240004%_
                          _%$%g239456240005%_
                          _%$%g239457240006%_)
                   (let ((__tmp244920
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self239348%_ 'slots)))
                         (__tmp244919
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g239455240004%_))))
                     (declare (not safe))
                     (hash-put! __tmp244920 __tmp244919 '#t))))
                (_%__kont243788243789%_
                 (lambda (_%$%g239488239881%_
                          _%$%g239489239882%_
                          _%$%g239490239883%_
                          _%$%g239491239884%_)
                   (let ((__tmp244922
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self239348%_ 'slots)))
                         (__tmp244921
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g239489239882%_))))
                     (declare (not safe))
                     (hash-put! __tmp244922 __tmp244921 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self239348%_ _%$%g239488239881%_))))
                (_%__kont243790243791%_
                 (lambda (_%$%g239525239755%_ _%$%g239526239756%_)
                   (let* ((_%accessor239778%_
                           (let ((__tmp244923
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g239526239756%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp244923)))
                          (_%klass239780%_
                           (let ((__tmp244924
                                  (##structure-ref
                                   _%accessor239778%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx239349%_
                              __tmp244924)))
                          (_%slot239782%_
                           (##structure-ref
                            _%accessor239778%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor239778%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass239780%_
                                    _%slot239782%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass239780%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp244926
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self239348%_ 'slots)))
                               (__tmp244925
                                (##structure-ref
                                 _%accessor239778%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp244926 __tmp244925 '#t))))))
                (_%__kont243792243793%_
                 (lambda (_%$%g239548239655%_
                          _%$%g239549239656%_
                          _%$%g239550239657%_)
                   (let* ((_%mutator239684%_
                           (let ((__tmp244927
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g239550239657%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp244927)))
                          (_%klass239686%_
                           (let ((__tmp244928
                                  (##structure-ref
                                   _%mutator239684%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx239349%_
                              __tmp244928)))
                          (_%slot239688%_
                           (##structure-ref
                            _%mutator239684%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator239684%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass239686%_
                                    _%slot239688%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass239686%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp244929
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self239348%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp244929 _%slot239688%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1
                        _%self239348%_
                        _%$%g239548239655%_)))))
                (_%__kont243794243795%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self239348%_ _%stx239349%_)))))
            (let* ((_%__match244275244276%_
                    (lambda (_%$%e239551239591%_
                             _%$%hd239552239594%_
                             _%$%tl239553239596%_
                             _%$%e239554239599%_
                             _%$%hd239555239602%_
                             _%$%tl239556239604%_
                             _%$%e239557239607%_
                             _%$%hd239558239610%_
                             _%$%tl239559239612%_
                             _%$%e239560239615%_
                             _%$%hd239561239618%_
                             _%$%tl239562239620%_
                             _%$%e239563239623%_
                             _%$%hd239564239626%_
                             _%$%tl239565239628%_
                             _%$%e239566239631%_
                             _%$%hd239567239634%_
                             _%$%tl239568239636%_
                             _%$%e239569239639%_
                             _%$%hd239570239642%_
                             _%$%tl239571239644%_
                             _%$%e239572239647%_
                             _%$%hd239573239650%_
                             _%$%tl239574239652%_)
                      (let ((_%$%g239548239655%_ _%$%hd239573239650%_)
                            (_%$%g239549239656%_ _%$%hd239570239642%_)
                            (_%$%g239550239657%_ _%$%hd239561239618%_))
                        (if (and (let ((__tmp244930
                                        (let ((__tmp244931
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g239550239657%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp244931))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp244930
                                    'gxc#!mutator::t))
                                 (let ((__tmp244932
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self239348%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g239549239656%_
                                    __tmp244932)))
                            (_%__kont243792243793%_
                             _%$%g239548239655%_
                             _%$%g239549239656%_
                             _%$%g239550239657%_)
                            (_%__kont243794243795%_)))))
                   (_%__match244273244274%_
                    (lambda (_%$%e239551239591%_
                             _%$%hd239552239594%_
                             _%$%tl239553239596%_
                             _%$%e239554239599%_
                             _%$%hd239555239602%_
                             _%$%tl239556239604%_
                             _%$%e239557239607%_
                             _%$%hd239558239610%_
                             _%$%tl239559239612%_
                             _%$%e239560239615%_
                             _%$%hd239561239618%_
                             _%$%tl239562239620%_
                             _%$%e239563239623%_
                             _%$%hd239564239626%_
                             _%$%tl239565239628%_
                             _%$%e239566239631%_
                             _%$%hd239567239634%_
                             _%$%tl239568239636%_
                             _%$%e239569239639%_
                             _%$%hd239570239642%_
                             _%$%tl239571239644%_
                             _%$%e239572239647%_
                             _%$%hd239573239650%_
                             _%$%tl239574239652%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl239574239652%_))
                          (_%__match244275244276%_
                           _%$%e239551239591%_
                           _%$%hd239552239594%_
                           _%$%tl239553239596%_
                           _%$%e239554239599%_
                           _%$%hd239555239602%_
                           _%$%tl239556239604%_
                           _%$%e239557239607%_
                           _%$%hd239558239610%_
                           _%$%tl239559239612%_
                           _%$%e239560239615%_
                           _%$%hd239561239618%_
                           _%$%tl239562239620%_
                           _%$%e239563239623%_
                           _%$%hd239564239626%_
                           _%$%tl239565239628%_
                           _%$%e239566239631%_
                           _%$%hd239567239634%_
                           _%$%tl239568239636%_
                           _%$%e239569239639%_
                           _%$%hd239570239642%_
                           _%$%tl239571239644%_
                           _%$%e239572239647%_
                           _%$%hd239573239650%_
                           _%$%tl239574239652%_)
                          (_%__kont243794243795%_))))
                   (_%__match244267244268%_
                    (lambda (_%$%e239551239591%_
                             _%$%hd239552239594%_
                             _%$%tl239553239596%_
                             _%$%e239554239599%_
                             _%$%hd239555239602%_
                             _%$%tl239556239604%_
                             _%$%e239557239607%_
                             _%$%hd239558239610%_
                             _%$%tl239559239612%_
                             _%$%e239560239615%_
                             _%$%hd239561239618%_
                             _%$%tl239562239620%_
                             _%$%e239563239623%_
                             _%$%hd239564239626%_
                             _%$%tl239565239628%_
                             _%$%e239566239631%_
                             _%$%hd239567239634%_
                             _%$%tl239568239636%_
                             _%$%e239569239639%_
                             _%$%hd239570239642%_
                             _%$%tl239571239644%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl239565239628%_))
                          (let ((_%$%e239572239647%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl239565239628%_))))
                            (let ((_%$%tl239574239652%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e239572239647%_)))
                                  (_%$%hd239573239650%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e239572239647%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl239574239652%_))
                                  (_%__match244275244276%_
                                   _%$%e239551239591%_
                                   _%$%hd239552239594%_
                                   _%$%tl239553239596%_
                                   _%$%e239554239599%_
                                   _%$%hd239555239602%_
                                   _%$%tl239556239604%_
                                   _%$%e239557239607%_
                                   _%$%hd239558239610%_
                                   _%$%tl239559239612%_
                                   _%$%e239560239615%_
                                   _%$%hd239561239618%_
                                   _%$%tl239562239620%_
                                   _%$%e239563239623%_
                                   _%$%hd239564239626%_
                                   _%$%tl239565239628%_
                                   _%$%e239566239631%_
                                   _%$%hd239567239634%_
                                   _%$%tl239568239636%_
                                   _%$%e239569239639%_
                                   _%$%hd239570239642%_
                                   _%$%tl239571239644%_
                                   _%$%e239572239647%_
                                   _%$%hd239573239650%_
                                   _%$%tl239574239652%_)
                                  (_%__kont243794243795%_))))
                          (_%__kont243794243795%_))))
                   (_%__match244213244214%_
                    (lambda (_%$%e239527239699%_
                             _%$%hd239528239702%_
                             _%$%tl239529239704%_
                             _%$%e239530239707%_
                             _%$%hd239531239710%_
                             _%$%tl239532239712%_
                             _%$%e239533239715%_
                             _%$%hd239534239718%_
                             _%$%tl239535239720%_
                             _%$%e239536239723%_
                             _%$%hd239537239726%_
                             _%$%tl239538239728%_
                             _%$%e239539239731%_
                             _%$%hd239540239734%_
                             _%$%tl239541239736%_
                             _%$%e239542239739%_
                             _%$%hd239543239742%_
                             _%$%tl239544239744%_
                             _%$%e239545239747%_
                             _%$%hd239546239750%_
                             _%$%tl239547239752%_)
                      (let ((_%$%g239525239755%_ _%$%hd239546239750%_)
                            (_%$%g239526239756%_ _%$%hd239537239726%_))
                        (if (and (let ((__tmp244933
                                        (let ((__tmp244934
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g239526239756%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp244934))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp244933
                                    'gxc#!accessor::t))
                                 (let ((__tmp244935
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self239348%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g239525239755%_
                                    __tmp244935)))
                            (_%__kont243790243791%_
                             _%$%g239525239755%_
                             _%$%g239526239756%_)
                            (_%__kont243794243795%_)))))
                   (_%__match244211244212%_
                    (lambda (_%$%e239527239699%_
                             _%$%hd239528239702%_
                             _%$%tl239529239704%_
                             _%$%e239530239707%_
                             _%$%hd239531239710%_
                             _%$%tl239532239712%_
                             _%$%e239533239715%_
                             _%$%hd239534239718%_
                             _%$%tl239535239720%_
                             _%$%e239536239723%_
                             _%$%hd239537239726%_
                             _%$%tl239538239728%_
                             _%$%e239539239731%_
                             _%$%hd239540239734%_
                             _%$%tl239541239736%_
                             _%$%e239542239739%_
                             _%$%hd239543239742%_
                             _%$%tl239544239744%_
                             _%$%e239545239747%_
                             _%$%hd239546239750%_
                             _%$%tl239547239752%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl239541239736%_))
                          (_%__match244213244214%_
                           _%$%e239527239699%_
                           _%$%hd239528239702%_
                           _%$%tl239529239704%_
                           _%$%e239530239707%_
                           _%$%hd239531239710%_
                           _%$%tl239532239712%_
                           _%$%e239533239715%_
                           _%$%hd239534239718%_
                           _%$%tl239535239720%_
                           _%$%e239536239723%_
                           _%$%hd239537239726%_
                           _%$%tl239538239728%_
                           _%$%e239539239731%_
                           _%$%hd239540239734%_
                           _%$%tl239541239736%_
                           _%$%e239542239739%_
                           _%$%hd239543239742%_
                           _%$%tl239544239744%_
                           _%$%e239545239747%_
                           _%$%hd239546239750%_
                           _%$%tl239547239752%_)
                          (_%__match244267244268%_
                           _%$%e239527239699%_
                           _%$%hd239528239702%_
                           _%$%tl239529239704%_
                           _%$%e239530239707%_
                           _%$%hd239531239710%_
                           _%$%tl239532239712%_
                           _%$%e239533239715%_
                           _%$%hd239534239718%_
                           _%$%tl239535239720%_
                           _%$%e239536239723%_
                           _%$%hd239537239726%_
                           _%$%tl239538239728%_
                           _%$%e239539239731%_
                           _%$%hd239540239734%_
                           _%$%tl239541239736%_
                           _%$%e239542239739%_
                           _%$%hd239543239742%_
                           _%$%tl239544239744%_
                           _%$%e239545239747%_
                           _%$%hd239546239750%_
                           _%$%tl239547239752%_))))
                   (_%__match244157244158%_
                    (lambda (_%$%e239492239793%_
                             _%$%hd239493239796%_
                             _%$%tl239494239798%_
                             _%$%e239495239801%_
                             _%$%hd239496239804%_
                             _%$%tl239497239806%_
                             _%$%e239498239809%_
                             _%$%hd239499239812%_
                             _%$%tl239500239814%_
                             _%$%e239501239817%_
                             _%$%hd239502239820%_
                             _%$%tl239503239822%_
                             _%$%e239504239825%_
                             _%$%hd239505239828%_
                             _%$%tl239506239830%_
                             _%$%e239507239833%_
                             _%$%hd239508239836%_
                             _%$%tl239509239838%_
                             _%$%e239510239841%_
                             _%$%hd239511239844%_
                             _%$%tl239512239846%_
                             _%$%e239513239849%_
                             _%$%hd239514239852%_
                             _%$%tl239515239854%_
                             _%$%e239516239857%_
                             _%$%hd239517239860%_
                             _%$%tl239518239862%_
                             _%$%e239519239865%_
                             _%$%hd239520239868%_
                             _%$%tl239521239870%_
                             _%$%e239522239873%_
                             _%$%hd239523239876%_
                             _%$%tl239524239878%_)
                      (let ((_%$%g239488239881%_ _%$%hd239523239876%_)
                            (_%$%g239489239882%_ _%$%hd239520239868%_)
                            (_%$%g239490239883%_ _%$%hd239511239844%_)
                            (_%$%g239491239884%_ _%$%hd239502239820%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g239491239884%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g239491239884%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp244936
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self239348%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g239490239883%_
                                    __tmp244936)))
                            (_%__kont243788243789%_
                             _%$%g239488239881%_
                             _%$%g239489239882%_
                             _%$%g239490239883%_
                             _%$%g239491239884%_)
                            (_%__kont243794243795%_)))))
                   (_%__match244149244150%_
                    (lambda (_%$%e239492239793%_
                             _%$%hd239493239796%_
                             _%$%tl239494239798%_
                             _%$%e239495239801%_
                             _%$%hd239496239804%_
                             _%$%tl239497239806%_
                             _%$%e239498239809%_
                             _%$%hd239499239812%_
                             _%$%tl239500239814%_
                             _%$%e239501239817%_
                             _%$%hd239502239820%_
                             _%$%tl239503239822%_
                             _%$%e239504239825%_
                             _%$%hd239505239828%_
                             _%$%tl239506239830%_
                             _%$%e239507239833%_
                             _%$%hd239508239836%_
                             _%$%tl239509239838%_
                             _%$%e239510239841%_
                             _%$%hd239511239844%_
                             _%$%tl239512239846%_
                             _%$%e239513239849%_
                             _%$%hd239514239852%_
                             _%$%tl239515239854%_
                             _%$%e239516239857%_
                             _%$%hd239517239860%_
                             _%$%tl239518239862%_
                             _%$%e239519239865%_
                             _%$%hd239520239868%_
                             _%$%tl239521239870%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl239515239854%_))
                          (let ((_%$%e239522239873%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl239515239854%_))))
                            (let ((_%$%tl239524239878%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e239522239873%_)))
                                  (_%$%hd239523239876%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e239522239873%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl239524239878%_))
                                  (_%__match244157244158%_
                                   _%$%e239492239793%_
                                   _%$%hd239493239796%_
                                   _%$%tl239494239798%_
                                   _%$%e239495239801%_
                                   _%$%hd239496239804%_
                                   _%$%tl239497239806%_
                                   _%$%e239498239809%_
                                   _%$%hd239499239812%_
                                   _%$%tl239500239814%_
                                   _%$%e239501239817%_
                                   _%$%hd239502239820%_
                                   _%$%tl239503239822%_
                                   _%$%e239504239825%_
                                   _%$%hd239505239828%_
                                   _%$%tl239506239830%_
                                   _%$%e239507239833%_
                                   _%$%hd239508239836%_
                                   _%$%tl239509239838%_
                                   _%$%e239510239841%_
                                   _%$%hd239511239844%_
                                   _%$%tl239512239846%_
                                   _%$%e239513239849%_
                                   _%$%hd239514239852%_
                                   _%$%tl239515239854%_
                                   _%$%e239516239857%_
                                   _%$%hd239517239860%_
                                   _%$%tl239518239862%_
                                   _%$%e239519239865%_
                                   _%$%hd239520239868%_
                                   _%$%tl239521239870%_
                                   _%$%e239522239873%_
                                   _%$%hd239523239876%_
                                   _%$%tl239524239878%_)
                                  (_%__kont243794243795%_))))
                          (_%__match244273244274%_
                           _%$%e239492239793%_
                           _%$%hd239493239796%_
                           _%$%tl239494239798%_
                           _%$%e239495239801%_
                           _%$%hd239496239804%_
                           _%$%tl239497239806%_
                           _%$%e239498239809%_
                           _%$%hd239499239812%_
                           _%$%tl239500239814%_
                           _%$%e239501239817%_
                           _%$%hd239502239820%_
                           _%$%tl239503239822%_
                           _%$%e239504239825%_
                           _%$%hd239505239828%_
                           _%$%tl239506239830%_
                           _%$%e239507239833%_
                           _%$%hd239508239836%_
                           _%$%tl239509239838%_
                           _%$%e239510239841%_
                           _%$%hd239511239844%_
                           _%$%tl239512239846%_
                           _%$%e239513239849%_
                           _%$%hd239514239852%_
                           _%$%tl239515239854%_))))
                   (_%__match244071244072%_
                    (lambda (_%$%e239458239924%_
                             _%$%hd239459239927%_
                             _%$%tl239460239929%_
                             _%$%e239461239932%_
                             _%$%hd239462239935%_
                             _%$%tl239463239937%_
                             _%$%e239464239940%_
                             _%$%hd239465239943%_
                             _%$%tl239466239945%_
                             _%$%e239467239948%_
                             _%$%hd239468239951%_
                             _%$%tl239469239953%_
                             _%$%e239470239956%_
                             _%$%hd239471239959%_
                             _%$%tl239472239961%_
                             _%$%e239473239964%_
                             _%$%hd239474239967%_
                             _%$%tl239475239969%_
                             _%$%e239476239972%_
                             _%$%hd239477239975%_
                             _%$%tl239478239977%_
                             _%$%e239479239980%_
                             _%$%hd239480239983%_
                             _%$%tl239481239985%_
                             _%$%e239482239988%_
                             _%$%hd239483239991%_
                             _%$%tl239484239993%_
                             _%$%e239485239996%_
                             _%$%hd239486239999%_
                             _%$%tl239487240001%_)
                      (let ((_%$%g239455240004%_ _%$%hd239486239999%_)
                            (_%$%g239456240005%_ _%$%hd239477239975%_)
                            (_%$%g239457240006%_ _%$%hd239468239951%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g239457240006%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g239457240006%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp244937
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self239348%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g239456240005%_
                                    __tmp244937)))
                            (_%__kont243786243787%_
                             _%$%g239455240004%_
                             _%$%g239456240005%_
                             _%$%g239457240006%_)
                            (_%__match244275244276%_
                             _%$%e239458239924%_
                             _%$%hd239459239927%_
                             _%$%tl239460239929%_
                             _%$%e239461239932%_
                             _%$%hd239462239935%_
                             _%$%tl239463239937%_
                             _%$%e239464239940%_
                             _%$%hd239465239943%_
                             _%$%tl239466239945%_
                             _%$%e239467239948%_
                             _%$%hd239468239951%_
                             _%$%tl239469239953%_
                             _%$%e239470239956%_
                             _%$%hd239471239959%_
                             _%$%tl239472239961%_
                             _%$%e239473239964%_
                             _%$%hd239474239967%_
                             _%$%tl239475239969%_
                             _%$%e239476239972%_
                             _%$%hd239477239975%_
                             _%$%tl239478239977%_
                             _%$%e239479239980%_
                             _%$%hd239480239983%_
                             _%$%tl239481239985%_)))))
                   (_%__match244069244070%_
                    (lambda (_%$%e239458239924%_
                             _%$%hd239459239927%_
                             _%$%tl239460239929%_
                             _%$%e239461239932%_
                             _%$%hd239462239935%_
                             _%$%tl239463239937%_
                             _%$%e239464239940%_
                             _%$%hd239465239943%_
                             _%$%tl239466239945%_
                             _%$%e239467239948%_
                             _%$%hd239468239951%_
                             _%$%tl239469239953%_
                             _%$%e239470239956%_
                             _%$%hd239471239959%_
                             _%$%tl239472239961%_
                             _%$%e239473239964%_
                             _%$%hd239474239967%_
                             _%$%tl239475239969%_
                             _%$%e239476239972%_
                             _%$%hd239477239975%_
                             _%$%tl239478239977%_
                             _%$%e239479239980%_
                             _%$%hd239480239983%_
                             _%$%tl239481239985%_
                             _%$%e239482239988%_
                             _%$%hd239483239991%_
                             _%$%tl239484239993%_
                             _%$%e239485239996%_
                             _%$%hd239486239999%_
                             _%$%tl239487240001%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl239481239985%_))
                          (_%__match244071244072%_
                           _%$%e239458239924%_
                           _%$%hd239459239927%_
                           _%$%tl239460239929%_
                           _%$%e239461239932%_
                           _%$%hd239462239935%_
                           _%$%tl239463239937%_
                           _%$%e239464239940%_
                           _%$%hd239465239943%_
                           _%$%tl239466239945%_
                           _%$%e239467239948%_
                           _%$%hd239468239951%_
                           _%$%tl239469239953%_
                           _%$%e239470239956%_
                           _%$%hd239471239959%_
                           _%$%tl239472239961%_
                           _%$%e239473239964%_
                           _%$%hd239474239967%_
                           _%$%tl239475239969%_
                           _%$%e239476239972%_
                           _%$%hd239477239975%_
                           _%$%tl239478239977%_
                           _%$%e239479239980%_
                           _%$%hd239480239983%_
                           _%$%tl239481239985%_
                           _%$%e239482239988%_
                           _%$%hd239483239991%_
                           _%$%tl239484239993%_
                           _%$%e239485239996%_
                           _%$%hd239486239999%_
                           _%$%tl239487240001%_)
                          (_%__match244149244150%_
                           _%$%e239458239924%_
                           _%$%hd239459239927%_
                           _%$%tl239460239929%_
                           _%$%e239461239932%_
                           _%$%hd239462239935%_
                           _%$%tl239463239937%_
                           _%$%e239464239940%_
                           _%$%hd239465239943%_
                           _%$%tl239466239945%_
                           _%$%e239467239948%_
                           _%$%hd239468239951%_
                           _%$%tl239469239953%_
                           _%$%e239470239956%_
                           _%$%hd239471239959%_
                           _%$%tl239472239961%_
                           _%$%e239473239964%_
                           _%$%hd239474239967%_
                           _%$%tl239475239969%_
                           _%$%e239476239972%_
                           _%$%hd239477239975%_
                           _%$%tl239478239977%_
                           _%$%e239479239980%_
                           _%$%hd239480239983%_
                           _%$%tl239481239985%_
                           _%$%e239482239988%_
                           _%$%hd239483239991%_
                           _%$%tl239484239993%_
                           _%$%e239485239996%_
                           _%$%hd239486239999%_
                           _%$%tl239487240001%_))))
                   (_%__match244059244060%_
                    (lambda (_%$%e239458239924%_
                             _%$%hd239459239927%_
                             _%$%tl239460239929%_
                             _%$%e239461239932%_
                             _%$%hd239462239935%_
                             _%$%tl239463239937%_
                             _%$%e239464239940%_
                             _%$%hd239465239943%_
                             _%$%tl239466239945%_
                             _%$%e239467239948%_
                             _%$%hd239468239951%_
                             _%$%tl239469239953%_
                             _%$%e239470239956%_
                             _%$%hd239471239959%_
                             _%$%tl239472239961%_
                             _%$%e239473239964%_
                             _%$%hd239474239967%_
                             _%$%tl239475239969%_
                             _%$%e239476239972%_
                             _%$%hd239477239975%_
                             _%$%tl239478239977%_
                             _%$%e239479239980%_
                             _%$%hd239480239983%_
                             _%$%tl239481239985%_
                             _%$%e239482239988%_
                             _%$%hd239483239991%_
                             _%$%tl239484239993%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%$%hd239483239991%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl239484239993%_))
                              (let ((_%$%e239485239996%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl239484239993%_))))
                                (let ((_%$%tl239487240001%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e239485239996%_)))
                                      (_%$%hd239486239999%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e239485239996%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl239487240001%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl239481239985%_))
                                          (_%__match244071244072%_
                                           _%$%e239458239924%_
                                           _%$%hd239459239927%_
                                           _%$%tl239460239929%_
                                           _%$%e239461239932%_
                                           _%$%hd239462239935%_
                                           _%$%tl239463239937%_
                                           _%$%e239464239940%_
                                           _%$%hd239465239943%_
                                           _%$%tl239466239945%_
                                           _%$%e239467239948%_
                                           _%$%hd239468239951%_
                                           _%$%tl239469239953%_
                                           _%$%e239470239956%_
                                           _%$%hd239471239959%_
                                           _%$%tl239472239961%_
                                           _%$%e239473239964%_
                                           _%$%hd239474239967%_
                                           _%$%tl239475239969%_
                                           _%$%e239476239972%_
                                           _%$%hd239477239975%_
                                           _%$%tl239478239977%_
                                           _%$%e239479239980%_
                                           _%$%hd239480239983%_
                                           _%$%tl239481239985%_
                                           _%$%e239482239988%_
                                           _%$%hd239483239991%_
                                           _%$%tl239484239993%_
                                           _%$%e239485239996%_
                                           _%$%hd239486239999%_
                                           _%$%tl239487240001%_)
                                          (_%__match244149244150%_
                                           _%$%e239458239924%_
                                           _%$%hd239459239927%_
                                           _%$%tl239460239929%_
                                           _%$%e239461239932%_
                                           _%$%hd239462239935%_
                                           _%$%tl239463239937%_
                                           _%$%e239464239940%_
                                           _%$%hd239465239943%_
                                           _%$%tl239466239945%_
                                           _%$%e239467239948%_
                                           _%$%hd239468239951%_
                                           _%$%tl239469239953%_
                                           _%$%e239470239956%_
                                           _%$%hd239471239959%_
                                           _%$%tl239472239961%_
                                           _%$%e239473239964%_
                                           _%$%hd239474239967%_
                                           _%$%tl239475239969%_
                                           _%$%e239476239972%_
                                           _%$%hd239477239975%_
                                           _%$%tl239478239977%_
                                           _%$%e239479239980%_
                                           _%$%hd239480239983%_
                                           _%$%tl239481239985%_
                                           _%$%e239482239988%_
                                           _%$%hd239483239991%_
                                           _%$%tl239484239993%_
                                           _%$%e239485239996%_
                                           _%$%hd239486239999%_
                                           _%$%tl239487240001%_))
                                      (_%__match244273244274%_
                                       _%$%e239458239924%_
                                       _%$%hd239459239927%_
                                       _%$%tl239460239929%_
                                       _%$%e239461239932%_
                                       _%$%hd239462239935%_
                                       _%$%tl239463239937%_
                                       _%$%e239464239940%_
                                       _%$%hd239465239943%_
                                       _%$%tl239466239945%_
                                       _%$%e239467239948%_
                                       _%$%hd239468239951%_
                                       _%$%tl239469239953%_
                                       _%$%e239470239956%_
                                       _%$%hd239471239959%_
                                       _%$%tl239472239961%_
                                       _%$%e239473239964%_
                                       _%$%hd239474239967%_
                                       _%$%tl239475239969%_
                                       _%$%e239476239972%_
                                       _%$%hd239477239975%_
                                       _%$%tl239478239977%_
                                       _%$%e239479239980%_
                                       _%$%hd239480239983%_
                                       _%$%tl239481239985%_))))
                              (_%__match244273244274%_
                               _%$%e239458239924%_
                               _%$%hd239459239927%_
                               _%$%tl239460239929%_
                               _%$%e239461239932%_
                               _%$%hd239462239935%_
                               _%$%tl239463239937%_
                               _%$%e239464239940%_
                               _%$%hd239465239943%_
                               _%$%tl239466239945%_
                               _%$%e239467239948%_
                               _%$%hd239468239951%_
                               _%$%tl239469239953%_
                               _%$%e239470239956%_
                               _%$%hd239471239959%_
                               _%$%tl239472239961%_
                               _%$%e239473239964%_
                               _%$%hd239474239967%_
                               _%$%tl239475239969%_
                               _%$%e239476239972%_
                               _%$%hd239477239975%_
                               _%$%tl239478239977%_
                               _%$%e239479239980%_
                               _%$%hd239480239983%_
                               _%$%tl239481239985%_))
                          (_%__match244273244274%_
                           _%$%e239458239924%_
                           _%$%hd239459239927%_
                           _%$%tl239460239929%_
                           _%$%e239461239932%_
                           _%$%hd239462239935%_
                           _%$%tl239463239937%_
                           _%$%e239464239940%_
                           _%$%hd239465239943%_
                           _%$%tl239466239945%_
                           _%$%e239467239948%_
                           _%$%hd239468239951%_
                           _%$%tl239469239953%_
                           _%$%e239470239956%_
                           _%$%hd239471239959%_
                           _%$%tl239472239961%_
                           _%$%e239473239964%_
                           _%$%hd239474239967%_
                           _%$%tl239475239969%_
                           _%$%e239476239972%_
                           _%$%hd239477239975%_
                           _%$%tl239478239977%_
                           _%$%e239479239980%_
                           _%$%hd239480239983%_
                           _%$%tl239481239985%_))))
                   (_%__match243991243992%_
                    (lambda (_%$%e239407240043%_
                             _%$%hd239408240046%_
                             _%$%tl239409240048%_
                             _%$%e239410240051%_
                             _%$%hd239411240054%_
                             _%$%tl239412240056%_
                             _%$%e239413240059%_
                             _%$%hd239414240062%_
                             _%$%tl239415240064%_
                             _%$%e239416240067%_
                             _%$%hd239417240070%_
                             _%$%tl239418240072%_
                             _%$%e239419240075%_
                             _%$%hd239420240078%_
                             _%$%tl239421240080%_
                             _%$%e239422240083%_
                             _%$%hd239423240086%_
                             _%$%tl239424240088%_
                             _%$%e239425240091%_
                             _%$%hd239426240094%_
                             _%$%tl239427240096%_
                             _%$%e239428240099%_
                             _%$%hd239429240102%_
                             _%$%tl239430240104%_
                             _%$%e239431240107%_
                             _%$%hd239432240110%_
                             _%$%tl239433240112%_
                             _%$%e239434240115%_
                             _%$%hd239435240118%_
                             _%$%tl239436240120%_
                             _%$%e239437240123%_
                             _%$%hd239438240126%_
                             _%$%tl239439240128%_
                             _%$%e239440240131%_
                             _%$%hd239441240134%_
                             _%$%tl239442240136%_
                             _%$%e239443240139%_
                             _%$%hd239444240142%_
                             _%$%tl239445240144%_
                             _%__splice243784243785%_
                             _%$%target239446240147%_
                             _%$%tl239448240149%_)
                      (letrec ((_%$%loop239449240152%_
                                (lambda (_%$%hd239447240155%_
                                         _%$%args239453240157%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd239447240155%_))
                                      (let ((_%$%e239450240159%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd239447240155%_))))
                                        (let ((_%$%lp-tl239452240164%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e239450240159%_)))
                                              (_%$%lp-hd239451240162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e239450240159%_))))
                                          (_%$%loop239449240152%_
                                           _%$%lp-tl239452240164%_
                                           (cons _%$%lp-hd239451240162%_
                                                 _%$%args239453240157%_))))
                                      (let ((_%$%args239454240167%_
                                             (reverse _%$%args239453240157%_)))
                                        (let ((_%$%g239402240169%_
                                               _%$%args239454240167%_)
                                              (_%$%g239403240170%_
                                               _%$%hd239444240142%_)
                                              (_%$%g239404240171%_
                                               _%$%hd239435240118%_)
                                              (_%$%g239405240172%_
                                               _%$%hd239426240094%_)
                                              (_%$%g239406240173%_
                                               _%$%hd239417240070%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g239406240173%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g239405240172%_
                                                      'call-method))
                                                   (let ((__tmp244938
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self239348%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g239404240171%_
                                                      __tmp244938)))
                                              (_%__kont243782243783%_
                                               _%$%g239402240169%_
                                               _%$%g239403240170%_
                                               _%$%g239404240171%_
                                               _%$%g239405240172%_
                                               _%$%g239406240173%_)
                                              (_%__kont243794243795%_))))))))
                        (_%$%loop239449240152%_
                         _%$%target239446240147%_
                         '()))))
                   (_%__match243949243950%_
                    (lambda (_%$%e239407240043%_
                             _%$%hd239408240046%_
                             _%$%tl239409240048%_
                             _%$%e239410240051%_
                             _%$%hd239411240054%_
                             _%$%tl239412240056%_
                             _%$%e239413240059%_
                             _%$%hd239414240062%_
                             _%$%tl239415240064%_
                             _%$%e239416240067%_
                             _%$%hd239417240070%_
                             _%$%tl239418240072%_
                             _%$%e239419240075%_
                             _%$%hd239420240078%_
                             _%$%tl239421240080%_
                             _%$%e239422240083%_
                             _%$%hd239423240086%_
                             _%$%tl239424240088%_
                             _%$%e239425240091%_
                             _%$%hd239426240094%_
                             _%$%tl239427240096%_
                             _%$%e239428240099%_
                             _%$%hd239429240102%_
                             _%$%tl239430240104%_
                             _%$%e239431240107%_
                             _%$%hd239432240110%_
                             _%$%tl239433240112%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%$%hd239432240110%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl239433240112%_))
                              (let ((_%$%e239434240115%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl239433240112%_))))
                                (let ((_%$%tl239436240120%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e239434240115%_)))
                                      (_%$%hd239435240118%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e239434240115%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl239436240120%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl239430240104%_))
                                          (let ((_%$%e239437240123%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl239430240104%_))))
                                            (let ((_%$%tl239439240128%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e239437240123%_)))
                                                  (_%$%hd239438240126%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e239437240123%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd239438240126%_))
                                                  (let ((_%$%e239440240131%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd239438240126%_))))
                                                    (let ((_%$%tl239442240136%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e239440240131%_)))
                                                          (_%$%hd239441240134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e239440240131%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd239441240134%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%$%hd239441240134%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl239442240136%_))
                          (let ((_%$%e239443240139%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl239442240136%_))))
                            (let ((_%$%tl239445240144%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e239443240139%_)))
                                  (_%$%hd239444240142%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e239443240139%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl239445240144%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl239439240128%_))
                                      (let ((_%__splice243784243785%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl239439240128%_
                                                '0))))
                                        (let ((_%$%tl239448240149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice243784243785%_
                                                  '1)))
                                              (_%$%target239446240147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice243784243785%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl239448240149%_))
                                              (_%__match243991243992%_
                                               _%$%e239407240043%_
                                               _%$%hd239408240046%_
                                               _%$%tl239409240048%_
                                               _%$%e239410240051%_
                                               _%$%hd239411240054%_
                                               _%$%tl239412240056%_
                                               _%$%e239413240059%_
                                               _%$%hd239414240062%_
                                               _%$%tl239415240064%_
                                               _%$%e239416240067%_
                                               _%$%hd239417240070%_
                                               _%$%tl239418240072%_
                                               _%$%e239419240075%_
                                               _%$%hd239420240078%_
                                               _%$%tl239421240080%_
                                               _%$%e239422240083%_
                                               _%$%hd239423240086%_
                                               _%$%tl239424240088%_
                                               _%$%e239425240091%_
                                               _%$%hd239426240094%_
                                               _%$%tl239427240096%_
                                               _%$%e239428240099%_
                                               _%$%hd239429240102%_
                                               _%$%tl239430240104%_
                                               _%$%e239431240107%_
                                               _%$%hd239432240110%_
                                               _%$%tl239433240112%_
                                               _%$%e239434240115%_
                                               _%$%hd239435240118%_
                                               _%$%tl239436240120%_
                                               _%$%e239437240123%_
                                               _%$%hd239438240126%_
                                               _%$%tl239439240128%_
                                               _%$%e239440240131%_
                                               _%$%hd239441240134%_
                                               _%$%tl239442240136%_
                                               _%$%e239443240139%_
                                               _%$%hd239444240142%_
                                               _%$%tl239445240144%_
                                               _%__splice243784243785%_
                                               _%$%target239446240147%_
                                               _%$%tl239448240149%_)
                                              (_%__kont243794243795%_))))
                                      (_%__kont243794243795%_))
                                  (_%__kont243794243795%_))))
                          (_%__kont243794243795%_))
                      (_%__kont243794243795%_))
                  (_%__kont243794243795%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont243794243795%_))))
                                          (_%__match244273244274%_
                                           _%$%e239407240043%_
                                           _%$%hd239408240046%_
                                           _%$%tl239409240048%_
                                           _%$%e239410240051%_
                                           _%$%hd239411240054%_
                                           _%$%tl239412240056%_
                                           _%$%e239413240059%_
                                           _%$%hd239414240062%_
                                           _%$%tl239415240064%_
                                           _%$%e239416240067%_
                                           _%$%hd239417240070%_
                                           _%$%tl239418240072%_
                                           _%$%e239419240075%_
                                           _%$%hd239420240078%_
                                           _%$%tl239421240080%_
                                           _%$%e239422240083%_
                                           _%$%hd239423240086%_
                                           _%$%tl239424240088%_
                                           _%$%e239425240091%_
                                           _%$%hd239426240094%_
                                           _%$%tl239427240096%_
                                           _%$%e239428240099%_
                                           _%$%hd239429240102%_
                                           _%$%tl239430240104%_))
                                      (_%__match244273244274%_
                                       _%$%e239407240043%_
                                       _%$%hd239408240046%_
                                       _%$%tl239409240048%_
                                       _%$%e239410240051%_
                                       _%$%hd239411240054%_
                                       _%$%tl239412240056%_
                                       _%$%e239413240059%_
                                       _%$%hd239414240062%_
                                       _%$%tl239415240064%_
                                       _%$%e239416240067%_
                                       _%$%hd239417240070%_
                                       _%$%tl239418240072%_
                                       _%$%e239419240075%_
                                       _%$%hd239420240078%_
                                       _%$%tl239421240080%_
                                       _%$%e239422240083%_
                                       _%$%hd239423240086%_
                                       _%$%tl239424240088%_
                                       _%$%e239425240091%_
                                       _%$%hd239426240094%_
                                       _%$%tl239427240096%_
                                       _%$%e239428240099%_
                                       _%$%hd239429240102%_
                                       _%$%tl239430240104%_))))
                              (_%__match244273244274%_
                               _%$%e239407240043%_
                               _%$%hd239408240046%_
                               _%$%tl239409240048%_
                               _%$%e239410240051%_
                               _%$%hd239411240054%_
                               _%$%tl239412240056%_
                               _%$%e239413240059%_
                               _%$%hd239414240062%_
                               _%$%tl239415240064%_
                               _%$%e239416240067%_
                               _%$%hd239417240070%_
                               _%$%tl239418240072%_
                               _%$%e239419240075%_
                               _%$%hd239420240078%_
                               _%$%tl239421240080%_
                               _%$%e239422240083%_
                               _%$%hd239423240086%_
                               _%$%tl239424240088%_
                               _%$%e239425240091%_
                               _%$%hd239426240094%_
                               _%$%tl239427240096%_
                               _%$%e239428240099%_
                               _%$%hd239429240102%_
                               _%$%tl239430240104%_))
                          (_%__match244059244060%_
                           _%$%e239407240043%_
                           _%$%hd239408240046%_
                           _%$%tl239409240048%_
                           _%$%e239410240051%_
                           _%$%hd239411240054%_
                           _%$%tl239412240056%_
                           _%$%e239413240059%_
                           _%$%hd239414240062%_
                           _%$%tl239415240064%_
                           _%$%e239416240067%_
                           _%$%hd239417240070%_
                           _%$%tl239418240072%_
                           _%$%e239419240075%_
                           _%$%hd239420240078%_
                           _%$%tl239421240080%_
                           _%$%e239422240083%_
                           _%$%hd239423240086%_
                           _%$%tl239424240088%_
                           _%$%e239425240091%_
                           _%$%hd239426240094%_
                           _%$%tl239427240096%_
                           _%$%e239428240099%_
                           _%$%hd239429240102%_
                           _%$%tl239430240104%_
                           _%$%e239431240107%_
                           _%$%hd239432240110%_
                           _%$%tl239433240112%_))))
                   (_%__match243881243882%_
                    (lambda (_%$%e239363240230%_
                             _%$%hd239364240233%_
                             _%$%tl239365240235%_
                             _%$%e239366240238%_
                             _%$%hd239367240241%_
                             _%$%tl239368240243%_
                             _%$%e239369240246%_
                             _%$%hd239370240249%_
                             _%$%tl239371240251%_
                             _%$%e239372240254%_
                             _%$%hd239373240257%_
                             _%$%tl239374240259%_
                             _%$%e239375240262%_
                             _%$%hd239376240265%_
                             _%$%tl239377240267%_
                             _%$%e239378240270%_
                             _%$%hd239379240273%_
                             _%$%tl239380240275%_
                             _%$%e239381240278%_
                             _%$%hd239382240281%_
                             _%$%tl239383240283%_
                             _%$%e239384240286%_
                             _%$%hd239385240289%_
                             _%$%tl239386240291%_
                             _%$%e239387240294%_
                             _%$%hd239388240297%_
                             _%$%tl239389240299%_
                             _%$%e239390240302%_
                             _%$%hd239391240305%_
                             _%$%tl239392240307%_
                             _%__splice243780243781%_
                             _%$%target239393240310%_
                             _%$%tl239395240312%_)
                      (letrec ((_%$%loop239396240315%_
                                (lambda (_%$%hd239394240318%_
                                         _%$%args239400240320%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd239394240318%_))
                                      (let ((_%$%e239397240322%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd239394240318%_))))
                                        (let ((_%$%lp-tl239399240327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e239397240322%_)))
                                              (_%$%lp-hd239398240325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e239397240322%_))))
                                          (_%$%loop239396240315%_
                                           _%$%lp-tl239399240327%_
                                           (cons _%$%lp-hd239398240325%_
                                                 _%$%args239400240320%_))))
                                      (let ((_%$%args239401240330%_
                                             (reverse _%$%args239400240320%_)))
                                        (let ((_%$%g239359240332%_
                                               _%$%args239401240330%_)
                                              (_%$%g239360240333%_
                                               _%$%hd239391240305%_)
                                              (_%$%g239361240334%_
                                               _%$%hd239382240281%_)
                                              (_%$%g239362240335%_
                                               _%$%hd239373240257%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g239362240335%_
                                                      'call-method))
                                                   (let ((__tmp244939
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self239348%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g239361240334%_
                                                      __tmp244939)))
                                              (_%__kont243778243779%_
                                               _%$%g239359240332%_
                                               _%$%g239360240333%_
                                               _%$%g239361240334%_
                                               _%$%g239362240335%_)
                                              (_%__match244069244070%_
                                               _%$%e239363240230%_
                                               _%$%hd239364240233%_
                                               _%$%tl239365240235%_
                                               _%$%e239366240238%_
                                               _%$%hd239367240241%_
                                               _%$%tl239368240243%_
                                               _%$%e239369240246%_
                                               _%$%hd239370240249%_
                                               _%$%tl239371240251%_
                                               _%$%e239372240254%_
                                               _%$%hd239373240257%_
                                               _%$%tl239374240259%_
                                               _%$%e239375240262%_
                                               _%$%hd239376240265%_
                                               _%$%tl239377240267%_
                                               _%$%e239378240270%_
                                               _%$%hd239379240273%_
                                               _%$%tl239380240275%_
                                               _%$%e239381240278%_
                                               _%$%hd239382240281%_
                                               _%$%tl239383240283%_
                                               _%$%e239384240286%_
                                               _%$%hd239385240289%_
                                               _%$%tl239386240291%_
                                               _%$%e239387240294%_
                                               _%$%hd239388240297%_
                                               _%$%tl239389240299%_
                                               _%$%e239390240302%_
                                               _%$%hd239391240305%_
                                               _%$%tl239392240307%_))))))))
                        (_%$%loop239396240315%_
                         _%$%target239393240310%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx243776243777%_))
                  (let ((_%$%e239363240230%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx243776243777%_))))
                    (let ((_%$%tl239365240235%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e239363240230%_)))
                          (_%$%hd239364240233%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e239363240230%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl239365240235%_))
                          (let ((_%$%e239366240238%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl239365240235%_))))
                            (let ((_%$%tl239368240243%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e239366240238%_)))
                                  (_%$%hd239367240241%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e239366240238%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd239367240241%_))
                                  (let ((_%$%e239369240246%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd239367240241%_))))
                                    (let ((_%$%tl239371240251%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e239369240246%_)))
                                          (_%$%hd239370240249%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e239369240246%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd239370240249%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd239370240249%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl239371240251%_))
                                                  (let ((_%$%e239372240254%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl239371240251%_))))
                                                    (let ((_%$%tl239374240259%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e239372240254%_)))
                                                          (_%$%hd239373240257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e239372240254%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl239374240259%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl239368240243%_))
                      (let ((_%$%e239375240262%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl239368240243%_))))
                        (let ((_%$%tl239377240267%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e239375240262%_)))
                              (_%$%hd239376240265%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e239375240262%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd239376240265%_))
                              (let ((_%$%e239378240270%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd239376240265%_))))
                                (let ((_%$%tl239380240275%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e239378240270%_)))
                                      (_%$%hd239379240273%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e239378240270%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd239379240273%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd239379240273%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl239380240275%_))
                                              (let ((_%$%e239381240278%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl239380240275%_))))
                                                (let ((_%$%tl239383240283%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e239381240278%_)))
                                                      (_%$%hd239382240281%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e239381240278%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl239383240283%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl239377240267%_))
                                                          (let ((_%$%e239384240286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl239377240267%_))))
                    (let ((_%$%tl239386240291%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e239384240286%_)))
                          (_%$%hd239385240289%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e239384240286%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd239385240289%_))
                          (let ((_%$%e239387240294%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd239385240289%_))))
                            (let ((_%$%tl239389240299%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e239387240294%_)))
                                  (_%$%hd239388240297%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e239387240294%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd239388240297%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd239388240297%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl239389240299%_))
                                          (let ((_%$%e239390240302%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl239389240299%_))))
                                            (let ((_%$%tl239392240307%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e239390240302%_)))
                                                  (_%$%hd239391240305%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e239390240302%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl239392240307%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl239386240291%_))
                                                      (let ((_%__splice243780243781%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl239386240291%_
                        '0))))
                (let ((_%$%tl239395240312%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice243780243781%_ '1)))
                      (_%$%target239393240310%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice243780243781%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl239395240312%_))
                      (_%__match243881243882%_
                       _%$%e239363240230%_
                       _%$%hd239364240233%_
                       _%$%tl239365240235%_
                       _%$%e239366240238%_
                       _%$%hd239367240241%_
                       _%$%tl239368240243%_
                       _%$%e239369240246%_
                       _%$%hd239370240249%_
                       _%$%tl239371240251%_
                       _%$%e239372240254%_
                       _%$%hd239373240257%_
                       _%$%tl239374240259%_
                       _%$%e239375240262%_
                       _%$%hd239376240265%_
                       _%$%tl239377240267%_
                       _%$%e239378240270%_
                       _%$%hd239379240273%_
                       _%$%tl239380240275%_
                       _%$%e239381240278%_
                       _%$%hd239382240281%_
                       _%$%tl239383240283%_
                       _%$%e239384240286%_
                       _%$%hd239385240289%_
                       _%$%tl239386240291%_
                       _%$%e239387240294%_
                       _%$%hd239388240297%_
                       _%$%tl239389240299%_
                       _%$%e239390240302%_
                       _%$%hd239391240305%_
                       _%$%tl239392240307%_
                       _%__splice243780243781%_
                       _%$%target239393240310%_
                       _%$%tl239395240312%_)
                      (_%__match244069244070%_
                       _%$%e239363240230%_
                       _%$%hd239364240233%_
                       _%$%tl239365240235%_
                       _%$%e239366240238%_
                       _%$%hd239367240241%_
                       _%$%tl239368240243%_
                       _%$%e239369240246%_
                       _%$%hd239370240249%_
                       _%$%tl239371240251%_
                       _%$%e239372240254%_
                       _%$%hd239373240257%_
                       _%$%tl239374240259%_
                       _%$%e239375240262%_
                       _%$%hd239376240265%_
                       _%$%tl239377240267%_
                       _%$%e239378240270%_
                       _%$%hd239379240273%_
                       _%$%tl239380240275%_
                       _%$%e239381240278%_
                       _%$%hd239382240281%_
                       _%$%tl239383240283%_
                       _%$%e239384240286%_
                       _%$%hd239385240289%_
                       _%$%tl239386240291%_
                       _%$%e239387240294%_
                       _%$%hd239388240297%_
                       _%$%tl239389240299%_
                       _%$%e239390240302%_
                       _%$%hd239391240305%_
                       _%$%tl239392240307%_))))
              (_%__match244069244070%_
               _%$%e239363240230%_
               _%$%hd239364240233%_
               _%$%tl239365240235%_
               _%$%e239366240238%_
               _%$%hd239367240241%_
               _%$%tl239368240243%_
               _%$%e239369240246%_
               _%$%hd239370240249%_
               _%$%tl239371240251%_
               _%$%e239372240254%_
               _%$%hd239373240257%_
               _%$%tl239374240259%_
               _%$%e239375240262%_
               _%$%hd239376240265%_
               _%$%tl239377240267%_
               _%$%e239378240270%_
               _%$%hd239379240273%_
               _%$%tl239380240275%_
               _%$%e239381240278%_
               _%$%hd239382240281%_
               _%$%tl239383240283%_
               _%$%e239384240286%_
               _%$%hd239385240289%_
               _%$%tl239386240291%_
               _%$%e239387240294%_
               _%$%hd239388240297%_
               _%$%tl239389240299%_
               _%$%e239390240302%_
               _%$%hd239391240305%_
               _%$%tl239392240307%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match244273244274%_
                                                   _%$%e239363240230%_
                                                   _%$%hd239364240233%_
                                                   _%$%tl239365240235%_
                                                   _%$%e239366240238%_
                                                   _%$%hd239367240241%_
                                                   _%$%tl239368240243%_
                                                   _%$%e239369240246%_
                                                   _%$%hd239370240249%_
                                                   _%$%tl239371240251%_
                                                   _%$%e239372240254%_
                                                   _%$%hd239373240257%_
                                                   _%$%tl239374240259%_
                                                   _%$%e239375240262%_
                                                   _%$%hd239376240265%_
                                                   _%$%tl239377240267%_
                                                   _%$%e239378240270%_
                                                   _%$%hd239379240273%_
                                                   _%$%tl239380240275%_
                                                   _%$%e239381240278%_
                                                   _%$%hd239382240281%_
                                                   _%$%tl239383240283%_
                                                   _%$%e239384240286%_
                                                   _%$%hd239385240289%_
                                                   _%$%tl239386240291%_))))
                                          (_%__match244273244274%_
                                           _%$%e239363240230%_
                                           _%$%hd239364240233%_
                                           _%$%tl239365240235%_
                                           _%$%e239366240238%_
                                           _%$%hd239367240241%_
                                           _%$%tl239368240243%_
                                           _%$%e239369240246%_
                                           _%$%hd239370240249%_
                                           _%$%tl239371240251%_
                                           _%$%e239372240254%_
                                           _%$%hd239373240257%_
                                           _%$%tl239374240259%_
                                           _%$%e239375240262%_
                                           _%$%hd239376240265%_
                                           _%$%tl239377240267%_
                                           _%$%e239378240270%_
                                           _%$%hd239379240273%_
                                           _%$%tl239380240275%_
                                           _%$%e239381240278%_
                                           _%$%hd239382240281%_
                                           _%$%tl239383240283%_
                                           _%$%e239384240286%_
                                           _%$%hd239385240289%_
                                           _%$%tl239386240291%_))
                                      (_%__match243949243950%_
                                       _%$%e239363240230%_
                                       _%$%hd239364240233%_
                                       _%$%tl239365240235%_
                                       _%$%e239366240238%_
                                       _%$%hd239367240241%_
                                       _%$%tl239368240243%_
                                       _%$%e239369240246%_
                                       _%$%hd239370240249%_
                                       _%$%tl239371240251%_
                                       _%$%e239372240254%_
                                       _%$%hd239373240257%_
                                       _%$%tl239374240259%_
                                       _%$%e239375240262%_
                                       _%$%hd239376240265%_
                                       _%$%tl239377240267%_
                                       _%$%e239378240270%_
                                       _%$%hd239379240273%_
                                       _%$%tl239380240275%_
                                       _%$%e239381240278%_
                                       _%$%hd239382240281%_
                                       _%$%tl239383240283%_
                                       _%$%e239384240286%_
                                       _%$%hd239385240289%_
                                       _%$%tl239386240291%_
                                       _%$%e239387240294%_
                                       _%$%hd239388240297%_
                                       _%$%tl239389240299%_))
                                  (_%__match244273244274%_
                                   _%$%e239363240230%_
                                   _%$%hd239364240233%_
                                   _%$%tl239365240235%_
                                   _%$%e239366240238%_
                                   _%$%hd239367240241%_
                                   _%$%tl239368240243%_
                                   _%$%e239369240246%_
                                   _%$%hd239370240249%_
                                   _%$%tl239371240251%_
                                   _%$%e239372240254%_
                                   _%$%hd239373240257%_
                                   _%$%tl239374240259%_
                                   _%$%e239375240262%_
                                   _%$%hd239376240265%_
                                   _%$%tl239377240267%_
                                   _%$%e239378240270%_
                                   _%$%hd239379240273%_
                                   _%$%tl239380240275%_
                                   _%$%e239381240278%_
                                   _%$%hd239382240281%_
                                   _%$%tl239383240283%_
                                   _%$%e239384240286%_
                                   _%$%hd239385240289%_
                                   _%$%tl239386240291%_))))
                          (_%__match244273244274%_
                           _%$%e239363240230%_
                           _%$%hd239364240233%_
                           _%$%tl239365240235%_
                           _%$%e239366240238%_
                           _%$%hd239367240241%_
                           _%$%tl239368240243%_
                           _%$%e239369240246%_
                           _%$%hd239370240249%_
                           _%$%tl239371240251%_
                           _%$%e239372240254%_
                           _%$%hd239373240257%_
                           _%$%tl239374240259%_
                           _%$%e239375240262%_
                           _%$%hd239376240265%_
                           _%$%tl239377240267%_
                           _%$%e239378240270%_
                           _%$%hd239379240273%_
                           _%$%tl239380240275%_
                           _%$%e239381240278%_
                           _%$%hd239382240281%_
                           _%$%tl239383240283%_
                           _%$%e239384240286%_
                           _%$%hd239385240289%_
                           _%$%tl239386240291%_))))
                  (_%__match244211244212%_
                   _%$%e239363240230%_
                   _%$%hd239364240233%_
                   _%$%tl239365240235%_
                   _%$%e239366240238%_
                   _%$%hd239367240241%_
                   _%$%tl239368240243%_
                   _%$%e239369240246%_
                   _%$%hd239370240249%_
                   _%$%tl239371240251%_
                   _%$%e239372240254%_
                   _%$%hd239373240257%_
                   _%$%tl239374240259%_
                   _%$%e239375240262%_
                   _%$%hd239376240265%_
                   _%$%tl239377240267%_
                   _%$%e239378240270%_
                   _%$%hd239379240273%_
                   _%$%tl239380240275%_
                   _%$%e239381240278%_
                   _%$%hd239382240281%_
                   _%$%tl239383240283%_))
              (_%__kont243794243795%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont243794243795%_))
                                          (_%__kont243794243795%_))
                                      (_%__kont243794243795%_))))
                              (_%__kont243794243795%_))))
                      (_%__kont243794243795%_))
                  (_%__kont243794243795%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont243794243795%_))
                                              (_%__kont243794243795%_))
                                          (_%__kont243794243795%_))))
                                  (_%__kont243794243795%_))))
                          (_%__kont243794243795%_))))
                  (_%__kont243794243795%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self238291%_ _%stx238292%_)
        (letrec ((_%force-e238294%_
                  (lambda (_%target239346%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target239346%_ '()))
                                      '()))))))
          (let* ((_%__stx244278244279%_ _%stx238292%_)
                 (_%$%g238302238524%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx244278244279%_)))))
            (let ((_%__kont244280244281%_
                   (lambda (_%$%g238304239292%_
                            _%$%g238305239293%_
                            _%$%g238306239294%_
                            _%$%g238307239295%_)
                     (let ((_%$method239340%_
                            (let ((__tmp244941
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self238291%_ 'methods)))
                                  (__tmp244940
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g238305239293%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp244941 __tmp244940)))
                           (_%args239341%_
                            (map (lambda (_%$%g239328239330%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self238291%_
                                      _%$%g239328239330%_)))
                                 (let ((__tmp244942
                                        (lambda (_%$%g239332239335%_
                                                 _%$%g239333239337%_)
                                          (cons _%$%g239332239335%_
                                                _%$%g239333239337%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp244942
                                    '()
                                    _%$%g238304239292%_)))))
                       (let ((__tmp244943
                              (cons '%#call
                                    (cons (_%force-e238294%_ _%$method239340%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self238291%_
                                                               'receiver))
                                                            '()))
                                                _%args239341%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244943 _%stx238292%_)))))
                  (_%__kont244284244285%_
                   (lambda (_%$%g238347239126%_
                            _%$%g238348239127%_
                            _%$%g238349239128%_
                            _%$%g238350239129%_
                            _%$%g238351239130%_)
                     (let ((_%$method239182%_
                            (let ((__tmp244945
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self238291%_ 'methods)))
                                  (__tmp244944
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g238348239127%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp244945 __tmp244944)))
                           (_%args239183%_
                            (map (lambda (_%$%g239170239172%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self238291%_
                                      _%$%g239170239172%_)))
                                 (let ((__tmp244946
                                        (lambda (_%$%g239174239177%_
                                                 _%$%g239175239179%_)
                                          (cons _%$%g239174239177%_
                                                _%$%g239175239179%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp244946
                                    '()
                                    _%$%g238347239126%_)))))
                       (let ((__tmp244947
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e238294%_
                                                 _%$method239182%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self238291%_ 'receiver))
                          '()))
              _%args239183%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244947 _%stx238292%_)))))
                  (_%__kont244288244289%_
                   (lambda (_%$%g238400238959%_
                            _%$%g238401238960%_
                            _%$%g238402238961%_)
                     (let* ((_%$field238993%_
                             (let ((__tmp244949
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self238291%_ 'slots)))
                                   (__tmp244948
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%g238400238959%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp244949 __tmp244948)))
                            (__tmp244950
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self238291%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field238993%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self238291%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp244950 _%stx238292%_))))
                  (_%__kont244290244291%_
                   (lambda (_%$%g238433238833%_
                            _%$%g238434238834%_
                            _%$%g238435238835%_
                            _%$%g238436238836%_)
                     (let ((_%$field238871%_
                            (let ((__tmp244952
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self238291%_ 'slots)))
                                  (__tmp244951
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g238434238834%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp244952 __tmp244951)))
                           (_%expr238872%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self238291%_
                               _%$%g238433238833%_))))
                       (let ((__tmp244953
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self238291%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field238871%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self238291%_ 'receiver))
                          '()))
              (cons _%expr238872%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244953 _%stx238292%_)))))
                  (_%__kont244292244293%_
                   (lambda (_%$%g238470238705%_ _%$%g238471238706%_)
                     (let* ((_%accessor238728%_
                             (let ((__tmp244954
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g238471238706%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp244954)))
                            (_%klass238730%_
                             (let ((__tmp244955
                                    (##structure-ref
                                     _%accessor238728%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx238292%_
                                __tmp244955)))
                            (_%slot238732%_
                             (##structure-ref
                              _%accessor238728%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor238728%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass238730%_
                                      _%slot238732%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass238730%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx238292%_
                           (let* ((_%$field238738%_
                                   (let ((__tmp244956
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self238291%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp244956 _%slot238732%_)))
                                  (__tmp244957
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self238291%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field238738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self238291%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp244957
                              _%stx238292%_))))))
                  (_%__kont244294244295%_
                   (lambda (_%$%g238493238600%_
                            _%$%g238494238601%_
                            _%$%g238495238602%_)
                     (let* ((_%mutator238630%_
                             (let ((__tmp244958
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g238495238602%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp244958)))
                            (_%klass238632%_
                             (let ((__tmp244959
                                    (##structure-ref
                                     _%mutator238630%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx238292%_
                                __tmp244959)))
                            (_%slot238634%_
                             (##structure-ref
                              _%mutator238630%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr238636%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self238291%_
                                _%$%g238493238600%_))))
                       (if (if (##structure-ref
                                _%mutator238630%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass238632%_
                                      _%slot238634%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass238632%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp244960
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%$%g238495238602%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%$%g238494238601%_
                                                                '()))
                                                    (cons _%expr238636%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp244960 _%stx238292%_))
                           (let* ((_%$field238642%_
                                   (let ((__tmp244961
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self238291%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp244961 _%slot238634%_)))
                                  (__tmp244962
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self238291%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field238642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self238291%_ 'receiver))
                               '()))
                   (cons _%expr238636%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp244962
                              _%stx238292%_))))))
                  (_%__kont244296244297%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self238291%_ _%stx238292%_)))))
              (let* ((_%__match244777244778%_
                      (lambda (_%$%e238496238536%_
                               _%$%hd238497238539%_
                               _%$%tl238498238541%_
                               _%$%e238499238544%_
                               _%$%hd238500238547%_
                               _%$%tl238501238549%_
                               _%$%e238502238552%_
                               _%$%hd238503238555%_
                               _%$%tl238504238557%_
                               _%$%e238505238560%_
                               _%$%hd238506238563%_
                               _%$%tl238507238565%_
                               _%$%e238508238568%_
                               _%$%hd238509238571%_
                               _%$%tl238510238573%_
                               _%$%e238511238576%_
                               _%$%hd238512238579%_
                               _%$%tl238513238581%_
                               _%$%e238514238584%_
                               _%$%hd238515238587%_
                               _%$%tl238516238589%_
                               _%$%e238517238592%_
                               _%$%hd238518238595%_
                               _%$%tl238519238597%_)
                        (let ((_%$%g238493238600%_ _%$%hd238518238595%_)
                              (_%$%g238494238601%_ _%$%hd238515238587%_)
                              (_%$%g238495238602%_ _%$%hd238506238563%_))
                          (if (and (let ((__tmp244963
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self238291%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g238494238601%_
                                      __tmp244963))
                                   (let ((__tmp244964
                                          (let ((__tmp244965
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g238495238602%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp244965))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp244964
                                      'gxc#!mutator::t)))
                              (_%__kont244294244295%_
                               _%$%g238493238600%_
                               _%$%g238494238601%_
                               _%$%g238495238602%_)
                              (_%__kont244296244297%_)))))
                     (_%__match244775244776%_
                      (lambda (_%$%e238496238536%_
                               _%$%hd238497238539%_
                               _%$%tl238498238541%_
                               _%$%e238499238544%_
                               _%$%hd238500238547%_
                               _%$%tl238501238549%_
                               _%$%e238502238552%_
                               _%$%hd238503238555%_
                               _%$%tl238504238557%_
                               _%$%e238505238560%_
                               _%$%hd238506238563%_
                               _%$%tl238507238565%_
                               _%$%e238508238568%_
                               _%$%hd238509238571%_
                               _%$%tl238510238573%_
                               _%$%e238511238576%_
                               _%$%hd238512238579%_
                               _%$%tl238513238581%_
                               _%$%e238514238584%_
                               _%$%hd238515238587%_
                               _%$%tl238516238589%_
                               _%$%e238517238592%_
                               _%$%hd238518238595%_
                               _%$%tl238519238597%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl238519238597%_))
                            (_%__match244777244778%_
                             _%$%e238496238536%_
                             _%$%hd238497238539%_
                             _%$%tl238498238541%_
                             _%$%e238499238544%_
                             _%$%hd238500238547%_
                             _%$%tl238501238549%_
                             _%$%e238502238552%_
                             _%$%hd238503238555%_
                             _%$%tl238504238557%_
                             _%$%e238505238560%_
                             _%$%hd238506238563%_
                             _%$%tl238507238565%_
                             _%$%e238508238568%_
                             _%$%hd238509238571%_
                             _%$%tl238510238573%_
                             _%$%e238511238576%_
                             _%$%hd238512238579%_
                             _%$%tl238513238581%_
                             _%$%e238514238584%_
                             _%$%hd238515238587%_
                             _%$%tl238516238589%_
                             _%$%e238517238592%_
                             _%$%hd238518238595%_
                             _%$%tl238519238597%_)
                            (_%__kont244296244297%_))))
                     (_%__match244769244770%_
                      (lambda (_%$%e238496238536%_
                               _%$%hd238497238539%_
                               _%$%tl238498238541%_
                               _%$%e238499238544%_
                               _%$%hd238500238547%_
                               _%$%tl238501238549%_
                               _%$%e238502238552%_
                               _%$%hd238503238555%_
                               _%$%tl238504238557%_
                               _%$%e238505238560%_
                               _%$%hd238506238563%_
                               _%$%tl238507238565%_
                               _%$%e238508238568%_
                               _%$%hd238509238571%_
                               _%$%tl238510238573%_
                               _%$%e238511238576%_
                               _%$%hd238512238579%_
                               _%$%tl238513238581%_
                               _%$%e238514238584%_
                               _%$%hd238515238587%_
                               _%$%tl238516238589%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl238510238573%_))
                            (let ((_%$%e238517238592%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl238510238573%_))))
                              (let ((_%$%tl238519238597%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e238517238592%_)))
                                    (_%$%hd238518238595%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e238517238592%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl238519238597%_))
                                    (_%__match244777244778%_
                                     _%$%e238496238536%_
                                     _%$%hd238497238539%_
                                     _%$%tl238498238541%_
                                     _%$%e238499238544%_
                                     _%$%hd238500238547%_
                                     _%$%tl238501238549%_
                                     _%$%e238502238552%_
                                     _%$%hd238503238555%_
                                     _%$%tl238504238557%_
                                     _%$%e238505238560%_
                                     _%$%hd238506238563%_
                                     _%$%tl238507238565%_
                                     _%$%e238508238568%_
                                     _%$%hd238509238571%_
                                     _%$%tl238510238573%_
                                     _%$%e238511238576%_
                                     _%$%hd238512238579%_
                                     _%$%tl238513238581%_
                                     _%$%e238514238584%_
                                     _%$%hd238515238587%_
                                     _%$%tl238516238589%_
                                     _%$%e238517238592%_
                                     _%$%hd238518238595%_
                                     _%$%tl238519238597%_)
                                    (_%__kont244296244297%_))))
                            (_%__kont244296244297%_))))
                     (_%__match244715244716%_
                      (lambda (_%$%e238472238649%_
                               _%$%hd238473238652%_
                               _%$%tl238474238654%_
                               _%$%e238475238657%_
                               _%$%hd238476238660%_
                               _%$%tl238477238662%_
                               _%$%e238478238665%_
                               _%$%hd238479238668%_
                               _%$%tl238480238670%_
                               _%$%e238481238673%_
                               _%$%hd238482238676%_
                               _%$%tl238483238678%_
                               _%$%e238484238681%_
                               _%$%hd238485238684%_
                               _%$%tl238486238686%_
                               _%$%e238487238689%_
                               _%$%hd238488238692%_
                               _%$%tl238489238694%_
                               _%$%e238490238697%_
                               _%$%hd238491238700%_
                               _%$%tl238492238702%_)
                        (let ((_%$%g238470238705%_ _%$%hd238491238700%_)
                              (_%$%g238471238706%_ _%$%hd238482238676%_))
                          (if (and (let ((__tmp244966
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self238291%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g238470238705%_
                                      __tmp244966))
                                   (let ((__tmp244967
                                          (let ((__tmp244968
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g238471238706%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp244968))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp244967
                                      'gxc#!accessor::t)))
                              (_%__kont244292244293%_
                               _%$%g238470238705%_
                               _%$%g238471238706%_)
                              (_%__kont244296244297%_)))))
                     (_%__match244713244714%_
                      (lambda (_%$%e238472238649%_
                               _%$%hd238473238652%_
                               _%$%tl238474238654%_
                               _%$%e238475238657%_
                               _%$%hd238476238660%_
                               _%$%tl238477238662%_
                               _%$%e238478238665%_
                               _%$%hd238479238668%_
                               _%$%tl238480238670%_
                               _%$%e238481238673%_
                               _%$%hd238482238676%_
                               _%$%tl238483238678%_
                               _%$%e238484238681%_
                               _%$%hd238485238684%_
                               _%$%tl238486238686%_
                               _%$%e238487238689%_
                               _%$%hd238488238692%_
                               _%$%tl238489238694%_
                               _%$%e238490238697%_
                               _%$%hd238491238700%_
                               _%$%tl238492238702%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl238486238686%_))
                            (_%__match244715244716%_
                             _%$%e238472238649%_
                             _%$%hd238473238652%_
                             _%$%tl238474238654%_
                             _%$%e238475238657%_
                             _%$%hd238476238660%_
                             _%$%tl238477238662%_
                             _%$%e238478238665%_
                             _%$%hd238479238668%_
                             _%$%tl238480238670%_
                             _%$%e238481238673%_
                             _%$%hd238482238676%_
                             _%$%tl238483238678%_
                             _%$%e238484238681%_
                             _%$%hd238485238684%_
                             _%$%tl238486238686%_
                             _%$%e238487238689%_
                             _%$%hd238488238692%_
                             _%$%tl238489238694%_
                             _%$%e238490238697%_
                             _%$%hd238491238700%_
                             _%$%tl238492238702%_)
                            (_%__match244769244770%_
                             _%$%e238472238649%_
                             _%$%hd238473238652%_
                             _%$%tl238474238654%_
                             _%$%e238475238657%_
                             _%$%hd238476238660%_
                             _%$%tl238477238662%_
                             _%$%e238478238665%_
                             _%$%hd238479238668%_
                             _%$%tl238480238670%_
                             _%$%e238481238673%_
                             _%$%hd238482238676%_
                             _%$%tl238483238678%_
                             _%$%e238484238681%_
                             _%$%hd238485238684%_
                             _%$%tl238486238686%_
                             _%$%e238487238689%_
                             _%$%hd238488238692%_
                             _%$%tl238489238694%_
                             _%$%e238490238697%_
                             _%$%hd238491238700%_
                             _%$%tl238492238702%_))))
                     (_%__match244659244660%_
                      (lambda (_%$%e238437238745%_
                               _%$%hd238438238748%_
                               _%$%tl238439238750%_
                               _%$%e238440238753%_
                               _%$%hd238441238756%_
                               _%$%tl238442238758%_
                               _%$%e238443238761%_
                               _%$%hd238444238764%_
                               _%$%tl238445238766%_
                               _%$%e238446238769%_
                               _%$%hd238447238772%_
                               _%$%tl238448238774%_
                               _%$%e238449238777%_
                               _%$%hd238450238780%_
                               _%$%tl238451238782%_
                               _%$%e238452238785%_
                               _%$%hd238453238788%_
                               _%$%tl238454238790%_
                               _%$%e238455238793%_
                               _%$%hd238456238796%_
                               _%$%tl238457238798%_
                               _%$%e238458238801%_
                               _%$%hd238459238804%_
                               _%$%tl238460238806%_
                               _%$%e238461238809%_
                               _%$%hd238462238812%_
                               _%$%tl238463238814%_
                               _%$%e238464238817%_
                               _%$%hd238465238820%_
                               _%$%tl238466238822%_
                               _%$%e238467238825%_
                               _%$%hd238468238828%_
                               _%$%tl238469238830%_)
                        (let ((_%$%g238433238833%_ _%$%hd238468238828%_)
                              (_%$%g238434238834%_ _%$%hd238465238820%_)
                              (_%$%g238435238835%_ _%$%hd238456238796%_)
                              (_%$%g238436238836%_ _%$%hd238447238772%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g238436238836%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g238436238836%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp244969
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self238291%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g238435238835%_
                                      __tmp244969)))
                              (_%__kont244290244291%_
                               _%$%g238433238833%_
                               _%$%g238434238834%_
                               _%$%g238435238835%_
                               _%$%g238436238836%_)
                              (_%__kont244296244297%_)))))
                     (_%__match244651244652%_
                      (lambda (_%$%e238437238745%_
                               _%$%hd238438238748%_
                               _%$%tl238439238750%_
                               _%$%e238440238753%_
                               _%$%hd238441238756%_
                               _%$%tl238442238758%_
                               _%$%e238443238761%_
                               _%$%hd238444238764%_
                               _%$%tl238445238766%_
                               _%$%e238446238769%_
                               _%$%hd238447238772%_
                               _%$%tl238448238774%_
                               _%$%e238449238777%_
                               _%$%hd238450238780%_
                               _%$%tl238451238782%_
                               _%$%e238452238785%_
                               _%$%hd238453238788%_
                               _%$%tl238454238790%_
                               _%$%e238455238793%_
                               _%$%hd238456238796%_
                               _%$%tl238457238798%_
                               _%$%e238458238801%_
                               _%$%hd238459238804%_
                               _%$%tl238460238806%_
                               _%$%e238461238809%_
                               _%$%hd238462238812%_
                               _%$%tl238463238814%_
                               _%$%e238464238817%_
                               _%$%hd238465238820%_
                               _%$%tl238466238822%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl238460238806%_))
                            (let ((_%$%e238467238825%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl238460238806%_))))
                              (let ((_%$%tl238469238830%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e238467238825%_)))
                                    (_%$%hd238468238828%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e238467238825%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl238469238830%_))
                                    (_%__match244659244660%_
                                     _%$%e238437238745%_
                                     _%$%hd238438238748%_
                                     _%$%tl238439238750%_
                                     _%$%e238440238753%_
                                     _%$%hd238441238756%_
                                     _%$%tl238442238758%_
                                     _%$%e238443238761%_
                                     _%$%hd238444238764%_
                                     _%$%tl238445238766%_
                                     _%$%e238446238769%_
                                     _%$%hd238447238772%_
                                     _%$%tl238448238774%_
                                     _%$%e238449238777%_
                                     _%$%hd238450238780%_
                                     _%$%tl238451238782%_
                                     _%$%e238452238785%_
                                     _%$%hd238453238788%_
                                     _%$%tl238454238790%_
                                     _%$%e238455238793%_
                                     _%$%hd238456238796%_
                                     _%$%tl238457238798%_
                                     _%$%e238458238801%_
                                     _%$%hd238459238804%_
                                     _%$%tl238460238806%_
                                     _%$%e238461238809%_
                                     _%$%hd238462238812%_
                                     _%$%tl238463238814%_
                                     _%$%e238464238817%_
                                     _%$%hd238465238820%_
                                     _%$%tl238466238822%_
                                     _%$%e238467238825%_
                                     _%$%hd238468238828%_
                                     _%$%tl238469238830%_)
                                    (_%__kont244296244297%_))))
                            (_%__match244775244776%_
                             _%$%e238437238745%_
                             _%$%hd238438238748%_
                             _%$%tl238439238750%_
                             _%$%e238440238753%_
                             _%$%hd238441238756%_
                             _%$%tl238442238758%_
                             _%$%e238443238761%_
                             _%$%hd238444238764%_
                             _%$%tl238445238766%_
                             _%$%e238446238769%_
                             _%$%hd238447238772%_
                             _%$%tl238448238774%_
                             _%$%e238449238777%_
                             _%$%hd238450238780%_
                             _%$%tl238451238782%_
                             _%$%e238452238785%_
                             _%$%hd238453238788%_
                             _%$%tl238454238790%_
                             _%$%e238455238793%_
                             _%$%hd238456238796%_
                             _%$%tl238457238798%_
                             _%$%e238458238801%_
                             _%$%hd238459238804%_
                             _%$%tl238460238806%_))))
                     (_%__match244573244574%_
                      (lambda (_%$%e238403238879%_
                               _%$%hd238404238882%_
                               _%$%tl238405238884%_
                               _%$%e238406238887%_
                               _%$%hd238407238890%_
                               _%$%tl238408238892%_
                               _%$%e238409238895%_
                               _%$%hd238410238898%_
                               _%$%tl238411238900%_
                               _%$%e238412238903%_
                               _%$%hd238413238906%_
                               _%$%tl238414238908%_
                               _%$%e238415238911%_
                               _%$%hd238416238914%_
                               _%$%tl238417238916%_
                               _%$%e238418238919%_
                               _%$%hd238419238922%_
                               _%$%tl238420238924%_
                               _%$%e238421238927%_
                               _%$%hd238422238930%_
                               _%$%tl238423238932%_
                               _%$%e238424238935%_
                               _%$%hd238425238938%_
                               _%$%tl238426238940%_
                               _%$%e238427238943%_
                               _%$%hd238428238946%_
                               _%$%tl238429238948%_
                               _%$%e238430238951%_
                               _%$%hd238431238954%_
                               _%$%tl238432238956%_)
                        (let ((_%$%g238400238959%_ _%$%hd238431238954%_)
                              (_%$%g238401238960%_ _%$%hd238422238930%_)
                              (_%$%g238402238961%_ _%$%hd238413238906%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g238402238961%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g238402238961%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp244970
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self238291%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g238401238960%_
                                      __tmp244970)))
                              (_%__kont244288244289%_
                               _%$%g238400238959%_
                               _%$%g238401238960%_
                               _%$%g238402238961%_)
                              (_%__match244777244778%_
                               _%$%e238403238879%_
                               _%$%hd238404238882%_
                               _%$%tl238405238884%_
                               _%$%e238406238887%_
                               _%$%hd238407238890%_
                               _%$%tl238408238892%_
                               _%$%e238409238895%_
                               _%$%hd238410238898%_
                               _%$%tl238411238900%_
                               _%$%e238412238903%_
                               _%$%hd238413238906%_
                               _%$%tl238414238908%_
                               _%$%e238415238911%_
                               _%$%hd238416238914%_
                               _%$%tl238417238916%_
                               _%$%e238418238919%_
                               _%$%hd238419238922%_
                               _%$%tl238420238924%_
                               _%$%e238421238927%_
                               _%$%hd238422238930%_
                               _%$%tl238423238932%_
                               _%$%e238424238935%_
                               _%$%hd238425238938%_
                               _%$%tl238426238940%_)))))
                     (_%__match244571244572%_
                      (lambda (_%$%e238403238879%_
                               _%$%hd238404238882%_
                               _%$%tl238405238884%_
                               _%$%e238406238887%_
                               _%$%hd238407238890%_
                               _%$%tl238408238892%_
                               _%$%e238409238895%_
                               _%$%hd238410238898%_
                               _%$%tl238411238900%_
                               _%$%e238412238903%_
                               _%$%hd238413238906%_
                               _%$%tl238414238908%_
                               _%$%e238415238911%_
                               _%$%hd238416238914%_
                               _%$%tl238417238916%_
                               _%$%e238418238919%_
                               _%$%hd238419238922%_
                               _%$%tl238420238924%_
                               _%$%e238421238927%_
                               _%$%hd238422238930%_
                               _%$%tl238423238932%_
                               _%$%e238424238935%_
                               _%$%hd238425238938%_
                               _%$%tl238426238940%_
                               _%$%e238427238943%_
                               _%$%hd238428238946%_
                               _%$%tl238429238948%_
                               _%$%e238430238951%_
                               _%$%hd238431238954%_
                               _%$%tl238432238956%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl238426238940%_))
                            (_%__match244573244574%_
                             _%$%e238403238879%_
                             _%$%hd238404238882%_
                             _%$%tl238405238884%_
                             _%$%e238406238887%_
                             _%$%hd238407238890%_
                             _%$%tl238408238892%_
                             _%$%e238409238895%_
                             _%$%hd238410238898%_
                             _%$%tl238411238900%_
                             _%$%e238412238903%_
                             _%$%hd238413238906%_
                             _%$%tl238414238908%_
                             _%$%e238415238911%_
                             _%$%hd238416238914%_
                             _%$%tl238417238916%_
                             _%$%e238418238919%_
                             _%$%hd238419238922%_
                             _%$%tl238420238924%_
                             _%$%e238421238927%_
                             _%$%hd238422238930%_
                             _%$%tl238423238932%_
                             _%$%e238424238935%_
                             _%$%hd238425238938%_
                             _%$%tl238426238940%_
                             _%$%e238427238943%_
                             _%$%hd238428238946%_
                             _%$%tl238429238948%_
                             _%$%e238430238951%_
                             _%$%hd238431238954%_
                             _%$%tl238432238956%_)
                            (_%__match244651244652%_
                             _%$%e238403238879%_
                             _%$%hd238404238882%_
                             _%$%tl238405238884%_
                             _%$%e238406238887%_
                             _%$%hd238407238890%_
                             _%$%tl238408238892%_
                             _%$%e238409238895%_
                             _%$%hd238410238898%_
                             _%$%tl238411238900%_
                             _%$%e238412238903%_
                             _%$%hd238413238906%_
                             _%$%tl238414238908%_
                             _%$%e238415238911%_
                             _%$%hd238416238914%_
                             _%$%tl238417238916%_
                             _%$%e238418238919%_
                             _%$%hd238419238922%_
                             _%$%tl238420238924%_
                             _%$%e238421238927%_
                             _%$%hd238422238930%_
                             _%$%tl238423238932%_
                             _%$%e238424238935%_
                             _%$%hd238425238938%_
                             _%$%tl238426238940%_
                             _%$%e238427238943%_
                             _%$%hd238428238946%_
                             _%$%tl238429238948%_
                             _%$%e238430238951%_
                             _%$%hd238431238954%_
                             _%$%tl238432238956%_))))
                     (_%__match244561244562%_
                      (lambda (_%$%e238403238879%_
                               _%$%hd238404238882%_
                               _%$%tl238405238884%_
                               _%$%e238406238887%_
                               _%$%hd238407238890%_
                               _%$%tl238408238892%_
                               _%$%e238409238895%_
                               _%$%hd238410238898%_
                               _%$%tl238411238900%_
                               _%$%e238412238903%_
                               _%$%hd238413238906%_
                               _%$%tl238414238908%_
                               _%$%e238415238911%_
                               _%$%hd238416238914%_
                               _%$%tl238417238916%_
                               _%$%e238418238919%_
                               _%$%hd238419238922%_
                               _%$%tl238420238924%_
                               _%$%e238421238927%_
                               _%$%hd238422238930%_
                               _%$%tl238423238932%_
                               _%$%e238424238935%_
                               _%$%hd238425238938%_
                               _%$%tl238426238940%_
                               _%$%e238427238943%_
                               _%$%hd238428238946%_
                               _%$%tl238429238948%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%$%hd238428238946%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl238429238948%_))
                                (let ((_%$%e238430238951%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl238429238948%_))))
                                  (let ((_%$%tl238432238956%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e238430238951%_)))
                                        (_%$%hd238431238954%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e238430238951%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl238432238956%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl238426238940%_))
                                            (_%__match244573244574%_
                                             _%$%e238403238879%_
                                             _%$%hd238404238882%_
                                             _%$%tl238405238884%_
                                             _%$%e238406238887%_
                                             _%$%hd238407238890%_
                                             _%$%tl238408238892%_
                                             _%$%e238409238895%_
                                             _%$%hd238410238898%_
                                             _%$%tl238411238900%_
                                             _%$%e238412238903%_
                                             _%$%hd238413238906%_
                                             _%$%tl238414238908%_
                                             _%$%e238415238911%_
                                             _%$%hd238416238914%_
                                             _%$%tl238417238916%_
                                             _%$%e238418238919%_
                                             _%$%hd238419238922%_
                                             _%$%tl238420238924%_
                                             _%$%e238421238927%_
                                             _%$%hd238422238930%_
                                             _%$%tl238423238932%_
                                             _%$%e238424238935%_
                                             _%$%hd238425238938%_
                                             _%$%tl238426238940%_
                                             _%$%e238427238943%_
                                             _%$%hd238428238946%_
                                             _%$%tl238429238948%_
                                             _%$%e238430238951%_
                                             _%$%hd238431238954%_
                                             _%$%tl238432238956%_)
                                            (_%__match244651244652%_
                                             _%$%e238403238879%_
                                             _%$%hd238404238882%_
                                             _%$%tl238405238884%_
                                             _%$%e238406238887%_
                                             _%$%hd238407238890%_
                                             _%$%tl238408238892%_
                                             _%$%e238409238895%_
                                             _%$%hd238410238898%_
                                             _%$%tl238411238900%_
                                             _%$%e238412238903%_
                                             _%$%hd238413238906%_
                                             _%$%tl238414238908%_
                                             _%$%e238415238911%_
                                             _%$%hd238416238914%_
                                             _%$%tl238417238916%_
                                             _%$%e238418238919%_
                                             _%$%hd238419238922%_
                                             _%$%tl238420238924%_
                                             _%$%e238421238927%_
                                             _%$%hd238422238930%_
                                             _%$%tl238423238932%_
                                             _%$%e238424238935%_
                                             _%$%hd238425238938%_
                                             _%$%tl238426238940%_
                                             _%$%e238427238943%_
                                             _%$%hd238428238946%_
                                             _%$%tl238429238948%_
                                             _%$%e238430238951%_
                                             _%$%hd238431238954%_
                                             _%$%tl238432238956%_))
                                        (_%__match244775244776%_
                                         _%$%e238403238879%_
                                         _%$%hd238404238882%_
                                         _%$%tl238405238884%_
                                         _%$%e238406238887%_
                                         _%$%hd238407238890%_
                                         _%$%tl238408238892%_
                                         _%$%e238409238895%_
                                         _%$%hd238410238898%_
                                         _%$%tl238411238900%_
                                         _%$%e238412238903%_
                                         _%$%hd238413238906%_
                                         _%$%tl238414238908%_
                                         _%$%e238415238911%_
                                         _%$%hd238416238914%_
                                         _%$%tl238417238916%_
                                         _%$%e238418238919%_
                                         _%$%hd238419238922%_
                                         _%$%tl238420238924%_
                                         _%$%e238421238927%_
                                         _%$%hd238422238930%_
                                         _%$%tl238423238932%_
                                         _%$%e238424238935%_
                                         _%$%hd238425238938%_
                                         _%$%tl238426238940%_))))
                                (_%__match244775244776%_
                                 _%$%e238403238879%_
                                 _%$%hd238404238882%_
                                 _%$%tl238405238884%_
                                 _%$%e238406238887%_
                                 _%$%hd238407238890%_
                                 _%$%tl238408238892%_
                                 _%$%e238409238895%_
                                 _%$%hd238410238898%_
                                 _%$%tl238411238900%_
                                 _%$%e238412238903%_
                                 _%$%hd238413238906%_
                                 _%$%tl238414238908%_
                                 _%$%e238415238911%_
                                 _%$%hd238416238914%_
                                 _%$%tl238417238916%_
                                 _%$%e238418238919%_
                                 _%$%hd238419238922%_
                                 _%$%tl238420238924%_
                                 _%$%e238421238927%_
                                 _%$%hd238422238930%_
                                 _%$%tl238423238932%_
                                 _%$%e238424238935%_
                                 _%$%hd238425238938%_
                                 _%$%tl238426238940%_))
                            (_%__match244775244776%_
                             _%$%e238403238879%_
                             _%$%hd238404238882%_
                             _%$%tl238405238884%_
                             _%$%e238406238887%_
                             _%$%hd238407238890%_
                             _%$%tl238408238892%_
                             _%$%e238409238895%_
                             _%$%hd238410238898%_
                             _%$%tl238411238900%_
                             _%$%e238412238903%_
                             _%$%hd238413238906%_
                             _%$%tl238414238908%_
                             _%$%e238415238911%_
                             _%$%hd238416238914%_
                             _%$%tl238417238916%_
                             _%$%e238418238919%_
                             _%$%hd238419238922%_
                             _%$%tl238420238924%_
                             _%$%e238421238927%_
                             _%$%hd238422238930%_
                             _%$%tl238423238932%_
                             _%$%e238424238935%_
                             _%$%hd238425238938%_
                             _%$%tl238426238940%_))))
                     (_%__match244493244494%_
                      (lambda (_%$%e238352239000%_
                               _%$%hd238353239003%_
                               _%$%tl238354239005%_
                               _%$%e238355239008%_
                               _%$%hd238356239011%_
                               _%$%tl238357239013%_
                               _%$%e238358239016%_
                               _%$%hd238359239019%_
                               _%$%tl238360239021%_
                               _%$%e238361239024%_
                               _%$%hd238362239027%_
                               _%$%tl238363239029%_
                               _%$%e238364239032%_
                               _%$%hd238365239035%_
                               _%$%tl238366239037%_
                               _%$%e238367239040%_
                               _%$%hd238368239043%_
                               _%$%tl238369239045%_
                               _%$%e238370239048%_
                               _%$%hd238371239051%_
                               _%$%tl238372239053%_
                               _%$%e238373239056%_
                               _%$%hd238374239059%_
                               _%$%tl238375239061%_
                               _%$%e238376239064%_
                               _%$%hd238377239067%_
                               _%$%tl238378239069%_
                               _%$%e238379239072%_
                               _%$%hd238380239075%_
                               _%$%tl238381239077%_
                               _%$%e238382239080%_
                               _%$%hd238383239083%_
                               _%$%tl238384239085%_
                               _%$%e238385239088%_
                               _%$%hd238386239091%_
                               _%$%tl238387239093%_
                               _%$%e238388239096%_
                               _%$%hd238389239099%_
                               _%$%tl238390239101%_
                               _%__splice244286244287%_
                               _%$%target238391239104%_
                               _%$%tl238393239106%_)
                        (letrec ((_%$%loop238394239109%_
                                  (lambda (_%$%hd238392239112%_
                                           _%$%args238398239114%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd238392239112%_))
                                        (let ((_%$%e238395239116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd238392239112%_))))
                                          (let ((_%$%lp-tl238397239121%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e238395239116%_)))
                                                (_%$%lp-hd238396239119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e238395239116%_))))
                                            (_%$%loop238394239109%_
                                             _%$%lp-tl238397239121%_
                                             (cons _%$%lp-hd238396239119%_
                                                   _%$%args238398239114%_))))
                                        (let ((_%$%args238399239124%_
                                               (reverse _%$%args238398239114%_)))
                                          (let ((_%$%g238347239126%_
                                                 _%$%args238399239124%_)
                                                (_%$%g238348239127%_
                                                 _%$%hd238389239099%_)
                                                (_%$%g238349239128%_
                                                 _%$%hd238380239075%_)
                                                (_%$%g238350239129%_
                                                 _%$%hd238371239051%_)
                                                (_%$%g238351239130%_
                                                 _%$%hd238362239027%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g238351239130%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g238350239129%_
                                                        'call-method))
                                                     (let ((__tmp244971
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self238291%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g238349239128%_
                                                        __tmp244971)))
                                                (_%__kont244284244285%_
                                                 _%$%g238347239126%_
                                                 _%$%g238348239127%_
                                                 _%$%g238349239128%_
                                                 _%$%g238350239129%_
                                                 _%$%g238351239130%_)
                                                (_%__kont244296244297%_))))))))
                          (_%$%loop238394239109%_
                           _%$%target238391239104%_
                           '()))))
                     (_%__match244451244452%_
                      (lambda (_%$%e238352239000%_
                               _%$%hd238353239003%_
                               _%$%tl238354239005%_
                               _%$%e238355239008%_
                               _%$%hd238356239011%_
                               _%$%tl238357239013%_
                               _%$%e238358239016%_
                               _%$%hd238359239019%_
                               _%$%tl238360239021%_
                               _%$%e238361239024%_
                               _%$%hd238362239027%_
                               _%$%tl238363239029%_
                               _%$%e238364239032%_
                               _%$%hd238365239035%_
                               _%$%tl238366239037%_
                               _%$%e238367239040%_
                               _%$%hd238368239043%_
                               _%$%tl238369239045%_
                               _%$%e238370239048%_
                               _%$%hd238371239051%_
                               _%$%tl238372239053%_
                               _%$%e238373239056%_
                               _%$%hd238374239059%_
                               _%$%tl238375239061%_
                               _%$%e238376239064%_
                               _%$%hd238377239067%_
                               _%$%tl238378239069%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%$%hd238377239067%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl238378239069%_))
                                (let ((_%$%e238379239072%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl238378239069%_))))
                                  (let ((_%$%tl238381239077%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e238379239072%_)))
                                        (_%$%hd238380239075%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e238379239072%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl238381239077%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl238375239061%_))
                                            (let ((_%$%e238382239080%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl238375239061%_))))
                                              (let ((_%$%tl238384239085%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e238382239080%_)))
                                                    (_%$%hd238383239083%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e238382239080%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd238383239083%_))
                                                    (let ((_%$%e238385239088%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd238383239083%_))))
                                                      (let ((_%$%tl238387239093%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e238385239088%_)))
                    (_%$%hd238386239091%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e238385239088%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd238386239091%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%$%hd238386239091%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl238387239093%_))
                            (let ((_%$%e238388239096%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl238387239093%_))))
                              (let ((_%$%tl238390239101%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e238388239096%_)))
                                    (_%$%hd238389239099%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e238388239096%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl238390239101%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl238384239085%_))
                                        (let ((_%__splice244286244287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl238384239085%_
                                                  '0))))
                                          (let ((_%$%tl238393239106%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice244286244287%_
                                                    '1)))
                                                (_%$%target238391239104%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice244286244287%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl238393239106%_))
                                                (_%__match244493244494%_
                                                 _%$%e238352239000%_
                                                 _%$%hd238353239003%_
                                                 _%$%tl238354239005%_
                                                 _%$%e238355239008%_
                                                 _%$%hd238356239011%_
                                                 _%$%tl238357239013%_
                                                 _%$%e238358239016%_
                                                 _%$%hd238359239019%_
                                                 _%$%tl238360239021%_
                                                 _%$%e238361239024%_
                                                 _%$%hd238362239027%_
                                                 _%$%tl238363239029%_
                                                 _%$%e238364239032%_
                                                 _%$%hd238365239035%_
                                                 _%$%tl238366239037%_
                                                 _%$%e238367239040%_
                                                 _%$%hd238368239043%_
                                                 _%$%tl238369239045%_
                                                 _%$%e238370239048%_
                                                 _%$%hd238371239051%_
                                                 _%$%tl238372239053%_
                                                 _%$%e238373239056%_
                                                 _%$%hd238374239059%_
                                                 _%$%tl238375239061%_
                                                 _%$%e238376239064%_
                                                 _%$%hd238377239067%_
                                                 _%$%tl238378239069%_
                                                 _%$%e238379239072%_
                                                 _%$%hd238380239075%_
                                                 _%$%tl238381239077%_
                                                 _%$%e238382239080%_
                                                 _%$%hd238383239083%_
                                                 _%$%tl238384239085%_
                                                 _%$%e238385239088%_
                                                 _%$%hd238386239091%_
                                                 _%$%tl238387239093%_
                                                 _%$%e238388239096%_
                                                 _%$%hd238389239099%_
                                                 _%$%tl238390239101%_
                                                 _%__splice244286244287%_
                                                 _%$%target238391239104%_
                                                 _%$%tl238393239106%_)
                                                (_%__kont244296244297%_))))
                                        (_%__kont244296244297%_))
                                    (_%__kont244296244297%_))))
                            (_%__kont244296244297%_))
                        (_%__kont244296244297%_))
                    (_%__kont244296244297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont244296244297%_))))
                                            (_%__match244775244776%_
                                             _%$%e238352239000%_
                                             _%$%hd238353239003%_
                                             _%$%tl238354239005%_
                                             _%$%e238355239008%_
                                             _%$%hd238356239011%_
                                             _%$%tl238357239013%_
                                             _%$%e238358239016%_
                                             _%$%hd238359239019%_
                                             _%$%tl238360239021%_
                                             _%$%e238361239024%_
                                             _%$%hd238362239027%_
                                             _%$%tl238363239029%_
                                             _%$%e238364239032%_
                                             _%$%hd238365239035%_
                                             _%$%tl238366239037%_
                                             _%$%e238367239040%_
                                             _%$%hd238368239043%_
                                             _%$%tl238369239045%_
                                             _%$%e238370239048%_
                                             _%$%hd238371239051%_
                                             _%$%tl238372239053%_
                                             _%$%e238373239056%_
                                             _%$%hd238374239059%_
                                             _%$%tl238375239061%_))
                                        (_%__match244775244776%_
                                         _%$%e238352239000%_
                                         _%$%hd238353239003%_
                                         _%$%tl238354239005%_
                                         _%$%e238355239008%_
                                         _%$%hd238356239011%_
                                         _%$%tl238357239013%_
                                         _%$%e238358239016%_
                                         _%$%hd238359239019%_
                                         _%$%tl238360239021%_
                                         _%$%e238361239024%_
                                         _%$%hd238362239027%_
                                         _%$%tl238363239029%_
                                         _%$%e238364239032%_
                                         _%$%hd238365239035%_
                                         _%$%tl238366239037%_
                                         _%$%e238367239040%_
                                         _%$%hd238368239043%_
                                         _%$%tl238369239045%_
                                         _%$%e238370239048%_
                                         _%$%hd238371239051%_
                                         _%$%tl238372239053%_
                                         _%$%e238373239056%_
                                         _%$%hd238374239059%_
                                         _%$%tl238375239061%_))))
                                (_%__match244775244776%_
                                 _%$%e238352239000%_
                                 _%$%hd238353239003%_
                                 _%$%tl238354239005%_
                                 _%$%e238355239008%_
                                 _%$%hd238356239011%_
                                 _%$%tl238357239013%_
                                 _%$%e238358239016%_
                                 _%$%hd238359239019%_
                                 _%$%tl238360239021%_
                                 _%$%e238361239024%_
                                 _%$%hd238362239027%_
                                 _%$%tl238363239029%_
                                 _%$%e238364239032%_
                                 _%$%hd238365239035%_
                                 _%$%tl238366239037%_
                                 _%$%e238367239040%_
                                 _%$%hd238368239043%_
                                 _%$%tl238369239045%_
                                 _%$%e238370239048%_
                                 _%$%hd238371239051%_
                                 _%$%tl238372239053%_
                                 _%$%e238373239056%_
                                 _%$%hd238374239059%_
                                 _%$%tl238375239061%_))
                            (_%__match244561244562%_
                             _%$%e238352239000%_
                             _%$%hd238353239003%_
                             _%$%tl238354239005%_
                             _%$%e238355239008%_
                             _%$%hd238356239011%_
                             _%$%tl238357239013%_
                             _%$%e238358239016%_
                             _%$%hd238359239019%_
                             _%$%tl238360239021%_
                             _%$%e238361239024%_
                             _%$%hd238362239027%_
                             _%$%tl238363239029%_
                             _%$%e238364239032%_
                             _%$%hd238365239035%_
                             _%$%tl238366239037%_
                             _%$%e238367239040%_
                             _%$%hd238368239043%_
                             _%$%tl238369239045%_
                             _%$%e238370239048%_
                             _%$%hd238371239051%_
                             _%$%tl238372239053%_
                             _%$%e238373239056%_
                             _%$%hd238374239059%_
                             _%$%tl238375239061%_
                             _%$%e238376239064%_
                             _%$%hd238377239067%_
                             _%$%tl238378239069%_))))
                     (_%__match244383244384%_
                      (lambda (_%$%e238308239190%_
                               _%$%hd238309239193%_
                               _%$%tl238310239195%_
                               _%$%e238311239198%_
                               _%$%hd238312239201%_
                               _%$%tl238313239203%_
                               _%$%e238314239206%_
                               _%$%hd238315239209%_
                               _%$%tl238316239211%_
                               _%$%e238317239214%_
                               _%$%hd238318239217%_
                               _%$%tl238319239219%_
                               _%$%e238320239222%_
                               _%$%hd238321239225%_
                               _%$%tl238322239227%_
                               _%$%e238323239230%_
                               _%$%hd238324239233%_
                               _%$%tl238325239235%_
                               _%$%e238326239238%_
                               _%$%hd238327239241%_
                               _%$%tl238328239243%_
                               _%$%e238329239246%_
                               _%$%hd238330239249%_
                               _%$%tl238331239251%_
                               _%$%e238332239254%_
                               _%$%hd238333239257%_
                               _%$%tl238334239259%_
                               _%$%e238335239262%_
                               _%$%hd238336239265%_
                               _%$%tl238337239267%_
                               _%__splice244282244283%_
                               _%$%target238338239270%_
                               _%$%tl238340239272%_)
                        (letrec ((_%$%loop238341239275%_
                                  (lambda (_%$%hd238339239278%_
                                           _%$%args238345239280%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd238339239278%_))
                                        (let ((_%$%e238342239282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd238339239278%_))))
                                          (let ((_%$%lp-tl238344239287%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e238342239282%_)))
                                                (_%$%lp-hd238343239285%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e238342239282%_))))
                                            (_%$%loop238341239275%_
                                             _%$%lp-tl238344239287%_
                                             (cons _%$%lp-hd238343239285%_
                                                   _%$%args238345239280%_))))
                                        (let ((_%$%args238346239290%_
                                               (reverse _%$%args238345239280%_)))
                                          (let ((_%$%g238304239292%_
                                                 _%$%args238346239290%_)
                                                (_%$%g238305239293%_
                                                 _%$%hd238336239265%_)
                                                (_%$%g238306239294%_
                                                 _%$%hd238327239241%_)
                                                (_%$%g238307239295%_
                                                 _%$%hd238318239217%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g238307239295%_
                                                        'call-method))
                                                     (let ((__tmp244972
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self238291%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g238306239294%_
                                                        __tmp244972)))
                                                (_%__kont244280244281%_
                                                 _%$%g238304239292%_
                                                 _%$%g238305239293%_
                                                 _%$%g238306239294%_
                                                 _%$%g238307239295%_)
                                                (_%__match244571244572%_
                                                 _%$%e238308239190%_
                                                 _%$%hd238309239193%_
                                                 _%$%tl238310239195%_
                                                 _%$%e238311239198%_
                                                 _%$%hd238312239201%_
                                                 _%$%tl238313239203%_
                                                 _%$%e238314239206%_
                                                 _%$%hd238315239209%_
                                                 _%$%tl238316239211%_
                                                 _%$%e238317239214%_
                                                 _%$%hd238318239217%_
                                                 _%$%tl238319239219%_
                                                 _%$%e238320239222%_
                                                 _%$%hd238321239225%_
                                                 _%$%tl238322239227%_
                                                 _%$%e238323239230%_
                                                 _%$%hd238324239233%_
                                                 _%$%tl238325239235%_
                                                 _%$%e238326239238%_
                                                 _%$%hd238327239241%_
                                                 _%$%tl238328239243%_
                                                 _%$%e238329239246%_
                                                 _%$%hd238330239249%_
                                                 _%$%tl238331239251%_
                                                 _%$%e238332239254%_
                                                 _%$%hd238333239257%_
                                                 _%$%tl238334239259%_
                                                 _%$%e238335239262%_
                                                 _%$%hd238336239265%_
                                                 _%$%tl238337239267%_))))))))
                          (_%$%loop238341239275%_
                           _%$%target238338239270%_
                           '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx244278244279%_))
                    (let ((_%$%e238308239190%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx244278244279%_))))
                      (let ((_%$%tl238310239195%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e238308239190%_)))
                            (_%$%hd238309239193%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e238308239190%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl238310239195%_))
                            (let ((_%$%e238311239198%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl238310239195%_))))
                              (let ((_%$%tl238313239203%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e238311239198%_)))
                                    (_%$%hd238312239201%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e238311239198%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd238312239201%_))
                                    (let ((_%$%e238314239206%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd238312239201%_))))
                                      (let ((_%$%tl238316239211%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e238314239206%_)))
                                            (_%$%hd238315239209%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e238314239206%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd238315239209%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd238315239209%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl238316239211%_))
                                                    (let ((_%$%e238317239214%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl238316239211%_))))
                                                      (let ((_%$%tl238319239219%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e238317239214%_)))
                    (_%$%hd238318239217%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e238317239214%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl238319239219%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl238313239203%_))
                        (let ((_%$%e238320239222%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl238313239203%_))))
                          (let ((_%$%tl238322239227%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e238320239222%_)))
                                (_%$%hd238321239225%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e238320239222%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd238321239225%_))
                                (let ((_%$%e238323239230%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd238321239225%_))))
                                  (let ((_%$%tl238325239235%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e238323239230%_)))
                                        (_%$%hd238324239233%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e238323239230%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd238324239233%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%$%hd238324239233%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl238325239235%_))
                                                (let ((_%$%e238326239238%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl238325239235%_))))
                                                  (let ((_%$%tl238328239243%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e238326239238%_)))
                                                        (_%$%hd238327239241%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e238326239238%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl238328239243%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl238322239227%_))
                                                            (let ((_%$%e238329239246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl238322239227%_))))
                      (let ((_%$%tl238331239251%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e238329239246%_)))
                            (_%$%hd238330239249%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e238329239246%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd238330239249%_))
                            (let ((_%$%e238332239254%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd238330239249%_))))
                              (let ((_%$%tl238334239259%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e238332239254%_)))
                                    (_%$%hd238333239257%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e238332239254%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd238333239257%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd238333239257%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl238334239259%_))
                                            (let ((_%$%e238335239262%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl238334239259%_))))
                                              (let ((_%$%tl238337239267%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e238335239262%_)))
                                                    (_%$%hd238336239265%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e238335239262%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl238337239267%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl238331239251%_))
                                                        (let ((_%__splice244282244283%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl238331239251%_
                          '0))))
                  (let ((_%$%tl238340239272%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice244282244283%_ '1)))
                        (_%$%target238338239270%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice244282244283%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl238340239272%_))
                        (_%__match244383244384%_
                         _%$%e238308239190%_
                         _%$%hd238309239193%_
                         _%$%tl238310239195%_
                         _%$%e238311239198%_
                         _%$%hd238312239201%_
                         _%$%tl238313239203%_
                         _%$%e238314239206%_
                         _%$%hd238315239209%_
                         _%$%tl238316239211%_
                         _%$%e238317239214%_
                         _%$%hd238318239217%_
                         _%$%tl238319239219%_
                         _%$%e238320239222%_
                         _%$%hd238321239225%_
                         _%$%tl238322239227%_
                         _%$%e238323239230%_
                         _%$%hd238324239233%_
                         _%$%tl238325239235%_
                         _%$%e238326239238%_
                         _%$%hd238327239241%_
                         _%$%tl238328239243%_
                         _%$%e238329239246%_
                         _%$%hd238330239249%_
                         _%$%tl238331239251%_
                         _%$%e238332239254%_
                         _%$%hd238333239257%_
                         _%$%tl238334239259%_
                         _%$%e238335239262%_
                         _%$%hd238336239265%_
                         _%$%tl238337239267%_
                         _%__splice244282244283%_
                         _%$%target238338239270%_
                         _%$%tl238340239272%_)
                        (_%__match244571244572%_
                         _%$%e238308239190%_
                         _%$%hd238309239193%_
                         _%$%tl238310239195%_
                         _%$%e238311239198%_
                         _%$%hd238312239201%_
                         _%$%tl238313239203%_
                         _%$%e238314239206%_
                         _%$%hd238315239209%_
                         _%$%tl238316239211%_
                         _%$%e238317239214%_
                         _%$%hd238318239217%_
                         _%$%tl238319239219%_
                         _%$%e238320239222%_
                         _%$%hd238321239225%_
                         _%$%tl238322239227%_
                         _%$%e238323239230%_
                         _%$%hd238324239233%_
                         _%$%tl238325239235%_
                         _%$%e238326239238%_
                         _%$%hd238327239241%_
                         _%$%tl238328239243%_
                         _%$%e238329239246%_
                         _%$%hd238330239249%_
                         _%$%tl238331239251%_
                         _%$%e238332239254%_
                         _%$%hd238333239257%_
                         _%$%tl238334239259%_
                         _%$%e238335239262%_
                         _%$%hd238336239265%_
                         _%$%tl238337239267%_))))
                (_%__match244571244572%_
                 _%$%e238308239190%_
                 _%$%hd238309239193%_
                 _%$%tl238310239195%_
                 _%$%e238311239198%_
                 _%$%hd238312239201%_
                 _%$%tl238313239203%_
                 _%$%e238314239206%_
                 _%$%hd238315239209%_
                 _%$%tl238316239211%_
                 _%$%e238317239214%_
                 _%$%hd238318239217%_
                 _%$%tl238319239219%_
                 _%$%e238320239222%_
                 _%$%hd238321239225%_
                 _%$%tl238322239227%_
                 _%$%e238323239230%_
                 _%$%hd238324239233%_
                 _%$%tl238325239235%_
                 _%$%e238326239238%_
                 _%$%hd238327239241%_
                 _%$%tl238328239243%_
                 _%$%e238329239246%_
                 _%$%hd238330239249%_
                 _%$%tl238331239251%_
                 _%$%e238332239254%_
                 _%$%hd238333239257%_
                 _%$%tl238334239259%_
                 _%$%e238335239262%_
                 _%$%hd238336239265%_
                 _%$%tl238337239267%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match244775244776%_
                                                     _%$%e238308239190%_
                                                     _%$%hd238309239193%_
                                                     _%$%tl238310239195%_
                                                     _%$%e238311239198%_
                                                     _%$%hd238312239201%_
                                                     _%$%tl238313239203%_
                                                     _%$%e238314239206%_
                                                     _%$%hd238315239209%_
                                                     _%$%tl238316239211%_
                                                     _%$%e238317239214%_
                                                     _%$%hd238318239217%_
                                                     _%$%tl238319239219%_
                                                     _%$%e238320239222%_
                                                     _%$%hd238321239225%_
                                                     _%$%tl238322239227%_
                                                     _%$%e238323239230%_
                                                     _%$%hd238324239233%_
                                                     _%$%tl238325239235%_
                                                     _%$%e238326239238%_
                                                     _%$%hd238327239241%_
                                                     _%$%tl238328239243%_
                                                     _%$%e238329239246%_
                                                     _%$%hd238330239249%_
                                                     _%$%tl238331239251%_))))
                                            (_%__match244775244776%_
                                             _%$%e238308239190%_
                                             _%$%hd238309239193%_
                                             _%$%tl238310239195%_
                                             _%$%e238311239198%_
                                             _%$%hd238312239201%_
                                             _%$%tl238313239203%_
                                             _%$%e238314239206%_
                                             _%$%hd238315239209%_
                                             _%$%tl238316239211%_
                                             _%$%e238317239214%_
                                             _%$%hd238318239217%_
                                             _%$%tl238319239219%_
                                             _%$%e238320239222%_
                                             _%$%hd238321239225%_
                                             _%$%tl238322239227%_
                                             _%$%e238323239230%_
                                             _%$%hd238324239233%_
                                             _%$%tl238325239235%_
                                             _%$%e238326239238%_
                                             _%$%hd238327239241%_
                                             _%$%tl238328239243%_
                                             _%$%e238329239246%_
                                             _%$%hd238330239249%_
                                             _%$%tl238331239251%_))
                                        (_%__match244451244452%_
                                         _%$%e238308239190%_
                                         _%$%hd238309239193%_
                                         _%$%tl238310239195%_
                                         _%$%e238311239198%_
                                         _%$%hd238312239201%_
                                         _%$%tl238313239203%_
                                         _%$%e238314239206%_
                                         _%$%hd238315239209%_
                                         _%$%tl238316239211%_
                                         _%$%e238317239214%_
                                         _%$%hd238318239217%_
                                         _%$%tl238319239219%_
                                         _%$%e238320239222%_
                                         _%$%hd238321239225%_
                                         _%$%tl238322239227%_
                                         _%$%e238323239230%_
                                         _%$%hd238324239233%_
                                         _%$%tl238325239235%_
                                         _%$%e238326239238%_
                                         _%$%hd238327239241%_
                                         _%$%tl238328239243%_
                                         _%$%e238329239246%_
                                         _%$%hd238330239249%_
                                         _%$%tl238331239251%_
                                         _%$%e238332239254%_
                                         _%$%hd238333239257%_
                                         _%$%tl238334239259%_))
                                    (_%__match244775244776%_
                                     _%$%e238308239190%_
                                     _%$%hd238309239193%_
                                     _%$%tl238310239195%_
                                     _%$%e238311239198%_
                                     _%$%hd238312239201%_
                                     _%$%tl238313239203%_
                                     _%$%e238314239206%_
                                     _%$%hd238315239209%_
                                     _%$%tl238316239211%_
                                     _%$%e238317239214%_
                                     _%$%hd238318239217%_
                                     _%$%tl238319239219%_
                                     _%$%e238320239222%_
                                     _%$%hd238321239225%_
                                     _%$%tl238322239227%_
                                     _%$%e238323239230%_
                                     _%$%hd238324239233%_
                                     _%$%tl238325239235%_
                                     _%$%e238326239238%_
                                     _%$%hd238327239241%_
                                     _%$%tl238328239243%_
                                     _%$%e238329239246%_
                                     _%$%hd238330239249%_
                                     _%$%tl238331239251%_))))
                            (_%__match244775244776%_
                             _%$%e238308239190%_
                             _%$%hd238309239193%_
                             _%$%tl238310239195%_
                             _%$%e238311239198%_
                             _%$%hd238312239201%_
                             _%$%tl238313239203%_
                             _%$%e238314239206%_
                             _%$%hd238315239209%_
                             _%$%tl238316239211%_
                             _%$%e238317239214%_
                             _%$%hd238318239217%_
                             _%$%tl238319239219%_
                             _%$%e238320239222%_
                             _%$%hd238321239225%_
                             _%$%tl238322239227%_
                             _%$%e238323239230%_
                             _%$%hd238324239233%_
                             _%$%tl238325239235%_
                             _%$%e238326239238%_
                             _%$%hd238327239241%_
                             _%$%tl238328239243%_
                             _%$%e238329239246%_
                             _%$%hd238330239249%_
                             _%$%tl238331239251%_))))
                    (_%__match244713244714%_
                     _%$%e238308239190%_
                     _%$%hd238309239193%_
                     _%$%tl238310239195%_
                     _%$%e238311239198%_
                     _%$%hd238312239201%_
                     _%$%tl238313239203%_
                     _%$%e238314239206%_
                     _%$%hd238315239209%_
                     _%$%tl238316239211%_
                     _%$%e238317239214%_
                     _%$%hd238318239217%_
                     _%$%tl238319239219%_
                     _%$%e238320239222%_
                     _%$%hd238321239225%_
                     _%$%tl238322239227%_
                     _%$%e238323239230%_
                     _%$%hd238324239233%_
                     _%$%tl238325239235%_
                     _%$%e238326239238%_
                     _%$%hd238327239241%_
                     _%$%tl238328239243%_))
                (_%__kont244296244297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont244296244297%_))
                                            (_%__kont244296244297%_))
                                        (_%__kont244296244297%_))))
                                (_%__kont244296244297%_))))
                        (_%__kont244296244297%_))
                    (_%__kont244296244297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont244296244297%_))
                                                (_%__kont244296244297%_))
                                            (_%__kont244296244297%_))))
                                    (_%__kont244296244297%_))))
                            (_%__kont244296244297%_))))
                    (_%__kont244296244297%_))))))))))
