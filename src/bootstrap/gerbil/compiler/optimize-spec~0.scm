(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1781138364)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp237960 (list gxc#::identity::t))
            (__tmp237959 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp237960
         '()
         __tmp237959
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args236757%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args236757%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp237961
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
        (__make-atomic-promise __tmp237961)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx236749%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self236752%_
                (let ((__obj237952
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj237952))
               (__tmp237962
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self236752%_ _%stx236749%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp237962
           gxc#current-compile-method
           _%self236752%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp237964 (list gxc#::false::t))
            (__tmp237963 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp237964
         '()
         __tmp237963
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args236746%_
        (apply make-instance gxc#::extract-receiver::t _%$args236746%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp237965
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
        (__make-atomic-promise __tmp237965)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx236738%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self236741%_
                (let ((__obj237954
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj237954))
               (__tmp237966
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self236741%_ _%stx236738%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp237966
           gxc#current-compile-method
           _%self236741%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp237968 (list gxc#::void::t))
            (__tmp237967 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp237968
         '(receiver methods slots)
         __tmp237967
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args236735%_
        (apply make-instance gxc#::collect-object-refs::t _%$args236735%_)))
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
      (let ((__tmp237969
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
        (__make-atomic-promise __tmp237969)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords236704%_
               _%$%receiver236699236705%_
               _%$%methods236700236706%_
               _%$%slots236701236707%_
               _%stx236708%_)
        (let* ((_%receiver236711%_
                (if (eq? _%$%receiver236699236705%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver236699236705%_))
               (_%methods236713%_
                (if (eq? _%$%methods236700236706%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods236700236706%_))
               (_%slots236715%_
                (if (eq? _%$%slots236701236707%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots236701236707%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self236717%_
                  (let ((__obj237956
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
                       __obj237956
                       _%receiver236711%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj237956
                       _%methods236713%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj237956
                       _%slots236715%_
                       '3
                       '#f
                       '#f))
                    __obj237956))
                 (__tmp237970
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self236717%_ _%stx236708%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp237970
             gxc#current-compile-method
             _%self236717%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords236724%_ . _%args236725%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords236724%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords236724%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords236724%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords236724%_
                  'slots:
                  absent-value))
               _%args236725%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%$%args236702236731%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%$%args236702236731%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp237972 (list gxc#::basic-xform-expression::t))
            (__tmp237971 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp237972
         '(receiver klass methods slots)
         __tmp237971
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args236695%_
        (apply make-instance gxc#::subst-object-refs::t _%$args236695%_)))
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
      (let ((__tmp237973
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
        (__make-atomic-promise __tmp237973)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords236661%_
               _%$%receiver236655236662%_
               _%$%klass236656236663%_
               _%$%methods236657236664%_
               _%$%slots236658236665%_
               _%stx236666%_)
        (let* ((_%receiver236669%_
                (if (eq? _%$%receiver236655236662%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver236655236662%_))
               (_%klass236671%_
                (if (eq? _%$%klass236656236663%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%$%klass236656236663%_))
               (_%methods236673%_
                (if (eq? _%$%methods236657236664%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods236657236664%_))
               (_%slots236675%_
                (if (eq? _%$%slots236658236665%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots236658236665%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self236677%_
                  (let ((__obj237958
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
                       __obj237958
                       _%receiver236669%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj237958
                       _%klass236671%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj237958
                       _%methods236673%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj237958
                       _%slots236675%_
                       '4
                       '#f
                       '#f))
                    __obj237958))
                 (__tmp237974
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self236677%_ _%stx236666%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp237974
             gxc#current-compile-method
             _%self236677%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords236684%_ . _%args236685%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords236684%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords236684%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords236684%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords236684%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords236684%_
                  'slots:
                  absent-value))
               _%args236685%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%$%args236659236691%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%$%args236659236691%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self233786%_ _%stx233787%_)
        (letrec ((_%generate-method-bind233789%_
                  (lambda (_%$klass236647%_
                           _%$method-table236648%_
                           _%id236649%_
                           _%$id236650%_)
                    (let ((_%$tmp236652%_
                           (let ((__tmp237975
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp237975))))
                      (cons (cons _%$id236650%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp236652%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table236648%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id236649%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp236652%_ '()))
                    (cons (cons '%#ref (cons _%$tmp236652%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id236649%_
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
                 (_%generate-slot-bind233790%_
                  (lambda (_%$klass236641%_ _%id236642%_ _%$id236643%_)
                    (let ((_%$tmp236645%_
                           (let ((__tmp237976
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp237976))))
                      (cons (cons _%$id236643%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp236645%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass236641%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id236642%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp236645%_ '()))
                        (cons (cons '%#ref (cons _%$tmp236645%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id236642%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl233791%_
                  (lambda (_%$klass236635%_
                           _%$method-table236636%_
                           _%methods-bind236637%_
                           _%slots-bind236638%_
                           _%specializer-impl236639%_)
                    (let ((__tmp237977
                           (cons '%#lambda
                                 (cons (cons _%$klass236635%_
                                             (cons _%$method-table236636%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind236638%_
                                                            _%methods-bind236637%_))
                                                         (cons _%specializer-impl236639%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp237977 _%stx233787%_))))
                 (_%generate-specializer-def233792%_
                  (lambda (_%id236631%_
                           _%specializer-id236632%_
                           _%specializer-impl236633%_)
                    (let ((__tmp237978
                           (cons '%#begin
                                 (cons _%stx233787%_
                                       (cons (let ((__tmp237979
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id236632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl236633%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp237979
                                                _%stx233787%_))
                                             (cons (let ((__tmp237980
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id236631%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id236632%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp237980
                                                      _%stx233787%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp237978 _%stx233787%_)))))
          (let* ((_%__stx236846236847%_ _%stx233787%_)
                 (_%$%g233795233815%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx236846236847%_)))))
            (let ((_%__kont236848236849%_
                   (lambda (_%$%g233797233859%_ _%$%g233798233860%_)
                     (let ((_%method-calls233879%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs233880%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty233881%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?233883%_
                                 (lambda ()
                                   (if (let ((__tmp237981
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls233879%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp237981))
                                       (let ((__tmp237982
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs233880%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp237982))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%$%g233797233859%_))
                             (let* ((_%__stx236760236761%_ _%$%g233797233859%_)
                                    (_%$%g234267234285%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx236760236761%_)))))
                               (let ((_%__kont236762236763%_
                                      (lambda (_%$%g234269234321%_
                                               _%$%g234270234322%_
                                               _%$%g234271234323%_)
                                        (let ((_%receiver234343%_
                                               (let ((_%$e234340%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%g234269234321%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e234340%_
                                                     _%$e234340%_
                                                     _%$%g234271234323%_))))
                                          (for-each
                                           (lambda (_%$%g234344234346%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver234343%_
                                              _%method-calls233879%_
                                              _%slot-refs233880%_
                                              _%$%g234344234346%_))
                                           _%$%g234269234321%_)
                                          (if (_%no-specializer?233883%_)
                                              _%stx233787%_
                                              (let* ((_%specializer-id234355%_
                                                      (let* ((_%id234349%_
                                                              (let ((__tmp237983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g233798233860%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp237983 '"::specialize")))
                     (_%specializer-id234352%_
                      (let ((__tmp237984
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx233787%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id234349%_ __tmp237984))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id234352%_))
                _%specializer-id234352%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass234357%_
                                                      (let ((__tmp237985
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp237985)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table234359%_
                                                      (let ((__tmp237986
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp237986)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods234361%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls233879%_)))
                                                     (_%$methods234365%_
                                                      (let ((__tmp237987
                                                             (lambda (_%id234363%_)
                                                               (let ((__tmp237988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id234363%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp237988)))))
                (declare (not safe))
                (##map __tmp237987 _%methods234361%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_234374%_
                                                      (let ((__tmp237989
                                                             (lambda (_%$%g234366234369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g234367234371%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls233879%_
                          _%$%g234366234369%_
                          _%$%g234367234371%_)))))
                (declare (not safe))
                (##for-each __tmp237989 _%methods234361%_ _%$methods234365%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind234384%_
                                                      (let ((__tmp237990
                                                             (lambda (_%$%g234376234379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g234377234381%_)
                       (_%generate-method-bind233789%_
                        _%$klass234357%_
                        _%$method-table234359%_
                        _%$%g234376234379%_
                        _%$%g234377234381%_))))
                (declare (not safe))
                (##map __tmp237990 _%methods234361%_ _%$methods234365%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots234386%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs233880%_)))
                                                     (_%$slots234390%_
                                                      (let ((__tmp237991
                                                             (lambda (_%id234388%_)
                                                               (let ((__tmp237992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id234388%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp237992)))))
                (declare (not safe))
                (##map __tmp237991 _%slots234386%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_234399%_
                                                      (let ((__tmp237993
                                                             (lambda (_%$%g234391234394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g234392234396%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs233880%_
                          _%$%g234391234394%_
                          _%$%g234392234396%_)))))
                (declare (not safe))
                (##for-each __tmp237993 _%slots234386%_ _%$slots234390%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind234408%_
                                                      (let ((__tmp237994
                                                             (lambda (_%$%g234400234403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g234401234405%_)
                       (_%generate-slot-bind233790%_
                        _%$klass234357%_
                        _%$%g234400234403%_
                        _%$%g234401234405%_))))
                (declare (not safe))
                (##map __tmp237994 _%slots234386%_ _%$slots234390%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body234414%_
                                                      (map (lambda (_%$%g234409234411%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver234343%_
                                                              _%$klass234357%_
                                                              _%method-calls233879%_
                                                              _%slot-refs233880%_
                                                              _%$%g234409234411%_))
                                                           _%$%g234269234321%_))
                                                     (_%specializer-impl234416%_
                                                      (let ((__tmp237995
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%$%g234271234323%_ _%$%g234270234322%_)
                                 _%specializer-body234414%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp237995 _%stx233787%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl234418%_
                                                      (_%generate-specializer-impl233791%_
                                                       _%$klass234357%_
                                                       _%$method-table234359%_
                                                       _%methods-bind234384%_
                                                       _%slots-bind234408%_
                                                       _%specializer-impl234416%_)))
                                                (let ((__tmp237997
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g233798233860%_)))
                                                      (__tmp237996
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id234355%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp237997
                                                   '" => "
                                                   __tmp237996))
                                                (_%generate-specializer-def233792%_
                                                 _%$%g233798233860%_
                                                 _%specializer-id234355%_
                                                 _%specializer-impl234418%_))))))
                                     (_%__kont236764236765%_
                                      (lambda () _%stx233787%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx236760236761%_))
                                     (let ((_%$%e234272234297%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx236760236761%_))))
                                       (let ((_%$%tl234274234302%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e234272234297%_)))
                                             (_%$%hd234273234300%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e234272234297%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl234274234302%_))
                                             (let ((_%$%e234275234305%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl234274234302%_))))
                                               (let ((_%$%tl234277234310%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e234275234305%_)))
                                                     (_%$%hd234276234308%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e234275234305%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%hd234276234308%_))
                                                     (let ((_%$%e234278234313%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%hd234276234308%_))))
                                                       (let ((_%$%tl234280234318%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e234278234313%_)))
                     (_%$%hd234279234316%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e234278234313%_))))
                 (_%__kont236762236763%_
                  _%$%tl234277234310%_
                  _%$%tl234280234318%_
                  _%$%hd234279234316%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont236764236765%_))))
                                             (_%__kont236764236765%_))))
                                     (_%__kont236764236765%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%$%g233797233859%_))
                                 (let* ((_%$%g234425234444%_
                                         (lambda (_%$%g234426234441%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g234426234441%_))))
                                        (_%$%g234424234740%_
                                         (lambda (_%$%g234426234447%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%g234426234447%_))
                                               (let ((_%$%e234428234449%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g234426234447%_))))
                                                 (let ((_%$%hd234429234452%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e234428234449%_)))
                                                       (_%$%tl234430234454%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e234428234449%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%$%tl234430234454%_))
                                                       (let ((_g237998_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%$%tl234430234454%_ '0))))
                 (begin
                   (let ((_g237999_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g237998_)
                                (##values-length _g237998_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g237999_ 2)))
                         (error "Context expects 2 values" _g237999_)))
                   (let ((_%$%target234431234457%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g237998_ 0)))
                         (_%$%tl234433234459%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g237998_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl234433234459%_))
                         (letrec ((_%$%loop234434234462%_
                                   (lambda (_%$%hd234432234465%_
                                            _%$%clause234438234467%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd234432234465%_))
                                         (let ((_%$%e234435234469%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd234432234465%_))))
                                           (let ((_%$%lp-hd234436234472%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e234435234469%_)))
                                                 (_%$%lp-tl234437234474%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e234435234469%_))))
                                             (_%$%loop234434234462%_
                                              _%$%lp-tl234437234474%_
                                              (cons _%$%lp-hd234436234472%_
                                                    _%$%clause234438234467%_))))
                                         (let ((_%$%clause234439234477%_
                                                (reverse _%$%clause234438234467%_)))
                                           (for-each
                                            (lambda (_%clause234493%_)
                                              (let* ((_%__stx236786236787%_
                                                      _%clause234493%_)
                                                     (_%$%g234496234511%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx236786236787%_)))))
                                                (let ((_%__kont236788236789%_
                                                       (lambda (_%$%g234498234539%_
                                                                _%$%g234499234540%_
                                                                _%$%g234500234541%_)
                                                         (let ((_%receiver234560%_
                                                                (let ((_%$e234557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gxc#apply-extract-receiver
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f '%#begin))
                                      _%$%g234498234539%_))))
                          (if _%$e234557%_ _%$e234557%_ _%$%g234500234541%_))))
                   (for-each
                    (lambda (_%$%g234561234563%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver234560%_
                       _%method-calls233879%_
                       _%slot-refs233880%_
                       _%$%g234561234563%_))
                    _%$%g234498234539%_))))
              (_%__kont236790236791%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx236786236787%_))
                                                      (let ((_%$%e234501234523%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx236786236787%_))))
                (let ((_%$%tl234503234528%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e234501234523%_)))
                      (_%$%hd234502234526%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e234501234523%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd234502234526%_))
                      (let ((_%$%e234504234531%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd234502234526%_))))
                        (let ((_%$%tl234506234536%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e234504234531%_)))
                              (_%$%hd234505234534%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e234504234531%_))))
                          (_%__kont236788236789%_
                           _%$%tl234503234528%_
                           _%$%tl234506234536%_
                           _%$%hd234505234534%_)))
                      '#!void)))
              '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((__tmp238000
                                                   (lambda (_%$%g234568234571%_
                                                            _%$%g234569234573%_)
                                                     (cons _%$%g234568234571%_
                                                           _%$%g234569234573%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp238000
                                               '()
                                               _%$%clause234439234477%_)))
                                           (if (_%no-specializer?233883%_)
                                               _%stx233787%_
                                               (let* ((_%specializer-id234582%_
                                                       (let* ((_%id234576%_
                                                               (let ((__tmp238001
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g233798233860%_))))
                         (declare (not safe))
                         (make-symbol__1 __tmp238001 '"::specialize")))
                      (_%specializer-id234579%_
                       (let ((__tmp238002
                              (let ()
                                (declare (not safe))
                                (gx#stx-source _%stx233787%_))))
                         (declare (not safe))
                         (gx#core-quote-syntax__1 _%id234576%_ __tmp238002))))
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _%specializer-id234579%_))
                 _%specializer-id234579%_))
              (_%$klass234584%_
               (let ((__tmp238003
                      (let () (declare (not safe)) (##gensym '__klass))))
                 (declare (not safe))
                 (make-symbol__0 __tmp238003)))
              (_%$method-table234586%_
               (let ((__tmp238004
                      (let ()
                        (declare (not safe))
                        (##gensym '__method-table))))
                 (declare (not safe))
                 (make-symbol__0 __tmp238004)))
              (_%methods234588%_
               (let ()
                 (declare (not safe))
                 (__hash-keys _%method-calls233879%_)))
              (_%$methods234592%_
               (let ((__tmp238005
                      (lambda (_%id234590%_)
                        (let ((__tmp238006 (gensym _%id234590%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp238006)))))
                 (declare (not safe))
                 (##map __tmp238005 _%methods234588%_)))
              (_%_234601%_
               (let ((__tmp238007
                      (lambda (_%$%g234593234596%_ _%$%g234594234598%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%method-calls233879%_
                           _%$%g234593234596%_
                           _%$%g234594234598%_)))))
                 (declare (not safe))
                 (##for-each
                  __tmp238007
                  _%methods234588%_
                  _%$methods234592%_)))
              (_%methods-bind234611%_
               (let ((__tmp238008
                      (lambda (_%$%g234603234606%_ _%$%g234604234608%_)
                        (_%generate-method-bind233789%_
                         _%$klass234584%_
                         _%$method-table234586%_
                         _%$%g234603234606%_
                         _%$%g234604234608%_))))
                 (declare (not safe))
                 (##map __tmp238008 _%methods234588%_ _%$methods234592%_)))
              (_%slots234613%_
               (let () (declare (not safe)) (__hash-keys _%slot-refs233880%_)))
              (_%$slots234617%_
               (let ((__tmp238009
                      (lambda (_%id234615%_)
                        (let ((__tmp238010 (gensym _%id234615%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp238010)))))
                 (declare (not safe))
                 (##map __tmp238009 _%slots234613%_)))
              (_%_234626%_
               (let ((__tmp238011
                      (lambda (_%$%g234618234621%_ _%$%g234619234623%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%slot-refs233880%_
                           _%$%g234618234621%_
                           _%$%g234619234623%_)))))
                 (declare (not safe))
                 (##for-each __tmp238011 _%slots234613%_ _%$slots234617%_)))
              (_%slots-bind234635%_
               (let ((__tmp238012
                      (lambda (_%$%g234627234630%_ _%$%g234628234632%_)
                        (_%generate-slot-bind233790%_
                         _%$klass234584%_
                         _%$%g234627234630%_
                         _%$%g234628234632%_))))
                 (declare (not safe))
                 (##map __tmp238012 _%slots234613%_ _%$slots234617%_)))
              (_%specializer-clauses234733%_
               (map (lambda (_%clause234637%_)
                      (let* ((_%__stx236806236807%_ _%clause234637%_)
                             (_%$%g234640234655%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx236806236807%_)))))
                        (let ((_%__kont236808236809%_
                               (lambda (_%$%g234642234683%_
                                        _%$%g234643234684%_
                                        _%$%g234644234685%_)
                                 (let* ((_%receiver234714%_
                                         (let ((_%$e234711%_
                                                (gxc#apply-extract-receiver
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#begin))
                                                       _%$%g234642234683%_))))
                                           (if _%$e234711%_
                                               _%$e234711%_
                                               _%$%g234644234685%_)))
                                        (_%body234720%_
                                         (map (lambda (_%$%g234715234717%_)
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%receiver234714%_
                                                 _%$klass234584%_
                                                 _%method-calls233879%_
                                                 _%slot-refs233880%_
                                                 _%$%g234715234717%_))
                                              _%$%g234642234683%_)))
                                   (cons (cons _%$%g234644234685%_
                                               _%$%g234643234684%_)
                                         _%body234720%_))))
                              (_%__kont236810236811%_
                               (lambda () _%clause234637%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx236806236807%_))
                              (let ((_%$%e234645234667%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx236806236807%_))))
                                (let ((_%$%tl234647234672%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e234645234667%_)))
                                      (_%$%hd234646234670%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e234645234667%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd234646234670%_))
                                      (let ((_%$%e234648234675%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd234646234670%_))))
                                        (let ((_%$%tl234650234680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e234648234675%_)))
                                              (_%$%hd234649234678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e234648234675%_))))
                                          (_%__kont236808236809%_
                                           _%$%tl234647234672%_
                                           _%$%tl234650234680%_
                                           _%$%hd234649234678%_)))
                                      (_%__kont236810236811%_))))
                              (_%__kont236810236811%_)))))
                    (let ((__tmp238013
                           (lambda (_%$%g234725234728%_ _%$%g234726234730%_)
                             (cons _%$%g234725234728%_ _%$%g234726234730%_))))
                      (declare (not safe))
                      (foldr__0 __tmp238013 '() _%$%clause234439234477%_))))
              (_%specializer-impl234735%_
               (let ((__tmp238014
                      (cons '%#case-lambda _%specializer-clauses234733%_)))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp238014 _%stx233787%_)))
              (_%specializer-impl234737%_
               (_%generate-specializer-impl233791%_
                _%$klass234584%_
                _%$method-table234586%_
                _%methods-bind234611%_
                _%slots-bind234635%_
                _%specializer-impl234735%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp238016
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g233798233860%_)))
                                                       (__tmp238015
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%specializer-id234582%_))))
                                                   (declare (not safe))
                                                   (gxc#verbose
                                                    '"generate method specializer "
                                                    __tmp238016
                                                    '" => "
                                                    __tmp238015))
                                                 (_%generate-specializer-def233792%_
                                                  _%$%g233798233860%_
                                                  _%specializer-id234582%_
                                                  _%specializer-impl234737%_))))))))
                           (_%$%loop234434234462%_
                            _%$%target234431234457%_
                            '()))
                         (_%$%g234425234444%_ _%$%g234426234447%_)))))
               (_%$%g234425234444%_ _%$%g234426234447%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g234425234444%_
                                                _%$%g234426234447%_)))))
                                   (_%$%g234424234740%_ _%$%g233797233859%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%$%g233797233859%_))
                                     (let* ((_%$%g234744234774%_
                                             (lambda (_%$%g234745234771%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g234745234771%_))))
                                            (_%$%g234743235401%_
                                             (lambda (_%$%g234745234777%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g234745234777%_))
                                                   (let ((_%$%e234749234779%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%g234745234777%_))))
                                                     (let ((_%$%hd234750234782%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e234749234779%_)))
                                                           (_%$%tl234751234784%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e234749234779%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl234751234784%_))
                                                           (let ((_%$%e234752234787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl234751234784%_))))
                     (let ((_%$%hd234753234790%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e234752234787%_)))
                           (_%$%tl234754234792%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e234752234787%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd234753234790%_))
                           (let ((_%$%e234755234795%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd234753234790%_))))
                             (let ((_%$%hd234756234798%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e234755234795%_)))
                                   (_%$%tl234757234800%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e234755234795%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd234756234798%_))
                                   (let ((_%$%e234758234803%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd234756234798%_))))
                                     (let ((_%$%hd234759234806%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e234758234803%_)))
                                           (_%$%tl234760234808%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e234758234803%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd234759234806%_))
                                           (let ((_%$%e234761234811%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd234759234806%_))))
                                             (let ((_%$%hd234762234814%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e234761234811%_)))
                                                   (_%$%tl234763234816%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e234761234811%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl234763234816%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl234760234808%_))
                                                       (let ((_%$%e234764234819%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl234760234808%_))))
                 (let ((_%$%hd234765234822%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e234764234819%_)))
                       (_%$%tl234766234824%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e234764234819%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl234766234824%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl234757234800%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl234754234792%_))
                               (let ((_%$%e234767234827%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl234754234792%_))))
                                 (let ((_%$%hd234768234830%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e234767234827%_)))
                                       (_%$%tl234769234832%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e234767234827%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl234769234832%_))
                                       (let ()
                                         (let* ((_%$%g234861234879%_
                                                 (lambda (_%$%g234862234876%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g234862234876%_))))
                                                (_%$%g234860234935%_
                                                 (lambda (_%$%g234862234882%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g234862234882%_))
                                                       (let ((_%$%e234866234884%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g234862234882%_))))
                 (let ((_%$%hd234867234887%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e234866234884%_)))
                       (_%$%tl234868234889%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e234866234884%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl234868234889%_))
                       (let ((_%$%e234869234892%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl234868234889%_))))
                         (let ((_%$%hd234870234895%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e234869234892%_)))
                               (_%$%tl234871234897%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e234869234892%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd234870234895%_))
                               (let ((_%$%e234872234900%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%hd234870234895%_))))
                                 (let ((_%$%hd234873234903%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e234872234900%_)))
                                       (_%$%tl234874234905%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e234872234900%_))))
                                   (let ((_%receiver234929%_
                                          (let ((_%$e234926%_
                                                 (gxc#apply-extract-receiver
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#begin))
                                                        _%$%tl234871234897%_))))
                                            (if _%$e234926%_
                                                _%$e234926%_
                                                _%$%hd234873234903%_))))
                                     (for-each
                                      (lambda (_%$%g234930234932%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver234929%_
                                         _%method-calls233879%_
                                         _%slot-refs233880%_
                                         _%$%g234930234932%_))
                                      _%$%tl234871234897%_))))
                               (_%$%g234861234879%_ _%$%g234862234882%_))))
                       (_%$%g234861234879%_ _%$%g234862234882%_))))
               (_%$%g234861234879%_ _%$%g234862234882%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g234860234935%_
                                            _%$%hd234765234822%_))
                                         (let* ((_%$%g234938234957%_
                                                 (lambda (_%$%g234939234954%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g234939234954%_))))
                                                (_%$%g234937235079%_
                                                 (lambda (_%$%g234939234960%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g234939234960%_))
                                                       (let ((_%$%e234941234962%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g234939234960%_))))
                 (let ((_%$%hd234942234965%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e234941234962%_)))
                       (_%$%tl234943234967%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e234941234962%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? _%$%tl234943234967%_))
                       (let ((_g238017_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 _%$%tl234943234967%_
                                 '0))))
                         (begin
                           (let ((_g238018_
                                  (let ()
                                    (declare (not safe))
                                    (if (##values? _g238017_)
                                        (##values-length _g238017_)
                                        1))))
                             (if (not (let ()
                                        (declare (not safe))
                                        (##fx= _g238018_ 2)))
                                 (error "Context expects 2 values" _g238018_)))
                           (let ((_%$%target234944234970%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g238017_ 0)))
                                 (_%$%tl234946234972%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g238017_ 1))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl234946234972%_))
                                 (letrec ((_%$%loop234947234975%_
                                           (lambda (_%$%hd234945234978%_
                                                    _%$%clause234951234980%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd234945234978%_))
                                                 (let ((_%$%e234948234982%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd234945234978%_))))
                                                   (let ((_%$%lp-hd234949234985%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e234948234982%_)))
                                                         (_%$%lp-tl234950234987%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e234948234982%_))))
                                                     (_%$%loop234947234975%_
                                                      _%$%lp-tl234950234987%_
                                                      (cons _%$%lp-hd234949234985%_
                                                            _%$%clause234951234980%_))))
                                                 (let ((_%$%clause234952234990%_
                                                        (reverse _%$%clause234951234980%_)))
                                                   (for-each
                                                    (lambda (_%clause235005%_)
                                                      (let* ((_%$%g235007235022%_
                                                              (lambda (_%$%g235008235019%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g235008235019%_))))
                     (_%$%g235006235069%_
                      (lambda (_%$%g235008235025%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%g235008235025%_))
                            (let ((_%$%e235012235027%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g235008235025%_))))
                              (let ((_%$%hd235013235030%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e235012235027%_)))
                                    (_%$%tl235014235032%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e235012235027%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd235013235030%_))
                                    (let ((_%$%e235015235035%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd235013235030%_))))
                                      (let ((_%$%hd235016235038%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e235015235035%_)))
                                            (_%$%tl235017235040%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e235015235035%_))))
                                        (let ((_%receiver235063%_
                                               (let ((_%$e235060%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%tl235014235032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e235060%_
                                                     _%$e235060%_
                                                     _%$%hd235016235038%_))))
                                          (for-each
                                           (lambda (_%$%g235064235066%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver235063%_
                                              _%method-calls233879%_
                                              _%slot-refs233880%_
                                              _%$%g235064235066%_))
                                           _%$%tl235014235032%_))))
                                    (_%$%g235007235022%_
                                     _%$%g235008235025%_))))
                            (_%$%g235007235022%_ _%$%g235008235025%_)))))
                (_%$%g235006235069%_ _%clause235005%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp238019
                                                           (lambda (_%$%g235071235074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g235072235076%_)
                     (cons _%$%g235071235074%_ _%$%g235072235076%_))))
              (declare (not safe))
              (foldr__0 __tmp238019 '() _%$%clause234952234990%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%loop234947234975%_
                                    _%$%target234944234970%_
                                    '()))
                                 (_%$%g234938234957%_ _%$%g234939234960%_)))))
                       (_%$%g234938234957%_ _%$%g234939234960%_))))
               (_%$%g234938234957%_ _%$%g234939234960%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g234937235079%_
                                            _%$%hd234768234830%_))
                                         (if (_%no-specializer?233883%_)
                                             _%stx233787%_
                                             (let* ((_%specializer-id235088%_
                                                     (let* ((_%id235082%_
                                                             (let ((__tmp238020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g233798233860%_))))
                       (declare (not safe))
                       (make-symbol__1 __tmp238020 '"::specialize")))
                    (_%specializer-id235085%_
                     (let ((__tmp238021
                            (let ()
                              (declare (not safe))
                              (gx#stx-source _%stx233787%_))))
                       (declare (not safe))
                       (gx#core-quote-syntax__1 _%id235082%_ __tmp238021))))
               (let ()
                 (declare (not safe))
                 (gx#core-bind-runtime!__0 _%specializer-id235085%_))
               _%specializer-id235085%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$klass235090%_
                                                     (let ((__tmp238022
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__klass))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp238022)))
                                                    (_%$method-table235092%_
                                                     (let ((__tmp238023
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__method-table))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp238023)))
                                                    (_%methods235094%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%method-calls233879%_)))
                                                    (_%$methods235098%_
                                                     (let ((__tmp238024
                                                            (lambda (_%id235096%_)
                                                              (let ((__tmp238025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id235096%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp238025)))))
               (declare (not safe))
               (##map __tmp238024 _%methods235094%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_235107%_
                                                     (let ((__tmp238026
                                                            (lambda (_%$%g235099235102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g235100235104%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%method-calls233879%_
                         _%$%g235099235102%_
                         _%$%g235100235104%_)))))
               (declare (not safe))
               (##for-each __tmp238026 _%methods235094%_ _%$methods235098%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%methods-bind235117%_
                                                     (let ((__tmp238027
                                                            (lambda (_%$%g235109235112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g235110235114%_)
                      (_%generate-method-bind233789%_
                       _%$klass235090%_
                       _%$method-table235092%_
                       _%$%g235109235112%_
                       _%$%g235110235114%_))))
               (declare (not safe))
               (##map __tmp238027 _%methods235094%_ _%$methods235098%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots235119%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%slot-refs233880%_)))
                                                    (_%$slots235123%_
                                                     (let ((__tmp238028
                                                            (lambda (_%id235121%_)
                                                              (let ((__tmp238029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id235121%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp238029)))))
               (declare (not safe))
               (##map __tmp238028 _%slots235119%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_235132%_
                                                     (let ((__tmp238030
                                                            (lambda (_%$%g235124235127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g235125235129%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%slot-refs233880%_
                         _%$%g235124235127%_
                         _%$%g235125235129%_)))))
               (declare (not safe))
               (##for-each __tmp238030 _%slots235119%_ _%$slots235123%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots-bind235141%_
                                                     (let ((__tmp238031
                                                            (lambda (_%$%g235133235136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g235134235138%_)
                      (_%generate-slot-bind233790%_
                       _%$klass235090%_
                       _%$%g235133235136%_
                       _%$%g235134235138%_))))
               (declare (not safe))
               (##map __tmp238031 _%slots235119%_ _%$slots235123%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-lambda-expr235233%_
                                                     (let* ((_%$%g235143235161%_
                                                             (lambda (_%$%g235144235158%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g235144235158%_))))
                    (_%$%g235142235230%_
                     (lambda (_%$%g235144235164%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g235144235164%_))
                           (let ((_%$%e235148235166%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g235144235164%_))))
                             (let ((_%$%hd235149235169%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e235148235166%_)))
                                   (_%$%tl235150235171%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e235148235166%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl235150235171%_))
                                   (let ((_%$%e235151235174%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl235150235171%_))))
                                     (let ((_%$%hd235152235177%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e235151235174%_)))
                                           (_%$%tl235153235179%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e235151235174%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd235152235177%_))
                                           (let ((_%$%e235154235182%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd235152235177%_))))
                                             (let ((_%$%hd235155235185%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e235154235182%_)))
                                                   (_%$%tl235156235187%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e235154235182%_))))
                                               (let* ((_%receiver235221%_
                                                       (let ((_%$e235218%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%tl235153235179%_))))
                 (if _%$e235218%_ _%$e235218%_ _%$%hd235155235185%_)))
              (_%body235227%_
               (map (lambda (_%$%g235222235224%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver235221%_
                       _%$klass235090%_
                       _%method-calls233879%_
                       _%slot-refs233880%_
                       _%$%g235222235224%_))
                    _%$%tl235153235179%_))
              (__tmp238032
               (cons '%#lambda
                     (cons (cons _%$%hd235155235185%_ _%$%tl235156235187%_)
                           _%body235227%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp238032
                                                  _%$%hd234765234822%_))))
                                           (_%$%g235143235161%_
                                            _%$%g235144235164%_))))
                                   (_%$%g235143235161%_ _%$%g235144235164%_))))
                           (_%$%g235143235161%_ _%$%g235144235164%_)))))
               (_%$%g235142235230%_ _%$%hd234765234822%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-case-lambda-expr235394%_
                                                     (let* ((_%$%g235235235254%_
                                                             (lambda (_%$%g235236235251%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g235236235251%_))))
                    (_%$%g235234235391%_
                     (lambda (_%$%g235236235257%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g235236235257%_))
                           (let ((_%$%e235238235259%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g235236235257%_))))
                             (let ((_%$%hd235239235262%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e235238235259%_)))
                                   (_%$%tl235240235264%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e235238235259%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair/null? _%$%tl235240235264%_))
                                   (let ((_g238033_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-split-splice
                                             _%$%tl235240235264%_
                                             '0))))
                                     (begin
                                       (let ((_g238034_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g238033_)
                                                    (##values-length _g238033_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g238034_ 2)))
                                             (error "Context expects 2 values"
                                                    _g238034_)))
                                       (let ((_%$%target235241235267%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g238033_ 0)))
                                             (_%$%tl235243235269%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g238033_ 1))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%$%tl235243235269%_))
                                             (letrec ((_%$%loop235244235272%_
                                                       (lambda (_%$%hd235242235275%_
                                                                _%$%clause235248235277%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%hd235242235275%_))
                     (let ((_%$%e235245235279%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%hd235242235275%_))))
                       (let ((_%$%lp-hd235246235282%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e235245235279%_)))
                             (_%$%lp-tl235247235284%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e235245235279%_))))
                         (_%$%loop235244235272%_
                          _%$%lp-tl235247235284%_
                          (cons _%$%lp-hd235246235282%_
                                _%$%clause235248235277%_))))
                     (let* ((_%$%clause235249235287%_
                             (reverse _%$%clause235248235277%_))
                            (_%clauses235389%_
                             (map (lambda (_%clause235303%_)
                                    (let* ((_%__stx236826236827%_
                                            _%clause235303%_)
                                           (_%$%g235306235321%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%__stx236826236827%_)))))
                                      (let ((_%__kont236828236829%_
                                             (lambda (_%$%g235308235349%_
                                                      _%$%g235309235350%_
                                                      _%$%g235310235351%_)
                                               (let* ((_%receiver235370%_
                                                       (let ((_%$e235367%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%g235308235349%_))))
                 (if _%$e235367%_ _%$e235367%_ _%$%g235310235351%_)))
              (_%body235376%_
               (map (lambda (_%$%g235371235373%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver235370%_
                       _%$klass235090%_
                       _%method-calls233879%_
                       _%slot-refs233880%_
                       _%$%g235371235373%_))
                    _%$%g235308235349%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g235310235351%_
                                                             _%$%g235309235350%_)
                                                       _%body235376%_))))
                                            (_%__kont236830236831%_
                                             (lambda () _%clause235303%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%__stx236826236827%_))
                                            (let ((_%$%e235311235333%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%__stx236826236827%_))))
                                              (let ((_%$%tl235313235338%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e235311235333%_)))
                                                    (_%$%hd235312235336%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e235311235333%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd235312235336%_))
                                                    (let ((_%$%e235314235341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd235312235336%_))))
                                                      (let ((_%$%tl235316235346%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e235314235341%_)))
                    (_%$%hd235315235344%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e235314235341%_))))
                (_%__kont236828236829%_
                 _%$%tl235313235338%_
                 _%$%tl235316235346%_
                 _%$%hd235315235344%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont236830236831%_))))
                                            (_%__kont236830236831%_)))))
                                  (let ((__tmp238035
                                         (lambda (_%$%g235381235384%_
                                                  _%$%g235382235386%_)
                                           (cons _%$%g235381235384%_
                                                 _%$%g235382235386%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp238035
                                     '()
                                     _%$%clause235249235287%_))))
                            (__tmp238036
                             (cons '%#case-lambda _%clauses235389%_)))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp238036
                        _%$%hd234768234830%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop235244235272%_
                                                _%$%target235241235267%_
                                                '()))
                                             (_%$%g235235235254%_
                                              _%$%g235236235257%_)))))
                                   (_%$%g235235235254%_ _%$%g235236235257%_))))
                           (_%$%g235235235254%_ _%$%g235236235257%_)))))
               (_%$%g235234235391%_ _%$%hd234768234830%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl235396%_
                                                     (let ((__tmp238037
                                                            (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _%$%hd234762234814%_ '())
                                            (cons _%specializer-lambda-expr235233%_
                                                  '()))
                                      '())
                                (cons _%specializer-case-lambda-expr235394%_
                                      '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp238037 _%stx233787%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl235398%_
                                                     (_%generate-specializer-impl233791%_
                                                      _%$klass235090%_
                                                      _%$method-table235092%_
                                                      _%methods-bind235117%_
                                                      _%slots-bind235141%_
                                                      _%specializer-impl235396%_)))
                                               (let ((__tmp238039
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g233798233860%_)))
                                                     (__tmp238038
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%specializer-id235088%_))))
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"generate method specializer "
                                                  __tmp238039
                                                  '" => "
                                                  __tmp238038))
                                               (_%generate-specializer-def233792%_
                                                _%$%g233798233860%_
                                                _%specializer-id235088%_
                                                _%specializer-impl235398%_))))
                                       (_%$%g234744234774%_
                                        _%$%g234745234777%_))))
                               (_%$%g234744234774%_ _%$%g234745234777%_))
                           (_%$%g234744234774%_ _%$%g234745234777%_))
                       (_%$%g234744234774%_ _%$%g234745234777%_))))
               (_%$%g234744234774%_ _%$%g234745234777%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g234744234774%_
                                                    _%$%g234745234777%_))))
                                           (_%$%g234744234774%_
                                            _%$%g234745234777%_))))
                                   (_%$%g234744234774%_ _%$%g234745234777%_))))
                           (_%$%g234744234774%_ _%$%g234745234777%_))))
                   (_%$%g234744234774%_ _%$%g234745234777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g234744234774%_
                                                    _%$%g234745234777%_)))))
                                       (_%$%g234743235401%_
                                        _%$%g233797233859%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%$%g233797233859%_))
                                         (let* ((_%$%g235405235458%_
                                                 (lambda (_%$%g235406235455%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g235406235455%_))))
                                                (_%$%g235404236623%_
                                                 (lambda (_%$%g235406235461%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g235406235461%_))
                                                       (let ((_%$%e235412235463%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g235406235461%_))))
                 (let ((_%$%hd235413235466%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e235412235463%_)))
                       (_%$%tl235414235468%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e235412235463%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%$%hd235413235466%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%$%hd235413235466%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl235414235468%_))
                               (let ((_%$%e235415235471%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl235414235468%_))))
                                 (let ((_%$%hd235416235474%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e235415235471%_)))
                                       (_%$%tl235417235476%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e235415235471%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd235416235474%_))
                                       (let ((_%$%e235418235479%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd235416235474%_))))
                                         (let ((_%$%hd235419235482%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e235418235479%_)))
                                               (_%$%tl235420235484%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e235418235479%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd235419235482%_))
                                               (let ((_%$%e235421235487%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd235419235482%_))))
                                                 (let ((_%$%hd235422235490%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e235421235487%_)))
                                                       (_%$%tl235423235492%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e235421235487%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%hd235422235490%_))
                                                       (let ((_%$%e235424235495%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%hd235422235490%_))))
                 (let ((_%$%hd235425235498%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e235424235495%_)))
                       (_%$%tl235426235500%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e235424235495%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl235426235500%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl235423235492%_))
                           (let ((_%$%e235427235503%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl235423235492%_))))
                             (let ((_%$%hd235428235506%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e235427235503%_)))
                                   (_%$%tl235429235508%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e235427235503%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd235428235506%_))
                                   (let ((_%$%e235430235511%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd235428235506%_))))
                                     (let ((_%$%hd235431235514%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e235430235511%_)))
                                           (_%$%tl235432235516%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e235430235511%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd235431235514%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%$%hd235431235514%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl235432235516%_))
                                                   (let ((_%$%e235433235519%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl235432235516%_))))
                                                     (let ((_%$%hd235434235522%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e235433235519%_)))
                                                           (_%$%tl235435235524%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e235433235519%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd235434235522%_))
                                                           (let ((_%$%e235436235527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd235434235522%_))))
                     (let ((_%$%hd235437235530%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e235436235527%_)))
                           (_%$%tl235438235532%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e235436235527%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd235437235530%_))
                           (let ((_%$%e235439235535%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd235437235530%_))))
                             (let ((_%$%hd235440235538%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e235439235535%_)))
                                   (_%$%tl235441235540%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e235439235535%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd235440235538%_))
                                   (let ((_%$%e235442235543%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd235440235538%_))))
                                     (let ((_%$%hd235443235546%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e235442235543%_)))
                                           (_%$%tl235444235548%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e235442235543%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl235444235548%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl235441235540%_))
                                               (let ((_%$%e235445235551%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl235441235540%_))))
                                                 (let ((_%$%hd235446235554%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e235445235551%_)))
                                                       (_%$%tl235447235556%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e235445235551%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl235447235556%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl235438235532%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl235435235524%_))
                       (let ((_%$%e235448235559%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl235435235524%_))))
                         (let ((_%$%hd235449235562%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e235448235559%_)))
                               (_%$%tl235450235564%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e235448235559%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl235450235564%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl235429235508%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl235420235484%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl235417235476%_))
                                           (let ((_%$%e235451235567%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl235417235476%_))))
                                             (let ((_%$%hd235452235570%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e235451235567%_)))
                                                   (_%$%tl235453235572%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e235451235567%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl235453235572%_))
                                                   (let* ((_%$%g235619235681%_
                                                           (lambda (_%$%g235620235678%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g235620235678%_))))
                  (_%$%g235618236620%_
                   (lambda (_%$%g235620235684%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g235620235684%_))
                         (let ((_%$%e235626235686%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g235620235684%_))))
                           (let ((_%$%hd235627235689%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e235626235686%_)))
                                 (_%$%tl235628235691%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e235626235686%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%hd235627235689%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#lambda
                                        _%$%hd235627235689%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%tl235628235691%_))
                                         (let ((_%$%e235629235694%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%tl235628235691%_))))
                                           (let ((_%$%hd235630235697%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e235629235694%_)))
                                                 (_%$%tl235631235699%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e235629235694%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl235631235699%_))
                                                 (let ((_%$%e235632235702%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl235631235699%_))))
                                                   (let ((_%$%hd235633235705%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e235632235702%_)))
                                                         (_%$%tl235634235707%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e235632235702%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%hd235633235705%_))
                                                         (let ((_%$%e235635235710%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd235633235705%_))))
                   (let ((_%$%hd235636235713%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e235635235710%_)))
                         (_%$%tl235637235715%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e235635235710%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%$%hd235636235713%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#call _%$%hd235636235713%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl235637235715%_))
                                 (let ((_%$%e235638235718%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl235637235715%_))))
                                   (let ((_%$%hd235639235721%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e235638235718%_)))
                                         (_%$%tl235640235723%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e235638235718%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd235639235721%_))
                                         (let ((_%$%e235641235726%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd235639235721%_))))
                                           (let ((_%$%hd235642235729%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e235641235726%_)))
                                                 (_%$%tl235643235731%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e235641235726%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%$%hd235642235729%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%$%hd235642235729%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl235643235731%_))
                                                         (let ((_%$%e235644235734%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl235643235731%_))))
                   (let ((_%$%hd235645235737%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e235644235734%_)))
                         (_%$%tl235646235739%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e235644235734%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl235646235739%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl235640235723%_))
                             (let ((_%$%e235647235742%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl235640235723%_))))
                               (let ((_%$%hd235648235745%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e235647235742%_)))
                                     (_%$%tl235649235747%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e235647235742%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd235648235745%_))
                                     (let ((_%$%e235650235750%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd235648235745%_))))
                                       (let ((_%$%hd235651235753%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e235650235750%_)))
                                             (_%$%tl235652235755%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e235650235750%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%hd235651235753%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#ref
                                                    _%$%hd235651235753%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl235652235755%_))
                                                     (let ((_%$%e235653235758%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl235652235755%_))))
                                                       (let ((_%$%hd235654235761%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e235653235758%_)))
                     (_%$%tl235655235763%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e235653235758%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl235655235763%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl235649235747%_))
                         (let ((_%$%e235656235766%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl235649235747%_))))
                           (let ((_%$%hd235657235769%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e235656235766%_)))
                                 (_%$%tl235658235771%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e235656235766%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd235657235769%_))
                                 (let ((_%$%e235659235774%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd235657235769%_))))
                                   (let ((_%$%hd235660235777%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e235659235774%_)))
                                         (_%$%tl235661235779%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e235659235774%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier?
                                            _%$%hd235660235777%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%$%hd235660235777%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl235661235779%_))
                                                 (let ((_%$%e235662235782%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl235661235779%_))))
                                                   (let ((_%$%hd235663235785%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e235662235782%_)))
                                                         (_%$%tl235664235787%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e235662235782%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl235664235787%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair/null? _%$%tl235658235771%_))
                     (if (let ((__tmp238040
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-length _%$%tl235658235771%_))))
                           (declare (not safe))
                           (##fx>= __tmp238040 '1))
                         (let ((_g238041_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-split-splice
                                   _%$%tl235658235771%_
                                   '1))))
                           (begin
                             (let ((_g238042_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g238041_)
                                          (##values-length _g238041_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g238042_ 2)))
                                   (error "Context expects 2 values"
                                          _g238042_)))
                             (let ((_%$%target235665235790%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g238041_ 0)))
                                   (_%$%tl235667235792%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g238041_ 1))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl235667235792%_))
                                   (let ((_%$%e235674235795%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl235667235792%_))))
                                     (let ((_%$%hd235675235798%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e235674235795%_)))
                                           (_%$%tl235676235800%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e235674235795%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl235676235800%_))
                                           (letrec ((_%$%loop235668235803%_
                                                     (lambda (_%$%hd235666235806%_
                                                              _%$%kw-ref235672235808%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd235666235806%_))
                                                           (let ((_%$%e235669235810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd235666235806%_))))
                     (let ((_%$%lp-hd235670235813%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e235669235810%_)))
                           (_%$%lp-tl235671235815%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e235669235810%_))))
                       (_%$%loop235668235803%_
                        _%$%lp-tl235671235815%_
                        (cons _%$%lp-hd235670235813%_
                              _%$%kw-ref235672235808%_))))
                   (let ((_%$%kw-ref235673235818%_
                          (reverse _%$%kw-ref235672235808%_)))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl235634235707%_))
                         (let* ((_%kw-count235875%_
                                 (length (let ((__tmp238043
                                                (lambda (_%$%g235867235870%_
                                                         _%$%g235868235872%_)
                                                  (cons _%$%g235867235870%_
                                                        _%$%g235868235872%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp238043
                                            '()
                                            _%$%kw-ref235673235818%_))))
                                (_%self-index235877%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%kw-count235875%_ '1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#lambda-expr? _%$%hd235446235554%_))
                               (let* ((_%$%g235881235895%_
                                       (lambda (_%$%g235882235892%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g235882235892%_))))
                                      (_%$%g235880236018%_
                                       (lambda (_%$%g235882235898%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%g235882235898%_))
                                             (let ((_%$%e235885235900%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g235882235898%_))))
                                               (let ((_%$%hd235886235903%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e235885235900%_)))
                                                     (_%$%tl235887235905%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e235885235900%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl235887235905%_))
                                                     (let ((_%$%e235888235908%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl235887235905%_))))
                                                       (let ((_%$%hd235889235911%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e235888235908%_)))
                     (_%$%tl235890235913%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e235888235908%_))))
                 (let* ((_%self235934%_
                         (list-ref _%$%hd235889235911%_ _%self-index235877%_))
                        (_%receiver235939%_
                         (let ((_%$e235936%_
                                (gxc#apply-extract-receiver
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '%#begin))
                                       _%$%tl235890235913%_))))
                           (if _%$e235936%_ _%$e235936%_ _%self235934%_))))
                   (for-each
                    (lambda (_%$%g235941235943%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver235939%_
                       _%method-calls233879%_
                       _%slot-refs233880%_
                       _%$%g235941235943%_))
                    _%$%tl235890235913%_)
                   (if (_%no-specializer?233883%_)
                       _%stx233787%_
                       (let* ((_%specializer-id235952%_
                               (let* ((_%id235946%_
                                       (let ((__tmp238044
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%g233798233860%_))))
                                         (declare (not safe))
                                         (make-symbol__1
                                          __tmp238044
                                          '"::specialize")))
                                      (_%specializer-id235949%_
                                       (let ((__tmp238045
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-source
                                                 _%stx233787%_))))
                                         (declare (not safe))
                                         (gx#core-quote-syntax__1
                                          _%id235946%_
                                          __tmp238045))))
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-bind-runtime!__0
                                    _%specializer-id235949%_))
                                 _%specializer-id235949%_))
                              (_%$klass235954%_
                               (let ((__tmp238046
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__klass))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp238046)))
                              (_%$method-table235956%_
                               (let ((__tmp238047
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__method-table))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp238047)))
                              (_%methods235958%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%method-calls233879%_)))
                              (_%$methods235962%_
                               (let ((__tmp238048
                                      (lambda (_%id235960%_)
                                        (let ((__tmp238049
                                               (gensym _%id235960%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp238049)))))
                                 (declare (not safe))
                                 (##map __tmp238048 _%methods235958%_)))
                              (_%_235971%_
                               (let ((__tmp238050
                                      (lambda (_%$%g235963235966%_
                                               _%$%g235964235968%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%method-calls233879%_
                                           _%$%g235963235966%_
                                           _%$%g235964235968%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp238050
                                  _%methods235958%_
                                  _%$methods235962%_)))
                              (_%methods-bind235981%_
                               (let ((__tmp238051
                                      (lambda (_%$%g235973235976%_
                                               _%$%g235974235978%_)
                                        (_%generate-method-bind233789%_
                                         _%$klass235954%_
                                         _%$method-table235956%_
                                         _%$%g235973235976%_
                                         _%$%g235974235978%_))))
                                 (declare (not safe))
                                 (##map __tmp238051
                                        _%methods235958%_
                                        _%$methods235962%_)))
                              (_%slots235983%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%slot-refs233880%_)))
                              (_%$slots235987%_
                               (let ((__tmp238052
                                      (lambda (_%id235985%_)
                                        (let ((__tmp238053
                                               (gensym _%id235985%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp238053)))))
                                 (declare (not safe))
                                 (##map __tmp238052 _%slots235983%_)))
                              (_%_235996%_
                               (let ((__tmp238054
                                      (lambda (_%$%g235988235991%_
                                               _%$%g235989235993%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%slot-refs233880%_
                                           _%$%g235988235991%_
                                           _%$%g235989235993%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp238054
                                  _%slots235983%_
                                  _%$slots235987%_)))
                              (_%slots-bind236005%_
                               (let ((__tmp238055
                                      (lambda (_%$%g235997236000%_
                                               _%$%g235998236002%_)
                                        (_%generate-slot-bind233790%_
                                         _%$klass235954%_
                                         _%$%g235997236000%_
                                         _%$%g235998236002%_))))
                                 (declare (not safe))
                                 (##map __tmp238055
                                        _%slots235983%_
                                        _%$slots235987%_)))
                              (_%specializer-impl236013%_
                               (let* ((_%specializer-body236011%_
                                       (map (lambda (_%$%g236006236008%_)
                                              (gxc#apply-subst-object-refs__%
                                               '#f
                                               _%receiver235939%_
                                               _%$klass235954%_
                                               _%method-calls233879%_
                                               _%slot-refs233880%_
                                               _%$%g236006236008%_))
                                            _%$%tl235890235913%_))
                                      (__tmp238056
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _%$%hd235425235498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#let-values
                                   (cons (cons (cons (cons _%$%hd235443235546%_
                                                           '())
                                                     (cons (let ((__tmp238057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#lambda
                                (cons _%$%hd235889235911%_
                                      _%specializer-body236011%_))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp238057 _%$%hd235446235554%_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%$%hd235449235562%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%$%hd235452235570%_
                                                         '())))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp238056
                                  _%stx233787%_)))
                              (_%specializer-impl236015%_
                               (_%generate-specializer-impl233791%_
                                _%$klass235954%_
                                _%$method-table235956%_
                                _%methods-bind235981%_
                                _%slots-bind236005%_
                                _%specializer-impl236013%_)))
                         (let ((__tmp238059
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g233798233860%_)))
                               (__tmp238058
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%specializer-id235952%_))))
                           (declare (not safe))
                           (gxc#verbose
                            '"generate method specializer "
                            __tmp238059
                            '" => "
                            __tmp238058))
                         (_%generate-specializer-def233792%_
                          _%$%g233798233860%_
                          _%specializer-id235952%_
                          _%specializer-impl236015%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g235881235895%_
                                                      _%$%g235882235898%_))))
                                             (_%$%g235881235895%_
                                              _%$%g235882235898%_)))))
                                 (_%$%g235880236018%_ _%$%hd235446235554%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr?
                                      _%$%hd235446235554%_))
                                   (let* ((_%$%g236022236052%_
                                           (lambda (_%$%g236023236049%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g236023236049%_))))
                                          (_%$%g236021236616%_
                                           (lambda (_%$%g236023236055%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%g236023236055%_))
                                                 (let ((_%$%e236027236057%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g236023236055%_))))
                                                   (let ((_%$%hd236028236060%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e236027236057%_)))
                                                         (_%$%tl236029236062%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e236027236057%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl236029236062%_))
                                                         (let ((_%$%e236030236065%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl236029236062%_))))
                   (let ((_%$%hd236031236068%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e236030236065%_)))
                         (_%$%tl236032236070%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e236030236065%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%hd236031236068%_))
                         (let ((_%$%e236033236073%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%hd236031236068%_))))
                           (let ((_%$%hd236034236076%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e236033236073%_)))
                                 (_%$%tl236035236078%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e236033236073%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd236034236076%_))
                                 (let ((_%$%e236036236081%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd236034236076%_))))
                                   (let ((_%$%hd236037236084%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e236036236081%_)))
                                         (_%$%tl236038236086%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e236036236081%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd236037236084%_))
                                         (let ((_%$%e236039236089%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd236037236084%_))))
                                           (let ((_%$%hd236040236092%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e236039236089%_)))
                                                 (_%$%tl236041236094%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e236039236089%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%$%tl236041236094%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl236038236086%_))
                                                     (let ((_%$%e236042236097%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl236038236086%_))))
                                                       (let ((_%$%hd236043236100%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e236042236097%_)))
                     (_%$%tl236044236102%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e236042236097%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl236044236102%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl236035236078%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl236032236070%_))
                             (let ((_%$%e236045236105%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl236032236070%_))))
                               (let ((_%$%hd236046236108%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e236045236105%_)))
                                     (_%$%tl236047236110%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e236045236105%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl236047236110%_))
                                     (let ()
                                       (let* ((_%$%g236139236153%_
                                               (lambda (_%$%g236140236150%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g236140236150%_))))
                                              (_%$%g236138236200%_
                                               (lambda (_%$%g236140236156%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g236140236156%_))
                                                     (let ((_%$%e236143236158%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g236140236156%_))))
                                                       (let ((_%$%hd236144236161%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e236143236158%_)))
                     (_%$%tl236145236163%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e236143236158%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl236145236163%_))
                     (let ((_%$%e236146236166%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl236145236163%_))))
                       (let ((_%$%hd236147236169%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e236146236166%_)))
                             (_%$%tl236148236171%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e236146236166%_))))
                         (let* ((_%self236188%_
                                 (list-ref
                                  _%$%hd236147236169%_
                                  _%self-index235877%_))
                                (_%receiver236193%_
                                 (let ((_%$e236190%_
                                        (gxc#apply-extract-receiver
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin))
                                               _%$%tl236148236171%_))))
                                   (if _%$e236190%_
                                       _%$e236190%_
                                       _%self236188%_))))
                           (for-each
                            (lambda (_%$%g236195236197%_)
                              (gxc#apply-collect-object-refs__%
                               '#f
                               _%receiver236193%_
                               _%method-calls233879%_
                               _%slot-refs233880%_
                               _%$%g236195236197%_))
                            _%$%tl236148236171%_))))
                     (_%$%g236139236153%_ _%$%g236140236156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g236139236153%_
                                                      _%$%g236140236156%_)))))
                                         (_%$%g236138236200%_
                                          _%$%hd236043236100%_))
                                       (let* ((_%$%g236203236222%_
                                               (lambda (_%$%g236204236219%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g236204236219%_))))
                                              (_%$%g236202236331%_
                                               (lambda (_%$%g236204236225%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g236204236225%_))
                                                     (let ((_%$%e236206236227%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g236204236225%_))))
                                                       (let ((_%$%hd236207236230%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e236206236227%_)))
                     (_%$%tl236208236232%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e236206236227%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair/null? _%$%tl236208236232%_))
                     (let ((_g238060_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-split-splice
                               _%$%tl236208236232%_
                               '0))))
                       (begin
                         (let ((_g238061_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g238060_)
                                      (##values-length _g238060_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g238061_ 2)))
                               (error "Context expects 2 values" _g238061_)))
                         (let ((_%$%target236209236235%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g238060_ 0)))
                               (_%$%tl236211236237%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g238060_ 1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl236211236237%_))
                               (letrec ((_%$%loop236212236240%_
                                         (lambda (_%$%hd236210236243%_
                                                  _%$%clause236216236245%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd236210236243%_))
                                               (let ((_%$%e236213236247%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd236210236243%_))))
                                                 (let ((_%$%lp-hd236214236250%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e236213236247%_)))
                                                       (_%$%lp-tl236215236252%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e236213236247%_))))
                                                   (_%$%loop236212236240%_
                                                    _%$%lp-tl236215236252%_
                                                    (cons _%$%lp-hd236214236250%_
                                                          _%$%clause236216236245%_))))
                                               (let ((_%$%clause236217236255%_
                                                      (reverse _%$%clause236216236245%_)))
                                                 (for-each
                                                  (lambda (_%clause236270%_)
                                                    (let* ((_%$%g236272236283%_
                                                            (lambda (_%$%g236273236280%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g236273236280%_))))
                   (_%$%g236271236321%_
                    (lambda (_%$%g236273236286%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g236273236286%_))
                          (let ((_%$%e236276236288%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g236273236286%_))))
                            (let ((_%$%hd236277236291%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e236276236288%_)))
                                  (_%$%tl236278236293%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e236276236288%_))))
                              (let* ((_%self236309%_
                                      (list-ref
                                       _%$%hd236277236291%_
                                       _%self-index235877%_))
                                     (_%receiver236314%_
                                      (let ((_%$e236311%_
                                             (gxc#apply-extract-receiver
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#begin))
                                                    _%$%tl236278236293%_))))
                                        (if _%$e236311%_
                                            _%$e236311%_
                                            _%self236309%_))))
                                (for-each
                                 (lambda (_%$%g236316236318%_)
                                   (gxc#apply-collect-object-refs__%
                                    '#f
                                    _%receiver236314%_
                                    _%method-calls233879%_
                                    _%slot-refs233880%_
                                    _%$%g236316236318%_))
                                 _%$%tl236278236293%_))))
                          (_%$%g236272236283%_ _%$%g236273236286%_)))))
              (_%$%g236271236321%_ _%clause236270%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp238062
                                                         (lambda (_%$%g236323236326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g236324236328%_)
                   (cons _%$%g236323236326%_ _%$%g236324236328%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp238062
                                                     '()
                                                     _%$%clause236217236255%_))))))))
                                 (_%$%loop236212236240%_
                                  _%$%target236209236235%_
                                  '()))
                               (_%$%g236203236222%_ _%$%g236204236225%_)))))
                     (_%$%g236203236222%_ _%$%g236204236225%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g236203236222%_
                                                      _%$%g236204236225%_)))))
                                         (_%$%g236202236331%_
                                          _%$%hd236046236108%_))
                                       (if (_%no-specializer?233883%_)
                                           _%stx233787%_
                                           (let* ((_%specializer-id236340%_
                                                   (let* ((_%id236334%_
                                                           (let ((__tmp238063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g233798233860%_))))
                     (declare (not safe))
                     (make-symbol__1 __tmp238063 '"::specialize")))
                  (_%specializer-id236337%_
                   (let ((__tmp238064
                          (let ()
                            (declare (not safe))
                            (gx#stx-source _%stx233787%_))))
                     (declare (not safe))
                     (gx#core-quote-syntax__1 _%id236334%_ __tmp238064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#core-bind-runtime!__0
                                                        _%specializer-id236337%_))
                                                     _%specializer-id236337%_))
                                                  (_%$klass236342%_
                                                   (let ((__tmp238065
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__klass))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp238065)))
                                                  (_%$method-table236344%_
                                                   (let ((__tmp238066
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__method-table))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp238066)))
                                                  (_%methods236346%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%method-calls233879%_)))
                                                  (_%$methods236350%_
                                                   (let ((__tmp238067
                                                          (lambda (_%id236348%_)
                                                            (let ((__tmp238068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id236348%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp238068)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp238067
                                                            _%methods236346%_)))
                                                  (_%_236359%_
                                                   (let ((__tmp238069
                                                          (lambda (_%$%g236351236354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g236352236356%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%method-calls233879%_
                       _%$%g236351236354%_
                       _%$%g236352236356%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp238069
                                                      _%methods236346%_
                                                      _%$methods236350%_)))
                                                  (_%methods-bind236369%_
                                                   (let ((__tmp238070
                                                          (lambda (_%$%g236361236364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g236362236366%_)
                    (_%generate-method-bind233789%_
                     _%$klass236342%_
                     _%$method-table236344%_
                     _%$%g236361236364%_
                     _%$%g236362236366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp238070
                                                            _%methods236346%_
                                                            _%$methods236350%_)))
                                                  (_%slots236371%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%slot-refs233880%_)))
                                                  (_%$slots236375%_
                                                   (let ((__tmp238071
                                                          (lambda (_%id236373%_)
                                                            (let ((__tmp238072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id236373%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp238072)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp238071
                                                            _%slots236371%_)))
                                                  (_%_236384%_
                                                   (let ((__tmp238073
                                                          (lambda (_%$%g236376236379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g236377236381%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%slot-refs233880%_
                       _%$%g236376236379%_
                       _%$%g236377236381%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp238073
                                                      _%slots236371%_
                                                      _%$slots236375%_)))
                                                  (_%slots-bind236393%_
                                                   (let ((__tmp238074
                                                          (lambda (_%$%g236385236388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g236386236390%_)
                    (_%generate-slot-bind233790%_
                     _%$klass236342%_
                     _%$%g236385236388%_
                     _%$%g236386236390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp238074
                                                            _%slots236371%_
                                                            _%$slots236375%_)))
                                                  (_%specializer-lambda-expr236471%_
                                                   (let* ((_%$%g236395236409%_
                                                           (lambda (_%$%g236396236406%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g236396236406%_))))
                  (_%$%g236394236468%_
                   (lambda (_%$%g236396236412%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g236396236412%_))
                         (let ((_%$%e236399236414%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g236396236412%_))))
                           (let ((_%$%hd236400236417%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e236399236414%_)))
                                 (_%$%tl236401236419%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e236399236414%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl236401236419%_))
                                 (let ((_%$%e236402236422%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl236401236419%_))))
                                   (let ((_%$%hd236403236425%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e236402236422%_)))
                                         (_%$%tl236404236427%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e236402236422%_))))
                                     (let* ((_%self236454%_
                                             (list-ref
                                              _%$%hd236403236425%_
                                              _%self-index235877%_))
                                            (_%receiver236459%_
                                             (let ((_%$e236456%_
                                                    (gxc#apply-extract-receiver
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%$%tl236404236427%_))))
                                               (if _%$e236456%_
                                                   _%$e236456%_
                                                   _%self236454%_)))
                                            (_%body236465%_
                                             (map (lambda (_%$%g236460236462%_)
                                                    (gxc#apply-subst-object-refs__%
                                                     '#f
                                                     _%receiver236459%_
                                                     _%$klass236342%_
                                                     _%method-calls233879%_
                                                     _%slot-refs233880%_
                                                     _%$%g236460236462%_))
                                                  _%$%tl236404236427%_))
                                            (__tmp238075
                                             (cons '%#lambda
                                                   (cons _%$%hd236403236425%_
                                                         _%body236465%_))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp238075
                                        _%$%hd236043236100%_))))
                                 (_%$%g236395236409%_ _%$%g236396236412%_))))
                         (_%$%g236395236409%_ _%$%g236396236412%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g236394236468%_
                                                      _%$%hd236043236100%_)))
                                                  (_%specializer-case-lambda-expr236609%_
                                                   (let* ((_%$%g236473236492%_
                                                           (lambda (_%$%g236474236489%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g236474236489%_))))
                  (_%$%g236472236606%_
                   (lambda (_%$%g236474236495%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g236474236495%_))
                         (let ((_%$%e236476236497%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g236474236495%_))))
                           (let ((_%$%hd236477236500%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e236476236497%_)))
                                 (_%$%tl236478236502%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e236476236497%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair/null? _%$%tl236478236502%_))
                                 (let ((_g238076_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-split-splice
                                           _%$%tl236478236502%_
                                           '0))))
                                   (begin
                                     (let ((_g238077_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g238076_)
                                                  (##values-length _g238076_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g238077_ 2)))
                                           (error "Context expects 2 values"
                                                  _g238077_)))
                                     (let ((_%$%target236479236505%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g238076_ 0)))
                                           (_%$%tl236481236507%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g238076_ 1))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl236481236507%_))
                                           (letrec ((_%$%loop236482236510%_
                                                     (lambda (_%$%hd236480236513%_
                                                              _%$%clause236486236515%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd236480236513%_))
                                                           (let ((_%$%e236483236517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd236480236513%_))))
                     (let ((_%$%lp-hd236484236520%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e236483236517%_)))
                           (_%$%lp-tl236485236522%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e236483236517%_))))
                       (_%$%loop236482236510%_
                        _%$%lp-tl236485236522%_
                        (cons _%$%lp-hd236484236520%_
                              _%$%clause236486236515%_))))
                   (let* ((_%$%clause236487236525%_
                           (reverse _%$%clause236486236515%_))
                          (_%clauses236604%_
                           (map (lambda (_%clause236541%_)
                                  (let* ((_%$%g236543236554%_
                                          (lambda (_%$%g236544236551%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g236544236551%_))))
                                         (_%$%g236542236594%_
                                          (lambda (_%$%g236544236557%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g236544236557%_))
                                                (let ((_%$%e236547236559%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g236544236557%_))))
                                                  (let ((_%$%hd236548236562%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e236547236559%_)))
                                                        (_%$%tl236549236564%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e236547236559%_))))
                                                    (let* ((_%self236580%_
                                                            (list-ref
                                                             _%$%hd236548236562%_
                                                             _%self-index235877%_))
                                                           (_%receiver236585%_
                                                            (let ((_%$e236582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-extract-receiver
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#begin))
                                  _%$%tl236549236564%_))))
                      (if _%$e236582%_ _%$e236582%_ _%self236580%_)))
                   (_%body236591%_
                    (map (lambda (_%$%g236586236588%_)
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%receiver236585%_
                            _%$klass236342%_
                            _%method-calls233879%_
                            _%slot-refs233880%_
                            _%$%g236586236588%_))
                         _%$%tl236549236564%_)))
              (cons _%$%hd236548236562%_ _%body236591%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g236543236554%_
                                                 _%$%g236544236557%_)))))
                                    (_%$%g236542236594%_ _%clause236541%_)))
                                (let ((__tmp238078
                                       (lambda (_%$%g236596236599%_
                                                _%$%g236597236601%_)
                                         (cons _%$%g236596236599%_
                                               _%$%g236597236601%_))))
                                  (declare (not safe))
                                  (foldr__0
                                   __tmp238078
                                   '()
                                   _%$%clause236487236525%_))))
                          (__tmp238079
                           (cons '%#case-lambda _%clauses236604%_)))
                     (declare (not safe))
                     (gxc#xform-wrap-source
                      __tmp238079
                      _%$%hd236046236108%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop236482236510%_
                                              _%$%target236479236505%_
                                              '()))
                                           (_%$%g236473236492%_
                                            _%$%g236474236495%_)))))
                                 (_%$%g236473236492%_ _%$%g236474236495%_))))
                         (_%$%g236473236492%_ _%$%g236474236495%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g236472236606%_
                                                      _%$%hd236046236108%_)))
                                                  (_%specializer-impl236611%_
                                                   (let ((__tmp238080
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$%hd235425235498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons (cons '%#let-values
                                                      (cons (cons (cons (cons _%$%hd235443235546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (let ((__tmp238081
                                             (cons '%#let-values
                                                   (cons (cons (cons (cons _%$%hd236040236092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons _%specializer-lambda-expr236471%_ '()))
                       '())
                 (cons _%specializer-case-lambda-expr236609%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp238081
                                         _%stx233787%_))
                                      '()))
                          '())
                    (cons _%$%hd235449235562%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())
                              (cons _%$%hd235452235570%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp238080
                                                      _%stx233787%_)))
                                                  (_%specializer-impl236613%_
                                                   (_%generate-specializer-impl233791%_
                                                    _%$klass236342%_
                                                    _%$method-table236344%_
                                                    _%methods-bind236369%_
                                                    _%slots-bind236393%_
                                                    _%specializer-impl236611%_)))
                                             (let ((__tmp238083
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g233798233860%_)))
                                                   (__tmp238082
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%specializer-id236340%_))))
                                               (declare (not safe))
                                               (gxc#verbose
                                                '"generate method specializer "
                                                __tmp238083
                                                '" => "
                                                __tmp238082))
                                             (_%generate-specializer-def233792%_
                                              _%$%g233798233860%_
                                              _%specializer-id236340%_
                                              _%specializer-impl236613%_))))
                                     (_%$%g236022236052%_
                                      _%$%g236023236055%_))))
                             (_%$%g236022236052%_ _%$%g236023236055%_))
                         (_%$%g236022236052%_ _%$%g236023236055%_))
                     (_%$%g236022236052%_ _%$%g236023236055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g236022236052%_
                                                      _%$%g236023236055%_))
                                                 (_%$%g236022236052%_
                                                  _%$%g236023236055%_))))
                                         (_%$%g236022236052%_
                                          _%$%g236023236055%_))))
                                 (_%$%g236022236052%_ _%$%g236023236055%_))))
                         (_%$%g236022236052%_ _%$%g236023236055%_))))
                 (_%$%g236022236052%_ _%$%g236023236055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g236022236052%_
                                                  _%$%g236023236055%_)))))
                                     (_%$%g236021236616%_
                                      _%$%hd235446235554%_))
                                   _%stx233787%_)))
                         (_%$%g235619235681%_ _%$%g235620235684%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop235668235803%_
                                              _%$%target235665235790%_
                                              '()))
                                           (_%$%g235619235681%_
                                            _%$%g235620235684%_))))
                                   (_%$%g235619235681%_
                                    _%$%g235620235684%_)))))
                         (_%$%g235619235681%_ _%$%g235620235684%_))
                     (_%$%g235619235681%_ _%$%g235620235684%_))
                 (_%$%g235619235681%_ _%$%g235620235684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g235619235681%_
                                                  _%$%g235620235684%_))
                                             (_%$%g235619235681%_
                                              _%$%g235620235684%_))
                                         (_%$%g235619235681%_
                                          _%$%g235620235684%_))))
                                 (_%$%g235619235681%_ _%$%g235620235684%_))))
                         (_%$%g235619235681%_ _%$%g235620235684%_))
                     (_%$%g235619235681%_ _%$%g235620235684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g235619235681%_
                                                      _%$%g235620235684%_))
                                                 (_%$%g235619235681%_
                                                  _%$%g235620235684%_))
                                             (_%$%g235619235681%_
                                              _%$%g235620235684%_))))
                                     (_%$%g235619235681%_
                                      _%$%g235620235684%_))))
                             (_%$%g235619235681%_ _%$%g235620235684%_))
                         (_%$%g235619235681%_ _%$%g235620235684%_))))
                 (_%$%g235619235681%_ _%$%g235620235684%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g235619235681%_
                                                      _%$%g235620235684%_))
                                                 (_%$%g235619235681%_
                                                  _%$%g235620235684%_))))
                                         (_%$%g235619235681%_
                                          _%$%g235620235684%_))))
                                 (_%$%g235619235681%_ _%$%g235620235684%_))
                             (_%$%g235619235681%_ _%$%g235620235684%_))
                         (_%$%g235619235681%_ _%$%g235620235684%_))))
                 (_%$%g235619235681%_ _%$%g235620235684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g235619235681%_
                                                  _%$%g235620235684%_))))
                                         (_%$%g235619235681%_
                                          _%$%g235620235684%_))
                                     (_%$%g235619235681%_ _%$%g235620235684%_))
                                 (_%$%g235619235681%_ _%$%g235620235684%_))))
                         (_%$%g235619235681%_ _%$%g235620235684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g235618236620%_
                                                      _%$%hd235449235562%_))
                                                   (_%$%g235405235458%_
                                                    _%$%g235406235461%_))))
                                           (_%$%g235405235458%_
                                            _%$%g235406235461%_))
                                       (_%$%g235405235458%_
                                        _%$%g235406235461%_))
                                   (_%$%g235405235458%_ _%$%g235406235461%_))
                               (_%$%g235405235458%_ _%$%g235406235461%_))))
                       (_%$%g235405235458%_ _%$%g235406235461%_))
                   (_%$%g235405235458%_ _%$%g235406235461%_))
               (_%$%g235405235458%_ _%$%g235406235461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g235405235458%_
                                                _%$%g235406235461%_))
                                           (_%$%g235405235458%_
                                            _%$%g235406235461%_))))
                                   (_%$%g235405235458%_ _%$%g235406235461%_))))
                           (_%$%g235405235458%_ _%$%g235406235461%_))))
                   (_%$%g235405235458%_ _%$%g235406235461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g235405235458%_
                                                    _%$%g235406235461%_))
                                               (_%$%g235405235458%_
                                                _%$%g235406235461%_))
                                           (_%$%g235405235458%_
                                            _%$%g235406235461%_))))
                                   (_%$%g235405235458%_ _%$%g235406235461%_))))
                           (_%$%g235405235458%_ _%$%g235406235461%_))
                       (_%$%g235405235458%_ _%$%g235406235461%_))))
               (_%$%g235405235458%_ _%$%g235406235461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g235405235458%_
                                                _%$%g235406235461%_))))
                                       (_%$%g235405235458%_
                                        _%$%g235406235461%_))))
                               (_%$%g235405235458%_ _%$%g235406235461%_))
                           (_%$%g235405235458%_ _%$%g235406235461%_))
                       (_%$%g235405235458%_ _%$%g235406235461%_))))
               (_%$%g235405235458%_ _%$%g235406235461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g235404236623%_
                                            _%$%g233797233859%_))
                                         _%stx233787%_))))))))
                  (_%__kont236850236851%_ (lambda () _%stx233787%_)))
              (let ((_%__match236879236880%_
                     (lambda (_%$%e233799233827%_
                              _%$%hd233800233830%_
                              _%$%tl233801233832%_
                              _%$%e233802233835%_
                              _%$%hd233803233838%_
                              _%$%tl233804233840%_
                              _%$%e233805233843%_
                              _%$%hd233806233846%_
                              _%$%tl233807233848%_
                              _%$%e233808233851%_
                              _%$%hd233809233854%_
                              _%$%tl233810233856%_)
                       (let ((_%$%g233797233859%_ _%$%hd233809233854%_)
                             (_%$%g233798233860%_ _%$%hd233806233846%_))
                         (if (let ((__tmp238084
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g233798233860%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp238084))
                             (_%__kont236848236849%_
                              _%$%g233797233859%_
                              _%$%g233798233860%_)
                             (_%__kont236850236851%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx236846236847%_))
                    (let ((_%$%e233799233827%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx236846236847%_))))
                      (let ((_%$%tl233801233832%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e233799233827%_)))
                            (_%$%hd233800233830%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e233799233827%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl233801233832%_))
                            (let ((_%$%e233802233835%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl233801233832%_))))
                              (let ((_%$%tl233804233840%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e233802233835%_)))
                                    (_%$%hd233803233838%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e233802233835%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd233803233838%_))
                                    (let ((_%$%e233805233843%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd233803233838%_))))
                                      (let ((_%$%tl233807233848%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e233805233843%_)))
                                            (_%$%hd233806233846%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e233805233843%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl233807233848%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl233804233840%_))
                                                (let ((_%$%e233808233851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl233804233840%_))))
                                                  (let ((_%$%tl233810233856%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e233808233851%_)))
                                                        (_%$%hd233809233854%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e233808233851%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl233810233856%_))
                                                        (_%__match236879236880%_
                                                         _%$%e233799233827%_
                                                         _%$%hd233800233830%_
                                                         _%$%tl233801233832%_
                                                         _%$%e233802233835%_
                                                         _%$%hd233803233838%_
                                                         _%$%tl233804233840%_
                                                         _%$%e233805233843%_
                                                         _%$%hd233806233846%_
                                                         _%$%tl233807233848%_
                                                         _%$%e233808233851%_
                                                         _%$%hd233809233854%_
                                                         _%$%tl233810233856%_)
                                                        (_%__kont236850236851%_))))
                                                (_%__kont236850236851%_))
                                            (_%__kont236850236851%_))))
                                    (_%__kont236850236851%_))))
                            (_%__kont236850236851%_))))
                    (_%__kont236850236851%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self233639%_ _%stx233640%_)
        (let* ((_%__stx236882236883%_ _%stx233640%_)
               (_%$%g233643233676%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx236882236883%_)))))
          (let ((_%__kont236884236885%_
                 (lambda (_%$%g233645233766%_) _%$%g233645233766%_))
                (_%__kont236886236887%_
                 (lambda (_%$%g233661233705%_ _%$%g233662233706%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self233639%_ _%$%g233661233705%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx236882236883%_))
                (let ((_%$%e233646233726%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx236882236883%_))))
                  (let ((_%$%tl233648233731%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e233646233726%_)))
                        (_%$%hd233647233729%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e233646233726%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl233648233731%_))
                        (let ((_%$%e233649233734%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl233648233731%_))))
                          (let ((_%$%tl233651233739%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e233649233734%_)))
                                (_%$%hd233650233737%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e233649233734%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd233650233737%_))
                                (let ((_%$%e233652233742%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd233650233737%_))))
                                  (let ((_%$%tl233654233747%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e233652233742%_)))
                                        (_%$%hd233653233745%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e233652233742%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd233653233745%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%$%hd233653233745%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl233654233747%_))
                                                (let ((_%$%e233655233750%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl233654233747%_))))
                                                  (let ((_%$%tl233657233755%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e233655233750%_)))
                                                        (_%$%hd233656233753%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e233655233750%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl233657233755%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl233651233739%_))
                                                            (let ((_%$%e233658233758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl233651233739%_))))
                      (let ((_%$%tl233660233763%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e233658233758%_)))
                            (_%$%hd233659233761%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e233658233758%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl233660233763%_))
                            (_%__kont236884236885%_ _%$%hd233656233753%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g233643233676%_)))))
                    (let () (declare (not safe)) (_%$%g233643233676%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl233651233739%_))
                    (let ((_%$%e233669233697%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl233651233739%_))))
                      (let ((_%$%tl233671233702%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e233669233697%_)))
                            (_%$%hd233670233700%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e233669233697%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl233671233702%_))
                            (_%__kont236886236887%_
                             _%$%hd233670233700%_
                             _%$%hd233650233737%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g233643233676%_)))))
                    (let () (declare (not safe)) (_%$%g233643233676%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl233651233739%_))
                                                    (let ((_%$%e233669233697%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl233651233739%_))))
                                                      (let ((_%$%tl233671233702%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e233669233697%_)))
                    (_%$%hd233670233700%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e233669233697%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl233671233702%_))
                    (_%__kont236886236887%_
                     _%$%hd233670233700%_
                     _%$%hd233650233737%_)
                    (let () (declare (not safe)) (_%$%g233643233676%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g233643233676%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl233651233739%_))
                                                (let ((_%$%e233669233697%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl233651233739%_))))
                                                  (let ((_%$%tl233671233702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e233669233697%_)))
                                                        (_%$%hd233670233700%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e233669233697%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl233671233702%_))
                                                        (_%__kont236886236887%_
                                                         _%$%hd233670233700%_
                                                         _%$%hd233650233737%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g233643233676%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g233643233676%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl233651233739%_))
                                            (let ((_%$%e233669233697%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl233651233739%_))))
                                              (let ((_%$%tl233671233702%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e233669233697%_)))
                                                    (_%$%hd233670233700%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e233669233697%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl233671233702%_))
                                                    (_%__kont236886236887%_
                                                     _%$%hd233670233700%_
                                                     _%$%hd233650233737%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g233643233676%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g233643233676%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl233651233739%_))
                                    (let ((_%$%e233669233697%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl233651233739%_))))
                                      (let ((_%$%tl233671233702%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e233669233697%_)))
                                            (_%$%hd233670233700%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e233669233697%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl233671233702%_))
                                            (_%__kont236886236887%_
                                             _%$%hd233670233700%_
                                             _%$%hd233650233737%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g233643233676%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g233643233676%_))))))
                        (let () (declare (not safe)) (_%$%g233643233676%_)))))
                (let () (declare (not safe)) (_%$%g233643233676%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self233555%_ _%stx233556%_)
        (let* ((_%$%g233558233579%_
                (lambda (_%$%g233559233576%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g233559233576%_))))
               (_%$%g233557233636%_
                (lambda (_%$%g233559233582%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g233559233582%_))
                      (let ((_%$%e233563233584%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g233559233582%_))))
                        (let ((_%$%hd233564233587%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e233563233584%_)))
                              (_%$%tl233565233589%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e233563233584%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl233565233589%_))
                              (let ((_%$%e233566233592%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl233565233589%_))))
                                (let ((_%$%hd233567233595%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e233566233592%_)))
                                      (_%$%tl233568233597%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e233566233592%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl233568233597%_))
                                      (let ((_%$%e233569233600%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl233568233597%_))))
                                        (let ((_%$%hd233570233603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e233569233600%_)))
                                              (_%$%tl233571233605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e233569233600%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl233571233605%_))
                                              (let ((_%$%e233572233608%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl233571233605%_))))
                                                (let ((_%$%hd233573233611%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e233572233608%_)))
                                                      (_%$%tl233574233613%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e233572233608%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl233574233613%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self233555%_
                                                         _%$%hd233570233603%_))
                                                      (_%$%g233558233579%_
                                                       _%$%g233559233582%_))))
                                              (_%$%g233558233579%_
                                               _%$%g233559233582%_))))
                                      (_%$%g233558233579%_
                                       _%$%g233559233582%_))))
                              (_%$%g233558233579%_ _%$%g233559233582%_))))
                      (_%$%g233558233579%_ _%$%g233559233582%_)))))
          (_%$%g233557233636%_ _%stx233556%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self232520%_ _%stx232521%_)
        (let* ((_%__stx236948236949%_ _%stx232521%_)
               (_%$%g232529232751%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx236948236949%_)))))
          (let ((_%__kont236950236951%_
                 (lambda (_%$%g232531233504%_
                          _%$%g232532233505%_
                          _%$%g232533233506%_
                          _%$%g232534233507%_)
                   (let ((__tmp238086
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self232520%_ 'methods)))
                         (__tmp238085
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g232532233505%_))))
                     (declare (not safe))
                     (hash-put! __tmp238086 __tmp238085 '#t))
                   (for-each
                    (lambda (_%$%g233540233542%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self232520%_ _%$%g233540233542%_)))
                    (let ((__tmp238087
                           (lambda (_%$%g233544233547%_ _%$%g233545233549%_)
                             (cons _%$%g233544233547%_ _%$%g233545233549%_))))
                      (declare (not safe))
                      (foldr__0 __tmp238087 '() _%$%g232531233504%_)))))
                (_%__kont236954236955%_
                 (lambda (_%$%g232574233341%_
                          _%$%g232575233342%_
                          _%$%g232576233343%_
                          _%$%g232577233344%_
                          _%$%g232578233345%_)
                   (let ((__tmp238089
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self232520%_ 'methods)))
                         (__tmp238088
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g232575233342%_))))
                     (declare (not safe))
                     (hash-put! __tmp238089 __tmp238088 '#t))
                   (for-each
                    (lambda (_%$%g233385233387%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self232520%_ _%$%g233385233387%_)))
                    (let ((__tmp238090
                           (lambda (_%$%g233389233392%_ _%$%g233390233394%_)
                             (cons _%$%g233389233392%_ _%$%g233390233394%_))))
                      (declare (not safe))
                      (foldr__0 __tmp238090 '() _%$%g232574233341%_)))))
                (_%__kont236958236959%_
                 (lambda (_%$%g232627233176%_
                          _%$%g232628233177%_
                          _%$%g232629233178%_)
                   (let ((__tmp238092
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self232520%_ 'slots)))
                         (__tmp238091
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g232627233176%_))))
                     (declare (not safe))
                     (hash-put! __tmp238092 __tmp238091 '#t))))
                (_%__kont236960236961%_
                 (lambda (_%$%g232660233053%_
                          _%$%g232661233054%_
                          _%$%g232662233055%_
                          _%$%g232663233056%_)
                   (let ((__tmp238094
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self232520%_ 'slots)))
                         (__tmp238093
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g232661233054%_))))
                     (declare (not safe))
                     (hash-put! __tmp238094 __tmp238093 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self232520%_ _%$%g232660233053%_))))
                (_%__kont236962236963%_
                 (lambda (_%$%g232697232927%_ _%$%g232698232928%_)
                   (let* ((_%accessor232950%_
                           (let ((__tmp238095
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g232698232928%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp238095)))
                          (_%klass232952%_
                           (let ((__tmp238096
                                  (##structure-ref
                                   _%accessor232950%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx232521%_
                              __tmp238096)))
                          (_%slot232954%_
                           (##structure-ref
                            _%accessor232950%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor232950%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass232952%_
                                    _%slot232954%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass232952%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp238098
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self232520%_ 'slots)))
                               (__tmp238097
                                (##structure-ref
                                 _%accessor232950%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp238098 __tmp238097 '#t))))))
                (_%__kont236964236965%_
                 (lambda (_%$%g232720232827%_
                          _%$%g232721232828%_
                          _%$%g232722232829%_)
                   (let* ((_%mutator232856%_
                           (let ((__tmp238099
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g232722232829%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp238099)))
                          (_%klass232858%_
                           (let ((__tmp238100
                                  (##structure-ref
                                   _%mutator232856%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx232521%_
                              __tmp238100)))
                          (_%slot232860%_
                           (##structure-ref
                            _%mutator232856%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator232856%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass232858%_
                                    _%slot232860%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass232858%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp238101
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self232520%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp238101 _%slot232860%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1
                        _%self232520%_
                        _%$%g232720232827%_)))))
                (_%__kont236966236967%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self232520%_ _%stx232521%_)))))
            (let* ((_%__match237447237448%_
                    (lambda (_%$%e232723232763%_
                             _%$%hd232724232766%_
                             _%$%tl232725232768%_
                             _%$%e232726232771%_
                             _%$%hd232727232774%_
                             _%$%tl232728232776%_
                             _%$%e232729232779%_
                             _%$%hd232730232782%_
                             _%$%tl232731232784%_
                             _%$%e232732232787%_
                             _%$%hd232733232790%_
                             _%$%tl232734232792%_
                             _%$%e232735232795%_
                             _%$%hd232736232798%_
                             _%$%tl232737232800%_
                             _%$%e232738232803%_
                             _%$%hd232739232806%_
                             _%$%tl232740232808%_
                             _%$%e232741232811%_
                             _%$%hd232742232814%_
                             _%$%tl232743232816%_
                             _%$%e232744232819%_
                             _%$%hd232745232822%_
                             _%$%tl232746232824%_)
                      (let ((_%$%g232720232827%_ _%$%hd232745232822%_)
                            (_%$%g232721232828%_ _%$%hd232742232814%_)
                            (_%$%g232722232829%_ _%$%hd232733232790%_))
                        (if (and (let ((__tmp238102
                                        (let ((__tmp238103
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g232722232829%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp238103))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp238102
                                    'gxc#!mutator::t))
                                 (let ((__tmp238104
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self232520%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g232721232828%_
                                    __tmp238104)))
                            (_%__kont236964236965%_
                             _%$%g232720232827%_
                             _%$%g232721232828%_
                             _%$%g232722232829%_)
                            (_%__kont236966236967%_)))))
                   (_%__match237445237446%_
                    (lambda (_%$%e232723232763%_
                             _%$%hd232724232766%_
                             _%$%tl232725232768%_
                             _%$%e232726232771%_
                             _%$%hd232727232774%_
                             _%$%tl232728232776%_
                             _%$%e232729232779%_
                             _%$%hd232730232782%_
                             _%$%tl232731232784%_
                             _%$%e232732232787%_
                             _%$%hd232733232790%_
                             _%$%tl232734232792%_
                             _%$%e232735232795%_
                             _%$%hd232736232798%_
                             _%$%tl232737232800%_
                             _%$%e232738232803%_
                             _%$%hd232739232806%_
                             _%$%tl232740232808%_
                             _%$%e232741232811%_
                             _%$%hd232742232814%_
                             _%$%tl232743232816%_
                             _%$%e232744232819%_
                             _%$%hd232745232822%_
                             _%$%tl232746232824%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl232746232824%_))
                          (_%__match237447237448%_
                           _%$%e232723232763%_
                           _%$%hd232724232766%_
                           _%$%tl232725232768%_
                           _%$%e232726232771%_
                           _%$%hd232727232774%_
                           _%$%tl232728232776%_
                           _%$%e232729232779%_
                           _%$%hd232730232782%_
                           _%$%tl232731232784%_
                           _%$%e232732232787%_
                           _%$%hd232733232790%_
                           _%$%tl232734232792%_
                           _%$%e232735232795%_
                           _%$%hd232736232798%_
                           _%$%tl232737232800%_
                           _%$%e232738232803%_
                           _%$%hd232739232806%_
                           _%$%tl232740232808%_
                           _%$%e232741232811%_
                           _%$%hd232742232814%_
                           _%$%tl232743232816%_
                           _%$%e232744232819%_
                           _%$%hd232745232822%_
                           _%$%tl232746232824%_)
                          (_%__kont236966236967%_))))
                   (_%__match237439237440%_
                    (lambda (_%$%e232723232763%_
                             _%$%hd232724232766%_
                             _%$%tl232725232768%_
                             _%$%e232726232771%_
                             _%$%hd232727232774%_
                             _%$%tl232728232776%_
                             _%$%e232729232779%_
                             _%$%hd232730232782%_
                             _%$%tl232731232784%_
                             _%$%e232732232787%_
                             _%$%hd232733232790%_
                             _%$%tl232734232792%_
                             _%$%e232735232795%_
                             _%$%hd232736232798%_
                             _%$%tl232737232800%_
                             _%$%e232738232803%_
                             _%$%hd232739232806%_
                             _%$%tl232740232808%_
                             _%$%e232741232811%_
                             _%$%hd232742232814%_
                             _%$%tl232743232816%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl232737232800%_))
                          (let ((_%$%e232744232819%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl232737232800%_))))
                            (let ((_%$%tl232746232824%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e232744232819%_)))
                                  (_%$%hd232745232822%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e232744232819%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl232746232824%_))
                                  (_%__match237447237448%_
                                   _%$%e232723232763%_
                                   _%$%hd232724232766%_
                                   _%$%tl232725232768%_
                                   _%$%e232726232771%_
                                   _%$%hd232727232774%_
                                   _%$%tl232728232776%_
                                   _%$%e232729232779%_
                                   _%$%hd232730232782%_
                                   _%$%tl232731232784%_
                                   _%$%e232732232787%_
                                   _%$%hd232733232790%_
                                   _%$%tl232734232792%_
                                   _%$%e232735232795%_
                                   _%$%hd232736232798%_
                                   _%$%tl232737232800%_
                                   _%$%e232738232803%_
                                   _%$%hd232739232806%_
                                   _%$%tl232740232808%_
                                   _%$%e232741232811%_
                                   _%$%hd232742232814%_
                                   _%$%tl232743232816%_
                                   _%$%e232744232819%_
                                   _%$%hd232745232822%_
                                   _%$%tl232746232824%_)
                                  (_%__kont236966236967%_))))
                          (_%__kont236966236967%_))))
                   (_%__match237385237386%_
                    (lambda (_%$%e232699232871%_
                             _%$%hd232700232874%_
                             _%$%tl232701232876%_
                             _%$%e232702232879%_
                             _%$%hd232703232882%_
                             _%$%tl232704232884%_
                             _%$%e232705232887%_
                             _%$%hd232706232890%_
                             _%$%tl232707232892%_
                             _%$%e232708232895%_
                             _%$%hd232709232898%_
                             _%$%tl232710232900%_
                             _%$%e232711232903%_
                             _%$%hd232712232906%_
                             _%$%tl232713232908%_
                             _%$%e232714232911%_
                             _%$%hd232715232914%_
                             _%$%tl232716232916%_
                             _%$%e232717232919%_
                             _%$%hd232718232922%_
                             _%$%tl232719232924%_)
                      (let ((_%$%g232697232927%_ _%$%hd232718232922%_)
                            (_%$%g232698232928%_ _%$%hd232709232898%_))
                        (if (and (let ((__tmp238105
                                        (let ((__tmp238106
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g232698232928%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp238106))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp238105
                                    'gxc#!accessor::t))
                                 (let ((__tmp238107
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self232520%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g232697232927%_
                                    __tmp238107)))
                            (_%__kont236962236963%_
                             _%$%g232697232927%_
                             _%$%g232698232928%_)
                            (_%__kont236966236967%_)))))
                   (_%__match237383237384%_
                    (lambda (_%$%e232699232871%_
                             _%$%hd232700232874%_
                             _%$%tl232701232876%_
                             _%$%e232702232879%_
                             _%$%hd232703232882%_
                             _%$%tl232704232884%_
                             _%$%e232705232887%_
                             _%$%hd232706232890%_
                             _%$%tl232707232892%_
                             _%$%e232708232895%_
                             _%$%hd232709232898%_
                             _%$%tl232710232900%_
                             _%$%e232711232903%_
                             _%$%hd232712232906%_
                             _%$%tl232713232908%_
                             _%$%e232714232911%_
                             _%$%hd232715232914%_
                             _%$%tl232716232916%_
                             _%$%e232717232919%_
                             _%$%hd232718232922%_
                             _%$%tl232719232924%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl232713232908%_))
                          (_%__match237385237386%_
                           _%$%e232699232871%_
                           _%$%hd232700232874%_
                           _%$%tl232701232876%_
                           _%$%e232702232879%_
                           _%$%hd232703232882%_
                           _%$%tl232704232884%_
                           _%$%e232705232887%_
                           _%$%hd232706232890%_
                           _%$%tl232707232892%_
                           _%$%e232708232895%_
                           _%$%hd232709232898%_
                           _%$%tl232710232900%_
                           _%$%e232711232903%_
                           _%$%hd232712232906%_
                           _%$%tl232713232908%_
                           _%$%e232714232911%_
                           _%$%hd232715232914%_
                           _%$%tl232716232916%_
                           _%$%e232717232919%_
                           _%$%hd232718232922%_
                           _%$%tl232719232924%_)
                          (_%__match237439237440%_
                           _%$%e232699232871%_
                           _%$%hd232700232874%_
                           _%$%tl232701232876%_
                           _%$%e232702232879%_
                           _%$%hd232703232882%_
                           _%$%tl232704232884%_
                           _%$%e232705232887%_
                           _%$%hd232706232890%_
                           _%$%tl232707232892%_
                           _%$%e232708232895%_
                           _%$%hd232709232898%_
                           _%$%tl232710232900%_
                           _%$%e232711232903%_
                           _%$%hd232712232906%_
                           _%$%tl232713232908%_
                           _%$%e232714232911%_
                           _%$%hd232715232914%_
                           _%$%tl232716232916%_
                           _%$%e232717232919%_
                           _%$%hd232718232922%_
                           _%$%tl232719232924%_))))
                   (_%__match237329237330%_
                    (lambda (_%$%e232664232965%_
                             _%$%hd232665232968%_
                             _%$%tl232666232970%_
                             _%$%e232667232973%_
                             _%$%hd232668232976%_
                             _%$%tl232669232978%_
                             _%$%e232670232981%_
                             _%$%hd232671232984%_
                             _%$%tl232672232986%_
                             _%$%e232673232989%_
                             _%$%hd232674232992%_
                             _%$%tl232675232994%_
                             _%$%e232676232997%_
                             _%$%hd232677233000%_
                             _%$%tl232678233002%_
                             _%$%e232679233005%_
                             _%$%hd232680233008%_
                             _%$%tl232681233010%_
                             _%$%e232682233013%_
                             _%$%hd232683233016%_
                             _%$%tl232684233018%_
                             _%$%e232685233021%_
                             _%$%hd232686233024%_
                             _%$%tl232687233026%_
                             _%$%e232688233029%_
                             _%$%hd232689233032%_
                             _%$%tl232690233034%_
                             _%$%e232691233037%_
                             _%$%hd232692233040%_
                             _%$%tl232693233042%_
                             _%$%e232694233045%_
                             _%$%hd232695233048%_
                             _%$%tl232696233050%_)
                      (let ((_%$%g232660233053%_ _%$%hd232695233048%_)
                            (_%$%g232661233054%_ _%$%hd232692233040%_)
                            (_%$%g232662233055%_ _%$%hd232683233016%_)
                            (_%$%g232663233056%_ _%$%hd232674232992%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g232663233056%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g232663233056%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp238108
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self232520%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g232662233055%_
                                    __tmp238108)))
                            (_%__kont236960236961%_
                             _%$%g232660233053%_
                             _%$%g232661233054%_
                             _%$%g232662233055%_
                             _%$%g232663233056%_)
                            (_%__kont236966236967%_)))))
                   (_%__match237321237322%_
                    (lambda (_%$%e232664232965%_
                             _%$%hd232665232968%_
                             _%$%tl232666232970%_
                             _%$%e232667232973%_
                             _%$%hd232668232976%_
                             _%$%tl232669232978%_
                             _%$%e232670232981%_
                             _%$%hd232671232984%_
                             _%$%tl232672232986%_
                             _%$%e232673232989%_
                             _%$%hd232674232992%_
                             _%$%tl232675232994%_
                             _%$%e232676232997%_
                             _%$%hd232677233000%_
                             _%$%tl232678233002%_
                             _%$%e232679233005%_
                             _%$%hd232680233008%_
                             _%$%tl232681233010%_
                             _%$%e232682233013%_
                             _%$%hd232683233016%_
                             _%$%tl232684233018%_
                             _%$%e232685233021%_
                             _%$%hd232686233024%_
                             _%$%tl232687233026%_
                             _%$%e232688233029%_
                             _%$%hd232689233032%_
                             _%$%tl232690233034%_
                             _%$%e232691233037%_
                             _%$%hd232692233040%_
                             _%$%tl232693233042%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl232687233026%_))
                          (let ((_%$%e232694233045%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl232687233026%_))))
                            (let ((_%$%tl232696233050%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e232694233045%_)))
                                  (_%$%hd232695233048%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e232694233045%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl232696233050%_))
                                  (_%__match237329237330%_
                                   _%$%e232664232965%_
                                   _%$%hd232665232968%_
                                   _%$%tl232666232970%_
                                   _%$%e232667232973%_
                                   _%$%hd232668232976%_
                                   _%$%tl232669232978%_
                                   _%$%e232670232981%_
                                   _%$%hd232671232984%_
                                   _%$%tl232672232986%_
                                   _%$%e232673232989%_
                                   _%$%hd232674232992%_
                                   _%$%tl232675232994%_
                                   _%$%e232676232997%_
                                   _%$%hd232677233000%_
                                   _%$%tl232678233002%_
                                   _%$%e232679233005%_
                                   _%$%hd232680233008%_
                                   _%$%tl232681233010%_
                                   _%$%e232682233013%_
                                   _%$%hd232683233016%_
                                   _%$%tl232684233018%_
                                   _%$%e232685233021%_
                                   _%$%hd232686233024%_
                                   _%$%tl232687233026%_
                                   _%$%e232688233029%_
                                   _%$%hd232689233032%_
                                   _%$%tl232690233034%_
                                   _%$%e232691233037%_
                                   _%$%hd232692233040%_
                                   _%$%tl232693233042%_
                                   _%$%e232694233045%_
                                   _%$%hd232695233048%_
                                   _%$%tl232696233050%_)
                                  (_%__kont236966236967%_))))
                          (_%__match237445237446%_
                           _%$%e232664232965%_
                           _%$%hd232665232968%_
                           _%$%tl232666232970%_
                           _%$%e232667232973%_
                           _%$%hd232668232976%_
                           _%$%tl232669232978%_
                           _%$%e232670232981%_
                           _%$%hd232671232984%_
                           _%$%tl232672232986%_
                           _%$%e232673232989%_
                           _%$%hd232674232992%_
                           _%$%tl232675232994%_
                           _%$%e232676232997%_
                           _%$%hd232677233000%_
                           _%$%tl232678233002%_
                           _%$%e232679233005%_
                           _%$%hd232680233008%_
                           _%$%tl232681233010%_
                           _%$%e232682233013%_
                           _%$%hd232683233016%_
                           _%$%tl232684233018%_
                           _%$%e232685233021%_
                           _%$%hd232686233024%_
                           _%$%tl232687233026%_))))
                   (_%__match237243237244%_
                    (lambda (_%$%e232630233096%_
                             _%$%hd232631233099%_
                             _%$%tl232632233101%_
                             _%$%e232633233104%_
                             _%$%hd232634233107%_
                             _%$%tl232635233109%_
                             _%$%e232636233112%_
                             _%$%hd232637233115%_
                             _%$%tl232638233117%_
                             _%$%e232639233120%_
                             _%$%hd232640233123%_
                             _%$%tl232641233125%_
                             _%$%e232642233128%_
                             _%$%hd232643233131%_
                             _%$%tl232644233133%_
                             _%$%e232645233136%_
                             _%$%hd232646233139%_
                             _%$%tl232647233141%_
                             _%$%e232648233144%_
                             _%$%hd232649233147%_
                             _%$%tl232650233149%_
                             _%$%e232651233152%_
                             _%$%hd232652233155%_
                             _%$%tl232653233157%_
                             _%$%e232654233160%_
                             _%$%hd232655233163%_
                             _%$%tl232656233165%_
                             _%$%e232657233168%_
                             _%$%hd232658233171%_
                             _%$%tl232659233173%_)
                      (let ((_%$%g232627233176%_ _%$%hd232658233171%_)
                            (_%$%g232628233177%_ _%$%hd232649233147%_)
                            (_%$%g232629233178%_ _%$%hd232640233123%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g232629233178%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g232629233178%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp238109
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self232520%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g232628233177%_
                                    __tmp238109)))
                            (_%__kont236958236959%_
                             _%$%g232627233176%_
                             _%$%g232628233177%_
                             _%$%g232629233178%_)
                            (_%__match237447237448%_
                             _%$%e232630233096%_
                             _%$%hd232631233099%_
                             _%$%tl232632233101%_
                             _%$%e232633233104%_
                             _%$%hd232634233107%_
                             _%$%tl232635233109%_
                             _%$%e232636233112%_
                             _%$%hd232637233115%_
                             _%$%tl232638233117%_
                             _%$%e232639233120%_
                             _%$%hd232640233123%_
                             _%$%tl232641233125%_
                             _%$%e232642233128%_
                             _%$%hd232643233131%_
                             _%$%tl232644233133%_
                             _%$%e232645233136%_
                             _%$%hd232646233139%_
                             _%$%tl232647233141%_
                             _%$%e232648233144%_
                             _%$%hd232649233147%_
                             _%$%tl232650233149%_
                             _%$%e232651233152%_
                             _%$%hd232652233155%_
                             _%$%tl232653233157%_)))))
                   (_%__match237241237242%_
                    (lambda (_%$%e232630233096%_
                             _%$%hd232631233099%_
                             _%$%tl232632233101%_
                             _%$%e232633233104%_
                             _%$%hd232634233107%_
                             _%$%tl232635233109%_
                             _%$%e232636233112%_
                             _%$%hd232637233115%_
                             _%$%tl232638233117%_
                             _%$%e232639233120%_
                             _%$%hd232640233123%_
                             _%$%tl232641233125%_
                             _%$%e232642233128%_
                             _%$%hd232643233131%_
                             _%$%tl232644233133%_
                             _%$%e232645233136%_
                             _%$%hd232646233139%_
                             _%$%tl232647233141%_
                             _%$%e232648233144%_
                             _%$%hd232649233147%_
                             _%$%tl232650233149%_
                             _%$%e232651233152%_
                             _%$%hd232652233155%_
                             _%$%tl232653233157%_
                             _%$%e232654233160%_
                             _%$%hd232655233163%_
                             _%$%tl232656233165%_
                             _%$%e232657233168%_
                             _%$%hd232658233171%_
                             _%$%tl232659233173%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl232653233157%_))
                          (_%__match237243237244%_
                           _%$%e232630233096%_
                           _%$%hd232631233099%_
                           _%$%tl232632233101%_
                           _%$%e232633233104%_
                           _%$%hd232634233107%_
                           _%$%tl232635233109%_
                           _%$%e232636233112%_
                           _%$%hd232637233115%_
                           _%$%tl232638233117%_
                           _%$%e232639233120%_
                           _%$%hd232640233123%_
                           _%$%tl232641233125%_
                           _%$%e232642233128%_
                           _%$%hd232643233131%_
                           _%$%tl232644233133%_
                           _%$%e232645233136%_
                           _%$%hd232646233139%_
                           _%$%tl232647233141%_
                           _%$%e232648233144%_
                           _%$%hd232649233147%_
                           _%$%tl232650233149%_
                           _%$%e232651233152%_
                           _%$%hd232652233155%_
                           _%$%tl232653233157%_
                           _%$%e232654233160%_
                           _%$%hd232655233163%_
                           _%$%tl232656233165%_
                           _%$%e232657233168%_
                           _%$%hd232658233171%_
                           _%$%tl232659233173%_)
                          (_%__match237321237322%_
                           _%$%e232630233096%_
                           _%$%hd232631233099%_
                           _%$%tl232632233101%_
                           _%$%e232633233104%_
                           _%$%hd232634233107%_
                           _%$%tl232635233109%_
                           _%$%e232636233112%_
                           _%$%hd232637233115%_
                           _%$%tl232638233117%_
                           _%$%e232639233120%_
                           _%$%hd232640233123%_
                           _%$%tl232641233125%_
                           _%$%e232642233128%_
                           _%$%hd232643233131%_
                           _%$%tl232644233133%_
                           _%$%e232645233136%_
                           _%$%hd232646233139%_
                           _%$%tl232647233141%_
                           _%$%e232648233144%_
                           _%$%hd232649233147%_
                           _%$%tl232650233149%_
                           _%$%e232651233152%_
                           _%$%hd232652233155%_
                           _%$%tl232653233157%_
                           _%$%e232654233160%_
                           _%$%hd232655233163%_
                           _%$%tl232656233165%_
                           _%$%e232657233168%_
                           _%$%hd232658233171%_
                           _%$%tl232659233173%_))))
                   (_%__match237231237232%_
                    (lambda (_%$%e232630233096%_
                             _%$%hd232631233099%_
                             _%$%tl232632233101%_
                             _%$%e232633233104%_
                             _%$%hd232634233107%_
                             _%$%tl232635233109%_
                             _%$%e232636233112%_
                             _%$%hd232637233115%_
                             _%$%tl232638233117%_
                             _%$%e232639233120%_
                             _%$%hd232640233123%_
                             _%$%tl232641233125%_
                             _%$%e232642233128%_
                             _%$%hd232643233131%_
                             _%$%tl232644233133%_
                             _%$%e232645233136%_
                             _%$%hd232646233139%_
                             _%$%tl232647233141%_
                             _%$%e232648233144%_
                             _%$%hd232649233147%_
                             _%$%tl232650233149%_
                             _%$%e232651233152%_
                             _%$%hd232652233155%_
                             _%$%tl232653233157%_
                             _%$%e232654233160%_
                             _%$%hd232655233163%_
                             _%$%tl232656233165%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%$%hd232655233163%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl232656233165%_))
                              (let ((_%$%e232657233168%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl232656233165%_))))
                                (let ((_%$%tl232659233173%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e232657233168%_)))
                                      (_%$%hd232658233171%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e232657233168%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl232659233173%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl232653233157%_))
                                          (_%__match237243237244%_
                                           _%$%e232630233096%_
                                           _%$%hd232631233099%_
                                           _%$%tl232632233101%_
                                           _%$%e232633233104%_
                                           _%$%hd232634233107%_
                                           _%$%tl232635233109%_
                                           _%$%e232636233112%_
                                           _%$%hd232637233115%_
                                           _%$%tl232638233117%_
                                           _%$%e232639233120%_
                                           _%$%hd232640233123%_
                                           _%$%tl232641233125%_
                                           _%$%e232642233128%_
                                           _%$%hd232643233131%_
                                           _%$%tl232644233133%_
                                           _%$%e232645233136%_
                                           _%$%hd232646233139%_
                                           _%$%tl232647233141%_
                                           _%$%e232648233144%_
                                           _%$%hd232649233147%_
                                           _%$%tl232650233149%_
                                           _%$%e232651233152%_
                                           _%$%hd232652233155%_
                                           _%$%tl232653233157%_
                                           _%$%e232654233160%_
                                           _%$%hd232655233163%_
                                           _%$%tl232656233165%_
                                           _%$%e232657233168%_
                                           _%$%hd232658233171%_
                                           _%$%tl232659233173%_)
                                          (_%__match237321237322%_
                                           _%$%e232630233096%_
                                           _%$%hd232631233099%_
                                           _%$%tl232632233101%_
                                           _%$%e232633233104%_
                                           _%$%hd232634233107%_
                                           _%$%tl232635233109%_
                                           _%$%e232636233112%_
                                           _%$%hd232637233115%_
                                           _%$%tl232638233117%_
                                           _%$%e232639233120%_
                                           _%$%hd232640233123%_
                                           _%$%tl232641233125%_
                                           _%$%e232642233128%_
                                           _%$%hd232643233131%_
                                           _%$%tl232644233133%_
                                           _%$%e232645233136%_
                                           _%$%hd232646233139%_
                                           _%$%tl232647233141%_
                                           _%$%e232648233144%_
                                           _%$%hd232649233147%_
                                           _%$%tl232650233149%_
                                           _%$%e232651233152%_
                                           _%$%hd232652233155%_
                                           _%$%tl232653233157%_
                                           _%$%e232654233160%_
                                           _%$%hd232655233163%_
                                           _%$%tl232656233165%_
                                           _%$%e232657233168%_
                                           _%$%hd232658233171%_
                                           _%$%tl232659233173%_))
                                      (_%__match237445237446%_
                                       _%$%e232630233096%_
                                       _%$%hd232631233099%_
                                       _%$%tl232632233101%_
                                       _%$%e232633233104%_
                                       _%$%hd232634233107%_
                                       _%$%tl232635233109%_
                                       _%$%e232636233112%_
                                       _%$%hd232637233115%_
                                       _%$%tl232638233117%_
                                       _%$%e232639233120%_
                                       _%$%hd232640233123%_
                                       _%$%tl232641233125%_
                                       _%$%e232642233128%_
                                       _%$%hd232643233131%_
                                       _%$%tl232644233133%_
                                       _%$%e232645233136%_
                                       _%$%hd232646233139%_
                                       _%$%tl232647233141%_
                                       _%$%e232648233144%_
                                       _%$%hd232649233147%_
                                       _%$%tl232650233149%_
                                       _%$%e232651233152%_
                                       _%$%hd232652233155%_
                                       _%$%tl232653233157%_))))
                              (_%__match237445237446%_
                               _%$%e232630233096%_
                               _%$%hd232631233099%_
                               _%$%tl232632233101%_
                               _%$%e232633233104%_
                               _%$%hd232634233107%_
                               _%$%tl232635233109%_
                               _%$%e232636233112%_
                               _%$%hd232637233115%_
                               _%$%tl232638233117%_
                               _%$%e232639233120%_
                               _%$%hd232640233123%_
                               _%$%tl232641233125%_
                               _%$%e232642233128%_
                               _%$%hd232643233131%_
                               _%$%tl232644233133%_
                               _%$%e232645233136%_
                               _%$%hd232646233139%_
                               _%$%tl232647233141%_
                               _%$%e232648233144%_
                               _%$%hd232649233147%_
                               _%$%tl232650233149%_
                               _%$%e232651233152%_
                               _%$%hd232652233155%_
                               _%$%tl232653233157%_))
                          (_%__match237445237446%_
                           _%$%e232630233096%_
                           _%$%hd232631233099%_
                           _%$%tl232632233101%_
                           _%$%e232633233104%_
                           _%$%hd232634233107%_
                           _%$%tl232635233109%_
                           _%$%e232636233112%_
                           _%$%hd232637233115%_
                           _%$%tl232638233117%_
                           _%$%e232639233120%_
                           _%$%hd232640233123%_
                           _%$%tl232641233125%_
                           _%$%e232642233128%_
                           _%$%hd232643233131%_
                           _%$%tl232644233133%_
                           _%$%e232645233136%_
                           _%$%hd232646233139%_
                           _%$%tl232647233141%_
                           _%$%e232648233144%_
                           _%$%hd232649233147%_
                           _%$%tl232650233149%_
                           _%$%e232651233152%_
                           _%$%hd232652233155%_
                           _%$%tl232653233157%_))))
                   (_%__match237163237164%_
                    (lambda (_%$%e232579233215%_
                             _%$%hd232580233218%_
                             _%$%tl232581233220%_
                             _%$%e232582233223%_
                             _%$%hd232583233226%_
                             _%$%tl232584233228%_
                             _%$%e232585233231%_
                             _%$%hd232586233234%_
                             _%$%tl232587233236%_
                             _%$%e232588233239%_
                             _%$%hd232589233242%_
                             _%$%tl232590233244%_
                             _%$%e232591233247%_
                             _%$%hd232592233250%_
                             _%$%tl232593233252%_
                             _%$%e232594233255%_
                             _%$%hd232595233258%_
                             _%$%tl232596233260%_
                             _%$%e232597233263%_
                             _%$%hd232598233266%_
                             _%$%tl232599233268%_
                             _%$%e232600233271%_
                             _%$%hd232601233274%_
                             _%$%tl232602233276%_
                             _%$%e232603233279%_
                             _%$%hd232604233282%_
                             _%$%tl232605233284%_
                             _%$%e232606233287%_
                             _%$%hd232607233290%_
                             _%$%tl232608233292%_
                             _%$%e232609233295%_
                             _%$%hd232610233298%_
                             _%$%tl232611233300%_
                             _%$%e232612233303%_
                             _%$%hd232613233306%_
                             _%$%tl232614233308%_
                             _%$%e232615233311%_
                             _%$%hd232616233314%_
                             _%$%tl232617233316%_
                             _%__splice236956236957%_
                             _%$%target232618233319%_
                             _%$%tl232620233321%_)
                      (letrec ((_%$%loop232621233324%_
                                (lambda (_%$%hd232619233327%_
                                         _%$%args232625233329%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd232619233327%_))
                                      (let ((_%$%e232622233331%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd232619233327%_))))
                                        (let ((_%$%lp-tl232624233336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e232622233331%_)))
                                              (_%$%lp-hd232623233334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e232622233331%_))))
                                          (_%$%loop232621233324%_
                                           _%$%lp-tl232624233336%_
                                           (cons _%$%lp-hd232623233334%_
                                                 _%$%args232625233329%_))))
                                      (let ((_%$%args232626233339%_
                                             (reverse _%$%args232625233329%_)))
                                        (let ((_%$%g232574233341%_
                                               _%$%args232626233339%_)
                                              (_%$%g232575233342%_
                                               _%$%hd232616233314%_)
                                              (_%$%g232576233343%_
                                               _%$%hd232607233290%_)
                                              (_%$%g232577233344%_
                                               _%$%hd232598233266%_)
                                              (_%$%g232578233345%_
                                               _%$%hd232589233242%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g232578233345%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g232577233344%_
                                                      'call-method))
                                                   (let ((__tmp238110
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self232520%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g232576233343%_
                                                      __tmp238110)))
                                              (_%__kont236954236955%_
                                               _%$%g232574233341%_
                                               _%$%g232575233342%_
                                               _%$%g232576233343%_
                                               _%$%g232577233344%_
                                               _%$%g232578233345%_)
                                              (_%__kont236966236967%_))))))))
                        (_%$%loop232621233324%_
                         _%$%target232618233319%_
                         '()))))
                   (_%__match237121237122%_
                    (lambda (_%$%e232579233215%_
                             _%$%hd232580233218%_
                             _%$%tl232581233220%_
                             _%$%e232582233223%_
                             _%$%hd232583233226%_
                             _%$%tl232584233228%_
                             _%$%e232585233231%_
                             _%$%hd232586233234%_
                             _%$%tl232587233236%_
                             _%$%e232588233239%_
                             _%$%hd232589233242%_
                             _%$%tl232590233244%_
                             _%$%e232591233247%_
                             _%$%hd232592233250%_
                             _%$%tl232593233252%_
                             _%$%e232594233255%_
                             _%$%hd232595233258%_
                             _%$%tl232596233260%_
                             _%$%e232597233263%_
                             _%$%hd232598233266%_
                             _%$%tl232599233268%_
                             _%$%e232600233271%_
                             _%$%hd232601233274%_
                             _%$%tl232602233276%_
                             _%$%e232603233279%_
                             _%$%hd232604233282%_
                             _%$%tl232605233284%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%$%hd232604233282%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl232605233284%_))
                              (let ((_%$%e232606233287%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl232605233284%_))))
                                (let ((_%$%tl232608233292%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e232606233287%_)))
                                      (_%$%hd232607233290%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e232606233287%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl232608233292%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl232602233276%_))
                                          (let ((_%$%e232609233295%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl232602233276%_))))
                                            (let ((_%$%tl232611233300%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e232609233295%_)))
                                                  (_%$%hd232610233298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e232609233295%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd232610233298%_))
                                                  (let ((_%$%e232612233303%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd232610233298%_))))
                                                    (let ((_%$%tl232614233308%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e232612233303%_)))
                                                          (_%$%hd232613233306%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e232612233303%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd232613233306%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%$%hd232613233306%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl232614233308%_))
                          (let ((_%$%e232615233311%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl232614233308%_))))
                            (let ((_%$%tl232617233316%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e232615233311%_)))
                                  (_%$%hd232616233314%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e232615233311%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl232617233316%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl232611233300%_))
                                      (let ((_%__splice236956236957%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl232611233300%_
                                                '0))))
                                        (let ((_%$%tl232620233321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice236956236957%_
                                                  '1)))
                                              (_%$%target232618233319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice236956236957%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl232620233321%_))
                                              (_%__match237163237164%_
                                               _%$%e232579233215%_
                                               _%$%hd232580233218%_
                                               _%$%tl232581233220%_
                                               _%$%e232582233223%_
                                               _%$%hd232583233226%_
                                               _%$%tl232584233228%_
                                               _%$%e232585233231%_
                                               _%$%hd232586233234%_
                                               _%$%tl232587233236%_
                                               _%$%e232588233239%_
                                               _%$%hd232589233242%_
                                               _%$%tl232590233244%_
                                               _%$%e232591233247%_
                                               _%$%hd232592233250%_
                                               _%$%tl232593233252%_
                                               _%$%e232594233255%_
                                               _%$%hd232595233258%_
                                               _%$%tl232596233260%_
                                               _%$%e232597233263%_
                                               _%$%hd232598233266%_
                                               _%$%tl232599233268%_
                                               _%$%e232600233271%_
                                               _%$%hd232601233274%_
                                               _%$%tl232602233276%_
                                               _%$%e232603233279%_
                                               _%$%hd232604233282%_
                                               _%$%tl232605233284%_
                                               _%$%e232606233287%_
                                               _%$%hd232607233290%_
                                               _%$%tl232608233292%_
                                               _%$%e232609233295%_
                                               _%$%hd232610233298%_
                                               _%$%tl232611233300%_
                                               _%$%e232612233303%_
                                               _%$%hd232613233306%_
                                               _%$%tl232614233308%_
                                               _%$%e232615233311%_
                                               _%$%hd232616233314%_
                                               _%$%tl232617233316%_
                                               _%__splice236956236957%_
                                               _%$%target232618233319%_
                                               _%$%tl232620233321%_)
                                              (_%__kont236966236967%_))))
                                      (_%__kont236966236967%_))
                                  (_%__kont236966236967%_))))
                          (_%__kont236966236967%_))
                      (_%__kont236966236967%_))
                  (_%__kont236966236967%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont236966236967%_))))
                                          (_%__match237445237446%_
                                           _%$%e232579233215%_
                                           _%$%hd232580233218%_
                                           _%$%tl232581233220%_
                                           _%$%e232582233223%_
                                           _%$%hd232583233226%_
                                           _%$%tl232584233228%_
                                           _%$%e232585233231%_
                                           _%$%hd232586233234%_
                                           _%$%tl232587233236%_
                                           _%$%e232588233239%_
                                           _%$%hd232589233242%_
                                           _%$%tl232590233244%_
                                           _%$%e232591233247%_
                                           _%$%hd232592233250%_
                                           _%$%tl232593233252%_
                                           _%$%e232594233255%_
                                           _%$%hd232595233258%_
                                           _%$%tl232596233260%_
                                           _%$%e232597233263%_
                                           _%$%hd232598233266%_
                                           _%$%tl232599233268%_
                                           _%$%e232600233271%_
                                           _%$%hd232601233274%_
                                           _%$%tl232602233276%_))
                                      (_%__match237445237446%_
                                       _%$%e232579233215%_
                                       _%$%hd232580233218%_
                                       _%$%tl232581233220%_
                                       _%$%e232582233223%_
                                       _%$%hd232583233226%_
                                       _%$%tl232584233228%_
                                       _%$%e232585233231%_
                                       _%$%hd232586233234%_
                                       _%$%tl232587233236%_
                                       _%$%e232588233239%_
                                       _%$%hd232589233242%_
                                       _%$%tl232590233244%_
                                       _%$%e232591233247%_
                                       _%$%hd232592233250%_
                                       _%$%tl232593233252%_
                                       _%$%e232594233255%_
                                       _%$%hd232595233258%_
                                       _%$%tl232596233260%_
                                       _%$%e232597233263%_
                                       _%$%hd232598233266%_
                                       _%$%tl232599233268%_
                                       _%$%e232600233271%_
                                       _%$%hd232601233274%_
                                       _%$%tl232602233276%_))))
                              (_%__match237445237446%_
                               _%$%e232579233215%_
                               _%$%hd232580233218%_
                               _%$%tl232581233220%_
                               _%$%e232582233223%_
                               _%$%hd232583233226%_
                               _%$%tl232584233228%_
                               _%$%e232585233231%_
                               _%$%hd232586233234%_
                               _%$%tl232587233236%_
                               _%$%e232588233239%_
                               _%$%hd232589233242%_
                               _%$%tl232590233244%_
                               _%$%e232591233247%_
                               _%$%hd232592233250%_
                               _%$%tl232593233252%_
                               _%$%e232594233255%_
                               _%$%hd232595233258%_
                               _%$%tl232596233260%_
                               _%$%e232597233263%_
                               _%$%hd232598233266%_
                               _%$%tl232599233268%_
                               _%$%e232600233271%_
                               _%$%hd232601233274%_
                               _%$%tl232602233276%_))
                          (_%__match237231237232%_
                           _%$%e232579233215%_
                           _%$%hd232580233218%_
                           _%$%tl232581233220%_
                           _%$%e232582233223%_
                           _%$%hd232583233226%_
                           _%$%tl232584233228%_
                           _%$%e232585233231%_
                           _%$%hd232586233234%_
                           _%$%tl232587233236%_
                           _%$%e232588233239%_
                           _%$%hd232589233242%_
                           _%$%tl232590233244%_
                           _%$%e232591233247%_
                           _%$%hd232592233250%_
                           _%$%tl232593233252%_
                           _%$%e232594233255%_
                           _%$%hd232595233258%_
                           _%$%tl232596233260%_
                           _%$%e232597233263%_
                           _%$%hd232598233266%_
                           _%$%tl232599233268%_
                           _%$%e232600233271%_
                           _%$%hd232601233274%_
                           _%$%tl232602233276%_
                           _%$%e232603233279%_
                           _%$%hd232604233282%_
                           _%$%tl232605233284%_))))
                   (_%__match237053237054%_
                    (lambda (_%$%e232535233402%_
                             _%$%hd232536233405%_
                             _%$%tl232537233407%_
                             _%$%e232538233410%_
                             _%$%hd232539233413%_
                             _%$%tl232540233415%_
                             _%$%e232541233418%_
                             _%$%hd232542233421%_
                             _%$%tl232543233423%_
                             _%$%e232544233426%_
                             _%$%hd232545233429%_
                             _%$%tl232546233431%_
                             _%$%e232547233434%_
                             _%$%hd232548233437%_
                             _%$%tl232549233439%_
                             _%$%e232550233442%_
                             _%$%hd232551233445%_
                             _%$%tl232552233447%_
                             _%$%e232553233450%_
                             _%$%hd232554233453%_
                             _%$%tl232555233455%_
                             _%$%e232556233458%_
                             _%$%hd232557233461%_
                             _%$%tl232558233463%_
                             _%$%e232559233466%_
                             _%$%hd232560233469%_
                             _%$%tl232561233471%_
                             _%$%e232562233474%_
                             _%$%hd232563233477%_
                             _%$%tl232564233479%_
                             _%__splice236952236953%_
                             _%$%target232565233482%_
                             _%$%tl232567233484%_)
                      (letrec ((_%$%loop232568233487%_
                                (lambda (_%$%hd232566233490%_
                                         _%$%args232572233492%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd232566233490%_))
                                      (let ((_%$%e232569233494%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd232566233490%_))))
                                        (let ((_%$%lp-tl232571233499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e232569233494%_)))
                                              (_%$%lp-hd232570233497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e232569233494%_))))
                                          (_%$%loop232568233487%_
                                           _%$%lp-tl232571233499%_
                                           (cons _%$%lp-hd232570233497%_
                                                 _%$%args232572233492%_))))
                                      (let ((_%$%args232573233502%_
                                             (reverse _%$%args232572233492%_)))
                                        (let ((_%$%g232531233504%_
                                               _%$%args232573233502%_)
                                              (_%$%g232532233505%_
                                               _%$%hd232563233477%_)
                                              (_%$%g232533233506%_
                                               _%$%hd232554233453%_)
                                              (_%$%g232534233507%_
                                               _%$%hd232545233429%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g232534233507%_
                                                      'call-method))
                                                   (let ((__tmp238111
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self232520%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g232533233506%_
                                                      __tmp238111)))
                                              (_%__kont236950236951%_
                                               _%$%g232531233504%_
                                               _%$%g232532233505%_
                                               _%$%g232533233506%_
                                               _%$%g232534233507%_)
                                              (_%__match237241237242%_
                                               _%$%e232535233402%_
                                               _%$%hd232536233405%_
                                               _%$%tl232537233407%_
                                               _%$%e232538233410%_
                                               _%$%hd232539233413%_
                                               _%$%tl232540233415%_
                                               _%$%e232541233418%_
                                               _%$%hd232542233421%_
                                               _%$%tl232543233423%_
                                               _%$%e232544233426%_
                                               _%$%hd232545233429%_
                                               _%$%tl232546233431%_
                                               _%$%e232547233434%_
                                               _%$%hd232548233437%_
                                               _%$%tl232549233439%_
                                               _%$%e232550233442%_
                                               _%$%hd232551233445%_
                                               _%$%tl232552233447%_
                                               _%$%e232553233450%_
                                               _%$%hd232554233453%_
                                               _%$%tl232555233455%_
                                               _%$%e232556233458%_
                                               _%$%hd232557233461%_
                                               _%$%tl232558233463%_
                                               _%$%e232559233466%_
                                               _%$%hd232560233469%_
                                               _%$%tl232561233471%_
                                               _%$%e232562233474%_
                                               _%$%hd232563233477%_
                                               _%$%tl232564233479%_))))))))
                        (_%$%loop232568233487%_
                         _%$%target232565233482%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx236948236949%_))
                  (let ((_%$%e232535233402%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx236948236949%_))))
                    (let ((_%$%tl232537233407%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e232535233402%_)))
                          (_%$%hd232536233405%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e232535233402%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl232537233407%_))
                          (let ((_%$%e232538233410%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl232537233407%_))))
                            (let ((_%$%tl232540233415%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e232538233410%_)))
                                  (_%$%hd232539233413%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e232538233410%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd232539233413%_))
                                  (let ((_%$%e232541233418%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd232539233413%_))))
                                    (let ((_%$%tl232543233423%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e232541233418%_)))
                                          (_%$%hd232542233421%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e232541233418%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd232542233421%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd232542233421%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl232543233423%_))
                                                  (let ((_%$%e232544233426%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl232543233423%_))))
                                                    (let ((_%$%tl232546233431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e232544233426%_)))
                                                          (_%$%hd232545233429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e232544233426%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl232546233431%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl232540233415%_))
                      (let ((_%$%e232547233434%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl232540233415%_))))
                        (let ((_%$%tl232549233439%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e232547233434%_)))
                              (_%$%hd232548233437%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e232547233434%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd232548233437%_))
                              (let ((_%$%e232550233442%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd232548233437%_))))
                                (let ((_%$%tl232552233447%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e232550233442%_)))
                                      (_%$%hd232551233445%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e232550233442%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd232551233445%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd232551233445%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl232552233447%_))
                                              (let ((_%$%e232553233450%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl232552233447%_))))
                                                (let ((_%$%tl232555233455%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e232553233450%_)))
                                                      (_%$%hd232554233453%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e232553233450%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl232555233455%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl232549233439%_))
                                                          (let ((_%$%e232556233458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl232549233439%_))))
                    (let ((_%$%tl232558233463%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e232556233458%_)))
                          (_%$%hd232557233461%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e232556233458%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd232557233461%_))
                          (let ((_%$%e232559233466%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd232557233461%_))))
                            (let ((_%$%tl232561233471%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e232559233466%_)))
                                  (_%$%hd232560233469%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e232559233466%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd232560233469%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd232560233469%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl232561233471%_))
                                          (let ((_%$%e232562233474%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl232561233471%_))))
                                            (let ((_%$%tl232564233479%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e232562233474%_)))
                                                  (_%$%hd232563233477%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e232562233474%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl232564233479%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl232558233463%_))
                                                      (let ((_%__splice236952236953%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl232558233463%_
                        '0))))
                (let ((_%$%tl232567233484%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice236952236953%_ '1)))
                      (_%$%target232565233482%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice236952236953%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl232567233484%_))
                      (_%__match237053237054%_
                       _%$%e232535233402%_
                       _%$%hd232536233405%_
                       _%$%tl232537233407%_
                       _%$%e232538233410%_
                       _%$%hd232539233413%_
                       _%$%tl232540233415%_
                       _%$%e232541233418%_
                       _%$%hd232542233421%_
                       _%$%tl232543233423%_
                       _%$%e232544233426%_
                       _%$%hd232545233429%_
                       _%$%tl232546233431%_
                       _%$%e232547233434%_
                       _%$%hd232548233437%_
                       _%$%tl232549233439%_
                       _%$%e232550233442%_
                       _%$%hd232551233445%_
                       _%$%tl232552233447%_
                       _%$%e232553233450%_
                       _%$%hd232554233453%_
                       _%$%tl232555233455%_
                       _%$%e232556233458%_
                       _%$%hd232557233461%_
                       _%$%tl232558233463%_
                       _%$%e232559233466%_
                       _%$%hd232560233469%_
                       _%$%tl232561233471%_
                       _%$%e232562233474%_
                       _%$%hd232563233477%_
                       _%$%tl232564233479%_
                       _%__splice236952236953%_
                       _%$%target232565233482%_
                       _%$%tl232567233484%_)
                      (_%__match237241237242%_
                       _%$%e232535233402%_
                       _%$%hd232536233405%_
                       _%$%tl232537233407%_
                       _%$%e232538233410%_
                       _%$%hd232539233413%_
                       _%$%tl232540233415%_
                       _%$%e232541233418%_
                       _%$%hd232542233421%_
                       _%$%tl232543233423%_
                       _%$%e232544233426%_
                       _%$%hd232545233429%_
                       _%$%tl232546233431%_
                       _%$%e232547233434%_
                       _%$%hd232548233437%_
                       _%$%tl232549233439%_
                       _%$%e232550233442%_
                       _%$%hd232551233445%_
                       _%$%tl232552233447%_
                       _%$%e232553233450%_
                       _%$%hd232554233453%_
                       _%$%tl232555233455%_
                       _%$%e232556233458%_
                       _%$%hd232557233461%_
                       _%$%tl232558233463%_
                       _%$%e232559233466%_
                       _%$%hd232560233469%_
                       _%$%tl232561233471%_
                       _%$%e232562233474%_
                       _%$%hd232563233477%_
                       _%$%tl232564233479%_))))
              (_%__match237241237242%_
               _%$%e232535233402%_
               _%$%hd232536233405%_
               _%$%tl232537233407%_
               _%$%e232538233410%_
               _%$%hd232539233413%_
               _%$%tl232540233415%_
               _%$%e232541233418%_
               _%$%hd232542233421%_
               _%$%tl232543233423%_
               _%$%e232544233426%_
               _%$%hd232545233429%_
               _%$%tl232546233431%_
               _%$%e232547233434%_
               _%$%hd232548233437%_
               _%$%tl232549233439%_
               _%$%e232550233442%_
               _%$%hd232551233445%_
               _%$%tl232552233447%_
               _%$%e232553233450%_
               _%$%hd232554233453%_
               _%$%tl232555233455%_
               _%$%e232556233458%_
               _%$%hd232557233461%_
               _%$%tl232558233463%_
               _%$%e232559233466%_
               _%$%hd232560233469%_
               _%$%tl232561233471%_
               _%$%e232562233474%_
               _%$%hd232563233477%_
               _%$%tl232564233479%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match237445237446%_
                                                   _%$%e232535233402%_
                                                   _%$%hd232536233405%_
                                                   _%$%tl232537233407%_
                                                   _%$%e232538233410%_
                                                   _%$%hd232539233413%_
                                                   _%$%tl232540233415%_
                                                   _%$%e232541233418%_
                                                   _%$%hd232542233421%_
                                                   _%$%tl232543233423%_
                                                   _%$%e232544233426%_
                                                   _%$%hd232545233429%_
                                                   _%$%tl232546233431%_
                                                   _%$%e232547233434%_
                                                   _%$%hd232548233437%_
                                                   _%$%tl232549233439%_
                                                   _%$%e232550233442%_
                                                   _%$%hd232551233445%_
                                                   _%$%tl232552233447%_
                                                   _%$%e232553233450%_
                                                   _%$%hd232554233453%_
                                                   _%$%tl232555233455%_
                                                   _%$%e232556233458%_
                                                   _%$%hd232557233461%_
                                                   _%$%tl232558233463%_))))
                                          (_%__match237445237446%_
                                           _%$%e232535233402%_
                                           _%$%hd232536233405%_
                                           _%$%tl232537233407%_
                                           _%$%e232538233410%_
                                           _%$%hd232539233413%_
                                           _%$%tl232540233415%_
                                           _%$%e232541233418%_
                                           _%$%hd232542233421%_
                                           _%$%tl232543233423%_
                                           _%$%e232544233426%_
                                           _%$%hd232545233429%_
                                           _%$%tl232546233431%_
                                           _%$%e232547233434%_
                                           _%$%hd232548233437%_
                                           _%$%tl232549233439%_
                                           _%$%e232550233442%_
                                           _%$%hd232551233445%_
                                           _%$%tl232552233447%_
                                           _%$%e232553233450%_
                                           _%$%hd232554233453%_
                                           _%$%tl232555233455%_
                                           _%$%e232556233458%_
                                           _%$%hd232557233461%_
                                           _%$%tl232558233463%_))
                                      (_%__match237121237122%_
                                       _%$%e232535233402%_
                                       _%$%hd232536233405%_
                                       _%$%tl232537233407%_
                                       _%$%e232538233410%_
                                       _%$%hd232539233413%_
                                       _%$%tl232540233415%_
                                       _%$%e232541233418%_
                                       _%$%hd232542233421%_
                                       _%$%tl232543233423%_
                                       _%$%e232544233426%_
                                       _%$%hd232545233429%_
                                       _%$%tl232546233431%_
                                       _%$%e232547233434%_
                                       _%$%hd232548233437%_
                                       _%$%tl232549233439%_
                                       _%$%e232550233442%_
                                       _%$%hd232551233445%_
                                       _%$%tl232552233447%_
                                       _%$%e232553233450%_
                                       _%$%hd232554233453%_
                                       _%$%tl232555233455%_
                                       _%$%e232556233458%_
                                       _%$%hd232557233461%_
                                       _%$%tl232558233463%_
                                       _%$%e232559233466%_
                                       _%$%hd232560233469%_
                                       _%$%tl232561233471%_))
                                  (_%__match237445237446%_
                                   _%$%e232535233402%_
                                   _%$%hd232536233405%_
                                   _%$%tl232537233407%_
                                   _%$%e232538233410%_
                                   _%$%hd232539233413%_
                                   _%$%tl232540233415%_
                                   _%$%e232541233418%_
                                   _%$%hd232542233421%_
                                   _%$%tl232543233423%_
                                   _%$%e232544233426%_
                                   _%$%hd232545233429%_
                                   _%$%tl232546233431%_
                                   _%$%e232547233434%_
                                   _%$%hd232548233437%_
                                   _%$%tl232549233439%_
                                   _%$%e232550233442%_
                                   _%$%hd232551233445%_
                                   _%$%tl232552233447%_
                                   _%$%e232553233450%_
                                   _%$%hd232554233453%_
                                   _%$%tl232555233455%_
                                   _%$%e232556233458%_
                                   _%$%hd232557233461%_
                                   _%$%tl232558233463%_))))
                          (_%__match237445237446%_
                           _%$%e232535233402%_
                           _%$%hd232536233405%_
                           _%$%tl232537233407%_
                           _%$%e232538233410%_
                           _%$%hd232539233413%_
                           _%$%tl232540233415%_
                           _%$%e232541233418%_
                           _%$%hd232542233421%_
                           _%$%tl232543233423%_
                           _%$%e232544233426%_
                           _%$%hd232545233429%_
                           _%$%tl232546233431%_
                           _%$%e232547233434%_
                           _%$%hd232548233437%_
                           _%$%tl232549233439%_
                           _%$%e232550233442%_
                           _%$%hd232551233445%_
                           _%$%tl232552233447%_
                           _%$%e232553233450%_
                           _%$%hd232554233453%_
                           _%$%tl232555233455%_
                           _%$%e232556233458%_
                           _%$%hd232557233461%_
                           _%$%tl232558233463%_))))
                  (_%__match237383237384%_
                   _%$%e232535233402%_
                   _%$%hd232536233405%_
                   _%$%tl232537233407%_
                   _%$%e232538233410%_
                   _%$%hd232539233413%_
                   _%$%tl232540233415%_
                   _%$%e232541233418%_
                   _%$%hd232542233421%_
                   _%$%tl232543233423%_
                   _%$%e232544233426%_
                   _%$%hd232545233429%_
                   _%$%tl232546233431%_
                   _%$%e232547233434%_
                   _%$%hd232548233437%_
                   _%$%tl232549233439%_
                   _%$%e232550233442%_
                   _%$%hd232551233445%_
                   _%$%tl232552233447%_
                   _%$%e232553233450%_
                   _%$%hd232554233453%_
                   _%$%tl232555233455%_))
              (_%__kont236966236967%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont236966236967%_))
                                          (_%__kont236966236967%_))
                                      (_%__kont236966236967%_))))
                              (_%__kont236966236967%_))))
                      (_%__kont236966236967%_))
                  (_%__kont236966236967%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont236966236967%_))
                                              (_%__kont236966236967%_))
                                          (_%__kont236966236967%_))))
                                  (_%__kont236966236967%_))))
                          (_%__kont236966236967%_))))
                  (_%__kont236966236967%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self231463%_ _%stx231464%_)
        (letrec ((_%force-e231466%_
                  (lambda (_%target232518%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target232518%_ '()))
                                      '()))))))
          (let* ((_%__stx237450237451%_ _%stx231464%_)
                 (_%$%g231474231696%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx237450237451%_)))))
            (let ((_%__kont237452237453%_
                   (lambda (_%$%g231476232464%_
                            _%$%g231477232465%_
                            _%$%g231478232466%_
                            _%$%g231479232467%_)
                     (let ((_%$method232512%_
                            (let ((__tmp238113
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self231463%_ 'methods)))
                                  (__tmp238112
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g231477232465%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp238113 __tmp238112)))
                           (_%args232513%_
                            (map (lambda (_%$%g232500232502%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self231463%_
                                      _%$%g232500232502%_)))
                                 (let ((__tmp238114
                                        (lambda (_%$%g232504232507%_
                                                 _%$%g232505232509%_)
                                          (cons _%$%g232504232507%_
                                                _%$%g232505232509%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp238114
                                    '()
                                    _%$%g231476232464%_)))))
                       (let ((__tmp238115
                              (cons '%#call
                                    (cons (_%force-e231466%_ _%$method232512%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self231463%_
                                                               'receiver))
                                                            '()))
                                                _%args232513%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp238115 _%stx231464%_)))))
                  (_%__kont237456237457%_
                   (lambda (_%$%g231519232298%_
                            _%$%g231520232299%_
                            _%$%g231521232300%_
                            _%$%g231522232301%_
                            _%$%g231523232302%_)
                     (let ((_%$method232354%_
                            (let ((__tmp238117
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self231463%_ 'methods)))
                                  (__tmp238116
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g231520232299%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp238117 __tmp238116)))
                           (_%args232355%_
                            (map (lambda (_%$%g232342232344%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self231463%_
                                      _%$%g232342232344%_)))
                                 (let ((__tmp238118
                                        (lambda (_%$%g232346232349%_
                                                 _%$%g232347232351%_)
                                          (cons _%$%g232346232349%_
                                                _%$%g232347232351%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp238118
                                    '()
                                    _%$%g231519232298%_)))))
                       (let ((__tmp238119
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e231466%_
                                                 _%$method232354%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self231463%_ 'receiver))
                          '()))
              _%args232355%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp238119 _%stx231464%_)))))
                  (_%__kont237460237461%_
                   (lambda (_%$%g231572232131%_
                            _%$%g231573232132%_
                            _%$%g231574232133%_)
                     (let* ((_%$field232165%_
                             (let ((__tmp238121
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self231463%_ 'slots)))
                                   (__tmp238120
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%g231572232131%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp238121 __tmp238120)))
                            (__tmp238122
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self231463%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field232165%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self231463%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp238122 _%stx231464%_))))
                  (_%__kont237462237463%_
                   (lambda (_%$%g231605232005%_
                            _%$%g231606232006%_
                            _%$%g231607232007%_
                            _%$%g231608232008%_)
                     (let ((_%$field232043%_
                            (let ((__tmp238124
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self231463%_ 'slots)))
                                  (__tmp238123
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g231606232006%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp238124 __tmp238123)))
                           (_%expr232044%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self231463%_
                               _%$%g231605232005%_))))
                       (let ((__tmp238125
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self231463%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field232043%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self231463%_ 'receiver))
                          '()))
              (cons _%expr232044%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp238125 _%stx231464%_)))))
                  (_%__kont237464237465%_
                   (lambda (_%$%g231642231877%_ _%$%g231643231878%_)
                     (let* ((_%accessor231900%_
                             (let ((__tmp238126
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g231643231878%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp238126)))
                            (_%klass231902%_
                             (let ((__tmp238127
                                    (##structure-ref
                                     _%accessor231900%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx231464%_
                                __tmp238127)))
                            (_%slot231904%_
                             (##structure-ref
                              _%accessor231900%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor231900%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass231902%_
                                      _%slot231904%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass231902%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx231464%_
                           (let* ((_%$field231910%_
                                   (let ((__tmp238128
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self231463%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp238128 _%slot231904%_)))
                                  (__tmp238129
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self231463%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field231910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self231463%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp238129
                              _%stx231464%_))))))
                  (_%__kont237466237467%_
                   (lambda (_%$%g231665231772%_
                            _%$%g231666231773%_
                            _%$%g231667231774%_)
                     (let* ((_%mutator231802%_
                             (let ((__tmp238130
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g231667231774%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp238130)))
                            (_%klass231804%_
                             (let ((__tmp238131
                                    (##structure-ref
                                     _%mutator231802%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx231464%_
                                __tmp238131)))
                            (_%slot231806%_
                             (##structure-ref
                              _%mutator231802%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr231808%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self231463%_
                                _%$%g231665231772%_))))
                       (if (if (##structure-ref
                                _%mutator231802%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass231804%_
                                      _%slot231806%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass231804%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp238132
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%$%g231667231774%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%$%g231666231773%_
                                                                '()))
                                                    (cons _%expr231808%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp238132 _%stx231464%_))
                           (let* ((_%$field231814%_
                                   (let ((__tmp238133
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self231463%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp238133 _%slot231806%_)))
                                  (__tmp238134
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self231463%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field231814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self231463%_ 'receiver))
                               '()))
                   (cons _%expr231808%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp238134
                              _%stx231464%_))))))
                  (_%__kont237468237469%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self231463%_ _%stx231464%_)))))
              (let* ((_%__match237949237950%_
                      (lambda (_%$%e231668231708%_
                               _%$%hd231669231711%_
                               _%$%tl231670231713%_
                               _%$%e231671231716%_
                               _%$%hd231672231719%_
                               _%$%tl231673231721%_
                               _%$%e231674231724%_
                               _%$%hd231675231727%_
                               _%$%tl231676231729%_
                               _%$%e231677231732%_
                               _%$%hd231678231735%_
                               _%$%tl231679231737%_
                               _%$%e231680231740%_
                               _%$%hd231681231743%_
                               _%$%tl231682231745%_
                               _%$%e231683231748%_
                               _%$%hd231684231751%_
                               _%$%tl231685231753%_
                               _%$%e231686231756%_
                               _%$%hd231687231759%_
                               _%$%tl231688231761%_
                               _%$%e231689231764%_
                               _%$%hd231690231767%_
                               _%$%tl231691231769%_)
                        (let ((_%$%g231665231772%_ _%$%hd231690231767%_)
                              (_%$%g231666231773%_ _%$%hd231687231759%_)
                              (_%$%g231667231774%_ _%$%hd231678231735%_))
                          (if (and (let ((__tmp238135
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self231463%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g231666231773%_
                                      __tmp238135))
                                   (let ((__tmp238136
                                          (let ((__tmp238137
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g231667231774%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp238137))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp238136
                                      'gxc#!mutator::t)))
                              (_%__kont237466237467%_
                               _%$%g231665231772%_
                               _%$%g231666231773%_
                               _%$%g231667231774%_)
                              (_%__kont237468237469%_)))))
                     (_%__match237947237948%_
                      (lambda (_%$%e231668231708%_
                               _%$%hd231669231711%_
                               _%$%tl231670231713%_
                               _%$%e231671231716%_
                               _%$%hd231672231719%_
                               _%$%tl231673231721%_
                               _%$%e231674231724%_
                               _%$%hd231675231727%_
                               _%$%tl231676231729%_
                               _%$%e231677231732%_
                               _%$%hd231678231735%_
                               _%$%tl231679231737%_
                               _%$%e231680231740%_
                               _%$%hd231681231743%_
                               _%$%tl231682231745%_
                               _%$%e231683231748%_
                               _%$%hd231684231751%_
                               _%$%tl231685231753%_
                               _%$%e231686231756%_
                               _%$%hd231687231759%_
                               _%$%tl231688231761%_
                               _%$%e231689231764%_
                               _%$%hd231690231767%_
                               _%$%tl231691231769%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl231691231769%_))
                            (_%__match237949237950%_
                             _%$%e231668231708%_
                             _%$%hd231669231711%_
                             _%$%tl231670231713%_
                             _%$%e231671231716%_
                             _%$%hd231672231719%_
                             _%$%tl231673231721%_
                             _%$%e231674231724%_
                             _%$%hd231675231727%_
                             _%$%tl231676231729%_
                             _%$%e231677231732%_
                             _%$%hd231678231735%_
                             _%$%tl231679231737%_
                             _%$%e231680231740%_
                             _%$%hd231681231743%_
                             _%$%tl231682231745%_
                             _%$%e231683231748%_
                             _%$%hd231684231751%_
                             _%$%tl231685231753%_
                             _%$%e231686231756%_
                             _%$%hd231687231759%_
                             _%$%tl231688231761%_
                             _%$%e231689231764%_
                             _%$%hd231690231767%_
                             _%$%tl231691231769%_)
                            (_%__kont237468237469%_))))
                     (_%__match237941237942%_
                      (lambda (_%$%e231668231708%_
                               _%$%hd231669231711%_
                               _%$%tl231670231713%_
                               _%$%e231671231716%_
                               _%$%hd231672231719%_
                               _%$%tl231673231721%_
                               _%$%e231674231724%_
                               _%$%hd231675231727%_
                               _%$%tl231676231729%_
                               _%$%e231677231732%_
                               _%$%hd231678231735%_
                               _%$%tl231679231737%_
                               _%$%e231680231740%_
                               _%$%hd231681231743%_
                               _%$%tl231682231745%_
                               _%$%e231683231748%_
                               _%$%hd231684231751%_
                               _%$%tl231685231753%_
                               _%$%e231686231756%_
                               _%$%hd231687231759%_
                               _%$%tl231688231761%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl231682231745%_))
                            (let ((_%$%e231689231764%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl231682231745%_))))
                              (let ((_%$%tl231691231769%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e231689231764%_)))
                                    (_%$%hd231690231767%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e231689231764%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl231691231769%_))
                                    (_%__match237949237950%_
                                     _%$%e231668231708%_
                                     _%$%hd231669231711%_
                                     _%$%tl231670231713%_
                                     _%$%e231671231716%_
                                     _%$%hd231672231719%_
                                     _%$%tl231673231721%_
                                     _%$%e231674231724%_
                                     _%$%hd231675231727%_
                                     _%$%tl231676231729%_
                                     _%$%e231677231732%_
                                     _%$%hd231678231735%_
                                     _%$%tl231679231737%_
                                     _%$%e231680231740%_
                                     _%$%hd231681231743%_
                                     _%$%tl231682231745%_
                                     _%$%e231683231748%_
                                     _%$%hd231684231751%_
                                     _%$%tl231685231753%_
                                     _%$%e231686231756%_
                                     _%$%hd231687231759%_
                                     _%$%tl231688231761%_
                                     _%$%e231689231764%_
                                     _%$%hd231690231767%_
                                     _%$%tl231691231769%_)
                                    (_%__kont237468237469%_))))
                            (_%__kont237468237469%_))))
                     (_%__match237887237888%_
                      (lambda (_%$%e231644231821%_
                               _%$%hd231645231824%_
                               _%$%tl231646231826%_
                               _%$%e231647231829%_
                               _%$%hd231648231832%_
                               _%$%tl231649231834%_
                               _%$%e231650231837%_
                               _%$%hd231651231840%_
                               _%$%tl231652231842%_
                               _%$%e231653231845%_
                               _%$%hd231654231848%_
                               _%$%tl231655231850%_
                               _%$%e231656231853%_
                               _%$%hd231657231856%_
                               _%$%tl231658231858%_
                               _%$%e231659231861%_
                               _%$%hd231660231864%_
                               _%$%tl231661231866%_
                               _%$%e231662231869%_
                               _%$%hd231663231872%_
                               _%$%tl231664231874%_)
                        (let ((_%$%g231642231877%_ _%$%hd231663231872%_)
                              (_%$%g231643231878%_ _%$%hd231654231848%_))
                          (if (and (let ((__tmp238138
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self231463%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g231642231877%_
                                      __tmp238138))
                                   (let ((__tmp238139
                                          (let ((__tmp238140
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g231643231878%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp238140))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp238139
                                      'gxc#!accessor::t)))
                              (_%__kont237464237465%_
                               _%$%g231642231877%_
                               _%$%g231643231878%_)
                              (_%__kont237468237469%_)))))
                     (_%__match237885237886%_
                      (lambda (_%$%e231644231821%_
                               _%$%hd231645231824%_
                               _%$%tl231646231826%_
                               _%$%e231647231829%_
                               _%$%hd231648231832%_
                               _%$%tl231649231834%_
                               _%$%e231650231837%_
                               _%$%hd231651231840%_
                               _%$%tl231652231842%_
                               _%$%e231653231845%_
                               _%$%hd231654231848%_
                               _%$%tl231655231850%_
                               _%$%e231656231853%_
                               _%$%hd231657231856%_
                               _%$%tl231658231858%_
                               _%$%e231659231861%_
                               _%$%hd231660231864%_
                               _%$%tl231661231866%_
                               _%$%e231662231869%_
                               _%$%hd231663231872%_
                               _%$%tl231664231874%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl231658231858%_))
                            (_%__match237887237888%_
                             _%$%e231644231821%_
                             _%$%hd231645231824%_
                             _%$%tl231646231826%_
                             _%$%e231647231829%_
                             _%$%hd231648231832%_
                             _%$%tl231649231834%_
                             _%$%e231650231837%_
                             _%$%hd231651231840%_
                             _%$%tl231652231842%_
                             _%$%e231653231845%_
                             _%$%hd231654231848%_
                             _%$%tl231655231850%_
                             _%$%e231656231853%_
                             _%$%hd231657231856%_
                             _%$%tl231658231858%_
                             _%$%e231659231861%_
                             _%$%hd231660231864%_
                             _%$%tl231661231866%_
                             _%$%e231662231869%_
                             _%$%hd231663231872%_
                             _%$%tl231664231874%_)
                            (_%__match237941237942%_
                             _%$%e231644231821%_
                             _%$%hd231645231824%_
                             _%$%tl231646231826%_
                             _%$%e231647231829%_
                             _%$%hd231648231832%_
                             _%$%tl231649231834%_
                             _%$%e231650231837%_
                             _%$%hd231651231840%_
                             _%$%tl231652231842%_
                             _%$%e231653231845%_
                             _%$%hd231654231848%_
                             _%$%tl231655231850%_
                             _%$%e231656231853%_
                             _%$%hd231657231856%_
                             _%$%tl231658231858%_
                             _%$%e231659231861%_
                             _%$%hd231660231864%_
                             _%$%tl231661231866%_
                             _%$%e231662231869%_
                             _%$%hd231663231872%_
                             _%$%tl231664231874%_))))
                     (_%__match237831237832%_
                      (lambda (_%$%e231609231917%_
                               _%$%hd231610231920%_
                               _%$%tl231611231922%_
                               _%$%e231612231925%_
                               _%$%hd231613231928%_
                               _%$%tl231614231930%_
                               _%$%e231615231933%_
                               _%$%hd231616231936%_
                               _%$%tl231617231938%_
                               _%$%e231618231941%_
                               _%$%hd231619231944%_
                               _%$%tl231620231946%_
                               _%$%e231621231949%_
                               _%$%hd231622231952%_
                               _%$%tl231623231954%_
                               _%$%e231624231957%_
                               _%$%hd231625231960%_
                               _%$%tl231626231962%_
                               _%$%e231627231965%_
                               _%$%hd231628231968%_
                               _%$%tl231629231970%_
                               _%$%e231630231973%_
                               _%$%hd231631231976%_
                               _%$%tl231632231978%_
                               _%$%e231633231981%_
                               _%$%hd231634231984%_
                               _%$%tl231635231986%_
                               _%$%e231636231989%_
                               _%$%hd231637231992%_
                               _%$%tl231638231994%_
                               _%$%e231639231997%_
                               _%$%hd231640232000%_
                               _%$%tl231641232002%_)
                        (let ((_%$%g231605232005%_ _%$%hd231640232000%_)
                              (_%$%g231606232006%_ _%$%hd231637231992%_)
                              (_%$%g231607232007%_ _%$%hd231628231968%_)
                              (_%$%g231608232008%_ _%$%hd231619231944%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g231608232008%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g231608232008%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp238141
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self231463%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g231607232007%_
                                      __tmp238141)))
                              (_%__kont237462237463%_
                               _%$%g231605232005%_
                               _%$%g231606232006%_
                               _%$%g231607232007%_
                               _%$%g231608232008%_)
                              (_%__kont237468237469%_)))))
                     (_%__match237823237824%_
                      (lambda (_%$%e231609231917%_
                               _%$%hd231610231920%_
                               _%$%tl231611231922%_
                               _%$%e231612231925%_
                               _%$%hd231613231928%_
                               _%$%tl231614231930%_
                               _%$%e231615231933%_
                               _%$%hd231616231936%_
                               _%$%tl231617231938%_
                               _%$%e231618231941%_
                               _%$%hd231619231944%_
                               _%$%tl231620231946%_
                               _%$%e231621231949%_
                               _%$%hd231622231952%_
                               _%$%tl231623231954%_
                               _%$%e231624231957%_
                               _%$%hd231625231960%_
                               _%$%tl231626231962%_
                               _%$%e231627231965%_
                               _%$%hd231628231968%_
                               _%$%tl231629231970%_
                               _%$%e231630231973%_
                               _%$%hd231631231976%_
                               _%$%tl231632231978%_
                               _%$%e231633231981%_
                               _%$%hd231634231984%_
                               _%$%tl231635231986%_
                               _%$%e231636231989%_
                               _%$%hd231637231992%_
                               _%$%tl231638231994%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl231632231978%_))
                            (let ((_%$%e231639231997%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl231632231978%_))))
                              (let ((_%$%tl231641232002%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e231639231997%_)))
                                    (_%$%hd231640232000%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e231639231997%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl231641232002%_))
                                    (_%__match237831237832%_
                                     _%$%e231609231917%_
                                     _%$%hd231610231920%_
                                     _%$%tl231611231922%_
                                     _%$%e231612231925%_
                                     _%$%hd231613231928%_
                                     _%$%tl231614231930%_
                                     _%$%e231615231933%_
                                     _%$%hd231616231936%_
                                     _%$%tl231617231938%_
                                     _%$%e231618231941%_
                                     _%$%hd231619231944%_
                                     _%$%tl231620231946%_
                                     _%$%e231621231949%_
                                     _%$%hd231622231952%_
                                     _%$%tl231623231954%_
                                     _%$%e231624231957%_
                                     _%$%hd231625231960%_
                                     _%$%tl231626231962%_
                                     _%$%e231627231965%_
                                     _%$%hd231628231968%_
                                     _%$%tl231629231970%_
                                     _%$%e231630231973%_
                                     _%$%hd231631231976%_
                                     _%$%tl231632231978%_
                                     _%$%e231633231981%_
                                     _%$%hd231634231984%_
                                     _%$%tl231635231986%_
                                     _%$%e231636231989%_
                                     _%$%hd231637231992%_
                                     _%$%tl231638231994%_
                                     _%$%e231639231997%_
                                     _%$%hd231640232000%_
                                     _%$%tl231641232002%_)
                                    (_%__kont237468237469%_))))
                            (_%__match237947237948%_
                             _%$%e231609231917%_
                             _%$%hd231610231920%_
                             _%$%tl231611231922%_
                             _%$%e231612231925%_
                             _%$%hd231613231928%_
                             _%$%tl231614231930%_
                             _%$%e231615231933%_
                             _%$%hd231616231936%_
                             _%$%tl231617231938%_
                             _%$%e231618231941%_
                             _%$%hd231619231944%_
                             _%$%tl231620231946%_
                             _%$%e231621231949%_
                             _%$%hd231622231952%_
                             _%$%tl231623231954%_
                             _%$%e231624231957%_
                             _%$%hd231625231960%_
                             _%$%tl231626231962%_
                             _%$%e231627231965%_
                             _%$%hd231628231968%_
                             _%$%tl231629231970%_
                             _%$%e231630231973%_
                             _%$%hd231631231976%_
                             _%$%tl231632231978%_))))
                     (_%__match237745237746%_
                      (lambda (_%$%e231575232051%_
                               _%$%hd231576232054%_
                               _%$%tl231577232056%_
                               _%$%e231578232059%_
                               _%$%hd231579232062%_
                               _%$%tl231580232064%_
                               _%$%e231581232067%_
                               _%$%hd231582232070%_
                               _%$%tl231583232072%_
                               _%$%e231584232075%_
                               _%$%hd231585232078%_
                               _%$%tl231586232080%_
                               _%$%e231587232083%_
                               _%$%hd231588232086%_
                               _%$%tl231589232088%_
                               _%$%e231590232091%_
                               _%$%hd231591232094%_
                               _%$%tl231592232096%_
                               _%$%e231593232099%_
                               _%$%hd231594232102%_
                               _%$%tl231595232104%_
                               _%$%e231596232107%_
                               _%$%hd231597232110%_
                               _%$%tl231598232112%_
                               _%$%e231599232115%_
                               _%$%hd231600232118%_
                               _%$%tl231601232120%_
                               _%$%e231602232123%_
                               _%$%hd231603232126%_
                               _%$%tl231604232128%_)
                        (let ((_%$%g231572232131%_ _%$%hd231603232126%_)
                              (_%$%g231573232132%_ _%$%hd231594232102%_)
                              (_%$%g231574232133%_ _%$%hd231585232078%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g231574232133%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g231574232133%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp238142
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self231463%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g231573232132%_
                                      __tmp238142)))
                              (_%__kont237460237461%_
                               _%$%g231572232131%_
                               _%$%g231573232132%_
                               _%$%g231574232133%_)
                              (_%__match237949237950%_
                               _%$%e231575232051%_
                               _%$%hd231576232054%_
                               _%$%tl231577232056%_
                               _%$%e231578232059%_
                               _%$%hd231579232062%_
                               _%$%tl231580232064%_
                               _%$%e231581232067%_
                               _%$%hd231582232070%_
                               _%$%tl231583232072%_
                               _%$%e231584232075%_
                               _%$%hd231585232078%_
                               _%$%tl231586232080%_
                               _%$%e231587232083%_
                               _%$%hd231588232086%_
                               _%$%tl231589232088%_
                               _%$%e231590232091%_
                               _%$%hd231591232094%_
                               _%$%tl231592232096%_
                               _%$%e231593232099%_
                               _%$%hd231594232102%_
                               _%$%tl231595232104%_
                               _%$%e231596232107%_
                               _%$%hd231597232110%_
                               _%$%tl231598232112%_)))))
                     (_%__match237743237744%_
                      (lambda (_%$%e231575232051%_
                               _%$%hd231576232054%_
                               _%$%tl231577232056%_
                               _%$%e231578232059%_
                               _%$%hd231579232062%_
                               _%$%tl231580232064%_
                               _%$%e231581232067%_
                               _%$%hd231582232070%_
                               _%$%tl231583232072%_
                               _%$%e231584232075%_
                               _%$%hd231585232078%_
                               _%$%tl231586232080%_
                               _%$%e231587232083%_
                               _%$%hd231588232086%_
                               _%$%tl231589232088%_
                               _%$%e231590232091%_
                               _%$%hd231591232094%_
                               _%$%tl231592232096%_
                               _%$%e231593232099%_
                               _%$%hd231594232102%_
                               _%$%tl231595232104%_
                               _%$%e231596232107%_
                               _%$%hd231597232110%_
                               _%$%tl231598232112%_
                               _%$%e231599232115%_
                               _%$%hd231600232118%_
                               _%$%tl231601232120%_
                               _%$%e231602232123%_
                               _%$%hd231603232126%_
                               _%$%tl231604232128%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl231598232112%_))
                            (_%__match237745237746%_
                             _%$%e231575232051%_
                             _%$%hd231576232054%_
                             _%$%tl231577232056%_
                             _%$%e231578232059%_
                             _%$%hd231579232062%_
                             _%$%tl231580232064%_
                             _%$%e231581232067%_
                             _%$%hd231582232070%_
                             _%$%tl231583232072%_
                             _%$%e231584232075%_
                             _%$%hd231585232078%_
                             _%$%tl231586232080%_
                             _%$%e231587232083%_
                             _%$%hd231588232086%_
                             _%$%tl231589232088%_
                             _%$%e231590232091%_
                             _%$%hd231591232094%_
                             _%$%tl231592232096%_
                             _%$%e231593232099%_
                             _%$%hd231594232102%_
                             _%$%tl231595232104%_
                             _%$%e231596232107%_
                             _%$%hd231597232110%_
                             _%$%tl231598232112%_
                             _%$%e231599232115%_
                             _%$%hd231600232118%_
                             _%$%tl231601232120%_
                             _%$%e231602232123%_
                             _%$%hd231603232126%_
                             _%$%tl231604232128%_)
                            (_%__match237823237824%_
                             _%$%e231575232051%_
                             _%$%hd231576232054%_
                             _%$%tl231577232056%_
                             _%$%e231578232059%_
                             _%$%hd231579232062%_
                             _%$%tl231580232064%_
                             _%$%e231581232067%_
                             _%$%hd231582232070%_
                             _%$%tl231583232072%_
                             _%$%e231584232075%_
                             _%$%hd231585232078%_
                             _%$%tl231586232080%_
                             _%$%e231587232083%_
                             _%$%hd231588232086%_
                             _%$%tl231589232088%_
                             _%$%e231590232091%_
                             _%$%hd231591232094%_
                             _%$%tl231592232096%_
                             _%$%e231593232099%_
                             _%$%hd231594232102%_
                             _%$%tl231595232104%_
                             _%$%e231596232107%_
                             _%$%hd231597232110%_
                             _%$%tl231598232112%_
                             _%$%e231599232115%_
                             _%$%hd231600232118%_
                             _%$%tl231601232120%_
                             _%$%e231602232123%_
                             _%$%hd231603232126%_
                             _%$%tl231604232128%_))))
                     (_%__match237733237734%_
                      (lambda (_%$%e231575232051%_
                               _%$%hd231576232054%_
                               _%$%tl231577232056%_
                               _%$%e231578232059%_
                               _%$%hd231579232062%_
                               _%$%tl231580232064%_
                               _%$%e231581232067%_
                               _%$%hd231582232070%_
                               _%$%tl231583232072%_
                               _%$%e231584232075%_
                               _%$%hd231585232078%_
                               _%$%tl231586232080%_
                               _%$%e231587232083%_
                               _%$%hd231588232086%_
                               _%$%tl231589232088%_
                               _%$%e231590232091%_
                               _%$%hd231591232094%_
                               _%$%tl231592232096%_
                               _%$%e231593232099%_
                               _%$%hd231594232102%_
                               _%$%tl231595232104%_
                               _%$%e231596232107%_
                               _%$%hd231597232110%_
                               _%$%tl231598232112%_
                               _%$%e231599232115%_
                               _%$%hd231600232118%_
                               _%$%tl231601232120%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%$%hd231600232118%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl231601232120%_))
                                (let ((_%$%e231602232123%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl231601232120%_))))
                                  (let ((_%$%tl231604232128%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e231602232123%_)))
                                        (_%$%hd231603232126%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e231602232123%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl231604232128%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl231598232112%_))
                                            (_%__match237745237746%_
                                             _%$%e231575232051%_
                                             _%$%hd231576232054%_
                                             _%$%tl231577232056%_
                                             _%$%e231578232059%_
                                             _%$%hd231579232062%_
                                             _%$%tl231580232064%_
                                             _%$%e231581232067%_
                                             _%$%hd231582232070%_
                                             _%$%tl231583232072%_
                                             _%$%e231584232075%_
                                             _%$%hd231585232078%_
                                             _%$%tl231586232080%_
                                             _%$%e231587232083%_
                                             _%$%hd231588232086%_
                                             _%$%tl231589232088%_
                                             _%$%e231590232091%_
                                             _%$%hd231591232094%_
                                             _%$%tl231592232096%_
                                             _%$%e231593232099%_
                                             _%$%hd231594232102%_
                                             _%$%tl231595232104%_
                                             _%$%e231596232107%_
                                             _%$%hd231597232110%_
                                             _%$%tl231598232112%_
                                             _%$%e231599232115%_
                                             _%$%hd231600232118%_
                                             _%$%tl231601232120%_
                                             _%$%e231602232123%_
                                             _%$%hd231603232126%_
                                             _%$%tl231604232128%_)
                                            (_%__match237823237824%_
                                             _%$%e231575232051%_
                                             _%$%hd231576232054%_
                                             _%$%tl231577232056%_
                                             _%$%e231578232059%_
                                             _%$%hd231579232062%_
                                             _%$%tl231580232064%_
                                             _%$%e231581232067%_
                                             _%$%hd231582232070%_
                                             _%$%tl231583232072%_
                                             _%$%e231584232075%_
                                             _%$%hd231585232078%_
                                             _%$%tl231586232080%_
                                             _%$%e231587232083%_
                                             _%$%hd231588232086%_
                                             _%$%tl231589232088%_
                                             _%$%e231590232091%_
                                             _%$%hd231591232094%_
                                             _%$%tl231592232096%_
                                             _%$%e231593232099%_
                                             _%$%hd231594232102%_
                                             _%$%tl231595232104%_
                                             _%$%e231596232107%_
                                             _%$%hd231597232110%_
                                             _%$%tl231598232112%_
                                             _%$%e231599232115%_
                                             _%$%hd231600232118%_
                                             _%$%tl231601232120%_
                                             _%$%e231602232123%_
                                             _%$%hd231603232126%_
                                             _%$%tl231604232128%_))
                                        (_%__match237947237948%_
                                         _%$%e231575232051%_
                                         _%$%hd231576232054%_
                                         _%$%tl231577232056%_
                                         _%$%e231578232059%_
                                         _%$%hd231579232062%_
                                         _%$%tl231580232064%_
                                         _%$%e231581232067%_
                                         _%$%hd231582232070%_
                                         _%$%tl231583232072%_
                                         _%$%e231584232075%_
                                         _%$%hd231585232078%_
                                         _%$%tl231586232080%_
                                         _%$%e231587232083%_
                                         _%$%hd231588232086%_
                                         _%$%tl231589232088%_
                                         _%$%e231590232091%_
                                         _%$%hd231591232094%_
                                         _%$%tl231592232096%_
                                         _%$%e231593232099%_
                                         _%$%hd231594232102%_
                                         _%$%tl231595232104%_
                                         _%$%e231596232107%_
                                         _%$%hd231597232110%_
                                         _%$%tl231598232112%_))))
                                (_%__match237947237948%_
                                 _%$%e231575232051%_
                                 _%$%hd231576232054%_
                                 _%$%tl231577232056%_
                                 _%$%e231578232059%_
                                 _%$%hd231579232062%_
                                 _%$%tl231580232064%_
                                 _%$%e231581232067%_
                                 _%$%hd231582232070%_
                                 _%$%tl231583232072%_
                                 _%$%e231584232075%_
                                 _%$%hd231585232078%_
                                 _%$%tl231586232080%_
                                 _%$%e231587232083%_
                                 _%$%hd231588232086%_
                                 _%$%tl231589232088%_
                                 _%$%e231590232091%_
                                 _%$%hd231591232094%_
                                 _%$%tl231592232096%_
                                 _%$%e231593232099%_
                                 _%$%hd231594232102%_
                                 _%$%tl231595232104%_
                                 _%$%e231596232107%_
                                 _%$%hd231597232110%_
                                 _%$%tl231598232112%_))
                            (_%__match237947237948%_
                             _%$%e231575232051%_
                             _%$%hd231576232054%_
                             _%$%tl231577232056%_
                             _%$%e231578232059%_
                             _%$%hd231579232062%_
                             _%$%tl231580232064%_
                             _%$%e231581232067%_
                             _%$%hd231582232070%_
                             _%$%tl231583232072%_
                             _%$%e231584232075%_
                             _%$%hd231585232078%_
                             _%$%tl231586232080%_
                             _%$%e231587232083%_
                             _%$%hd231588232086%_
                             _%$%tl231589232088%_
                             _%$%e231590232091%_
                             _%$%hd231591232094%_
                             _%$%tl231592232096%_
                             _%$%e231593232099%_
                             _%$%hd231594232102%_
                             _%$%tl231595232104%_
                             _%$%e231596232107%_
                             _%$%hd231597232110%_
                             _%$%tl231598232112%_))))
                     (_%__match237665237666%_
                      (lambda (_%$%e231524232172%_
                               _%$%hd231525232175%_
                               _%$%tl231526232177%_
                               _%$%e231527232180%_
                               _%$%hd231528232183%_
                               _%$%tl231529232185%_
                               _%$%e231530232188%_
                               _%$%hd231531232191%_
                               _%$%tl231532232193%_
                               _%$%e231533232196%_
                               _%$%hd231534232199%_
                               _%$%tl231535232201%_
                               _%$%e231536232204%_
                               _%$%hd231537232207%_
                               _%$%tl231538232209%_
                               _%$%e231539232212%_
                               _%$%hd231540232215%_
                               _%$%tl231541232217%_
                               _%$%e231542232220%_
                               _%$%hd231543232223%_
                               _%$%tl231544232225%_
                               _%$%e231545232228%_
                               _%$%hd231546232231%_
                               _%$%tl231547232233%_
                               _%$%e231548232236%_
                               _%$%hd231549232239%_
                               _%$%tl231550232241%_
                               _%$%e231551232244%_
                               _%$%hd231552232247%_
                               _%$%tl231553232249%_
                               _%$%e231554232252%_
                               _%$%hd231555232255%_
                               _%$%tl231556232257%_
                               _%$%e231557232260%_
                               _%$%hd231558232263%_
                               _%$%tl231559232265%_
                               _%$%e231560232268%_
                               _%$%hd231561232271%_
                               _%$%tl231562232273%_
                               _%__splice237458237459%_
                               _%$%target231563232276%_
                               _%$%tl231565232278%_)
                        (letrec ((_%$%loop231566232281%_
                                  (lambda (_%$%hd231564232284%_
                                           _%$%args231570232286%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd231564232284%_))
                                        (let ((_%$%e231567232288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd231564232284%_))))
                                          (let ((_%$%lp-tl231569232293%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e231567232288%_)))
                                                (_%$%lp-hd231568232291%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e231567232288%_))))
                                            (_%$%loop231566232281%_
                                             _%$%lp-tl231569232293%_
                                             (cons _%$%lp-hd231568232291%_
                                                   _%$%args231570232286%_))))
                                        (let ((_%$%args231571232296%_
                                               (reverse _%$%args231570232286%_)))
                                          (let ((_%$%g231519232298%_
                                                 _%$%args231571232296%_)
                                                (_%$%g231520232299%_
                                                 _%$%hd231561232271%_)
                                                (_%$%g231521232300%_
                                                 _%$%hd231552232247%_)
                                                (_%$%g231522232301%_
                                                 _%$%hd231543232223%_)
                                                (_%$%g231523232302%_
                                                 _%$%hd231534232199%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g231523232302%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g231522232301%_
                                                        'call-method))
                                                     (let ((__tmp238143
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self231463%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g231521232300%_
                                                        __tmp238143)))
                                                (_%__kont237456237457%_
                                                 _%$%g231519232298%_
                                                 _%$%g231520232299%_
                                                 _%$%g231521232300%_
                                                 _%$%g231522232301%_
                                                 _%$%g231523232302%_)
                                                (_%__kont237468237469%_))))))))
                          (_%$%loop231566232281%_
                           _%$%target231563232276%_
                           '()))))
                     (_%__match237623237624%_
                      (lambda (_%$%e231524232172%_
                               _%$%hd231525232175%_
                               _%$%tl231526232177%_
                               _%$%e231527232180%_
                               _%$%hd231528232183%_
                               _%$%tl231529232185%_
                               _%$%e231530232188%_
                               _%$%hd231531232191%_
                               _%$%tl231532232193%_
                               _%$%e231533232196%_
                               _%$%hd231534232199%_
                               _%$%tl231535232201%_
                               _%$%e231536232204%_
                               _%$%hd231537232207%_
                               _%$%tl231538232209%_
                               _%$%e231539232212%_
                               _%$%hd231540232215%_
                               _%$%tl231541232217%_
                               _%$%e231542232220%_
                               _%$%hd231543232223%_
                               _%$%tl231544232225%_
                               _%$%e231545232228%_
                               _%$%hd231546232231%_
                               _%$%tl231547232233%_
                               _%$%e231548232236%_
                               _%$%hd231549232239%_
                               _%$%tl231550232241%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%$%hd231549232239%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl231550232241%_))
                                (let ((_%$%e231551232244%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl231550232241%_))))
                                  (let ((_%$%tl231553232249%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e231551232244%_)))
                                        (_%$%hd231552232247%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e231551232244%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl231553232249%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl231547232233%_))
                                            (let ((_%$%e231554232252%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl231547232233%_))))
                                              (let ((_%$%tl231556232257%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e231554232252%_)))
                                                    (_%$%hd231555232255%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e231554232252%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd231555232255%_))
                                                    (let ((_%$%e231557232260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd231555232255%_))))
                                                      (let ((_%$%tl231559232265%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e231557232260%_)))
                    (_%$%hd231558232263%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e231557232260%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd231558232263%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%$%hd231558232263%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl231559232265%_))
                            (let ((_%$%e231560232268%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl231559232265%_))))
                              (let ((_%$%tl231562232273%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e231560232268%_)))
                                    (_%$%hd231561232271%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e231560232268%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl231562232273%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl231556232257%_))
                                        (let ((_%__splice237458237459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl231556232257%_
                                                  '0))))
                                          (let ((_%$%tl231565232278%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice237458237459%_
                                                    '1)))
                                                (_%$%target231563232276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice237458237459%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl231565232278%_))
                                                (_%__match237665237666%_
                                                 _%$%e231524232172%_
                                                 _%$%hd231525232175%_
                                                 _%$%tl231526232177%_
                                                 _%$%e231527232180%_
                                                 _%$%hd231528232183%_
                                                 _%$%tl231529232185%_
                                                 _%$%e231530232188%_
                                                 _%$%hd231531232191%_
                                                 _%$%tl231532232193%_
                                                 _%$%e231533232196%_
                                                 _%$%hd231534232199%_
                                                 _%$%tl231535232201%_
                                                 _%$%e231536232204%_
                                                 _%$%hd231537232207%_
                                                 _%$%tl231538232209%_
                                                 _%$%e231539232212%_
                                                 _%$%hd231540232215%_
                                                 _%$%tl231541232217%_
                                                 _%$%e231542232220%_
                                                 _%$%hd231543232223%_
                                                 _%$%tl231544232225%_
                                                 _%$%e231545232228%_
                                                 _%$%hd231546232231%_
                                                 _%$%tl231547232233%_
                                                 _%$%e231548232236%_
                                                 _%$%hd231549232239%_
                                                 _%$%tl231550232241%_
                                                 _%$%e231551232244%_
                                                 _%$%hd231552232247%_
                                                 _%$%tl231553232249%_
                                                 _%$%e231554232252%_
                                                 _%$%hd231555232255%_
                                                 _%$%tl231556232257%_
                                                 _%$%e231557232260%_
                                                 _%$%hd231558232263%_
                                                 _%$%tl231559232265%_
                                                 _%$%e231560232268%_
                                                 _%$%hd231561232271%_
                                                 _%$%tl231562232273%_
                                                 _%__splice237458237459%_
                                                 _%$%target231563232276%_
                                                 _%$%tl231565232278%_)
                                                (_%__kont237468237469%_))))
                                        (_%__kont237468237469%_))
                                    (_%__kont237468237469%_))))
                            (_%__kont237468237469%_))
                        (_%__kont237468237469%_))
                    (_%__kont237468237469%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont237468237469%_))))
                                            (_%__match237947237948%_
                                             _%$%e231524232172%_
                                             _%$%hd231525232175%_
                                             _%$%tl231526232177%_
                                             _%$%e231527232180%_
                                             _%$%hd231528232183%_
                                             _%$%tl231529232185%_
                                             _%$%e231530232188%_
                                             _%$%hd231531232191%_
                                             _%$%tl231532232193%_
                                             _%$%e231533232196%_
                                             _%$%hd231534232199%_
                                             _%$%tl231535232201%_
                                             _%$%e231536232204%_
                                             _%$%hd231537232207%_
                                             _%$%tl231538232209%_
                                             _%$%e231539232212%_
                                             _%$%hd231540232215%_
                                             _%$%tl231541232217%_
                                             _%$%e231542232220%_
                                             _%$%hd231543232223%_
                                             _%$%tl231544232225%_
                                             _%$%e231545232228%_
                                             _%$%hd231546232231%_
                                             _%$%tl231547232233%_))
                                        (_%__match237947237948%_
                                         _%$%e231524232172%_
                                         _%$%hd231525232175%_
                                         _%$%tl231526232177%_
                                         _%$%e231527232180%_
                                         _%$%hd231528232183%_
                                         _%$%tl231529232185%_
                                         _%$%e231530232188%_
                                         _%$%hd231531232191%_
                                         _%$%tl231532232193%_
                                         _%$%e231533232196%_
                                         _%$%hd231534232199%_
                                         _%$%tl231535232201%_
                                         _%$%e231536232204%_
                                         _%$%hd231537232207%_
                                         _%$%tl231538232209%_
                                         _%$%e231539232212%_
                                         _%$%hd231540232215%_
                                         _%$%tl231541232217%_
                                         _%$%e231542232220%_
                                         _%$%hd231543232223%_
                                         _%$%tl231544232225%_
                                         _%$%e231545232228%_
                                         _%$%hd231546232231%_
                                         _%$%tl231547232233%_))))
                                (_%__match237947237948%_
                                 _%$%e231524232172%_
                                 _%$%hd231525232175%_
                                 _%$%tl231526232177%_
                                 _%$%e231527232180%_
                                 _%$%hd231528232183%_
                                 _%$%tl231529232185%_
                                 _%$%e231530232188%_
                                 _%$%hd231531232191%_
                                 _%$%tl231532232193%_
                                 _%$%e231533232196%_
                                 _%$%hd231534232199%_
                                 _%$%tl231535232201%_
                                 _%$%e231536232204%_
                                 _%$%hd231537232207%_
                                 _%$%tl231538232209%_
                                 _%$%e231539232212%_
                                 _%$%hd231540232215%_
                                 _%$%tl231541232217%_
                                 _%$%e231542232220%_
                                 _%$%hd231543232223%_
                                 _%$%tl231544232225%_
                                 _%$%e231545232228%_
                                 _%$%hd231546232231%_
                                 _%$%tl231547232233%_))
                            (_%__match237733237734%_
                             _%$%e231524232172%_
                             _%$%hd231525232175%_
                             _%$%tl231526232177%_
                             _%$%e231527232180%_
                             _%$%hd231528232183%_
                             _%$%tl231529232185%_
                             _%$%e231530232188%_
                             _%$%hd231531232191%_
                             _%$%tl231532232193%_
                             _%$%e231533232196%_
                             _%$%hd231534232199%_
                             _%$%tl231535232201%_
                             _%$%e231536232204%_
                             _%$%hd231537232207%_
                             _%$%tl231538232209%_
                             _%$%e231539232212%_
                             _%$%hd231540232215%_
                             _%$%tl231541232217%_
                             _%$%e231542232220%_
                             _%$%hd231543232223%_
                             _%$%tl231544232225%_
                             _%$%e231545232228%_
                             _%$%hd231546232231%_
                             _%$%tl231547232233%_
                             _%$%e231548232236%_
                             _%$%hd231549232239%_
                             _%$%tl231550232241%_))))
                     (_%__match237555237556%_
                      (lambda (_%$%e231480232362%_
                               _%$%hd231481232365%_
                               _%$%tl231482232367%_
                               _%$%e231483232370%_
                               _%$%hd231484232373%_
                               _%$%tl231485232375%_
                               _%$%e231486232378%_
                               _%$%hd231487232381%_
                               _%$%tl231488232383%_
                               _%$%e231489232386%_
                               _%$%hd231490232389%_
                               _%$%tl231491232391%_
                               _%$%e231492232394%_
                               _%$%hd231493232397%_
                               _%$%tl231494232399%_
                               _%$%e231495232402%_
                               _%$%hd231496232405%_
                               _%$%tl231497232407%_
                               _%$%e231498232410%_
                               _%$%hd231499232413%_
                               _%$%tl231500232415%_
                               _%$%e231501232418%_
                               _%$%hd231502232421%_
                               _%$%tl231503232423%_
                               _%$%e231504232426%_
                               _%$%hd231505232429%_
                               _%$%tl231506232431%_
                               _%$%e231507232434%_
                               _%$%hd231508232437%_
                               _%$%tl231509232439%_
                               _%__splice237454237455%_
                               _%$%target231510232442%_
                               _%$%tl231512232444%_)
                        (letrec ((_%$%loop231513232447%_
                                  (lambda (_%$%hd231511232450%_
                                           _%$%args231517232452%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd231511232450%_))
                                        (let ((_%$%e231514232454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd231511232450%_))))
                                          (let ((_%$%lp-tl231516232459%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e231514232454%_)))
                                                (_%$%lp-hd231515232457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e231514232454%_))))
                                            (_%$%loop231513232447%_
                                             _%$%lp-tl231516232459%_
                                             (cons _%$%lp-hd231515232457%_
                                                   _%$%args231517232452%_))))
                                        (let ((_%$%args231518232462%_
                                               (reverse _%$%args231517232452%_)))
                                          (let ((_%$%g231476232464%_
                                                 _%$%args231518232462%_)
                                                (_%$%g231477232465%_
                                                 _%$%hd231508232437%_)
                                                (_%$%g231478232466%_
                                                 _%$%hd231499232413%_)
                                                (_%$%g231479232467%_
                                                 _%$%hd231490232389%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g231479232467%_
                                                        'call-method))
                                                     (let ((__tmp238144
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self231463%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g231478232466%_
                                                        __tmp238144)))
                                                (_%__kont237452237453%_
                                                 _%$%g231476232464%_
                                                 _%$%g231477232465%_
                                                 _%$%g231478232466%_
                                                 _%$%g231479232467%_)
                                                (_%__match237743237744%_
                                                 _%$%e231480232362%_
                                                 _%$%hd231481232365%_
                                                 _%$%tl231482232367%_
                                                 _%$%e231483232370%_
                                                 _%$%hd231484232373%_
                                                 _%$%tl231485232375%_
                                                 _%$%e231486232378%_
                                                 _%$%hd231487232381%_
                                                 _%$%tl231488232383%_
                                                 _%$%e231489232386%_
                                                 _%$%hd231490232389%_
                                                 _%$%tl231491232391%_
                                                 _%$%e231492232394%_
                                                 _%$%hd231493232397%_
                                                 _%$%tl231494232399%_
                                                 _%$%e231495232402%_
                                                 _%$%hd231496232405%_
                                                 _%$%tl231497232407%_
                                                 _%$%e231498232410%_
                                                 _%$%hd231499232413%_
                                                 _%$%tl231500232415%_
                                                 _%$%e231501232418%_
                                                 _%$%hd231502232421%_
                                                 _%$%tl231503232423%_
                                                 _%$%e231504232426%_
                                                 _%$%hd231505232429%_
                                                 _%$%tl231506232431%_
                                                 _%$%e231507232434%_
                                                 _%$%hd231508232437%_
                                                 _%$%tl231509232439%_))))))))
                          (_%$%loop231513232447%_
                           _%$%target231510232442%_
                           '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx237450237451%_))
                    (let ((_%$%e231480232362%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx237450237451%_))))
                      (let ((_%$%tl231482232367%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e231480232362%_)))
                            (_%$%hd231481232365%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e231480232362%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl231482232367%_))
                            (let ((_%$%e231483232370%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl231482232367%_))))
                              (let ((_%$%tl231485232375%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e231483232370%_)))
                                    (_%$%hd231484232373%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e231483232370%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd231484232373%_))
                                    (let ((_%$%e231486232378%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd231484232373%_))))
                                      (let ((_%$%tl231488232383%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e231486232378%_)))
                                            (_%$%hd231487232381%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e231486232378%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd231487232381%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd231487232381%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl231488232383%_))
                                                    (let ((_%$%e231489232386%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl231488232383%_))))
                                                      (let ((_%$%tl231491232391%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e231489232386%_)))
                    (_%$%hd231490232389%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e231489232386%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl231491232391%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl231485232375%_))
                        (let ((_%$%e231492232394%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl231485232375%_))))
                          (let ((_%$%tl231494232399%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e231492232394%_)))
                                (_%$%hd231493232397%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e231492232394%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd231493232397%_))
                                (let ((_%$%e231495232402%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd231493232397%_))))
                                  (let ((_%$%tl231497232407%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e231495232402%_)))
                                        (_%$%hd231496232405%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e231495232402%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd231496232405%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%$%hd231496232405%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl231497232407%_))
                                                (let ((_%$%e231498232410%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl231497232407%_))))
                                                  (let ((_%$%tl231500232415%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e231498232410%_)))
                                                        (_%$%hd231499232413%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e231498232410%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl231500232415%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl231494232399%_))
                                                            (let ((_%$%e231501232418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl231494232399%_))))
                      (let ((_%$%tl231503232423%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e231501232418%_)))
                            (_%$%hd231502232421%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e231501232418%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd231502232421%_))
                            (let ((_%$%e231504232426%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd231502232421%_))))
                              (let ((_%$%tl231506232431%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e231504232426%_)))
                                    (_%$%hd231505232429%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e231504232426%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd231505232429%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd231505232429%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl231506232431%_))
                                            (let ((_%$%e231507232434%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl231506232431%_))))
                                              (let ((_%$%tl231509232439%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e231507232434%_)))
                                                    (_%$%hd231508232437%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e231507232434%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl231509232439%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl231503232423%_))
                                                        (let ((_%__splice237454237455%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl231503232423%_
                          '0))))
                  (let ((_%$%tl231512232444%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice237454237455%_ '1)))
                        (_%$%target231510232442%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice237454237455%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl231512232444%_))
                        (_%__match237555237556%_
                         _%$%e231480232362%_
                         _%$%hd231481232365%_
                         _%$%tl231482232367%_
                         _%$%e231483232370%_
                         _%$%hd231484232373%_
                         _%$%tl231485232375%_
                         _%$%e231486232378%_
                         _%$%hd231487232381%_
                         _%$%tl231488232383%_
                         _%$%e231489232386%_
                         _%$%hd231490232389%_
                         _%$%tl231491232391%_
                         _%$%e231492232394%_
                         _%$%hd231493232397%_
                         _%$%tl231494232399%_
                         _%$%e231495232402%_
                         _%$%hd231496232405%_
                         _%$%tl231497232407%_
                         _%$%e231498232410%_
                         _%$%hd231499232413%_
                         _%$%tl231500232415%_
                         _%$%e231501232418%_
                         _%$%hd231502232421%_
                         _%$%tl231503232423%_
                         _%$%e231504232426%_
                         _%$%hd231505232429%_
                         _%$%tl231506232431%_
                         _%$%e231507232434%_
                         _%$%hd231508232437%_
                         _%$%tl231509232439%_
                         _%__splice237454237455%_
                         _%$%target231510232442%_
                         _%$%tl231512232444%_)
                        (_%__match237743237744%_
                         _%$%e231480232362%_
                         _%$%hd231481232365%_
                         _%$%tl231482232367%_
                         _%$%e231483232370%_
                         _%$%hd231484232373%_
                         _%$%tl231485232375%_
                         _%$%e231486232378%_
                         _%$%hd231487232381%_
                         _%$%tl231488232383%_
                         _%$%e231489232386%_
                         _%$%hd231490232389%_
                         _%$%tl231491232391%_
                         _%$%e231492232394%_
                         _%$%hd231493232397%_
                         _%$%tl231494232399%_
                         _%$%e231495232402%_
                         _%$%hd231496232405%_
                         _%$%tl231497232407%_
                         _%$%e231498232410%_
                         _%$%hd231499232413%_
                         _%$%tl231500232415%_
                         _%$%e231501232418%_
                         _%$%hd231502232421%_
                         _%$%tl231503232423%_
                         _%$%e231504232426%_
                         _%$%hd231505232429%_
                         _%$%tl231506232431%_
                         _%$%e231507232434%_
                         _%$%hd231508232437%_
                         _%$%tl231509232439%_))))
                (_%__match237743237744%_
                 _%$%e231480232362%_
                 _%$%hd231481232365%_
                 _%$%tl231482232367%_
                 _%$%e231483232370%_
                 _%$%hd231484232373%_
                 _%$%tl231485232375%_
                 _%$%e231486232378%_
                 _%$%hd231487232381%_
                 _%$%tl231488232383%_
                 _%$%e231489232386%_
                 _%$%hd231490232389%_
                 _%$%tl231491232391%_
                 _%$%e231492232394%_
                 _%$%hd231493232397%_
                 _%$%tl231494232399%_
                 _%$%e231495232402%_
                 _%$%hd231496232405%_
                 _%$%tl231497232407%_
                 _%$%e231498232410%_
                 _%$%hd231499232413%_
                 _%$%tl231500232415%_
                 _%$%e231501232418%_
                 _%$%hd231502232421%_
                 _%$%tl231503232423%_
                 _%$%e231504232426%_
                 _%$%hd231505232429%_
                 _%$%tl231506232431%_
                 _%$%e231507232434%_
                 _%$%hd231508232437%_
                 _%$%tl231509232439%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match237947237948%_
                                                     _%$%e231480232362%_
                                                     _%$%hd231481232365%_
                                                     _%$%tl231482232367%_
                                                     _%$%e231483232370%_
                                                     _%$%hd231484232373%_
                                                     _%$%tl231485232375%_
                                                     _%$%e231486232378%_
                                                     _%$%hd231487232381%_
                                                     _%$%tl231488232383%_
                                                     _%$%e231489232386%_
                                                     _%$%hd231490232389%_
                                                     _%$%tl231491232391%_
                                                     _%$%e231492232394%_
                                                     _%$%hd231493232397%_
                                                     _%$%tl231494232399%_
                                                     _%$%e231495232402%_
                                                     _%$%hd231496232405%_
                                                     _%$%tl231497232407%_
                                                     _%$%e231498232410%_
                                                     _%$%hd231499232413%_
                                                     _%$%tl231500232415%_
                                                     _%$%e231501232418%_
                                                     _%$%hd231502232421%_
                                                     _%$%tl231503232423%_))))
                                            (_%__match237947237948%_
                                             _%$%e231480232362%_
                                             _%$%hd231481232365%_
                                             _%$%tl231482232367%_
                                             _%$%e231483232370%_
                                             _%$%hd231484232373%_
                                             _%$%tl231485232375%_
                                             _%$%e231486232378%_
                                             _%$%hd231487232381%_
                                             _%$%tl231488232383%_
                                             _%$%e231489232386%_
                                             _%$%hd231490232389%_
                                             _%$%tl231491232391%_
                                             _%$%e231492232394%_
                                             _%$%hd231493232397%_
                                             _%$%tl231494232399%_
                                             _%$%e231495232402%_
                                             _%$%hd231496232405%_
                                             _%$%tl231497232407%_
                                             _%$%e231498232410%_
                                             _%$%hd231499232413%_
                                             _%$%tl231500232415%_
                                             _%$%e231501232418%_
                                             _%$%hd231502232421%_
                                             _%$%tl231503232423%_))
                                        (_%__match237623237624%_
                                         _%$%e231480232362%_
                                         _%$%hd231481232365%_
                                         _%$%tl231482232367%_
                                         _%$%e231483232370%_
                                         _%$%hd231484232373%_
                                         _%$%tl231485232375%_
                                         _%$%e231486232378%_
                                         _%$%hd231487232381%_
                                         _%$%tl231488232383%_
                                         _%$%e231489232386%_
                                         _%$%hd231490232389%_
                                         _%$%tl231491232391%_
                                         _%$%e231492232394%_
                                         _%$%hd231493232397%_
                                         _%$%tl231494232399%_
                                         _%$%e231495232402%_
                                         _%$%hd231496232405%_
                                         _%$%tl231497232407%_
                                         _%$%e231498232410%_
                                         _%$%hd231499232413%_
                                         _%$%tl231500232415%_
                                         _%$%e231501232418%_
                                         _%$%hd231502232421%_
                                         _%$%tl231503232423%_
                                         _%$%e231504232426%_
                                         _%$%hd231505232429%_
                                         _%$%tl231506232431%_))
                                    (_%__match237947237948%_
                                     _%$%e231480232362%_
                                     _%$%hd231481232365%_
                                     _%$%tl231482232367%_
                                     _%$%e231483232370%_
                                     _%$%hd231484232373%_
                                     _%$%tl231485232375%_
                                     _%$%e231486232378%_
                                     _%$%hd231487232381%_
                                     _%$%tl231488232383%_
                                     _%$%e231489232386%_
                                     _%$%hd231490232389%_
                                     _%$%tl231491232391%_
                                     _%$%e231492232394%_
                                     _%$%hd231493232397%_
                                     _%$%tl231494232399%_
                                     _%$%e231495232402%_
                                     _%$%hd231496232405%_
                                     _%$%tl231497232407%_
                                     _%$%e231498232410%_
                                     _%$%hd231499232413%_
                                     _%$%tl231500232415%_
                                     _%$%e231501232418%_
                                     _%$%hd231502232421%_
                                     _%$%tl231503232423%_))))
                            (_%__match237947237948%_
                             _%$%e231480232362%_
                             _%$%hd231481232365%_
                             _%$%tl231482232367%_
                             _%$%e231483232370%_
                             _%$%hd231484232373%_
                             _%$%tl231485232375%_
                             _%$%e231486232378%_
                             _%$%hd231487232381%_
                             _%$%tl231488232383%_
                             _%$%e231489232386%_
                             _%$%hd231490232389%_
                             _%$%tl231491232391%_
                             _%$%e231492232394%_
                             _%$%hd231493232397%_
                             _%$%tl231494232399%_
                             _%$%e231495232402%_
                             _%$%hd231496232405%_
                             _%$%tl231497232407%_
                             _%$%e231498232410%_
                             _%$%hd231499232413%_
                             _%$%tl231500232415%_
                             _%$%e231501232418%_
                             _%$%hd231502232421%_
                             _%$%tl231503232423%_))))
                    (_%__match237885237886%_
                     _%$%e231480232362%_
                     _%$%hd231481232365%_
                     _%$%tl231482232367%_
                     _%$%e231483232370%_
                     _%$%hd231484232373%_
                     _%$%tl231485232375%_
                     _%$%e231486232378%_
                     _%$%hd231487232381%_
                     _%$%tl231488232383%_
                     _%$%e231489232386%_
                     _%$%hd231490232389%_
                     _%$%tl231491232391%_
                     _%$%e231492232394%_
                     _%$%hd231493232397%_
                     _%$%tl231494232399%_
                     _%$%e231495232402%_
                     _%$%hd231496232405%_
                     _%$%tl231497232407%_
                     _%$%e231498232410%_
                     _%$%hd231499232413%_
                     _%$%tl231500232415%_))
                (_%__kont237468237469%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont237468237469%_))
                                            (_%__kont237468237469%_))
                                        (_%__kont237468237469%_))))
                                (_%__kont237468237469%_))))
                        (_%__kont237468237469%_))
                    (_%__kont237468237469%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont237468237469%_))
                                                (_%__kont237468237469%_))
                                            (_%__kont237468237469%_))))
                                    (_%__kont237468237469%_))))
                            (_%__kont237468237469%_))))
                    (_%__kont237468237469%_))))))))))
