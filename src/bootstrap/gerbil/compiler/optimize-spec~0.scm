(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712949845)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp174969 (list gxc#::identity::t))
            (__tmp174968 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp174969
         '()
         __tmp174968
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args173766%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args173766%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp174970
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
        (__make-promise __tmp174970)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx173758%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self173761%_
                (let ((__obj174961
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj174961))
               (__tmp174971
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self173761%_ _%stx173758%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp174971
           gxc#current-compile-method
           _%self173761%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp174973 (list gxc#::false::t))
            (__tmp174972 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp174973
         '()
         __tmp174972
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args173755%_
        (apply make-instance gxc#::extract-receiver::t _%$args173755%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp174974
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
        (__make-promise __tmp174974)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx173747%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self173750%_
                (let ((__obj174963
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj174963))
               (__tmp174975
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self173750%_ _%stx173747%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp174975
           gxc#current-compile-method
           _%self173750%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp174977 (list gxc#::void::t))
            (__tmp174976 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp174977
         '(receiver methods slots)
         __tmp174976
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args173744%_
        (apply make-instance gxc#::collect-object-refs::t _%$args173744%_)))
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
      (let ((__tmp174978
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
        (__make-promise __tmp174978)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords173710%_
               _%receiver173705173711%_
               _%methods173706173713%_
               _%slots173707173715%_
               _%stx173717%_)
        (let* ((_%receiver173720%_
                (if (eq? _%receiver173705173711%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver173705173711%_))
               (_%methods173722%_
                (if (eq? _%methods173706173713%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods173706173713%_))
               (_%slots173724%_
                (if (eq? _%slots173707173715%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots173707173715%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self173726%_
                  (let ((__obj174965
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
                       __obj174965
                       _%receiver173720%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj174965
                       _%methods173722%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj174965
                       _%slots173724%_
                       '3
                       '#f
                       '#f))
                    __obj174965))
                 (__tmp174979
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self173726%_ _%stx173717%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp174979
             gxc#current-compile-method
             _%self173726%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords173733%_ . _%args173734%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords173733%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords173733%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords173733%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords173733%_
                  'slots:
                  absent-value))
               _%args173734%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args173708173740%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args173708173740%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp174981 (list gxc#::basic-xform-expression::t))
            (__tmp174980 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp174981
         '(receiver klass methods slots)
         __tmp174980
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args173701%_
        (apply make-instance gxc#::subst-object-refs::t _%$args173701%_)))
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
      (let ((__tmp174982
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
        (__make-promise __tmp174982)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords173663%_
               _%receiver173657173664%_
               _%klass173658173666%_
               _%methods173659173668%_
               _%slots173660173670%_
               _%stx173672%_)
        (let* ((_%receiver173675%_
                (if (eq? _%receiver173657173664%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver173657173664%_))
               (_%klass173677%_
                (if (eq? _%klass173658173666%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass173658173666%_))
               (_%methods173679%_
                (if (eq? _%methods173659173668%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods173659173668%_))
               (_%slots173681%_
                (if (eq? _%slots173660173670%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots173660173670%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self173683%_
                  (let ((__obj174967
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
                       __obj174967
                       _%receiver173675%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj174967
                       _%klass173677%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj174967
                       _%methods173679%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj174967
                       _%slots173681%_
                       '4
                       '#f
                       '#f))
                    __obj174967))
                 (__tmp174983
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self173683%_ _%stx173672%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp174983
             gxc#current-compile-method
             _%self173683%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords173690%_ . _%args173691%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords173690%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords173690%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords173690%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords173690%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords173690%_
                  'slots:
                  absent-value))
               _%args173691%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args173661173697%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args173661173697%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self170772%_ _%stx170773%_)
        (letrec ((_%generate-method-bind170775%_
                  (lambda (_%$klass173649%_
                           _%$method-table173650%_
                           _%id173651%_
                           _%$id173652%_)
                    (let ((_%$tmp173654%_
                           (let ((__tmp174984
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp174984))))
                      (cons (cons _%$id173652%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp173654%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table173650%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id173651%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp173654%_ '()))
                    (cons (cons '%#ref (cons _%$tmp173654%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id173651%_
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
                 (_%generate-slot-bind170776%_
                  (lambda (_%$klass173643%_ _%id173644%_ _%$id173645%_)
                    (let ((_%$tmp173647%_
                           (let ((__tmp174985
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp174985))))
                      (cons (cons _%$id173645%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp173647%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass173643%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id173644%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp173647%_ '()))
                        (cons (cons '%#ref (cons _%$tmp173647%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id173644%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl170777%_
                  (lambda (_%$klass173637%_
                           _%$method-table173638%_
                           _%methods-bind173639%_
                           _%slots-bind173640%_
                           _%specializer-impl173641%_)
                    (let ((__tmp174986
                           (cons '%#lambda
                                 (cons (cons _%$klass173637%_
                                             (cons _%$method-table173638%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind173640%_
                                                            _%methods-bind173639%_))
                                                         (cons _%specializer-impl173641%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp174986 _%stx170773%_))))
                 (_%generate-specializer-def170778%_
                  (lambda (_%id173633%_
                           _%specializer-id173634%_
                           _%specializer-impl173635%_)
                    (let ((__tmp174987
                           (cons '%#begin
                                 (cons _%stx170773%_
                                       (cons (let ((__tmp174988
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id173634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl173635%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp174988
                                                _%stx170773%_))
                                             (cons (let ((__tmp174989
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id173633%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id173634%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp174989
                                                      _%stx170773%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp174987 _%stx170773%_)))))
          (let* ((_%__stx173855173856%_ _%stx170773%_)
                 (_%g170781170801%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx173855173856%_)))))
            (let ((_%__kont173857173858%_
                   (lambda (_%L170845%_ _%L170846%_)
                     (let ((_%method-calls170865%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs170866%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty170867%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?170869%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls170865%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs170866%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L170845%_))
                             (let* ((_%__stx173769173770%_ _%L170845%_)
                                    (_%g171257171275%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx173769173770%_)))))
                               (let ((_%__kont173771173772%_
                                      (lambda (_%L171311%_
                                               _%L171312%_
                                               _%L171313%_)
                                        (let ((_%receiver171333%_
                                               (let ((_%$e171330%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L171311%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e171330%_
                                                     _%$e171330%_
                                                     _%L171313%_))))
                                          (for-each
                                           (lambda (_%g171334171336%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver171333%_
                                              _%method-calls170865%_
                                              _%slot-refs170866%_
                                              _%g171334171336%_))
                                           _%L171311%_)
                                          (if (_%no-specializer?170869%_)
                                              _%stx170773%_
                                              (let* ((_%specializer-id171345%_
                                                      (let* ((_%id171339%_
                                                              (let ((__tmp174990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L170846%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp174990 '"::specialize")))
                     (_%specializer-id171342%_
                      (let ((__tmp174991
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx170773%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id171339%_ __tmp174991))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id171342%_))
                _%specializer-id171342%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass171347%_
                                                      (let ((__tmp174992
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp174992)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table171349%_
                                                      (let ((__tmp174993
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp174993)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods171351%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls170865%_)))
                                                     (_%$methods171355%_
                                                      (map (lambda (_%id171353%_)
                                                             (let ((__tmp174994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id171353%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp174994)))
                   _%methods171351%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_171364%_
                                                      (for-each
                                                       (lambda (_%g171356171359%_
                                                                _%g171357171361%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls170865%_
                                                            _%g171356171359%_
                                                            _%g171357171361%_)))
                                                       _%methods171351%_
                                                       _%$methods171355%_))
                                                     (_%methods-bind171374%_
                                                      (map (lambda (_%g171366171369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g171367171371%_)
                     (_%generate-method-bind170775%_
                      _%$klass171347%_
                      _%$method-table171349%_
                      _%g171366171369%_
                      _%g171367171371%_))
                   _%methods171351%_
                   _%$methods171355%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots171376%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs170866%_)))
                                                     (_%$slots171380%_
                                                      (map (lambda (_%id171378%_)
                                                             (let ((__tmp174995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id171378%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp174995)))
                   _%slots171376%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_171389%_
                                                      (for-each
                                                       (lambda (_%g171381171384%_
                                                                _%g171382171386%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs170866%_
                                                            _%g171381171384%_
                                                            _%g171382171386%_)))
                                                       _%slots171376%_
                                                       _%$slots171380%_))
                                                     (_%slots-bind171398%_
                                                      (map (lambda (_%g171390171393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g171391171395%_)
                     (_%generate-slot-bind170776%_
                      _%$klass171347%_
                      _%g171390171393%_
                      _%g171391171395%_))
                   _%slots171376%_
                   _%$slots171380%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body171404%_
                                                      (map (lambda (_%g171399171401%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver171333%_
                                                              _%$klass171347%_
                                                              _%method-calls170865%_
                                                              _%slot-refs170866%_
                                                              _%g171399171401%_))
                                                           _%L171311%_))
                                                     (_%specializer-impl171406%_
                                                      (let ((__tmp174996
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L171313%_ _%L171312%_)
                                 _%specializer-body171404%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp174996 _%stx170773%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl171408%_
                                                      (_%generate-specializer-impl170777%_
                                                       _%$klass171347%_
                                                       _%$method-table171349%_
                                                       _%methods-bind171374%_
                                                       _%slots-bind171398%_
                                                       _%specializer-impl171406%_)))
                                                (let ((__tmp174998
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L170846%_)))
                                                      (__tmp174997
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id171345%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp174998
                                                   '" => "
                                                   __tmp174997))
                                                (_%generate-specializer-def170778%_
                                                 _%L170846%_
                                                 _%specializer-id171345%_
                                                 _%specializer-impl171408%_))))))
                                     (_%__kont173773173774%_
                                      (lambda () _%stx170773%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx173769173770%_))
                                     (let ((_%e171262171287%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx173769173770%_))))
                                       (let ((_%tl171264171292%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e171262171287%_)))
                                             (_%hd171263171290%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e171262171287%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl171264171292%_))
                                             (let ((_%e171265171295%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl171264171292%_))))
                                               (let ((_%tl171267171300%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e171265171295%_)))
                                                     (_%hd171266171298%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e171265171295%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd171266171298%_))
                                                     (let ((_%e171268171303%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd171266171298%_))))
                                                       (let ((_%tl171270171308%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e171268171303%_)))
                     (_%hd171269171306%_
                      (let () (declare (not safe)) (##car _%e171268171303%_))))
                 (_%__kont173771173772%_
                  _%tl171267171300%_
                  _%tl171270171308%_
                  _%hd171269171306%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont173773173774%_))))
                                             (_%__kont173773173774%_))))
                                     (_%__kont173773173774%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L170845%_))
                                 (let* ((_%g171415171434%_
                                         (lambda (_%g171416171431%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g171416171431%_))))
                                        (_%g171414171732%_
                                         (lambda (_%g171416171437%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g171416171437%_))
                                               (let ((_%e171418171439%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g171416171437%_))))
                                                 (let ((_%hd171419171442%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e171418171439%_)))
                                                       (_%tl171420171444%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e171418171439%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl171420171444%_))
                                                       (let ((_g174999_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl171420171444%_ '0))))
                 (begin
                   (let ((_g175000_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g174999_)
                                (##vector-length _g174999_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g175000_ 2)))
                         (error "Context expects 2 values" _g175000_)))
                   (let ((_%target171421171447%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g174999_ 0)))
                         (_%tl171423171449%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g174999_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl171423171449%_))
                         (letrec ((_%loop171424171452%_
                                   (lambda (_%hd171422171455%_
                                            _%clause171428171457%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd171422171455%_))
                                         (let ((_%e171425171460%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd171422171455%_))))
                                           (let ((_%lp-hd171426171463%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171425171460%_)))
                                                 (_%lp-tl171427171465%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171425171460%_))))
                                             (_%loop171424171452%_
                                              _%lp-tl171427171465%_
                                              (cons _%lp-hd171426171463%_
                                                    _%clause171428171457%_))))
                                         (let ((_%clause171429171468%_
                                                (reverse _%clause171428171457%_)))
                                           ((lambda (_%L171471%_)
                                              (for-each
                                               (lambda (_%clause171485%_)
                                                 (let* ((_%__stx173795173796%_
                                                         _%clause171485%_)
                                                        (_%g171488171503%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx173795173796%_)))))
                                                   (let ((_%__kont173797173798%_
                                                          (lambda (_%L171531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L171532%_
                           _%L171533%_)
                    (let ((_%receiver171552%_
                           (let ((_%$e171549%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L171531%_))))
                             (if _%$e171549%_ _%$e171549%_ _%L171533%_))))
                      (for-each
                       (lambda (_%g171553171555%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver171552%_
                          _%method-calls170865%_
                          _%slot-refs170866%_
                          _%g171553171555%_))
                       _%L171531%_))))
                 (_%__kont173799173800%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx173795173796%_))
                                                         (let ((_%e171493171515%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx173795173796%_))))
                   (let ((_%tl171495171520%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e171493171515%_)))
                         (_%hd171494171518%_
                          (let ()
                            (declare (not safe))
                            (##car _%e171493171515%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd171494171518%_))
                         (let ((_%e171496171523%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd171494171518%_))))
                           (let ((_%tl171498171528%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e171496171523%_)))
                                 (_%hd171497171526%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e171496171523%_))))
                             (_%__kont173797173798%_
                              _%tl171495171520%_
                              _%tl171498171528%_
                              _%hd171497171526%_)))
                         (_%__kont173799173800%_))))
                 (_%__kont173799173800%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp175001
                                                      (lambda (_%g171560171563%_
                                                               _%g171561171565%_)
                                                        (cons _%g171560171563%_
                                                              _%g171561171565%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp175001
                                                  '()
                                                  _%L171471%_)))
                                              (if (_%no-specializer?170869%_)
                                                  _%stx170773%_
                                                  (let* ((_%specializer-id171574%_
                                                          (let* ((_%id171568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp175002
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L170846%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp175002 '"::specialize")))
                         (_%specializer-id171571%_
                          (let ((__tmp175003
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx170773%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id171568%_
                             __tmp175003))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id171571%_))
                    _%specializer-id171571%_))
                 (_%$klass171576%_
                  (let ((__tmp175004
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp175004)))
                 (_%$method-table171578%_
                  (let ((__tmp175005
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp175005)))
                 (_%methods171580%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls170865%_)))
                 (_%$methods171584%_
                  (map (lambda (_%id171582%_)
                         (let ((__tmp175006 (gensym _%id171582%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp175006)))
                       _%methods171580%_))
                 (_%_171593%_
                  (for-each
                   (lambda (_%g171585171588%_ _%g171586171590%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls170865%_
                        _%g171585171588%_
                        _%g171586171590%_)))
                   _%methods171580%_
                   _%$methods171584%_))
                 (_%methods-bind171603%_
                  (map (lambda (_%g171595171598%_ _%g171596171600%_)
                         (_%generate-method-bind170775%_
                          _%$klass171576%_
                          _%$method-table171578%_
                          _%g171595171598%_
                          _%g171596171600%_))
                       _%methods171580%_
                       _%$methods171584%_))
                 (_%slots171605%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs170866%_)))
                 (_%$slots171609%_
                  (map (lambda (_%id171607%_)
                         (let ((__tmp175007 (gensym _%id171607%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp175007)))
                       _%slots171605%_))
                 (_%_171618%_
                  (for-each
                   (lambda (_%g171610171613%_ _%g171611171615%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs170866%_
                        _%g171610171613%_
                        _%g171611171615%_)))
                   _%slots171605%_
                   _%$slots171609%_))
                 (_%slots-bind171627%_
                  (map (lambda (_%g171619171622%_ _%g171620171624%_)
                         (_%generate-slot-bind170776%_
                          _%$klass171576%_
                          _%g171619171622%_
                          _%g171620171624%_))
                       _%slots171605%_
                       _%$slots171609%_))
                 (_%specializer-clauses171725%_
                  (map (lambda (_%clause171629%_)
                         (let* ((_%__stx173815173816%_ _%clause171629%_)
                                (_%g171632171647%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx173815173816%_)))))
                           (let ((_%__kont173817173818%_
                                  (lambda (_%L171675%_ _%L171676%_ _%L171677%_)
                                    (let* ((_%receiver171706%_
                                            (let ((_%$e171703%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L171675%_))))
                                              (if _%$e171703%_
                                                  _%$e171703%_
                                                  _%L171677%_)))
                                           (_%body171712%_
                                            (map (lambda (_%g171707171709%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver171706%_
                                                    _%$klass171576%_
                                                    _%method-calls170865%_
                                                    _%slot-refs170866%_
                                                    _%g171707171709%_))
                                                 _%L171675%_)))
                                      (cons (cons _%L171677%_ _%L171676%_)
                                            _%body171712%_))))
                                 (_%__kont173819173820%_
                                  (lambda () _%clause171629%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx173815173816%_))
                                 (let ((_%e171637171659%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx173815173816%_))))
                                   (let ((_%tl171639171664%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e171637171659%_)))
                                         (_%hd171638171662%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e171637171659%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd171638171662%_))
                                         (let ((_%e171640171667%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd171638171662%_))))
                                           (let ((_%tl171642171672%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171640171667%_)))
                                                 (_%hd171641171670%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171640171667%_))))
                                             (_%__kont173817173818%_
                                              _%tl171639171664%_
                                              _%tl171642171672%_
                                              _%hd171641171670%_)))
                                         (_%__kont173819173820%_))))
                                 (_%__kont173819173820%_)))))
                       (let ((__tmp175008
                              (lambda (_%g171717171720%_ _%g171718171722%_)
                                (cons _%g171717171720%_ _%g171718171722%_))))
                         (declare (not safe))
                         (__foldr1 __tmp175008 '() _%L171471%_))))
                 (_%specializer-impl171727%_
                  (let ((__tmp175009
                         (cons '%#case-lambda _%specializer-clauses171725%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp175009 _%stx170773%_)))
                 (_%specializer-impl171729%_
                  (_%generate-specializer-impl170777%_
                   _%$klass171576%_
                   _%$method-table171578%_
                   _%methods-bind171603%_
                   _%slots-bind171627%_
                   _%specializer-impl171727%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp175011
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L170846%_)))
                                                          (__tmp175010
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id171574%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp175011
                                                       '" => "
                                                       __tmp175010))
                                                    (_%generate-specializer-def170778%_
                                                     _%L170846%_
                                                     _%specializer-id171574%_
                                                     _%specializer-impl171729%_))))
                                            _%clause171429171468%_))))))
                           (_%loop171424171452%_ _%target171421171447%_ '()))
                         (_%g171415171434%_ _%g171416171437%_)))))
               (_%g171415171434%_ _%g171416171437%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g171415171434%_
                                                _%g171416171437%_)))))
                                   (_%g171414171732%_ _%L170845%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L170845%_))
                                     (let* ((_%g171736171766%_
                                             (lambda (_%g171737171763%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g171737171763%_))))
                                            (_%g171735172397%_
                                             (lambda (_%g171737171769%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g171737171769%_))
                                                   (let ((_%e171741171771%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g171737171769%_))))
                                                     (let ((_%hd171742171774%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e171741171771%_)))
                                                           (_%tl171743171776%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e171741171771%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl171743171776%_))
                                                           (let ((_%e171744171779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl171743171776%_))))
                     (let ((_%hd171745171782%_
                            (let ()
                              (declare (not safe))
                              (##car _%e171744171779%_)))
                           (_%tl171746171784%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e171744171779%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd171745171782%_))
                           (let ((_%e171747171787%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd171745171782%_))))
                             (let ((_%hd171748171790%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e171747171787%_)))
                                   (_%tl171749171792%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e171747171787%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd171748171790%_))
                                   (let ((_%e171750171795%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd171748171790%_))))
                                     (let ((_%hd171751171798%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e171750171795%_)))
                                           (_%tl171752171800%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e171750171795%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd171751171798%_))
                                           (let ((_%e171753171803%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd171751171798%_))))
                                             (let ((_%hd171754171806%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e171753171803%_)))
                                                   (_%tl171755171808%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e171753171803%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl171755171808%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl171752171800%_))
                                                       (let ((_%e171756171811%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl171752171800%_))))
                 (let ((_%hd171757171814%_
                        (let ()
                          (declare (not safe))
                          (##car _%e171756171811%_)))
                       (_%tl171758171816%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e171756171811%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl171758171816%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl171749171792%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl171746171784%_))
                               (let ((_%e171759171819%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl171746171784%_))))
                                 (let ((_%hd171760171822%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e171759171819%_)))
                                       (_%tl171761171824%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e171759171819%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl171761171824%_))
                                       ((lambda (_%L171827%_
                                                 _%L171828%_
                                                 _%L171829%_)
                                          (let* ((_%g171853171871%_
                                                  (lambda (_%g171854171868%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g171854171868%_))))
                                                 (_%g171852171927%_
                                                  (lambda (_%g171854171874%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g171854171874%_))
                                                        (let ((_%e171858171876%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g171854171874%_))))
                  (let ((_%hd171859171879%_
                         (let ()
                           (declare (not safe))
                           (##car _%e171858171876%_)))
                        (_%tl171860171881%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e171858171876%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl171860171881%_))
                        (let ((_%e171861171884%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl171860171881%_))))
                          (let ((_%hd171862171887%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171861171884%_)))
                                (_%tl171863171889%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171861171884%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd171862171887%_))
                                (let ((_%e171864171892%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd171862171887%_))))
                                  (let ((_%hd171865171895%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171864171892%_)))
                                        (_%tl171866171897%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171864171892%_))))
                                    ((lambda (_%L171900%_
                                              _%L171901%_
                                              _%L171902%_)
                                       (let ((_%receiver171921%_
                                              (let ((_%$e171918%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L171900%_))))
                                                (if _%$e171918%_
                                                    _%$e171918%_
                                                    _%L171902%_))))
                                         (for-each
                                          (lambda (_%g171922171924%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver171921%_
                                             _%method-calls170865%_
                                             _%slot-refs170866%_
                                             _%g171922171924%_))
                                          _%L171900%_)))
                                     _%tl171863171889%_
                                     _%tl171866171897%_
                                     _%hd171865171895%_)))
                                (_%g171853171871%_ _%g171854171874%_))))
                        (_%g171853171871%_ _%g171854171874%_))))
                (_%g171853171871%_ _%g171854171874%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g171852171927%_ _%L171828%_))
                                          (let* ((_%g171930171949%_
                                                  (lambda (_%g171931171946%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g171931171946%_))))
                                                 (_%g171929172073%_
                                                  (lambda (_%g171931171952%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g171931171952%_))
                                                        (let ((_%e171933171954%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g171931171952%_))))
                  (let ((_%hd171934171957%_
                         (let ()
                           (declare (not safe))
                           (##car _%e171933171954%_)))
                        (_%tl171935171959%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e171933171954%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl171935171959%_))
                        (let ((_g175012_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl171935171959%_
                                  '0))))
                          (begin
                            (let ((_g175013_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g175012_)
                                         (##vector-length _g175012_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g175013_ 2)))
                                  (error "Context expects 2 values"
                                         _g175013_)))
                            (let ((_%target171936171962%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g175012_ 0)))
                                  (_%tl171938171964%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g175012_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl171938171964%_))
                                  (letrec ((_%loop171939171967%_
                                            (lambda (_%hd171937171970%_
                                                     _%clause171943171972%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd171937171970%_))
                                                  (let ((_%e171940171975%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd171937171970%_))))
                                                    (let ((_%lp-hd171941171978%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e171940171975%_)))
                                                          (_%lp-tl171942171980%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e171940171975%_))))
                                                      (_%loop171939171967%_
                                                       _%lp-tl171942171980%_
                                                       (cons _%lp-hd171941171978%_
                                                             _%clause171943171972%_))))
                                                  (let ((_%clause171944171983%_
                                                         (reverse _%clause171943171972%_)))
                                                    ((lambda (_%L171986%_)
                                                       (for-each
                                                        (lambda (_%clause171999%_)
                                                          (let* ((_%g172001172016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g172002172013%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g172002172013%_))))
                         (_%g172000172063%_
                          (lambda (_%g172002172019%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g172002172019%_))
                                (let ((_%e172006172021%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g172002172019%_))))
                                  (let ((_%hd172007172024%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172006172021%_)))
                                        (_%tl172008172026%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172006172021%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172007172024%_))
                                        (let ((_%e172009172029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172007172024%_))))
                                          (let ((_%hd172010172032%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172009172029%_)))
                                                (_%tl172011172034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172009172029%_))))
                                            ((lambda (_%L172037%_
                                                      _%L172038%_
                                                      _%L172039%_)
                                               (let ((_%receiver172057%_
                                                      (let ((_%$e172054%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L172037%_))))
                (if _%$e172054%_ _%$e172054%_ _%L172039%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g172058172060%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver172057%_
                                                     _%method-calls170865%_
                                                     _%slot-refs170866%_
                                                     _%g172058172060%_))
                                                  _%L172037%_)))
                                             _%tl172008172026%_
                                             _%tl172011172034%_
                                             _%hd172010172032%_)))
                                        (_%g172001172016%_
                                         _%g172002172019%_))))
                                (_%g172001172016%_ _%g172002172019%_)))))
                    (_%g172000172063%_ _%clause171999%_)))
                (let ((__tmp175014
                       (lambda (_%g172065172068%_ _%g172066172070%_)
                         (cons _%g172065172068%_ _%g172066172070%_))))
                  (declare (not safe))
                  (__foldr1 __tmp175014 '() _%L171986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause171944171983%_))))))
                                    (_%loop171939171967%_
                                     _%target171936171962%_
                                     '()))
                                  (_%g171930171949%_ _%g171931171952%_)))))
                        (_%g171930171949%_ _%g171931171952%_))))
                (_%g171930171949%_ _%g171931171952%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g171929172073%_ _%L171827%_))
                                          (if (_%no-specializer?170869%_)
                                              _%stx170773%_
                                              (let* ((_%specializer-id172082%_
                                                      (let* ((_%id172076%_
                                                              (let ((__tmp175015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L170846%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp175015 '"::specialize")))
                     (_%specializer-id172079%_
                      (let ((__tmp175016
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx170773%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id172076%_ __tmp175016))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id172079%_))
                _%specializer-id172079%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass172084%_
                                                      (let ((__tmp175017
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp175017)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table172086%_
                                                      (let ((__tmp175018
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp175018)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods172088%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls170865%_)))
                                                     (_%$methods172092%_
                                                      (map (lambda (_%id172090%_)
                                                             (let ((__tmp175019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172090%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp175019)))
                   _%methods172088%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172101%_
                                                      (for-each
                                                       (lambda (_%g172093172096%_
                                                                _%g172094172098%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls170865%_
                                                            _%g172093172096%_
                                                            _%g172094172098%_)))
                                                       _%methods172088%_
                                                       _%$methods172092%_))
                                                     (_%methods-bind172111%_
                                                      (map (lambda (_%g172103172106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172104172108%_)
                     (_%generate-method-bind170775%_
                      _%$klass172084%_
                      _%$method-table172086%_
                      _%g172103172106%_
                      _%g172104172108%_))
                   _%methods172088%_
                   _%$methods172092%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots172113%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs170866%_)))
                                                     (_%$slots172117%_
                                                      (map (lambda (_%id172115%_)
                                                             (let ((__tmp175020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172115%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp175020)))
                   _%slots172113%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172126%_
                                                      (for-each
                                                       (lambda (_%g172118172121%_
                                                                _%g172119172123%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs170866%_
                                                            _%g172118172121%_
                                                            _%g172119172123%_)))
                                                       _%slots172113%_
                                                       _%$slots172117%_))
                                                     (_%slots-bind172135%_
                                                      (map (lambda (_%g172127172130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172128172132%_)
                     (_%generate-slot-bind170776%_
                      _%$klass172084%_
                      _%g172127172130%_
                      _%g172128172132%_))
                   _%slots172113%_
                   _%$slots172117%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr172227%_
                                                      (let* ((_%g172137172155%_
                                                              (lambda (_%g172138172152%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g172138172152%_))))
                     (_%g172136172224%_
                      (lambda (_%g172138172158%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g172138172158%_))
                            (let ((_%e172142172160%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g172138172158%_))))
                              (let ((_%hd172143172163%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172142172160%_)))
                                    (_%tl172144172165%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172142172160%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl172144172165%_))
                                    (let ((_%e172145172168%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl172144172165%_))))
                                      (let ((_%hd172146172171%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172145172168%_)))
                                            (_%tl172147172173%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172145172168%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd172146172171%_))
                                            (let ((_%e172148172176%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd172146172171%_))))
                                              (let ((_%hd172149172179%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172148172176%_)))
                                                    (_%tl172150172181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172148172176%_))))
                                                ((lambda (_%L172184%_
                                                          _%L172185%_
                                                          _%L172186%_)
                                                   (let* ((_%receiver172215%_
                                                           (let ((_%$e172212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L172184%_))))
                     (if _%$e172212%_ _%$e172212%_ _%L172186%_)))
                  (_%body172221%_
                   (map (lambda (_%g172216172218%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver172215%_
                           _%$klass172084%_
                           _%method-calls170865%_
                           _%slot-refs170866%_
                           _%g172216172218%_))
                        _%L172184%_))
                  (__tmp175021
                   (cons '%#lambda
                         (cons (cons _%L172186%_ _%L172185%_)
                               _%body172221%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp175021
                                                      _%L171828%_)))
                                                 _%tl172147172173%_
                                                 _%tl172150172181%_
                                                 _%hd172149172179%_)))
                                            (_%g172137172155%_
                                             _%g172138172158%_))))
                                    (_%g172137172155%_ _%g172138172158%_))))
                            (_%g172137172155%_ _%g172138172158%_)))))
                (_%g172136172224%_ _%L171828%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr172390%_
                                                      (let* ((_%g172229172248%_
                                                              (lambda (_%g172230172245%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g172230172245%_))))
                     (_%g172228172387%_
                      (lambda (_%g172230172251%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g172230172251%_))
                            (let ((_%e172232172253%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g172230172251%_))))
                              (let ((_%hd172233172256%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172232172253%_)))
                                    (_%tl172234172258%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172232172253%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl172234172258%_))
                                    (let ((_g175022_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl172234172258%_
                                              '0))))
                                      (begin
                                        (let ((_g175023_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g175022_)
                                                     (##vector-length
                                                      _g175022_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g175023_ 2)))
                                              (error "Context expects 2 values"
                                                     _g175023_)))
                                        (let ((_%target172235172261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g175022_ 0)))
                                              (_%tl172237172263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g175022_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl172237172263%_))
                                              (letrec ((_%loop172238172266%_
                                                        (lambda (_%hd172236172269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause172242172271%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd172236172269%_))
                      (let ((_%e172239172274%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd172236172269%_))))
                        (let ((_%lp-hd172240172277%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172239172274%_)))
                              (_%lp-tl172241172279%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172239172274%_))))
                          (_%loop172238172266%_
                           _%lp-tl172241172279%_
                           (cons _%lp-hd172240172277%_
                                 _%clause172242172271%_))))
                      (let ((_%clause172243172282%_
                             (reverse _%clause172242172271%_)))
                        ((lambda (_%L172285%_)
                           (let* ((_%clauses172385%_
                                   (map (lambda (_%clause172299%_)
                                          (let* ((_%__stx173835173836%_
                                                  _%clause172299%_)
                                                 (_%g172302172317%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx173835173836%_)))))
                                            (let ((_%__kont173837173838%_
                                                   (lambda (_%L172345%_
                                                            _%L172346%_
                                                            _%L172347%_)
                                                     (let* ((_%receiver172366%_
                                                             (let ((_%$e172363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L172345%_))))
                       (if _%$e172363%_ _%$e172363%_ _%L172347%_)))
                    (_%body172372%_
                     (map (lambda (_%g172367172369%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver172366%_
                             _%$klass172084%_
                             _%method-calls170865%_
                             _%slot-refs170866%_
                             _%g172367172369%_))
                          _%L172345%_)))
               (cons (cons _%L172347%_ _%L172346%_) _%body172372%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont173839173840%_
                                                   (lambda ()
                                                     _%clause172299%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx173835173836%_))
                                                  (let ((_%e172307172329%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx173835173836%_))))
                                                    (let ((_%tl172309172334%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e172307172329%_)))
                                                          (_%hd172308172332%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e172307172329%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd172308172332%_))
                                                          (let ((_%e172310172337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd172308172332%_))))
                    (let ((_%tl172312172342%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e172310172337%_)))
                          (_%hd172311172340%_
                           (let ()
                             (declare (not safe))
                             (##car _%e172310172337%_))))
                      (_%__kont173837173838%_
                       _%tl172309172334%_
                       _%tl172312172342%_
                       _%hd172311172340%_)))
                  (_%__kont173839173840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont173839173840%_)))))
                                        (let ((__tmp175024
                                               (lambda (_%g172377172380%_
                                                        _%g172378172382%_)
                                                 (cons _%g172377172380%_
                                                       _%g172378172382%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp175024
                                           '()
                                           _%L172285%_))))
                                  (__tmp175025
                                   (cons '%#case-lambda _%clauses172385%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp175025 _%L171827%_)))
                         _%clause172243172282%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop172238172266%_
                                                 _%target172235172261%_
                                                 '()))
                                              (_%g172229172248%_
                                               _%g172230172251%_)))))
                                    (_%g172229172248%_ _%g172230172251%_))))
                            (_%g172229172248%_ _%g172230172251%_)))))
                (_%g172228172387%_ _%L171827%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl172392%_
                                                      (let ((__tmp175026
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L171829%_ '())
                                             (cons _%specializer-lambda-expr172227%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr172390%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp175026 _%stx170773%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl172394%_
                                                      (_%generate-specializer-impl170777%_
                                                       _%$klass172084%_
                                                       _%$method-table172086%_
                                                       _%methods-bind172111%_
                                                       _%slots-bind172135%_
                                                       _%specializer-impl172392%_)))
                                                (let ((__tmp175028
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L170846%_)))
                                                      (__tmp175027
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id172082%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp175028
                                                   '" => "
                                                   __tmp175027))
                                                (_%generate-specializer-def170778%_
                                                 _%L170846%_
                                                 _%specializer-id172082%_
                                                 _%specializer-impl172394%_))))
                                        _%hd171760171822%_
                                        _%hd171757171814%_
                                        _%hd171754171806%_)
                                       (_%g171736171766%_ _%g171737171769%_))))
                               (_%g171736171766%_ _%g171737171769%_))
                           (_%g171736171766%_ _%g171737171769%_))
                       (_%g171736171766%_ _%g171737171769%_))))
               (_%g171736171766%_ _%g171737171769%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g171736171766%_
                                                    _%g171737171769%_))))
                                           (_%g171736171766%_
                                            _%g171737171769%_))))
                                   (_%g171736171766%_ _%g171737171769%_))))
                           (_%g171736171766%_ _%g171737171769%_))))
                   (_%g171736171766%_ _%g171737171769%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g171736171766%_
                                                    _%g171737171769%_)))))
                                       (_%g171735172397%_ _%L170845%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L170845%_))
                                         (let* ((_%g172401172454%_
                                                 (lambda (_%g172402172451%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g172402172451%_))))
                                                (_%g172400173625%_
                                                 (lambda (_%g172402172457%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g172402172457%_))
                                                       (let ((_%e172408172459%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g172402172457%_))))
                 (let ((_%hd172409172462%_
                        (let ()
                          (declare (not safe))
                          (##car _%e172408172459%_)))
                       (_%tl172410172464%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e172408172459%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd172409172462%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd172409172462%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl172410172464%_))
                               (let ((_%e172411172467%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl172410172464%_))))
                                 (let ((_%hd172412172470%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e172411172467%_)))
                                       (_%tl172413172472%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e172411172467%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd172412172470%_))
                                       (let ((_%e172414172475%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd172412172470%_))))
                                         (let ((_%hd172415172478%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e172414172475%_)))
                                               (_%tl172416172480%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e172414172475%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd172415172478%_))
                                               (let ((_%e172417172483%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd172415172478%_))))
                                                 (let ((_%hd172418172486%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e172417172483%_)))
                                                       (_%tl172419172488%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e172417172483%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd172418172486%_))
                                                       (let ((_%e172420172491%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd172418172486%_))))
                 (let ((_%hd172421172494%_
                        (let ()
                          (declare (not safe))
                          (##car _%e172420172491%_)))
                       (_%tl172422172496%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e172420172491%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl172422172496%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl172419172488%_))
                           (let ((_%e172423172499%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl172419172488%_))))
                             (let ((_%hd172424172502%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e172423172499%_)))
                                   (_%tl172425172504%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e172423172499%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd172424172502%_))
                                   (let ((_%e172426172507%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd172424172502%_))))
                                     (let ((_%hd172427172510%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e172426172507%_)))
                                           (_%tl172428172512%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e172426172507%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd172427172510%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd172427172510%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl172428172512%_))
                                                   (let ((_%e172429172515%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl172428172512%_))))
                                                     (let ((_%hd172430172518%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e172429172515%_)))
                                                           (_%tl172431172520%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e172429172515%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd172430172518%_))
                                                           (let ((_%e172432172523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd172430172518%_))))
                     (let ((_%hd172433172526%_
                            (let ()
                              (declare (not safe))
                              (##car _%e172432172523%_)))
                           (_%tl172434172528%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e172432172523%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd172433172526%_))
                           (let ((_%e172435172531%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd172433172526%_))))
                             (let ((_%hd172436172534%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e172435172531%_)))
                                   (_%tl172437172536%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e172435172531%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd172436172534%_))
                                   (let ((_%e172438172539%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd172436172534%_))))
                                     (let ((_%hd172439172542%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e172438172539%_)))
                                           (_%tl172440172544%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e172438172539%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl172440172544%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl172437172536%_))
                                               (let ((_%e172441172547%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl172437172536%_))))
                                                 (let ((_%hd172442172550%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e172441172547%_)))
                                                       (_%tl172443172552%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e172441172547%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl172443172552%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl172434172528%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl172431172520%_))
                       (let ((_%e172444172555%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl172431172520%_))))
                         (let ((_%hd172445172558%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e172444172555%_)))
                               (_%tl172446172560%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e172444172555%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl172446172560%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl172425172504%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl172416172480%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl172413172472%_))
                                           (let ((_%e172447172563%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl172413172472%_))))
                                             (let ((_%hd172448172566%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e172447172563%_)))
                                                   (_%tl172449172568%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e172447172563%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl172449172568%_))
                                                   ((lambda (_%L172571%_
                                                             _%L172572%_
                                                             _%L172573%_
                                                             _%L172574%_
                                                             _%L172575%_)
                                                      (let* ((_%g172615172677%_
                                                              (lambda (_%g172616172674%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g172616172674%_))))
                     (_%g172614173622%_
                      (lambda (_%g172616172680%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g172616172680%_))
                            (let ((_%e172622172682%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g172616172680%_))))
                              (let ((_%hd172623172685%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172622172682%_)))
                                    (_%tl172624172687%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172622172682%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd172623172685%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd172623172685%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172624172687%_))
                                            (let ((_%e172625172690%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172624172687%_))))
                                              (let ((_%hd172626172693%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172625172690%_)))
                                                    (_%tl172627172695%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172625172690%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl172627172695%_))
                                                    (let ((_%e172628172698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl172627172695%_))))
                                                      (let ((_%hd172629172701%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e172628172698%_)))
                    (_%tl172630172703%_
                     (let () (declare (not safe)) (##cdr _%e172628172698%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd172629172701%_))
                    (let ((_%e172631172706%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd172629172701%_))))
                      (let ((_%hd172632172709%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172631172706%_)))
                            (_%tl172633172711%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172631172706%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd172632172709%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd172632172709%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl172633172711%_))
                                    (let ((_%e172634172714%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl172633172711%_))))
                                      (let ((_%hd172635172717%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172634172714%_)))
                                            (_%tl172636172719%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172634172714%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd172635172717%_))
                                            (let ((_%e172637172722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd172635172717%_))))
                                              (let ((_%hd172638172725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172637172722%_)))
                                                    (_%tl172639172727%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172637172722%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd172638172725%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd172638172725%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl172639172727%_))
                                                            (let ((_%e172640172730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl172639172727%_))))
                      (let ((_%hd172641172733%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172640172730%_)))
                            (_%tl172642172735%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172640172730%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172642172735%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl172636172719%_))
                                (let ((_%e172643172738%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl172636172719%_))))
                                  (let ((_%hd172644172741%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172643172738%_)))
                                        (_%tl172645172743%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172643172738%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172644172741%_))
                                        (let ((_%e172646172746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172644172741%_))))
                                          (let ((_%hd172647172749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172646172746%_)))
                                                (_%tl172648172751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172646172746%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd172647172749%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd172647172749%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl172648172751%_))
                                                        (let ((_%e172649172754%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl172648172751%_))))
                  (let ((_%hd172650172757%_
                         (let ()
                           (declare (not safe))
                           (##car _%e172649172754%_)))
                        (_%tl172651172759%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e172649172754%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl172651172759%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172645172743%_))
                            (let ((_%e172652172762%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172645172743%_))))
                              (let ((_%hd172653172765%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172652172762%_)))
                                    (_%tl172654172767%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172652172762%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd172653172765%_))
                                    (let ((_%e172655172770%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd172653172765%_))))
                                      (let ((_%hd172656172773%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172655172770%_)))
                                            (_%tl172657172775%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172655172770%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd172656172773%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd172656172773%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl172657172775%_))
                                                    (let ((_%e172658172778%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl172657172775%_))))
                                                      (let ((_%hd172659172781%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e172658172778%_)))
                    (_%tl172660172783%_
                     (let () (declare (not safe)) (##cdr _%e172658172778%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl172660172783%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl172654172767%_))
                        (if (let ((__tmp175029
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl172654172767%_))))
                              (declare (not safe))
                              (##fx>= __tmp175029 '1))
                            (let ((_g175030_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl172654172767%_
                                      '1))))
                              (begin
                                (let ((_g175031_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g175030_)
                                             (##vector-length _g175030_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g175031_ 2)))
                                      (error "Context expects 2 values"
                                             _g175031_)))
                                (let ((_%target172661172786%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g175030_ 0)))
                                      (_%tl172663172788%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g175030_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl172663172788%_))
                                      (let ((_%e172670172791%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl172663172788%_))))
                                        (let ((_%hd172671172794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e172670172791%_)))
                                              (_%tl172672172796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e172670172791%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl172672172796%_))
                                              (letrec ((_%loop172664172799%_
                                                        (lambda (_%hd172662172802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref172668172804%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd172662172802%_))
                      (let ((_%e172665172807%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd172662172802%_))))
                        (let ((_%lp-hd172666172810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172665172807%_)))
                              (_%lp-tl172667172812%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172665172807%_))))
                          (_%loop172664172799%_
                           _%lp-tl172667172812%_
                           (cons _%lp-hd172666172810%_
                                 _%kw-ref172668172804%_))))
                      (let ((_%kw-ref172669172815%_
                             (reverse _%kw-ref172668172804%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172630172703%_))
                            ((lambda (_%L172818%_
                                      _%L172819%_
                                      _%L172820%_
                                      _%L172821%_
                                      _%L172822%_)
                               (let* ((_%kw-count172873%_
                                       (length (let ((__tmp175032
                                                      (lambda (_%g172865172868%_
                                                               _%g172866172870%_)
                                                        (cons _%g172865172868%_
                                                              _%g172866172870%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp175032
                                                  '()
                                                  _%L172819%_))))
                                      (_%self-index172875%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count172873%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L172573%_))
                                     (let* ((_%g172879172893%_
                                             (lambda (_%g172880172890%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g172880172890%_))))
                                            (_%g172878173016%_
                                             (lambda (_%g172880172896%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g172880172896%_))
                                                   (let ((_%e172883172898%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g172880172896%_))))
                                                     (let ((_%hd172884172901%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e172883172898%_)))
                                                           (_%tl172885172903%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e172883172898%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl172885172903%_))
                                                           (let ((_%e172886172906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl172885172903%_))))
                     (let ((_%hd172887172909%_
                            (let ()
                              (declare (not safe))
                              (##car _%e172886172906%_)))
                           (_%tl172888172911%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e172886172906%_))))
                       ((lambda (_%L172914%_ _%L172915%_)
                          (let* ((_%self172932%_
                                  (list-ref _%L172915%_ _%self-index172875%_))
                                 (_%receiver172937%_
                                  (let ((_%$e172934%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L172914%_))))
                                    (if _%$e172934%_
                                        _%$e172934%_
                                        _%self172932%_))))
                            (for-each
                             (lambda (_%g172939172941%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver172937%_
                                _%method-calls170865%_
                                _%slot-refs170866%_
                                _%g172939172941%_))
                             _%L172914%_)
                            (if (_%no-specializer?170869%_)
                                _%stx170773%_
                                (let* ((_%specializer-id172950%_
                                        (let* ((_%id172944%_
                                                (let ((__tmp175033
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L170846%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp175033
                                                   '"::specialize")))
                                               (_%specializer-id172947%_
                                                (let ((__tmp175034
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx170773%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id172944%_
                                                   __tmp175034))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id172947%_))
                                          _%specializer-id172947%_))
                                       (_%$klass172952%_
                                        (let ((__tmp175035
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp175035)))
                                       (_%$method-table172954%_
                                        (let ((__tmp175036
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp175036)))
                                       (_%methods172956%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls170865%_)))
                                       (_%$methods172960%_
                                        (map (lambda (_%id172958%_)
                                               (let ((__tmp175037
                                                      (gensym _%id172958%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp175037)))
                                             _%methods172956%_))
                                       (_%_172969%_
                                        (for-each
                                         (lambda (_%g172961172964%_
                                                  _%g172962172966%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls170865%_
                                              _%g172961172964%_
                                              _%g172962172966%_)))
                                         _%methods172956%_
                                         _%$methods172960%_))
                                       (_%methods-bind172979%_
                                        (map (lambda (_%g172971172974%_
                                                      _%g172972172976%_)
                                               (_%generate-method-bind170775%_
                                                _%$klass172952%_
                                                _%$method-table172954%_
                                                _%g172971172974%_
                                                _%g172972172976%_))
                                             _%methods172956%_
                                             _%$methods172960%_))
                                       (_%slots172981%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs170866%_)))
                                       (_%$slots172985%_
                                        (map (lambda (_%id172983%_)
                                               (let ((__tmp175038
                                                      (gensym _%id172983%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp175038)))
                                             _%slots172981%_))
                                       (_%_172994%_
                                        (for-each
                                         (lambda (_%g172986172989%_
                                                  _%g172987172991%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs170866%_
                                              _%g172986172989%_
                                              _%g172987172991%_)))
                                         _%slots172981%_
                                         _%$slots172985%_))
                                       (_%slots-bind173003%_
                                        (map (lambda (_%g172995172998%_
                                                      _%g172996173000%_)
                                               (_%generate-slot-bind170776%_
                                                _%$klass172952%_
                                                _%g172995172998%_
                                                _%g172996173000%_))
                                             _%slots172981%_
                                             _%$slots172985%_))
                                       (_%specializer-impl173011%_
                                        (let* ((_%specializer-body173009%_
                                                (map (lambda (_%g173004173006%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver172937%_
                                                        _%$klass172952%_
                                                        _%method-calls170865%_
                                                        _%slot-refs170866%_
                                                        _%g173004173006%_))
                                                     _%L172914%_))
                                               (__tmp175039
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L172575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L172574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp175040
                                   (cons '%#lambda
                                         (cons _%L172915%_
                                               _%specializer-body173009%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp175040 _%L172573%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L172572%_ '())))
                                      '()))
                          '())
                    (cons _%L172571%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp175039
                                           _%stx170773%_)))
                                       (_%specializer-impl173013%_
                                        (_%generate-specializer-impl170777%_
                                         _%$klass172952%_
                                         _%$method-table172954%_
                                         _%methods-bind172979%_
                                         _%slots-bind173003%_
                                         _%specializer-impl173011%_)))
                                  (let ((__tmp175042
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L170846%_)))
                                        (__tmp175041
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id172950%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp175042
                                     '" => "
                                     __tmp175041))
                                  (_%generate-specializer-def170778%_
                                   _%L170846%_
                                   _%specializer-id172950%_
                                   _%specializer-impl173013%_)))))
                        _%tl172888172911%_
                        _%hd172887172909%_)))
                   (_%g172879172893%_ _%g172880172896%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g172879172893%_
                                                    _%g172880172896%_)))))
                                       (_%g172878173016%_ _%L172573%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L172573%_))
                                         (let* ((_%g173020173050%_
                                                 (lambda (_%g173021173047%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g173021173047%_))))
                                                (_%g173019173618%_
                                                 (lambda (_%g173021173053%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g173021173053%_))
                                                       (let ((_%e173025173055%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g173021173053%_))))
                 (let ((_%hd173026173058%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173025173055%_)))
                       (_%tl173027173060%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173025173055%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl173027173060%_))
                       (let ((_%e173028173063%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl173027173060%_))))
                         (let ((_%hd173029173066%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e173028173063%_)))
                               (_%tl173030173068%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e173028173063%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd173029173066%_))
                               (let ((_%e173031173071%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd173029173066%_))))
                                 (let ((_%hd173032173074%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e173031173071%_)))
                                       (_%tl173033173076%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e173031173071%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd173032173074%_))
                                       (let ((_%e173034173079%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd173032173074%_))))
                                         (let ((_%hd173035173082%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e173034173079%_)))
                                               (_%tl173036173084%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e173034173079%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd173035173082%_))
                                               (let ((_%e173037173087%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd173035173082%_))))
                                                 (let ((_%hd173038173090%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e173037173087%_)))
                                                       (_%tl173039173092%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e173037173087%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl173039173092%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl173036173084%_))
                                                           (let ((_%e173040173095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl173036173084%_))))
                     (let ((_%hd173041173098%_
                            (let ()
                              (declare (not safe))
                              (##car _%e173040173095%_)))
                           (_%tl173042173100%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e173040173095%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl173042173100%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl173033173076%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl173030173068%_))
                                   (let ((_%e173043173103%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl173030173068%_))))
                                     (let ((_%hd173044173106%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173043173103%_)))
                                           (_%tl173045173108%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173043173103%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl173045173108%_))
                                           ((lambda (_%L173111%_
                                                     _%L173112%_
                                                     _%L173113%_)
                                              (let* ((_%g173137173151%_
                                                      (lambda (_%g173138173148%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g173138173148%_))))
                                                     (_%g173136173198%_
                                                      (lambda (_%g173138173154%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g173138173154%_))
                                                            (let ((_%e173141173156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g173138173154%_))))
                      (let ((_%hd173142173159%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173141173156%_)))
                            (_%tl173143173161%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173141173156%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl173143173161%_))
                            (let ((_%e173144173164%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl173143173161%_))))
                              (let ((_%hd173145173167%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173144173164%_)))
                                    (_%tl173146173169%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173144173164%_))))
                                ((lambda (_%L173172%_ _%L173173%_)
                                   (let* ((_%self173186%_
                                           (list-ref
                                            _%L173173%_
                                            _%self-index172875%_))
                                          (_%receiver173191%_
                                           (let ((_%$e173188%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L173172%_))))
                                             (if _%$e173188%_
                                                 _%$e173188%_
                                                 _%self173186%_))))
                                     (for-each
                                      (lambda (_%g173193173195%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver173191%_
                                         _%method-calls170865%_
                                         _%slot-refs170866%_
                                         _%g173193173195%_))
                                      _%L173172%_)))
                                 _%tl173146173169%_
                                 _%hd173145173167%_)))
                            (_%g173137173151%_ _%g173138173154%_))))
                    (_%g173137173151%_ _%g173138173154%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g173136173198%_
                                                 _%L173112%_))
                                              (let* ((_%g173201173220%_
                                                      (lambda (_%g173202173217%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g173202173217%_))))
                                                     (_%g173200173331%_
                                                      (lambda (_%g173202173223%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g173202173223%_))
                                                            (let ((_%e173204173225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g173202173223%_))))
                      (let ((_%hd173205173228%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173204173225%_)))
                            (_%tl173206173230%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173204173225%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl173206173230%_))
                            (let ((_g175043_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl173206173230%_
                                      '0))))
                              (begin
                                (let ((_g175044_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g175043_)
                                             (##vector-length _g175043_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g175044_ 2)))
                                      (error "Context expects 2 values"
                                             _g175044_)))
                                (let ((_%target173207173233%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g175043_ 0)))
                                      (_%tl173209173235%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g175043_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl173209173235%_))
                                      (letrec ((_%loop173210173238%_
                                                (lambda (_%hd173208173241%_
                                                         _%clause173214173243%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd173208173241%_))
                                                      (let ((_%e173211173246%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd173208173241%_))))
                (let ((_%lp-hd173212173249%_
                       (let () (declare (not safe)) (##car _%e173211173246%_)))
                      (_%lp-tl173213173251%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e173211173246%_))))
                  (_%loop173210173238%_
                   _%lp-tl173213173251%_
                   (cons _%lp-hd173212173249%_ _%clause173214173243%_))))
              (let ((_%clause173215173254%_ (reverse _%clause173214173243%_)))
                ((lambda (_%L173257%_)
                   (for-each
                    (lambda (_%clause173270%_)
                      (let* ((_%g173272173283%_
                              (lambda (_%g173273173280%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g173273173280%_))))
                             (_%g173271173321%_
                              (lambda (_%g173273173286%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g173273173286%_))
                                    (let ((_%e173276173288%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g173273173286%_))))
                                      (let ((_%hd173277173291%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173276173288%_)))
                                            (_%tl173278173293%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173276173288%_))))
                                        ((lambda (_%L173296%_ _%L173297%_)
                                           (let* ((_%self173309%_
                                                   (list-ref
                                                    _%L173297%_
                                                    _%self-index172875%_))
                                                  (_%receiver173314%_
                                                   (let ((_%$e173311%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L173296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e173311%_
                                                         _%$e173311%_
                                                         _%self173309%_))))
                                             (for-each
                                              (lambda (_%g173316173318%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver173314%_
                                                 _%method-calls170865%_
                                                 _%slot-refs170866%_
                                                 _%g173316173318%_))
                                              _%L173296%_)))
                                         _%tl173278173293%_
                                         _%hd173277173291%_)))
                                    (_%g173272173283%_ _%g173273173286%_)))))
                        (_%g173271173321%_ _%clause173270%_)))
                    (let ((__tmp175045
                           (lambda (_%g173323173326%_ _%g173324173328%_)
                             (cons _%g173323173326%_ _%g173324173328%_))))
                      (declare (not safe))
                      (__foldr1 __tmp175045 '() _%L173257%_))))
                 _%clause173215173254%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop173210173238%_
                                         _%target173207173233%_
                                         '()))
                                      (_%g173201173220%_ _%g173202173223%_)))))
                            (_%g173201173220%_ _%g173202173223%_))))
                    (_%g173201173220%_ _%g173202173223%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g173200173331%_
                                                 _%L173111%_))
                                              (if (_%no-specializer?170869%_)
                                                  _%stx170773%_
                                                  (let* ((_%specializer-id173340%_
                                                          (let* ((_%id173334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp175046
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L170846%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp175046 '"::specialize")))
                         (_%specializer-id173337%_
                          (let ((__tmp175047
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx170773%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id173334%_
                             __tmp175047))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id173337%_))
                    _%specializer-id173337%_))
                 (_%$klass173342%_
                  (let ((__tmp175048
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp175048)))
                 (_%$method-table173344%_
                  (let ((__tmp175049
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp175049)))
                 (_%methods173346%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls170865%_)))
                 (_%$methods173350%_
                  (map (lambda (_%id173348%_)
                         (let ((__tmp175050 (gensym _%id173348%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp175050)))
                       _%methods173346%_))
                 (_%_173359%_
                  (for-each
                   (lambda (_%g173351173354%_ _%g173352173356%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls170865%_
                        _%g173351173354%_
                        _%g173352173356%_)))
                   _%methods173346%_
                   _%$methods173350%_))
                 (_%methods-bind173369%_
                  (map (lambda (_%g173361173364%_ _%g173362173366%_)
                         (_%generate-method-bind170775%_
                          _%$klass173342%_
                          _%$method-table173344%_
                          _%g173361173364%_
                          _%g173362173366%_))
                       _%methods173346%_
                       _%$methods173350%_))
                 (_%slots173371%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs170866%_)))
                 (_%$slots173375%_
                  (map (lambda (_%id173373%_)
                         (let ((__tmp175051 (gensym _%id173373%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp175051)))
                       _%slots173371%_))
                 (_%_173384%_
                  (for-each
                   (lambda (_%g173376173379%_ _%g173377173381%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs170866%_
                        _%g173376173379%_
                        _%g173377173381%_)))
                   _%slots173371%_
                   _%$slots173375%_))
                 (_%slots-bind173393%_
                  (map (lambda (_%g173385173388%_ _%g173386173390%_)
                         (_%generate-slot-bind170776%_
                          _%$klass173342%_
                          _%g173385173388%_
                          _%g173386173390%_))
                       _%slots173371%_
                       _%$slots173375%_))
                 (_%specializer-lambda-expr173471%_
                  (let* ((_%g173395173409%_
                          (lambda (_%g173396173406%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g173396173406%_))))
                         (_%g173394173468%_
                          (lambda (_%g173396173412%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g173396173412%_))
                                (let ((_%e173399173414%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g173396173412%_))))
                                  (let ((_%hd173400173417%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173399173414%_)))
                                        (_%tl173401173419%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173399173414%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl173401173419%_))
                                        (let ((_%e173402173422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl173401173419%_))))
                                          (let ((_%hd173403173425%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e173402173422%_)))
                                                (_%tl173404173427%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e173402173422%_))))
                                            ((lambda (_%L173430%_ _%L173431%_)
                                               (let* ((_%self173454%_
                                                       (list-ref
                                                        _%L173431%_
                                                        _%self-index172875%_))
                                                      (_%receiver173459%_
                                                       (let ((_%$e173456%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L173430%_))))
                 (if _%$e173456%_ _%$e173456%_ _%self173454%_)))
              (_%body173465%_
               (map (lambda (_%g173460173462%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver173459%_
                       _%$klass173342%_
                       _%method-calls170865%_
                       _%slot-refs170866%_
                       _%g173460173462%_))
                    _%L173430%_))
              (__tmp175052 (cons '%#lambda (cons _%L173431%_ _%body173465%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp175052
                                                  _%L173112%_)))
                                             _%tl173404173427%_
                                             _%hd173403173425%_)))
                                        (_%g173395173409%_
                                         _%g173396173412%_))))
                                (_%g173395173409%_ _%g173396173412%_)))))
                    (_%g173394173468%_ _%L173112%_)))
                 (_%specializer-case-lambda-expr173611%_
                  (let* ((_%g173473173492%_
                          (lambda (_%g173474173489%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g173474173489%_))))
                         (_%g173472173608%_
                          (lambda (_%g173474173495%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g173474173495%_))
                                (let ((_%e173476173497%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g173474173495%_))))
                                  (let ((_%hd173477173500%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173476173497%_)))
                                        (_%tl173478173502%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173476173497%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl173478173502%_))
                                        (let ((_g175053_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl173478173502%_
                                                  '0))))
                                          (begin
                                            (let ((_g175054_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g175053_)
                                                         (##vector-length
                                                          _g175053_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g175054_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g175054_)))
                                            (let ((_%target173479173505%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g175053_
                                                      0)))
                                                  (_%tl173481173507%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g175053_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl173481173507%_))
                                                  (letrec ((_%loop173482173510%_
                                                            (lambda (_%hd173480173513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause173486173515%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd173480173513%_))
                          (let ((_%e173483173518%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd173480173513%_))))
                            (let ((_%lp-hd173484173521%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173483173518%_)))
                                  (_%lp-tl173485173523%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173483173518%_))))
                              (_%loop173482173510%_
                               _%lp-tl173485173523%_
                               (cons _%lp-hd173484173521%_
                                     _%clause173486173515%_))))
                          (let ((_%clause173487173526%_
                                 (reverse _%clause173486173515%_)))
                            ((lambda (_%L173529%_)
                               (let* ((_%clauses173606%_
                                       (map (lambda (_%clause173543%_)
                                              (let* ((_%g173545173556%_
                                                      (lambda (_%g173546173553%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g173546173553%_))))
                                                     (_%g173544173596%_
                                                      (lambda (_%g173546173559%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g173546173559%_))
                                                            (let ((_%e173549173561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g173546173559%_))))
                      (let ((_%hd173550173564%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173549173561%_)))
                            (_%tl173551173566%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173549173561%_))))
                        ((lambda (_%L173569%_ _%L173570%_)
                           (let* ((_%self173582%_
                                   (list-ref _%L173570%_ _%self-index172875%_))
                                  (_%receiver173587%_
                                   (let ((_%$e173584%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L173569%_))))
                                     (if _%$e173584%_
                                         _%$e173584%_
                                         _%self173582%_)))
                                  (_%body173593%_
                                   (map (lambda (_%g173588173590%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver173587%_
                                           _%$klass173342%_
                                           _%method-calls170865%_
                                           _%slot-refs170866%_
                                           _%g173588173590%_))
                                        _%L173569%_)))
                             (cons _%L173570%_ _%body173593%_)))
                         _%tl173551173566%_
                         _%hd173550173564%_)))
                    (_%g173545173556%_ _%g173546173559%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g173544173596%_
                                                 _%clause173543%_)))
                                            (let ((__tmp175055
                                                   (lambda (_%g173598173601%_
                                                            _%g173599173603%_)
                                                     (cons _%g173598173601%_
                                                           _%g173599173603%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp175055
                                               '()
                                               _%L173529%_))))
                                      (__tmp175056
                                       (cons '%#case-lambda
                                             _%clauses173606%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp175056
                                  _%L173111%_)))
                             _%clause173487173526%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop173482173510%_
                                                     _%target173479173505%_
                                                     '()))
                                                  (_%g173473173492%_
                                                   _%g173474173495%_)))))
                                        (_%g173473173492%_
                                         _%g173474173495%_))))
                                (_%g173473173492%_ _%g173474173495%_)))))
                    (_%g173472173608%_ _%L173111%_)))
                 (_%specializer-impl173613%_
                  (let ((__tmp175057
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L172575%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L172574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp175058
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L173113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr173471%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr173611%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp175058
                                                _%stx170773%_))
                                             '()))
                                 '())
                           (cons _%L172572%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L172571%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp175057 _%stx170773%_)))
                 (_%specializer-impl173615%_
                  (_%generate-specializer-impl170777%_
                   _%$klass173342%_
                   _%$method-table173344%_
                   _%methods-bind173369%_
                   _%slots-bind173393%_
                   _%specializer-impl173613%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp175060
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L170846%_)))
                                                          (__tmp175059
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id173340%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp175060
                                                       '" => "
                                                       __tmp175059))
                                                    (_%generate-specializer-def170778%_
                                                     _%L170846%_
                                                     _%specializer-id173340%_
                                                     _%specializer-impl173615%_))))
                                            _%hd173044173106%_
                                            _%hd173041173098%_
                                            _%hd173038173090%_)
                                           (_%g173020173050%_
                                            _%g173021173053%_))))
                                   (_%g173020173050%_ _%g173021173053%_))
                               (_%g173020173050%_ _%g173021173053%_))
                           (_%g173020173050%_ _%g173021173053%_))))
                   (_%g173020173050%_ _%g173021173053%_))
               (_%g173020173050%_ _%g173021173053%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173020173050%_
                                                _%g173021173053%_))))
                                       (_%g173020173050%_ _%g173021173053%_))))
                               (_%g173020173050%_ _%g173021173053%_))))
                       (_%g173020173050%_ _%g173021173053%_))))
               (_%g173020173050%_ _%g173021173053%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g173019173618%_ _%L172573%_))
                                         _%stx170773%_))))
                             _%hd172671172794%_
                             _%kw-ref172669172815%_
                             _%hd172659172781%_
                             _%hd172650172757%_
                             _%hd172641172733%_)
                            (_%g172615172677%_ _%g172616172680%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop172664172799%_
                                                 _%target172661172786%_
                                                 '()))
                                              (_%g172615172677%_
                                               _%g172616172680%_))))
                                      (_%g172615172677%_ _%g172616172680%_)))))
                            (_%g172615172677%_ _%g172616172680%_))
                        (_%g172615172677%_ _%g172616172680%_))
                    (_%g172615172677%_ _%g172616172680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g172615172677%_
                                                     _%g172616172680%_))
                                                (_%g172615172677%_
                                                 _%g172616172680%_))
                                            (_%g172615172677%_
                                             _%g172616172680%_))))
                                    (_%g172615172677%_ _%g172616172680%_))))
                            (_%g172615172677%_ _%g172616172680%_))
                        (_%g172615172677%_ _%g172616172680%_))))
                (_%g172615172677%_ _%g172616172680%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g172615172677%_
                                                     _%g172616172680%_))
                                                (_%g172615172677%_
                                                 _%g172616172680%_))))
                                        (_%g172615172677%_
                                         _%g172616172680%_))))
                                (_%g172615172677%_ _%g172616172680%_))
                            (_%g172615172677%_ _%g172616172680%_))))
                    (_%g172615172677%_ _%g172616172680%_))
                (_%g172615172677%_ _%g172616172680%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g172615172677%_
                                                     _%g172616172680%_))))
                                            (_%g172615172677%_
                                             _%g172616172680%_))))
                                    (_%g172615172677%_ _%g172616172680%_))
                                (_%g172615172677%_ _%g172616172680%_))
                            (_%g172615172677%_ _%g172616172680%_))))
                    (_%g172615172677%_ _%g172616172680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g172615172677%_
                                                     _%g172616172680%_))))
                                            (_%g172615172677%_
                                             _%g172616172680%_))
                                        (_%g172615172677%_ _%g172616172680%_))
                                    (_%g172615172677%_ _%g172616172680%_))))
                            (_%g172615172677%_ _%g172616172680%_)))))
                (_%g172614173622%_ _%L172572%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd172448172566%_
                                                    _%hd172445172558%_
                                                    _%hd172442172550%_
                                                    _%hd172439172542%_
                                                    _%hd172421172494%_)
                                                   (_%g172401172454%_
                                                    _%g172402172457%_))))
                                           (_%g172401172454%_
                                            _%g172402172457%_))
                                       (_%g172401172454%_ _%g172402172457%_))
                                   (_%g172401172454%_ _%g172402172457%_))
                               (_%g172401172454%_ _%g172402172457%_))))
                       (_%g172401172454%_ _%g172402172457%_))
                   (_%g172401172454%_ _%g172402172457%_))
               (_%g172401172454%_ _%g172402172457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g172401172454%_
                                                _%g172402172457%_))
                                           (_%g172401172454%_
                                            _%g172402172457%_))))
                                   (_%g172401172454%_ _%g172402172457%_))))
                           (_%g172401172454%_ _%g172402172457%_))))
                   (_%g172401172454%_ _%g172402172457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g172401172454%_
                                                    _%g172402172457%_))
                                               (_%g172401172454%_
                                                _%g172402172457%_))
                                           (_%g172401172454%_
                                            _%g172402172457%_))))
                                   (_%g172401172454%_ _%g172402172457%_))))
                           (_%g172401172454%_ _%g172402172457%_))
                       (_%g172401172454%_ _%g172402172457%_))))
               (_%g172401172454%_ _%g172402172457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g172401172454%_
                                                _%g172402172457%_))))
                                       (_%g172401172454%_ _%g172402172457%_))))
                               (_%g172401172454%_ _%g172402172457%_))
                           (_%g172401172454%_ _%g172402172457%_))
                       (_%g172401172454%_ _%g172402172457%_))))
               (_%g172401172454%_ _%g172402172457%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g172400173625%_ _%L170845%_))
                                         _%stx170773%_))))))))
                  (_%__kont173859173860%_ (lambda () _%stx170773%_)))
              (let ((_%__match173888173889%_
                     (lambda (_%e170785170813%_
                              _%hd170786170816%_
                              _%tl170787170818%_
                              _%e170788170821%_
                              _%hd170789170824%_
                              _%tl170790170826%_
                              _%e170791170829%_
                              _%hd170792170832%_
                              _%tl170793170834%_
                              _%e170794170837%_
                              _%hd170795170840%_
                              _%tl170796170842%_)
                       (let ((_%L170845%_ _%hd170795170840%_)
                             (_%L170846%_ _%hd170792170832%_))
                         (if (let ((__tmp175061
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L170846%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp175061))
                             (_%__kont173857173858%_ _%L170845%_ _%L170846%_)
                             (_%__kont173859173860%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx173855173856%_))
                    (let ((_%e170785170813%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx173855173856%_))))
                      (let ((_%tl170787170818%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170785170813%_)))
                            (_%hd170786170816%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170785170813%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170787170818%_))
                            (let ((_%e170788170821%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170787170818%_))))
                              (let ((_%tl170790170826%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170788170821%_)))
                                    (_%hd170789170824%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170788170821%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd170789170824%_))
                                    (let ((_%e170791170829%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd170789170824%_))))
                                      (let ((_%tl170793170834%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170791170829%_)))
                                            (_%hd170792170832%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170791170829%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl170793170834%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl170790170826%_))
                                                (let ((_%e170794170837%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl170790170826%_))))
                                                  (let ((_%tl170796170842%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e170794170837%_)))
                                                        (_%hd170795170840%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e170794170837%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl170796170842%_))
                                                        (_%__match173888173889%_
                                                         _%e170785170813%_
                                                         _%hd170786170816%_
                                                         _%tl170787170818%_
                                                         _%e170788170821%_
                                                         _%hd170789170824%_
                                                         _%tl170790170826%_
                                                         _%e170791170829%_
                                                         _%hd170792170832%_
                                                         _%tl170793170834%_
                                                         _%e170794170837%_
                                                         _%hd170795170840%_
                                                         _%tl170796170842%_)
                                                        (_%__kont173859173860%_))))
                                                (_%__kont173859173860%_))
                                            (_%__kont173859173860%_))))
                                    (_%__kont173859173860%_))))
                            (_%__kont173859173860%_))))
                    (_%__kont173859173860%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self170625%_ _%stx170626%_)
        (let* ((_%__stx173891173892%_ _%stx170626%_)
               (_%g170629170662%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx173891173892%_)))))
          (let ((_%__kont173893173894%_ (lambda (_%L170752%_) _%L170752%_))
                (_%__kont173895173896%_
                 (lambda (_%L170691%_ _%L170692%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self170625%_ _%L170691%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx173891173892%_))
                (let ((_%e170632170712%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx173891173892%_))))
                  (let ((_%tl170634170717%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e170632170712%_)))
                        (_%hd170633170715%_
                         (let ()
                           (declare (not safe))
                           (##car _%e170632170712%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl170634170717%_))
                        (let ((_%e170635170720%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl170634170717%_))))
                          (let ((_%tl170637170725%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170635170720%_)))
                                (_%hd170636170723%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170635170720%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd170636170723%_))
                                (let ((_%e170638170728%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd170636170723%_))))
                                  (let ((_%tl170640170733%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170638170728%_)))
                                        (_%hd170639170731%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170638170728%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd170639170731%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd170639170731%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl170640170733%_))
                                                (let ((_%e170641170736%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl170640170733%_))))
                                                  (let ((_%tl170643170741%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e170641170736%_)))
                                                        (_%hd170642170739%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e170641170736%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl170643170741%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl170637170725%_))
                                                            (let ((_%e170644170744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl170637170725%_))))
                      (let ((_%tl170646170749%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170644170744%_)))
                            (_%hd170645170747%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170644170744%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170646170749%_))
                            (_%__kont173893173894%_ _%hd170642170739%_)
                            (let ()
                              (declare (not safe))
                              (_%g170629170662%_)))))
                    (let () (declare (not safe)) (_%g170629170662%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl170637170725%_))
                    (let ((_%e170655170683%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl170637170725%_))))
                      (let ((_%tl170657170688%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170655170683%_)))
                            (_%hd170656170686%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170655170683%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170657170688%_))
                            (_%__kont173895173896%_
                             _%hd170656170686%_
                             _%hd170636170723%_)
                            (let ()
                              (declare (not safe))
                              (_%g170629170662%_)))))
                    (let () (declare (not safe)) (_%g170629170662%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl170637170725%_))
                                                    (let ((_%e170655170683%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl170637170725%_))))
                                                      (let ((_%tl170657170688%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e170655170683%_)))
                    (_%hd170656170686%_
                     (let () (declare (not safe)) (##car _%e170655170683%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl170657170688%_))
                    (_%__kont173895173896%_
                     _%hd170656170686%_
                     _%hd170636170723%_)
                    (let () (declare (not safe)) (_%g170629170662%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g170629170662%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl170637170725%_))
                                                (let ((_%e170655170683%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl170637170725%_))))
                                                  (let ((_%tl170657170688%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e170655170683%_)))
                                                        (_%hd170656170686%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e170655170683%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl170657170688%_))
                                                        (_%__kont173895173896%_
                                                         _%hd170656170686%_
                                                         _%hd170636170723%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g170629170662%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g170629170662%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170637170725%_))
                                            (let ((_%e170655170683%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170637170725%_))))
                                              (let ((_%tl170657170688%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170655170683%_)))
                                                    (_%hd170656170686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170655170683%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl170657170688%_))
                                                    (_%__kont173895173896%_
                                                     _%hd170656170686%_
                                                     _%hd170636170723%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g170629170662%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g170629170662%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl170637170725%_))
                                    (let ((_%e170655170683%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl170637170725%_))))
                                      (let ((_%tl170657170688%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170655170683%_)))
                                            (_%hd170656170686%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170655170683%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl170657170688%_))
                                            (_%__kont173895173896%_
                                             _%hd170656170686%_
                                             _%hd170636170723%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g170629170662%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g170629170662%_))))))
                        (let () (declare (not safe)) (_%g170629170662%_)))))
                (let () (declare (not safe)) (_%g170629170662%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self170541%_ _%stx170542%_)
        (let* ((_%g170544170565%_
                (lambda (_%g170545170562%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170545170562%_))))
               (_%g170543170622%_
                (lambda (_%g170545170568%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170545170568%_))
                      (let ((_%e170549170570%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170545170568%_))))
                        (let ((_%hd170550170573%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170549170570%_)))
                              (_%tl170551170575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170549170570%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170551170575%_))
                              (let ((_%e170552170578%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170551170575%_))))
                                (let ((_%hd170553170581%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170552170578%_)))
                                      (_%tl170554170583%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170552170578%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170554170583%_))
                                      (let ((_%e170555170586%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170554170583%_))))
                                        (let ((_%hd170556170589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170555170586%_)))
                                              (_%tl170557170591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170555170586%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl170557170591%_))
                                              (let ((_%e170558170594%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl170557170591%_))))
                                                (let ((_%hd170559170597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170558170594%_)))
                                                      (_%tl170560170599%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170558170594%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl170560170599%_))
                                                      ((lambda (_%L170602%_
                                                                _%L170603%_
                                                                _%L170604%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self170541%_
                                                            _%L170603%_)))
                                                       _%hd170559170597%_
                                                       _%hd170556170589%_
                                                       _%hd170553170581%_)
                                                      (_%g170544170565%_
                                                       _%g170545170568%_))))
                                              (_%g170544170565%_
                                               _%g170545170568%_))))
                                      (_%g170544170565%_ _%g170545170568%_))))
                              (_%g170544170565%_ _%g170545170568%_))))
                      (_%g170544170565%_ _%g170545170568%_)))))
          (_%g170543170622%_ _%stx170542%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self169502%_ _%stx169503%_)
        (let* ((_%__stx173957173958%_ _%stx169503%_)
               (_%g169511169733%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx173957173958%_)))))
          (let ((_%__kont173959173960%_
                 (lambda (_%L170490%_ _%L170491%_ _%L170492%_ _%L170493%_)
                   (let ((__tmp175063
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self169502%_ 'methods)))
                         (__tmp175062
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L170491%_))))
                     (declare (not safe))
                     (hash-put! __tmp175063 __tmp175062 '#t))
                   (for-each
                    (lambda (_%g170526170528%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self169502%_ _%g170526170528%_)))
                    (let ((__tmp175064
                           (lambda (_%g170530170533%_ _%g170531170535%_)
                             (cons _%g170530170533%_ _%g170531170535%_))))
                      (declare (not safe))
                      (__foldr1 __tmp175064 '() _%L170490%_)))))
                (_%__kont173963173964%_
                 (lambda (_%L170325%_
                          _%L170326%_
                          _%L170327%_
                          _%L170328%_
                          _%L170329%_)
                   (let ((__tmp175066
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self169502%_ 'methods)))
                         (__tmp175065
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L170326%_))))
                     (declare (not safe))
                     (hash-put! __tmp175066 __tmp175065 '#t))
                   (for-each
                    (lambda (_%g170369170371%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self169502%_ _%g170369170371%_)))
                    (let ((__tmp175067
                           (lambda (_%g170373170376%_ _%g170374170378%_)
                             (cons _%g170373170376%_ _%g170374170378%_))))
                      (declare (not safe))
                      (__foldr1 __tmp175067 '() _%L170325%_)))))
                (_%__kont173967173968%_
                 (lambda (_%L170158%_ _%L170159%_ _%L170160%_)
                   (let ((__tmp175069
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self169502%_ 'slots)))
                         (__tmp175068
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L170158%_))))
                     (declare (not safe))
                     (hash-put! __tmp175069 __tmp175068 '#t))))
                (_%__kont173969173970%_
                 (lambda (_%L170035%_ _%L170036%_ _%L170037%_ _%L170038%_)
                   (let ((__tmp175071
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self169502%_ 'slots)))
                         (__tmp175070
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L170036%_))))
                     (declare (not safe))
                     (hash-put! __tmp175071 __tmp175070 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self169502%_ _%L170035%_))))
                (_%__kont173971173972%_
                 (lambda (_%L169909%_ _%L169910%_)
                   (let* ((_%accessor169932%_
                           (let ((__tmp175072
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L169910%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp175072)))
                          (_%klass169934%_
                           (let ((__tmp175073
                                  (##structure-ref
                                   _%accessor169932%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx169503%_
                              __tmp175073)))
                          (_%slot169936%_
                           (##structure-ref
                            _%accessor169932%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor169932%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass169934%_
                                    _%slot169936%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass169934%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp175075
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self169502%_ 'slots)))
                               (__tmp175074
                                (##structure-ref
                                 _%accessor169932%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp175075 __tmp175074 '#t))))))
                (_%__kont173973173974%_
                 (lambda (_%L169809%_ _%L169810%_ _%L169811%_)
                   (let* ((_%mutator169838%_
                           (let ((__tmp175076
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L169811%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp175076)))
                          (_%klass169840%_
                           (let ((__tmp175077
                                  (##structure-ref
                                   _%mutator169838%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx169503%_
                              __tmp175077)))
                          (_%slot169842%_
                           (##structure-ref
                            _%mutator169838%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator169838%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass169840%_
                                    _%slot169842%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass169840%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp175078
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self169502%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp175078 _%slot169842%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self169502%_ _%L169809%_)))))
                (_%__kont173975173976%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self169502%_ _%stx169503%_)))))
            (let* ((_%__match174456174457%_
                    (lambda (_%e169705169745%_
                             _%hd169706169748%_
                             _%tl169707169750%_
                             _%e169708169753%_
                             _%hd169709169756%_
                             _%tl169710169758%_
                             _%e169711169761%_
                             _%hd169712169764%_
                             _%tl169713169766%_
                             _%e169714169769%_
                             _%hd169715169772%_
                             _%tl169716169774%_
                             _%e169717169777%_
                             _%hd169718169780%_
                             _%tl169719169782%_
                             _%e169720169785%_
                             _%hd169721169788%_
                             _%tl169722169790%_
                             _%e169723169793%_
                             _%hd169724169796%_
                             _%tl169725169798%_
                             _%e169726169801%_
                             _%hd169727169804%_
                             _%tl169728169806%_)
                      (let ((_%L169809%_ _%hd169727169804%_)
                            (_%L169810%_ _%hd169724169796%_)
                            (_%L169811%_ _%hd169715169772%_))
                        (if (and (let ((__tmp175079
                                        (let ((__tmp175080
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L169811%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp175080))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp175079
                                    'gxc#!mutator::t))
                                 (let ((__tmp175081
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self169502%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L169810%_
                                    __tmp175081)))
                            (_%__kont173973173974%_
                             _%L169809%_
                             _%L169810%_
                             _%L169811%_)
                            (_%__kont173975173976%_)))))
                   (_%__match174454174455%_
                    (lambda (_%e169705169745%_
                             _%hd169706169748%_
                             _%tl169707169750%_
                             _%e169708169753%_
                             _%hd169709169756%_
                             _%tl169710169758%_
                             _%e169711169761%_
                             _%hd169712169764%_
                             _%tl169713169766%_
                             _%e169714169769%_
                             _%hd169715169772%_
                             _%tl169716169774%_
                             _%e169717169777%_
                             _%hd169718169780%_
                             _%tl169719169782%_
                             _%e169720169785%_
                             _%hd169721169788%_
                             _%tl169722169790%_
                             _%e169723169793%_
                             _%hd169724169796%_
                             _%tl169725169798%_
                             _%e169726169801%_
                             _%hd169727169804%_
                             _%tl169728169806%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169728169806%_))
                          (_%__match174456174457%_
                           _%e169705169745%_
                           _%hd169706169748%_
                           _%tl169707169750%_
                           _%e169708169753%_
                           _%hd169709169756%_
                           _%tl169710169758%_
                           _%e169711169761%_
                           _%hd169712169764%_
                           _%tl169713169766%_
                           _%e169714169769%_
                           _%hd169715169772%_
                           _%tl169716169774%_
                           _%e169717169777%_
                           _%hd169718169780%_
                           _%tl169719169782%_
                           _%e169720169785%_
                           _%hd169721169788%_
                           _%tl169722169790%_
                           _%e169723169793%_
                           _%hd169724169796%_
                           _%tl169725169798%_
                           _%e169726169801%_
                           _%hd169727169804%_
                           _%tl169728169806%_)
                          (_%__kont173975173976%_))))
                   (_%__match174448174449%_
                    (lambda (_%e169705169745%_
                             _%hd169706169748%_
                             _%tl169707169750%_
                             _%e169708169753%_
                             _%hd169709169756%_
                             _%tl169710169758%_
                             _%e169711169761%_
                             _%hd169712169764%_
                             _%tl169713169766%_
                             _%e169714169769%_
                             _%hd169715169772%_
                             _%tl169716169774%_
                             _%e169717169777%_
                             _%hd169718169780%_
                             _%tl169719169782%_
                             _%e169720169785%_
                             _%hd169721169788%_
                             _%tl169722169790%_
                             _%e169723169793%_
                             _%hd169724169796%_
                             _%tl169725169798%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169719169782%_))
                          (let ((_%e169726169801%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169719169782%_))))
                            (let ((_%tl169728169806%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169726169801%_)))
                                  (_%hd169727169804%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169726169801%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl169728169806%_))
                                  (_%__match174456174457%_
                                   _%e169705169745%_
                                   _%hd169706169748%_
                                   _%tl169707169750%_
                                   _%e169708169753%_
                                   _%hd169709169756%_
                                   _%tl169710169758%_
                                   _%e169711169761%_
                                   _%hd169712169764%_
                                   _%tl169713169766%_
                                   _%e169714169769%_
                                   _%hd169715169772%_
                                   _%tl169716169774%_
                                   _%e169717169777%_
                                   _%hd169718169780%_
                                   _%tl169719169782%_
                                   _%e169720169785%_
                                   _%hd169721169788%_
                                   _%tl169722169790%_
                                   _%e169723169793%_
                                   _%hd169724169796%_
                                   _%tl169725169798%_
                                   _%e169726169801%_
                                   _%hd169727169804%_
                                   _%tl169728169806%_)
                                  (_%__kont173975173976%_))))
                          (_%__kont173975173976%_))))
                   (_%__match174394174395%_
                    (lambda (_%e169681169853%_
                             _%hd169682169856%_
                             _%tl169683169858%_
                             _%e169684169861%_
                             _%hd169685169864%_
                             _%tl169686169866%_
                             _%e169687169869%_
                             _%hd169688169872%_
                             _%tl169689169874%_
                             _%e169690169877%_
                             _%hd169691169880%_
                             _%tl169692169882%_
                             _%e169693169885%_
                             _%hd169694169888%_
                             _%tl169695169890%_
                             _%e169696169893%_
                             _%hd169697169896%_
                             _%tl169698169898%_
                             _%e169699169901%_
                             _%hd169700169904%_
                             _%tl169701169906%_)
                      (let ((_%L169909%_ _%hd169700169904%_)
                            (_%L169910%_ _%hd169691169880%_))
                        (if (and (let ((__tmp175082
                                        (let ((__tmp175083
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L169910%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp175083))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp175082
                                    'gxc#!accessor::t))
                                 (let ((__tmp175084
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self169502%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L169909%_
                                    __tmp175084)))
                            (_%__kont173971173972%_ _%L169909%_ _%L169910%_)
                            (_%__kont173975173976%_)))))
                   (_%__match174392174393%_
                    (lambda (_%e169681169853%_
                             _%hd169682169856%_
                             _%tl169683169858%_
                             _%e169684169861%_
                             _%hd169685169864%_
                             _%tl169686169866%_
                             _%e169687169869%_
                             _%hd169688169872%_
                             _%tl169689169874%_
                             _%e169690169877%_
                             _%hd169691169880%_
                             _%tl169692169882%_
                             _%e169693169885%_
                             _%hd169694169888%_
                             _%tl169695169890%_
                             _%e169696169893%_
                             _%hd169697169896%_
                             _%tl169698169898%_
                             _%e169699169901%_
                             _%hd169700169904%_
                             _%tl169701169906%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169695169890%_))
                          (_%__match174394174395%_
                           _%e169681169853%_
                           _%hd169682169856%_
                           _%tl169683169858%_
                           _%e169684169861%_
                           _%hd169685169864%_
                           _%tl169686169866%_
                           _%e169687169869%_
                           _%hd169688169872%_
                           _%tl169689169874%_
                           _%e169690169877%_
                           _%hd169691169880%_
                           _%tl169692169882%_
                           _%e169693169885%_
                           _%hd169694169888%_
                           _%tl169695169890%_
                           _%e169696169893%_
                           _%hd169697169896%_
                           _%tl169698169898%_
                           _%e169699169901%_
                           _%hd169700169904%_
                           _%tl169701169906%_)
                          (_%__match174448174449%_
                           _%e169681169853%_
                           _%hd169682169856%_
                           _%tl169683169858%_
                           _%e169684169861%_
                           _%hd169685169864%_
                           _%tl169686169866%_
                           _%e169687169869%_
                           _%hd169688169872%_
                           _%tl169689169874%_
                           _%e169690169877%_
                           _%hd169691169880%_
                           _%tl169692169882%_
                           _%e169693169885%_
                           _%hd169694169888%_
                           _%tl169695169890%_
                           _%e169696169893%_
                           _%hd169697169896%_
                           _%tl169698169898%_
                           _%e169699169901%_
                           _%hd169700169904%_
                           _%tl169701169906%_))))
                   (_%__match174338174339%_
                    (lambda (_%e169646169947%_
                             _%hd169647169950%_
                             _%tl169648169952%_
                             _%e169649169955%_
                             _%hd169650169958%_
                             _%tl169651169960%_
                             _%e169652169963%_
                             _%hd169653169966%_
                             _%tl169654169968%_
                             _%e169655169971%_
                             _%hd169656169974%_
                             _%tl169657169976%_
                             _%e169658169979%_
                             _%hd169659169982%_
                             _%tl169660169984%_
                             _%e169661169987%_
                             _%hd169662169990%_
                             _%tl169663169992%_
                             _%e169664169995%_
                             _%hd169665169998%_
                             _%tl169666170000%_
                             _%e169667170003%_
                             _%hd169668170006%_
                             _%tl169669170008%_
                             _%e169670170011%_
                             _%hd169671170014%_
                             _%tl169672170016%_
                             _%e169673170019%_
                             _%hd169674170022%_
                             _%tl169675170024%_
                             _%e169676170027%_
                             _%hd169677170030%_
                             _%tl169678170032%_)
                      (let ((_%L170035%_ _%hd169677170030%_)
                            (_%L170036%_ _%hd169674170022%_)
                            (_%L170037%_ _%hd169665169998%_)
                            (_%L170038%_ _%hd169656169974%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L170038%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L170038%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp175085
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self169502%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L170037%_
                                    __tmp175085)))
                            (_%__kont173969173970%_
                             _%L170035%_
                             _%L170036%_
                             _%L170037%_
                             _%L170038%_)
                            (_%__kont173975173976%_)))))
                   (_%__match174330174331%_
                    (lambda (_%e169646169947%_
                             _%hd169647169950%_
                             _%tl169648169952%_
                             _%e169649169955%_
                             _%hd169650169958%_
                             _%tl169651169960%_
                             _%e169652169963%_
                             _%hd169653169966%_
                             _%tl169654169968%_
                             _%e169655169971%_
                             _%hd169656169974%_
                             _%tl169657169976%_
                             _%e169658169979%_
                             _%hd169659169982%_
                             _%tl169660169984%_
                             _%e169661169987%_
                             _%hd169662169990%_
                             _%tl169663169992%_
                             _%e169664169995%_
                             _%hd169665169998%_
                             _%tl169666170000%_
                             _%e169667170003%_
                             _%hd169668170006%_
                             _%tl169669170008%_
                             _%e169670170011%_
                             _%hd169671170014%_
                             _%tl169672170016%_
                             _%e169673170019%_
                             _%hd169674170022%_
                             _%tl169675170024%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169669170008%_))
                          (let ((_%e169676170027%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169669170008%_))))
                            (let ((_%tl169678170032%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169676170027%_)))
                                  (_%hd169677170030%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169676170027%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl169678170032%_))
                                  (_%__match174338174339%_
                                   _%e169646169947%_
                                   _%hd169647169950%_
                                   _%tl169648169952%_
                                   _%e169649169955%_
                                   _%hd169650169958%_
                                   _%tl169651169960%_
                                   _%e169652169963%_
                                   _%hd169653169966%_
                                   _%tl169654169968%_
                                   _%e169655169971%_
                                   _%hd169656169974%_
                                   _%tl169657169976%_
                                   _%e169658169979%_
                                   _%hd169659169982%_
                                   _%tl169660169984%_
                                   _%e169661169987%_
                                   _%hd169662169990%_
                                   _%tl169663169992%_
                                   _%e169664169995%_
                                   _%hd169665169998%_
                                   _%tl169666170000%_
                                   _%e169667170003%_
                                   _%hd169668170006%_
                                   _%tl169669170008%_
                                   _%e169670170011%_
                                   _%hd169671170014%_
                                   _%tl169672170016%_
                                   _%e169673170019%_
                                   _%hd169674170022%_
                                   _%tl169675170024%_
                                   _%e169676170027%_
                                   _%hd169677170030%_
                                   _%tl169678170032%_)
                                  (_%__kont173975173976%_))))
                          (_%__match174454174455%_
                           _%e169646169947%_
                           _%hd169647169950%_
                           _%tl169648169952%_
                           _%e169649169955%_
                           _%hd169650169958%_
                           _%tl169651169960%_
                           _%e169652169963%_
                           _%hd169653169966%_
                           _%tl169654169968%_
                           _%e169655169971%_
                           _%hd169656169974%_
                           _%tl169657169976%_
                           _%e169658169979%_
                           _%hd169659169982%_
                           _%tl169660169984%_
                           _%e169661169987%_
                           _%hd169662169990%_
                           _%tl169663169992%_
                           _%e169664169995%_
                           _%hd169665169998%_
                           _%tl169666170000%_
                           _%e169667170003%_
                           _%hd169668170006%_
                           _%tl169669170008%_))))
                   (_%__match174252174253%_
                    (lambda (_%e169612170078%_
                             _%hd169613170081%_
                             _%tl169614170083%_
                             _%e169615170086%_
                             _%hd169616170089%_
                             _%tl169617170091%_
                             _%e169618170094%_
                             _%hd169619170097%_
                             _%tl169620170099%_
                             _%e169621170102%_
                             _%hd169622170105%_
                             _%tl169623170107%_
                             _%e169624170110%_
                             _%hd169625170113%_
                             _%tl169626170115%_
                             _%e169627170118%_
                             _%hd169628170121%_
                             _%tl169629170123%_
                             _%e169630170126%_
                             _%hd169631170129%_
                             _%tl169632170131%_
                             _%e169633170134%_
                             _%hd169634170137%_
                             _%tl169635170139%_
                             _%e169636170142%_
                             _%hd169637170145%_
                             _%tl169638170147%_
                             _%e169639170150%_
                             _%hd169640170153%_
                             _%tl169641170155%_)
                      (let ((_%L170158%_ _%hd169640170153%_)
                            (_%L170159%_ _%hd169631170129%_)
                            (_%L170160%_ _%hd169622170105%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L170160%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L170160%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp175086
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self169502%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L170159%_
                                    __tmp175086)))
                            (_%__kont173967173968%_
                             _%L170158%_
                             _%L170159%_
                             _%L170160%_)
                            (_%__match174456174457%_
                             _%e169612170078%_
                             _%hd169613170081%_
                             _%tl169614170083%_
                             _%e169615170086%_
                             _%hd169616170089%_
                             _%tl169617170091%_
                             _%e169618170094%_
                             _%hd169619170097%_
                             _%tl169620170099%_
                             _%e169621170102%_
                             _%hd169622170105%_
                             _%tl169623170107%_
                             _%e169624170110%_
                             _%hd169625170113%_
                             _%tl169626170115%_
                             _%e169627170118%_
                             _%hd169628170121%_
                             _%tl169629170123%_
                             _%e169630170126%_
                             _%hd169631170129%_
                             _%tl169632170131%_
                             _%e169633170134%_
                             _%hd169634170137%_
                             _%tl169635170139%_)))))
                   (_%__match174250174251%_
                    (lambda (_%e169612170078%_
                             _%hd169613170081%_
                             _%tl169614170083%_
                             _%e169615170086%_
                             _%hd169616170089%_
                             _%tl169617170091%_
                             _%e169618170094%_
                             _%hd169619170097%_
                             _%tl169620170099%_
                             _%e169621170102%_
                             _%hd169622170105%_
                             _%tl169623170107%_
                             _%e169624170110%_
                             _%hd169625170113%_
                             _%tl169626170115%_
                             _%e169627170118%_
                             _%hd169628170121%_
                             _%tl169629170123%_
                             _%e169630170126%_
                             _%hd169631170129%_
                             _%tl169632170131%_
                             _%e169633170134%_
                             _%hd169634170137%_
                             _%tl169635170139%_
                             _%e169636170142%_
                             _%hd169637170145%_
                             _%tl169638170147%_
                             _%e169639170150%_
                             _%hd169640170153%_
                             _%tl169641170155%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169635170139%_))
                          (_%__match174252174253%_
                           _%e169612170078%_
                           _%hd169613170081%_
                           _%tl169614170083%_
                           _%e169615170086%_
                           _%hd169616170089%_
                           _%tl169617170091%_
                           _%e169618170094%_
                           _%hd169619170097%_
                           _%tl169620170099%_
                           _%e169621170102%_
                           _%hd169622170105%_
                           _%tl169623170107%_
                           _%e169624170110%_
                           _%hd169625170113%_
                           _%tl169626170115%_
                           _%e169627170118%_
                           _%hd169628170121%_
                           _%tl169629170123%_
                           _%e169630170126%_
                           _%hd169631170129%_
                           _%tl169632170131%_
                           _%e169633170134%_
                           _%hd169634170137%_
                           _%tl169635170139%_
                           _%e169636170142%_
                           _%hd169637170145%_
                           _%tl169638170147%_
                           _%e169639170150%_
                           _%hd169640170153%_
                           _%tl169641170155%_)
                          (_%__match174330174331%_
                           _%e169612170078%_
                           _%hd169613170081%_
                           _%tl169614170083%_
                           _%e169615170086%_
                           _%hd169616170089%_
                           _%tl169617170091%_
                           _%e169618170094%_
                           _%hd169619170097%_
                           _%tl169620170099%_
                           _%e169621170102%_
                           _%hd169622170105%_
                           _%tl169623170107%_
                           _%e169624170110%_
                           _%hd169625170113%_
                           _%tl169626170115%_
                           _%e169627170118%_
                           _%hd169628170121%_
                           _%tl169629170123%_
                           _%e169630170126%_
                           _%hd169631170129%_
                           _%tl169632170131%_
                           _%e169633170134%_
                           _%hd169634170137%_
                           _%tl169635170139%_
                           _%e169636170142%_
                           _%hd169637170145%_
                           _%tl169638170147%_
                           _%e169639170150%_
                           _%hd169640170153%_
                           _%tl169641170155%_))))
                   (_%__match174240174241%_
                    (lambda (_%e169612170078%_
                             _%hd169613170081%_
                             _%tl169614170083%_
                             _%e169615170086%_
                             _%hd169616170089%_
                             _%tl169617170091%_
                             _%e169618170094%_
                             _%hd169619170097%_
                             _%tl169620170099%_
                             _%e169621170102%_
                             _%hd169622170105%_
                             _%tl169623170107%_
                             _%e169624170110%_
                             _%hd169625170113%_
                             _%tl169626170115%_
                             _%e169627170118%_
                             _%hd169628170121%_
                             _%tl169629170123%_
                             _%e169630170126%_
                             _%hd169631170129%_
                             _%tl169632170131%_
                             _%e169633170134%_
                             _%hd169634170137%_
                             _%tl169635170139%_
                             _%e169636170142%_
                             _%hd169637170145%_
                             _%tl169638170147%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd169637170145%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl169638170147%_))
                              (let ((_%e169639170150%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl169638170147%_))))
                                (let ((_%tl169641170155%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169639170150%_)))
                                      (_%hd169640170153%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169639170150%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl169641170155%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl169635170139%_))
                                          (_%__match174252174253%_
                                           _%e169612170078%_
                                           _%hd169613170081%_
                                           _%tl169614170083%_
                                           _%e169615170086%_
                                           _%hd169616170089%_
                                           _%tl169617170091%_
                                           _%e169618170094%_
                                           _%hd169619170097%_
                                           _%tl169620170099%_
                                           _%e169621170102%_
                                           _%hd169622170105%_
                                           _%tl169623170107%_
                                           _%e169624170110%_
                                           _%hd169625170113%_
                                           _%tl169626170115%_
                                           _%e169627170118%_
                                           _%hd169628170121%_
                                           _%tl169629170123%_
                                           _%e169630170126%_
                                           _%hd169631170129%_
                                           _%tl169632170131%_
                                           _%e169633170134%_
                                           _%hd169634170137%_
                                           _%tl169635170139%_
                                           _%e169636170142%_
                                           _%hd169637170145%_
                                           _%tl169638170147%_
                                           _%e169639170150%_
                                           _%hd169640170153%_
                                           _%tl169641170155%_)
                                          (_%__match174330174331%_
                                           _%e169612170078%_
                                           _%hd169613170081%_
                                           _%tl169614170083%_
                                           _%e169615170086%_
                                           _%hd169616170089%_
                                           _%tl169617170091%_
                                           _%e169618170094%_
                                           _%hd169619170097%_
                                           _%tl169620170099%_
                                           _%e169621170102%_
                                           _%hd169622170105%_
                                           _%tl169623170107%_
                                           _%e169624170110%_
                                           _%hd169625170113%_
                                           _%tl169626170115%_
                                           _%e169627170118%_
                                           _%hd169628170121%_
                                           _%tl169629170123%_
                                           _%e169630170126%_
                                           _%hd169631170129%_
                                           _%tl169632170131%_
                                           _%e169633170134%_
                                           _%hd169634170137%_
                                           _%tl169635170139%_
                                           _%e169636170142%_
                                           _%hd169637170145%_
                                           _%tl169638170147%_
                                           _%e169639170150%_
                                           _%hd169640170153%_
                                           _%tl169641170155%_))
                                      (_%__match174454174455%_
                                       _%e169612170078%_
                                       _%hd169613170081%_
                                       _%tl169614170083%_
                                       _%e169615170086%_
                                       _%hd169616170089%_
                                       _%tl169617170091%_
                                       _%e169618170094%_
                                       _%hd169619170097%_
                                       _%tl169620170099%_
                                       _%e169621170102%_
                                       _%hd169622170105%_
                                       _%tl169623170107%_
                                       _%e169624170110%_
                                       _%hd169625170113%_
                                       _%tl169626170115%_
                                       _%e169627170118%_
                                       _%hd169628170121%_
                                       _%tl169629170123%_
                                       _%e169630170126%_
                                       _%hd169631170129%_
                                       _%tl169632170131%_
                                       _%e169633170134%_
                                       _%hd169634170137%_
                                       _%tl169635170139%_))))
                              (_%__match174454174455%_
                               _%e169612170078%_
                               _%hd169613170081%_
                               _%tl169614170083%_
                               _%e169615170086%_
                               _%hd169616170089%_
                               _%tl169617170091%_
                               _%e169618170094%_
                               _%hd169619170097%_
                               _%tl169620170099%_
                               _%e169621170102%_
                               _%hd169622170105%_
                               _%tl169623170107%_
                               _%e169624170110%_
                               _%hd169625170113%_
                               _%tl169626170115%_
                               _%e169627170118%_
                               _%hd169628170121%_
                               _%tl169629170123%_
                               _%e169630170126%_
                               _%hd169631170129%_
                               _%tl169632170131%_
                               _%e169633170134%_
                               _%hd169634170137%_
                               _%tl169635170139%_))
                          (_%__match174454174455%_
                           _%e169612170078%_
                           _%hd169613170081%_
                           _%tl169614170083%_
                           _%e169615170086%_
                           _%hd169616170089%_
                           _%tl169617170091%_
                           _%e169618170094%_
                           _%hd169619170097%_
                           _%tl169620170099%_
                           _%e169621170102%_
                           _%hd169622170105%_
                           _%tl169623170107%_
                           _%e169624170110%_
                           _%hd169625170113%_
                           _%tl169626170115%_
                           _%e169627170118%_
                           _%hd169628170121%_
                           _%tl169629170123%_
                           _%e169630170126%_
                           _%hd169631170129%_
                           _%tl169632170131%_
                           _%e169633170134%_
                           _%hd169634170137%_
                           _%tl169635170139%_))))
                   (_%__match174172174173%_
                    (lambda (_%e169561170197%_
                             _%hd169562170200%_
                             _%tl169563170202%_
                             _%e169564170205%_
                             _%hd169565170208%_
                             _%tl169566170210%_
                             _%e169567170213%_
                             _%hd169568170216%_
                             _%tl169569170218%_
                             _%e169570170221%_
                             _%hd169571170224%_
                             _%tl169572170226%_
                             _%e169573170229%_
                             _%hd169574170232%_
                             _%tl169575170234%_
                             _%e169576170237%_
                             _%hd169577170240%_
                             _%tl169578170242%_
                             _%e169579170245%_
                             _%hd169580170248%_
                             _%tl169581170250%_
                             _%e169582170253%_
                             _%hd169583170256%_
                             _%tl169584170258%_
                             _%e169585170261%_
                             _%hd169586170264%_
                             _%tl169587170266%_
                             _%e169588170269%_
                             _%hd169589170272%_
                             _%tl169590170274%_
                             _%e169591170277%_
                             _%hd169592170280%_
                             _%tl169593170282%_
                             _%e169594170285%_
                             _%hd169595170288%_
                             _%tl169596170290%_
                             _%e169597170293%_
                             _%hd169598170296%_
                             _%tl169599170298%_
                             _%__splice173965173966%_
                             _%target169600170301%_
                             _%tl169602170303%_)
                      (letrec ((_%loop169603170306%_
                                (lambda (_%hd169601170309%_
                                         _%args169607170311%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd169601170309%_))
                                      (let ((_%e169604170314%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd169601170309%_))))
                                        (let ((_%lp-tl169606170319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169604170314%_)))
                                              (_%lp-hd169605170317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169604170314%_))))
                                          (_%loop169603170306%_
                                           _%lp-tl169606170319%_
                                           (cons _%lp-hd169605170317%_
                                                 _%args169607170311%_))))
                                      (let ((_%args169608170322%_
                                             (reverse _%args169607170311%_)))
                                        (let ((_%L170325%_
                                               _%args169608170322%_)
                                              (_%L170326%_ _%hd169598170296%_)
                                              (_%L170327%_ _%hd169589170272%_)
                                              (_%L170328%_ _%hd169580170248%_)
                                              (_%L170329%_ _%hd169571170224%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L170329%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L170328%_
                                                      'call-method))
                                                   (let ((__tmp175087
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self169502%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L170327%_
                                                      __tmp175087)))
                                              (_%__kont173963173964%_
                                               _%L170325%_
                                               _%L170326%_
                                               _%L170327%_
                                               _%L170328%_
                                               _%L170329%_)
                                              (_%__kont173975173976%_))))))))
                        (_%loop169603170306%_ _%target169600170301%_ '()))))
                   (_%__match174130174131%_
                    (lambda (_%e169561170197%_
                             _%hd169562170200%_
                             _%tl169563170202%_
                             _%e169564170205%_
                             _%hd169565170208%_
                             _%tl169566170210%_
                             _%e169567170213%_
                             _%hd169568170216%_
                             _%tl169569170218%_
                             _%e169570170221%_
                             _%hd169571170224%_
                             _%tl169572170226%_
                             _%e169573170229%_
                             _%hd169574170232%_
                             _%tl169575170234%_
                             _%e169576170237%_
                             _%hd169577170240%_
                             _%tl169578170242%_
                             _%e169579170245%_
                             _%hd169580170248%_
                             _%tl169581170250%_
                             _%e169582170253%_
                             _%hd169583170256%_
                             _%tl169584170258%_
                             _%e169585170261%_
                             _%hd169586170264%_
                             _%tl169587170266%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd169586170264%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl169587170266%_))
                              (let ((_%e169588170269%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl169587170266%_))))
                                (let ((_%tl169590170274%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169588170269%_)))
                                      (_%hd169589170272%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169588170269%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl169590170274%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169584170258%_))
                                          (let ((_%e169591170277%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169584170258%_))))
                                            (let ((_%tl169593170282%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169591170277%_)))
                                                  (_%hd169592170280%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169591170277%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169592170280%_))
                                                  (let ((_%e169594170285%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169592170280%_))))
                                                    (let ((_%tl169596170290%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169594170285%_)))
                                                          (_%hd169595170288%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169594170285%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd169595170288%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd169595170288%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169596170290%_))
                          (let ((_%e169597170293%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169596170290%_))))
                            (let ((_%tl169599170298%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169597170293%_)))
                                  (_%hd169598170296%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169597170293%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl169599170298%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl169593170282%_))
                                      (let ((_%__splice173965173966%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl169593170282%_
                                                '0))))
                                        (let ((_%tl169602170303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice173965173966%_
                                                  '1)))
                                              (_%target169600170301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice173965173966%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169602170303%_))
                                              (_%__match174172174173%_
                                               _%e169561170197%_
                                               _%hd169562170200%_
                                               _%tl169563170202%_
                                               _%e169564170205%_
                                               _%hd169565170208%_
                                               _%tl169566170210%_
                                               _%e169567170213%_
                                               _%hd169568170216%_
                                               _%tl169569170218%_
                                               _%e169570170221%_
                                               _%hd169571170224%_
                                               _%tl169572170226%_
                                               _%e169573170229%_
                                               _%hd169574170232%_
                                               _%tl169575170234%_
                                               _%e169576170237%_
                                               _%hd169577170240%_
                                               _%tl169578170242%_
                                               _%e169579170245%_
                                               _%hd169580170248%_
                                               _%tl169581170250%_
                                               _%e169582170253%_
                                               _%hd169583170256%_
                                               _%tl169584170258%_
                                               _%e169585170261%_
                                               _%hd169586170264%_
                                               _%tl169587170266%_
                                               _%e169588170269%_
                                               _%hd169589170272%_
                                               _%tl169590170274%_
                                               _%e169591170277%_
                                               _%hd169592170280%_
                                               _%tl169593170282%_
                                               _%e169594170285%_
                                               _%hd169595170288%_
                                               _%tl169596170290%_
                                               _%e169597170293%_
                                               _%hd169598170296%_
                                               _%tl169599170298%_
                                               _%__splice173965173966%_
                                               _%target169600170301%_
                                               _%tl169602170303%_)
                                              (_%__kont173975173976%_))))
                                      (_%__kont173975173976%_))
                                  (_%__kont173975173976%_))))
                          (_%__kont173975173976%_))
                      (_%__kont173975173976%_))
                  (_%__kont173975173976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont173975173976%_))))
                                          (_%__match174454174455%_
                                           _%e169561170197%_
                                           _%hd169562170200%_
                                           _%tl169563170202%_
                                           _%e169564170205%_
                                           _%hd169565170208%_
                                           _%tl169566170210%_
                                           _%e169567170213%_
                                           _%hd169568170216%_
                                           _%tl169569170218%_
                                           _%e169570170221%_
                                           _%hd169571170224%_
                                           _%tl169572170226%_
                                           _%e169573170229%_
                                           _%hd169574170232%_
                                           _%tl169575170234%_
                                           _%e169576170237%_
                                           _%hd169577170240%_
                                           _%tl169578170242%_
                                           _%e169579170245%_
                                           _%hd169580170248%_
                                           _%tl169581170250%_
                                           _%e169582170253%_
                                           _%hd169583170256%_
                                           _%tl169584170258%_))
                                      (_%__match174454174455%_
                                       _%e169561170197%_
                                       _%hd169562170200%_
                                       _%tl169563170202%_
                                       _%e169564170205%_
                                       _%hd169565170208%_
                                       _%tl169566170210%_
                                       _%e169567170213%_
                                       _%hd169568170216%_
                                       _%tl169569170218%_
                                       _%e169570170221%_
                                       _%hd169571170224%_
                                       _%tl169572170226%_
                                       _%e169573170229%_
                                       _%hd169574170232%_
                                       _%tl169575170234%_
                                       _%e169576170237%_
                                       _%hd169577170240%_
                                       _%tl169578170242%_
                                       _%e169579170245%_
                                       _%hd169580170248%_
                                       _%tl169581170250%_
                                       _%e169582170253%_
                                       _%hd169583170256%_
                                       _%tl169584170258%_))))
                              (_%__match174454174455%_
                               _%e169561170197%_
                               _%hd169562170200%_
                               _%tl169563170202%_
                               _%e169564170205%_
                               _%hd169565170208%_
                               _%tl169566170210%_
                               _%e169567170213%_
                               _%hd169568170216%_
                               _%tl169569170218%_
                               _%e169570170221%_
                               _%hd169571170224%_
                               _%tl169572170226%_
                               _%e169573170229%_
                               _%hd169574170232%_
                               _%tl169575170234%_
                               _%e169576170237%_
                               _%hd169577170240%_
                               _%tl169578170242%_
                               _%e169579170245%_
                               _%hd169580170248%_
                               _%tl169581170250%_
                               _%e169582170253%_
                               _%hd169583170256%_
                               _%tl169584170258%_))
                          (_%__match174240174241%_
                           _%e169561170197%_
                           _%hd169562170200%_
                           _%tl169563170202%_
                           _%e169564170205%_
                           _%hd169565170208%_
                           _%tl169566170210%_
                           _%e169567170213%_
                           _%hd169568170216%_
                           _%tl169569170218%_
                           _%e169570170221%_
                           _%hd169571170224%_
                           _%tl169572170226%_
                           _%e169573170229%_
                           _%hd169574170232%_
                           _%tl169575170234%_
                           _%e169576170237%_
                           _%hd169577170240%_
                           _%tl169578170242%_
                           _%e169579170245%_
                           _%hd169580170248%_
                           _%tl169581170250%_
                           _%e169582170253%_
                           _%hd169583170256%_
                           _%tl169584170258%_
                           _%e169585170261%_
                           _%hd169586170264%_
                           _%tl169587170266%_))))
                   (_%__match174062174063%_
                    (lambda (_%e169517170386%_
                             _%hd169518170389%_
                             _%tl169519170391%_
                             _%e169520170394%_
                             _%hd169521170397%_
                             _%tl169522170399%_
                             _%e169523170402%_
                             _%hd169524170405%_
                             _%tl169525170407%_
                             _%e169526170410%_
                             _%hd169527170413%_
                             _%tl169528170415%_
                             _%e169529170418%_
                             _%hd169530170421%_
                             _%tl169531170423%_
                             _%e169532170426%_
                             _%hd169533170429%_
                             _%tl169534170431%_
                             _%e169535170434%_
                             _%hd169536170437%_
                             _%tl169537170439%_
                             _%e169538170442%_
                             _%hd169539170445%_
                             _%tl169540170447%_
                             _%e169541170450%_
                             _%hd169542170453%_
                             _%tl169543170455%_
                             _%e169544170458%_
                             _%hd169545170461%_
                             _%tl169546170463%_
                             _%__splice173961173962%_
                             _%target169547170466%_
                             _%tl169549170468%_)
                      (letrec ((_%loop169550170471%_
                                (lambda (_%hd169548170474%_
                                         _%args169554170476%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd169548170474%_))
                                      (let ((_%e169551170479%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd169548170474%_))))
                                        (let ((_%lp-tl169553170484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169551170479%_)))
                                              (_%lp-hd169552170482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169551170479%_))))
                                          (_%loop169550170471%_
                                           _%lp-tl169553170484%_
                                           (cons _%lp-hd169552170482%_
                                                 _%args169554170476%_))))
                                      (let ((_%args169555170487%_
                                             (reverse _%args169554170476%_)))
                                        (let ((_%L170490%_
                                               _%args169555170487%_)
                                              (_%L170491%_ _%hd169545170461%_)
                                              (_%L170492%_ _%hd169536170437%_)
                                              (_%L170493%_ _%hd169527170413%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L170493%_
                                                      'call-method))
                                                   (let ((__tmp175088
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self169502%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L170492%_
                                                      __tmp175088)))
                                              (_%__kont173959173960%_
                                               _%L170490%_
                                               _%L170491%_
                                               _%L170492%_
                                               _%L170493%_)
                                              (_%__match174250174251%_
                                               _%e169517170386%_
                                               _%hd169518170389%_
                                               _%tl169519170391%_
                                               _%e169520170394%_
                                               _%hd169521170397%_
                                               _%tl169522170399%_
                                               _%e169523170402%_
                                               _%hd169524170405%_
                                               _%tl169525170407%_
                                               _%e169526170410%_
                                               _%hd169527170413%_
                                               _%tl169528170415%_
                                               _%e169529170418%_
                                               _%hd169530170421%_
                                               _%tl169531170423%_
                                               _%e169532170426%_
                                               _%hd169533170429%_
                                               _%tl169534170431%_
                                               _%e169535170434%_
                                               _%hd169536170437%_
                                               _%tl169537170439%_
                                               _%e169538170442%_
                                               _%hd169539170445%_
                                               _%tl169540170447%_
                                               _%e169541170450%_
                                               _%hd169542170453%_
                                               _%tl169543170455%_
                                               _%e169544170458%_
                                               _%hd169545170461%_
                                               _%tl169546170463%_))))))))
                        (_%loop169550170471%_ _%target169547170466%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx173957173958%_))
                  (let ((_%e169517170386%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx173957173958%_))))
                    (let ((_%tl169519170391%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169517170386%_)))
                          (_%hd169518170389%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169517170386%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169519170391%_))
                          (let ((_%e169520170394%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169519170391%_))))
                            (let ((_%tl169522170399%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169520170394%_)))
                                  (_%hd169521170397%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169520170394%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169521170397%_))
                                  (let ((_%e169523170402%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169521170397%_))))
                                    (let ((_%tl169525170407%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169523170402%_)))
                                          (_%hd169524170405%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169523170402%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd169524170405%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd169524170405%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl169525170407%_))
                                                  (let ((_%e169526170410%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl169525170407%_))))
                                                    (let ((_%tl169528170415%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169526170410%_)))
                                                          (_%hd169527170413%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169526170410%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169528170415%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169522170399%_))
                      (let ((_%e169529170418%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169522170399%_))))
                        (let ((_%tl169531170423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169529170418%_)))
                              (_%hd169530170421%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169529170418%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169530170421%_))
                              (let ((_%e169532170426%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169530170421%_))))
                                (let ((_%tl169534170431%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169532170426%_)))
                                      (_%hd169533170429%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169532170426%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd169533170429%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd169533170429%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl169534170431%_))
                                              (let ((_%e169535170434%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl169534170431%_))))
                                                (let ((_%tl169537170439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169535170434%_)))
                                                      (_%hd169536170437%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169535170434%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169537170439%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl169531170423%_))
                                                          (let ((_%e169538170442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl169531170423%_))))
                    (let ((_%tl169540170447%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169538170442%_)))
                          (_%hd169539170445%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169538170442%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd169539170445%_))
                          (let ((_%e169541170450%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd169539170445%_))))
                            (let ((_%tl169543170455%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169541170450%_)))
                                  (_%hd169542170453%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169541170450%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd169542170453%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd169542170453%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169543170455%_))
                                          (let ((_%e169544170458%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169543170455%_))))
                                            (let ((_%tl169546170463%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169544170458%_)))
                                                  (_%hd169545170461%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169544170458%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl169546170463%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl169540170447%_))
                                                      (let ((_%__splice173961173962%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl169540170447%_ '0))))
                (let ((_%tl169549170468%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice173961173962%_ '1)))
                      (_%target169547170466%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice173961173962%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl169549170468%_))
                      (_%__match174062174063%_
                       _%e169517170386%_
                       _%hd169518170389%_
                       _%tl169519170391%_
                       _%e169520170394%_
                       _%hd169521170397%_
                       _%tl169522170399%_
                       _%e169523170402%_
                       _%hd169524170405%_
                       _%tl169525170407%_
                       _%e169526170410%_
                       _%hd169527170413%_
                       _%tl169528170415%_
                       _%e169529170418%_
                       _%hd169530170421%_
                       _%tl169531170423%_
                       _%e169532170426%_
                       _%hd169533170429%_
                       _%tl169534170431%_
                       _%e169535170434%_
                       _%hd169536170437%_
                       _%tl169537170439%_
                       _%e169538170442%_
                       _%hd169539170445%_
                       _%tl169540170447%_
                       _%e169541170450%_
                       _%hd169542170453%_
                       _%tl169543170455%_
                       _%e169544170458%_
                       _%hd169545170461%_
                       _%tl169546170463%_
                       _%__splice173961173962%_
                       _%target169547170466%_
                       _%tl169549170468%_)
                      (_%__match174250174251%_
                       _%e169517170386%_
                       _%hd169518170389%_
                       _%tl169519170391%_
                       _%e169520170394%_
                       _%hd169521170397%_
                       _%tl169522170399%_
                       _%e169523170402%_
                       _%hd169524170405%_
                       _%tl169525170407%_
                       _%e169526170410%_
                       _%hd169527170413%_
                       _%tl169528170415%_
                       _%e169529170418%_
                       _%hd169530170421%_
                       _%tl169531170423%_
                       _%e169532170426%_
                       _%hd169533170429%_
                       _%tl169534170431%_
                       _%e169535170434%_
                       _%hd169536170437%_
                       _%tl169537170439%_
                       _%e169538170442%_
                       _%hd169539170445%_
                       _%tl169540170447%_
                       _%e169541170450%_
                       _%hd169542170453%_
                       _%tl169543170455%_
                       _%e169544170458%_
                       _%hd169545170461%_
                       _%tl169546170463%_))))
              (_%__match174250174251%_
               _%e169517170386%_
               _%hd169518170389%_
               _%tl169519170391%_
               _%e169520170394%_
               _%hd169521170397%_
               _%tl169522170399%_
               _%e169523170402%_
               _%hd169524170405%_
               _%tl169525170407%_
               _%e169526170410%_
               _%hd169527170413%_
               _%tl169528170415%_
               _%e169529170418%_
               _%hd169530170421%_
               _%tl169531170423%_
               _%e169532170426%_
               _%hd169533170429%_
               _%tl169534170431%_
               _%e169535170434%_
               _%hd169536170437%_
               _%tl169537170439%_
               _%e169538170442%_
               _%hd169539170445%_
               _%tl169540170447%_
               _%e169541170450%_
               _%hd169542170453%_
               _%tl169543170455%_
               _%e169544170458%_
               _%hd169545170461%_
               _%tl169546170463%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match174454174455%_
                                                   _%e169517170386%_
                                                   _%hd169518170389%_
                                                   _%tl169519170391%_
                                                   _%e169520170394%_
                                                   _%hd169521170397%_
                                                   _%tl169522170399%_
                                                   _%e169523170402%_
                                                   _%hd169524170405%_
                                                   _%tl169525170407%_
                                                   _%e169526170410%_
                                                   _%hd169527170413%_
                                                   _%tl169528170415%_
                                                   _%e169529170418%_
                                                   _%hd169530170421%_
                                                   _%tl169531170423%_
                                                   _%e169532170426%_
                                                   _%hd169533170429%_
                                                   _%tl169534170431%_
                                                   _%e169535170434%_
                                                   _%hd169536170437%_
                                                   _%tl169537170439%_
                                                   _%e169538170442%_
                                                   _%hd169539170445%_
                                                   _%tl169540170447%_))))
                                          (_%__match174454174455%_
                                           _%e169517170386%_
                                           _%hd169518170389%_
                                           _%tl169519170391%_
                                           _%e169520170394%_
                                           _%hd169521170397%_
                                           _%tl169522170399%_
                                           _%e169523170402%_
                                           _%hd169524170405%_
                                           _%tl169525170407%_
                                           _%e169526170410%_
                                           _%hd169527170413%_
                                           _%tl169528170415%_
                                           _%e169529170418%_
                                           _%hd169530170421%_
                                           _%tl169531170423%_
                                           _%e169532170426%_
                                           _%hd169533170429%_
                                           _%tl169534170431%_
                                           _%e169535170434%_
                                           _%hd169536170437%_
                                           _%tl169537170439%_
                                           _%e169538170442%_
                                           _%hd169539170445%_
                                           _%tl169540170447%_))
                                      (_%__match174130174131%_
                                       _%e169517170386%_
                                       _%hd169518170389%_
                                       _%tl169519170391%_
                                       _%e169520170394%_
                                       _%hd169521170397%_
                                       _%tl169522170399%_
                                       _%e169523170402%_
                                       _%hd169524170405%_
                                       _%tl169525170407%_
                                       _%e169526170410%_
                                       _%hd169527170413%_
                                       _%tl169528170415%_
                                       _%e169529170418%_
                                       _%hd169530170421%_
                                       _%tl169531170423%_
                                       _%e169532170426%_
                                       _%hd169533170429%_
                                       _%tl169534170431%_
                                       _%e169535170434%_
                                       _%hd169536170437%_
                                       _%tl169537170439%_
                                       _%e169538170442%_
                                       _%hd169539170445%_
                                       _%tl169540170447%_
                                       _%e169541170450%_
                                       _%hd169542170453%_
                                       _%tl169543170455%_))
                                  (_%__match174454174455%_
                                   _%e169517170386%_
                                   _%hd169518170389%_
                                   _%tl169519170391%_
                                   _%e169520170394%_
                                   _%hd169521170397%_
                                   _%tl169522170399%_
                                   _%e169523170402%_
                                   _%hd169524170405%_
                                   _%tl169525170407%_
                                   _%e169526170410%_
                                   _%hd169527170413%_
                                   _%tl169528170415%_
                                   _%e169529170418%_
                                   _%hd169530170421%_
                                   _%tl169531170423%_
                                   _%e169532170426%_
                                   _%hd169533170429%_
                                   _%tl169534170431%_
                                   _%e169535170434%_
                                   _%hd169536170437%_
                                   _%tl169537170439%_
                                   _%e169538170442%_
                                   _%hd169539170445%_
                                   _%tl169540170447%_))))
                          (_%__match174454174455%_
                           _%e169517170386%_
                           _%hd169518170389%_
                           _%tl169519170391%_
                           _%e169520170394%_
                           _%hd169521170397%_
                           _%tl169522170399%_
                           _%e169523170402%_
                           _%hd169524170405%_
                           _%tl169525170407%_
                           _%e169526170410%_
                           _%hd169527170413%_
                           _%tl169528170415%_
                           _%e169529170418%_
                           _%hd169530170421%_
                           _%tl169531170423%_
                           _%e169532170426%_
                           _%hd169533170429%_
                           _%tl169534170431%_
                           _%e169535170434%_
                           _%hd169536170437%_
                           _%tl169537170439%_
                           _%e169538170442%_
                           _%hd169539170445%_
                           _%tl169540170447%_))))
                  (_%__match174392174393%_
                   _%e169517170386%_
                   _%hd169518170389%_
                   _%tl169519170391%_
                   _%e169520170394%_
                   _%hd169521170397%_
                   _%tl169522170399%_
                   _%e169523170402%_
                   _%hd169524170405%_
                   _%tl169525170407%_
                   _%e169526170410%_
                   _%hd169527170413%_
                   _%tl169528170415%_
                   _%e169529170418%_
                   _%hd169530170421%_
                   _%tl169531170423%_
                   _%e169532170426%_
                   _%hd169533170429%_
                   _%tl169534170431%_
                   _%e169535170434%_
                   _%hd169536170437%_
                   _%tl169537170439%_))
              (_%__kont173975173976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont173975173976%_))
                                          (_%__kont173975173976%_))
                                      (_%__kont173975173976%_))))
                              (_%__kont173975173976%_))))
                      (_%__kont173975173976%_))
                  (_%__kont173975173976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont173975173976%_))
                                              (_%__kont173975173976%_))
                                          (_%__kont173975173976%_))))
                                  (_%__kont173975173976%_))))
                          (_%__kont173975173976%_))))
                  (_%__kont173975173976%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self168441%_ _%stx168442%_)
        (letrec ((_%force-e168444%_
                  (lambda (_%target169500%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target169500%_ '()))
                                      '()))))))
          (let* ((_%__stx174459174460%_ _%stx168442%_)
                 (_%g168452168674%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx174459174460%_)))))
            (let ((_%__kont174461174462%_
                   (lambda (_%L169446%_ _%L169447%_ _%L169448%_ _%L169449%_)
                     (let ((_%$method169494%_
                            (let ((__tmp175090
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self168441%_ 'methods)))
                                  (__tmp175089
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L169447%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp175090 __tmp175089)))
                           (_%args169495%_
                            (map (lambda (_%g169482169484%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self168441%_
                                      _%g169482169484%_)))
                                 (let ((__tmp175091
                                        (lambda (_%g169486169489%_
                                                 _%g169487169491%_)
                                          (cons _%g169486169489%_
                                                _%g169487169491%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp175091 '() _%L169446%_)))))
                       (let ((__tmp175092
                              (cons '%#call
                                    (cons (_%force-e168444%_ _%$method169494%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self168441%_
                                                               'receiver))
                                                            '()))
                                                _%args169495%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp175092 _%stx168442%_)))))
                  (_%__kont174465174466%_
                   (lambda (_%L169278%_
                            _%L169279%_
                            _%L169280%_
                            _%L169281%_
                            _%L169282%_)
                     (let ((_%$method169334%_
                            (let ((__tmp175094
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self168441%_ 'methods)))
                                  (__tmp175093
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L169279%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp175094 __tmp175093)))
                           (_%args169335%_
                            (map (lambda (_%g169322169324%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self168441%_
                                      _%g169322169324%_)))
                                 (let ((__tmp175095
                                        (lambda (_%g169326169329%_
                                                 _%g169327169331%_)
                                          (cons _%g169326169329%_
                                                _%g169327169331%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp175095 '() _%L169278%_)))))
                       (let ((__tmp175096
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e168444%_
                                                 _%$method169334%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self168441%_ 'receiver))
                          '()))
              _%args169335%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp175096 _%stx168442%_)))))
                  (_%__kont174469174470%_
                   (lambda (_%L169109%_ _%L169110%_ _%L169111%_)
                     (let* ((_%$field169143%_
                             (let ((__tmp175098
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self168441%_ 'slots)))
                                   (__tmp175097
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L169109%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp175098 __tmp175097)))
                            (__tmp175099
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self168441%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field169143%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self168441%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp175099 _%stx168442%_))))
                  (_%__kont174471174472%_
                   (lambda (_%L168983%_ _%L168984%_ _%L168985%_ _%L168986%_)
                     (let ((_%$field169021%_
                            (let ((__tmp175101
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self168441%_ 'slots)))
                                  (__tmp175100
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L168984%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp175101 __tmp175100)))
                           (_%expr169022%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self168441%_ _%L168983%_))))
                       (let ((__tmp175102
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self168441%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field169021%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self168441%_ 'receiver))
                          '()))
              (cons _%expr169022%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp175102 _%stx168442%_)))))
                  (_%__kont174473174474%_
                   (lambda (_%L168855%_ _%L168856%_)
                     (let* ((_%accessor168878%_
                             (let ((__tmp175103
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L168856%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp175103)))
                            (_%klass168880%_
                             (let ((__tmp175104
                                    (##structure-ref
                                     _%accessor168878%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx168442%_
                                __tmp175104)))
                            (_%slot168882%_
                             (##structure-ref
                              _%accessor168878%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor168878%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass168880%_
                                      _%slot168882%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass168880%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx168442%_
                           (let* ((_%$field168888%_
                                   (let ((__tmp175105
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self168441%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp175105 _%slot168882%_)))
                                  (__tmp175106
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self168441%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field168888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self168441%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp175106
                              _%stx168442%_))))))
                  (_%__kont174475174476%_
                   (lambda (_%L168750%_ _%L168751%_ _%L168752%_)
                     (let* ((_%mutator168780%_
                             (let ((__tmp175107
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L168752%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp175107)))
                            (_%klass168782%_
                             (let ((__tmp175108
                                    (##structure-ref
                                     _%mutator168780%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx168442%_
                                __tmp175108)))
                            (_%slot168784%_
                             (##structure-ref
                              _%mutator168780%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr168786%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self168441%_ _%L168750%_))))
                       (if (if (##structure-ref
                                _%mutator168780%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass168782%_
                                      _%slot168784%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass168782%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp175109
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L168752%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L168751%_
                                                                '()))
                                                    (cons _%expr168786%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp175109 _%stx168442%_))
                           (let* ((_%$field168792%_
                                   (let ((__tmp175110
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self168441%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp175110 _%slot168784%_)))
                                  (__tmp175111
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self168441%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field168792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self168441%_ 'receiver))
                               '()))
                   (cons _%expr168786%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp175111
                              _%stx168442%_))))))
                  (_%__kont174477174478%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self168441%_ _%stx168442%_)))))
              (let* ((_%__match174958174959%_
                      (lambda (_%e168646168686%_
                               _%hd168647168689%_
                               _%tl168648168691%_
                               _%e168649168694%_
                               _%hd168650168697%_
                               _%tl168651168699%_
                               _%e168652168702%_
                               _%hd168653168705%_
                               _%tl168654168707%_
                               _%e168655168710%_
                               _%hd168656168713%_
                               _%tl168657168715%_
                               _%e168658168718%_
                               _%hd168659168721%_
                               _%tl168660168723%_
                               _%e168661168726%_
                               _%hd168662168729%_
                               _%tl168663168731%_
                               _%e168664168734%_
                               _%hd168665168737%_
                               _%tl168666168739%_
                               _%e168667168742%_
                               _%hd168668168745%_
                               _%tl168669168747%_)
                        (let ((_%L168750%_ _%hd168668168745%_)
                              (_%L168751%_ _%hd168665168737%_)
                              (_%L168752%_ _%hd168656168713%_))
                          (if (and (let ((__tmp175112
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self168441%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L168751%_
                                      __tmp175112))
                                   (let ((__tmp175113
                                          (let ((__tmp175114
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L168752%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp175114))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp175113
                                      'gxc#!mutator::t)))
                              (_%__kont174475174476%_
                               _%L168750%_
                               _%L168751%_
                               _%L168752%_)
                              (_%__kont174477174478%_)))))
                     (_%__match174956174957%_
                      (lambda (_%e168646168686%_
                               _%hd168647168689%_
                               _%tl168648168691%_
                               _%e168649168694%_
                               _%hd168650168697%_
                               _%tl168651168699%_
                               _%e168652168702%_
                               _%hd168653168705%_
                               _%tl168654168707%_
                               _%e168655168710%_
                               _%hd168656168713%_
                               _%tl168657168715%_
                               _%e168658168718%_
                               _%hd168659168721%_
                               _%tl168660168723%_
                               _%e168661168726%_
                               _%hd168662168729%_
                               _%tl168663168731%_
                               _%e168664168734%_
                               _%hd168665168737%_
                               _%tl168666168739%_
                               _%e168667168742%_
                               _%hd168668168745%_
                               _%tl168669168747%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl168669168747%_))
                            (_%__match174958174959%_
                             _%e168646168686%_
                             _%hd168647168689%_
                             _%tl168648168691%_
                             _%e168649168694%_
                             _%hd168650168697%_
                             _%tl168651168699%_
                             _%e168652168702%_
                             _%hd168653168705%_
                             _%tl168654168707%_
                             _%e168655168710%_
                             _%hd168656168713%_
                             _%tl168657168715%_
                             _%e168658168718%_
                             _%hd168659168721%_
                             _%tl168660168723%_
                             _%e168661168726%_
                             _%hd168662168729%_
                             _%tl168663168731%_
                             _%e168664168734%_
                             _%hd168665168737%_
                             _%tl168666168739%_
                             _%e168667168742%_
                             _%hd168668168745%_
                             _%tl168669168747%_)
                            (_%__kont174477174478%_))))
                     (_%__match174950174951%_
                      (lambda (_%e168646168686%_
                               _%hd168647168689%_
                               _%tl168648168691%_
                               _%e168649168694%_
                               _%hd168650168697%_
                               _%tl168651168699%_
                               _%e168652168702%_
                               _%hd168653168705%_
                               _%tl168654168707%_
                               _%e168655168710%_
                               _%hd168656168713%_
                               _%tl168657168715%_
                               _%e168658168718%_
                               _%hd168659168721%_
                               _%tl168660168723%_
                               _%e168661168726%_
                               _%hd168662168729%_
                               _%tl168663168731%_
                               _%e168664168734%_
                               _%hd168665168737%_
                               _%tl168666168739%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl168660168723%_))
                            (let ((_%e168667168742%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl168660168723%_))))
                              (let ((_%tl168669168747%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168667168742%_)))
                                    (_%hd168668168745%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168667168742%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl168669168747%_))
                                    (_%__match174958174959%_
                                     _%e168646168686%_
                                     _%hd168647168689%_
                                     _%tl168648168691%_
                                     _%e168649168694%_
                                     _%hd168650168697%_
                                     _%tl168651168699%_
                                     _%e168652168702%_
                                     _%hd168653168705%_
                                     _%tl168654168707%_
                                     _%e168655168710%_
                                     _%hd168656168713%_
                                     _%tl168657168715%_
                                     _%e168658168718%_
                                     _%hd168659168721%_
                                     _%tl168660168723%_
                                     _%e168661168726%_
                                     _%hd168662168729%_
                                     _%tl168663168731%_
                                     _%e168664168734%_
                                     _%hd168665168737%_
                                     _%tl168666168739%_
                                     _%e168667168742%_
                                     _%hd168668168745%_
                                     _%tl168669168747%_)
                                    (_%__kont174477174478%_))))
                            (_%__kont174477174478%_))))
                     (_%__match174896174897%_
                      (lambda (_%e168622168799%_
                               _%hd168623168802%_
                               _%tl168624168804%_
                               _%e168625168807%_
                               _%hd168626168810%_
                               _%tl168627168812%_
                               _%e168628168815%_
                               _%hd168629168818%_
                               _%tl168630168820%_
                               _%e168631168823%_
                               _%hd168632168826%_
                               _%tl168633168828%_
                               _%e168634168831%_
                               _%hd168635168834%_
                               _%tl168636168836%_
                               _%e168637168839%_
                               _%hd168638168842%_
                               _%tl168639168844%_
                               _%e168640168847%_
                               _%hd168641168850%_
                               _%tl168642168852%_)
                        (let ((_%L168855%_ _%hd168641168850%_)
                              (_%L168856%_ _%hd168632168826%_))
                          (if (and (let ((__tmp175115
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self168441%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L168855%_
                                      __tmp175115))
                                   (let ((__tmp175116
                                          (let ((__tmp175117
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L168856%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp175117))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp175116
                                      'gxc#!accessor::t)))
                              (_%__kont174473174474%_ _%L168855%_ _%L168856%_)
                              (_%__kont174477174478%_)))))
                     (_%__match174894174895%_
                      (lambda (_%e168622168799%_
                               _%hd168623168802%_
                               _%tl168624168804%_
                               _%e168625168807%_
                               _%hd168626168810%_
                               _%tl168627168812%_
                               _%e168628168815%_
                               _%hd168629168818%_
                               _%tl168630168820%_
                               _%e168631168823%_
                               _%hd168632168826%_
                               _%tl168633168828%_
                               _%e168634168831%_
                               _%hd168635168834%_
                               _%tl168636168836%_
                               _%e168637168839%_
                               _%hd168638168842%_
                               _%tl168639168844%_
                               _%e168640168847%_
                               _%hd168641168850%_
                               _%tl168642168852%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl168636168836%_))
                            (_%__match174896174897%_
                             _%e168622168799%_
                             _%hd168623168802%_
                             _%tl168624168804%_
                             _%e168625168807%_
                             _%hd168626168810%_
                             _%tl168627168812%_
                             _%e168628168815%_
                             _%hd168629168818%_
                             _%tl168630168820%_
                             _%e168631168823%_
                             _%hd168632168826%_
                             _%tl168633168828%_
                             _%e168634168831%_
                             _%hd168635168834%_
                             _%tl168636168836%_
                             _%e168637168839%_
                             _%hd168638168842%_
                             _%tl168639168844%_
                             _%e168640168847%_
                             _%hd168641168850%_
                             _%tl168642168852%_)
                            (_%__match174950174951%_
                             _%e168622168799%_
                             _%hd168623168802%_
                             _%tl168624168804%_
                             _%e168625168807%_
                             _%hd168626168810%_
                             _%tl168627168812%_
                             _%e168628168815%_
                             _%hd168629168818%_
                             _%tl168630168820%_
                             _%e168631168823%_
                             _%hd168632168826%_
                             _%tl168633168828%_
                             _%e168634168831%_
                             _%hd168635168834%_
                             _%tl168636168836%_
                             _%e168637168839%_
                             _%hd168638168842%_
                             _%tl168639168844%_
                             _%e168640168847%_
                             _%hd168641168850%_
                             _%tl168642168852%_))))
                     (_%__match174840174841%_
                      (lambda (_%e168587168895%_
                               _%hd168588168898%_
                               _%tl168589168900%_
                               _%e168590168903%_
                               _%hd168591168906%_
                               _%tl168592168908%_
                               _%e168593168911%_
                               _%hd168594168914%_
                               _%tl168595168916%_
                               _%e168596168919%_
                               _%hd168597168922%_
                               _%tl168598168924%_
                               _%e168599168927%_
                               _%hd168600168930%_
                               _%tl168601168932%_
                               _%e168602168935%_
                               _%hd168603168938%_
                               _%tl168604168940%_
                               _%e168605168943%_
                               _%hd168606168946%_
                               _%tl168607168948%_
                               _%e168608168951%_
                               _%hd168609168954%_
                               _%tl168610168956%_
                               _%e168611168959%_
                               _%hd168612168962%_
                               _%tl168613168964%_
                               _%e168614168967%_
                               _%hd168615168970%_
                               _%tl168616168972%_
                               _%e168617168975%_
                               _%hd168618168978%_
                               _%tl168619168980%_)
                        (let ((_%L168983%_ _%hd168618168978%_)
                              (_%L168984%_ _%hd168615168970%_)
                              (_%L168985%_ _%hd168606168946%_)
                              (_%L168986%_ _%hd168597168922%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L168986%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L168986%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp175118
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self168441%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L168985%_
                                      __tmp175118)))
                              (_%__kont174471174472%_
                               _%L168983%_
                               _%L168984%_
                               _%L168985%_
                               _%L168986%_)
                              (_%__kont174477174478%_)))))
                     (_%__match174832174833%_
                      (lambda (_%e168587168895%_
                               _%hd168588168898%_
                               _%tl168589168900%_
                               _%e168590168903%_
                               _%hd168591168906%_
                               _%tl168592168908%_
                               _%e168593168911%_
                               _%hd168594168914%_
                               _%tl168595168916%_
                               _%e168596168919%_
                               _%hd168597168922%_
                               _%tl168598168924%_
                               _%e168599168927%_
                               _%hd168600168930%_
                               _%tl168601168932%_
                               _%e168602168935%_
                               _%hd168603168938%_
                               _%tl168604168940%_
                               _%e168605168943%_
                               _%hd168606168946%_
                               _%tl168607168948%_
                               _%e168608168951%_
                               _%hd168609168954%_
                               _%tl168610168956%_
                               _%e168611168959%_
                               _%hd168612168962%_
                               _%tl168613168964%_
                               _%e168614168967%_
                               _%hd168615168970%_
                               _%tl168616168972%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl168610168956%_))
                            (let ((_%e168617168975%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl168610168956%_))))
                              (let ((_%tl168619168980%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168617168975%_)))
                                    (_%hd168618168978%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168617168975%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl168619168980%_))
                                    (_%__match174840174841%_
                                     _%e168587168895%_
                                     _%hd168588168898%_
                                     _%tl168589168900%_
                                     _%e168590168903%_
                                     _%hd168591168906%_
                                     _%tl168592168908%_
                                     _%e168593168911%_
                                     _%hd168594168914%_
                                     _%tl168595168916%_
                                     _%e168596168919%_
                                     _%hd168597168922%_
                                     _%tl168598168924%_
                                     _%e168599168927%_
                                     _%hd168600168930%_
                                     _%tl168601168932%_
                                     _%e168602168935%_
                                     _%hd168603168938%_
                                     _%tl168604168940%_
                                     _%e168605168943%_
                                     _%hd168606168946%_
                                     _%tl168607168948%_
                                     _%e168608168951%_
                                     _%hd168609168954%_
                                     _%tl168610168956%_
                                     _%e168611168959%_
                                     _%hd168612168962%_
                                     _%tl168613168964%_
                                     _%e168614168967%_
                                     _%hd168615168970%_
                                     _%tl168616168972%_
                                     _%e168617168975%_
                                     _%hd168618168978%_
                                     _%tl168619168980%_)
                                    (_%__kont174477174478%_))))
                            (_%__match174956174957%_
                             _%e168587168895%_
                             _%hd168588168898%_
                             _%tl168589168900%_
                             _%e168590168903%_
                             _%hd168591168906%_
                             _%tl168592168908%_
                             _%e168593168911%_
                             _%hd168594168914%_
                             _%tl168595168916%_
                             _%e168596168919%_
                             _%hd168597168922%_
                             _%tl168598168924%_
                             _%e168599168927%_
                             _%hd168600168930%_
                             _%tl168601168932%_
                             _%e168602168935%_
                             _%hd168603168938%_
                             _%tl168604168940%_
                             _%e168605168943%_
                             _%hd168606168946%_
                             _%tl168607168948%_
                             _%e168608168951%_
                             _%hd168609168954%_
                             _%tl168610168956%_))))
                     (_%__match174754174755%_
                      (lambda (_%e168553169029%_
                               _%hd168554169032%_
                               _%tl168555169034%_
                               _%e168556169037%_
                               _%hd168557169040%_
                               _%tl168558169042%_
                               _%e168559169045%_
                               _%hd168560169048%_
                               _%tl168561169050%_
                               _%e168562169053%_
                               _%hd168563169056%_
                               _%tl168564169058%_
                               _%e168565169061%_
                               _%hd168566169064%_
                               _%tl168567169066%_
                               _%e168568169069%_
                               _%hd168569169072%_
                               _%tl168570169074%_
                               _%e168571169077%_
                               _%hd168572169080%_
                               _%tl168573169082%_
                               _%e168574169085%_
                               _%hd168575169088%_
                               _%tl168576169090%_
                               _%e168577169093%_
                               _%hd168578169096%_
                               _%tl168579169098%_
                               _%e168580169101%_
                               _%hd168581169104%_
                               _%tl168582169106%_)
                        (let ((_%L169109%_ _%hd168581169104%_)
                              (_%L169110%_ _%hd168572169080%_)
                              (_%L169111%_ _%hd168563169056%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L169111%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L169111%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp175119
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self168441%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L169110%_
                                      __tmp175119)))
                              (_%__kont174469174470%_
                               _%L169109%_
                               _%L169110%_
                               _%L169111%_)
                              (_%__match174958174959%_
                               _%e168553169029%_
                               _%hd168554169032%_
                               _%tl168555169034%_
                               _%e168556169037%_
                               _%hd168557169040%_
                               _%tl168558169042%_
                               _%e168559169045%_
                               _%hd168560169048%_
                               _%tl168561169050%_
                               _%e168562169053%_
                               _%hd168563169056%_
                               _%tl168564169058%_
                               _%e168565169061%_
                               _%hd168566169064%_
                               _%tl168567169066%_
                               _%e168568169069%_
                               _%hd168569169072%_
                               _%tl168570169074%_
                               _%e168571169077%_
                               _%hd168572169080%_
                               _%tl168573169082%_
                               _%e168574169085%_
                               _%hd168575169088%_
                               _%tl168576169090%_)))))
                     (_%__match174752174753%_
                      (lambda (_%e168553169029%_
                               _%hd168554169032%_
                               _%tl168555169034%_
                               _%e168556169037%_
                               _%hd168557169040%_
                               _%tl168558169042%_
                               _%e168559169045%_
                               _%hd168560169048%_
                               _%tl168561169050%_
                               _%e168562169053%_
                               _%hd168563169056%_
                               _%tl168564169058%_
                               _%e168565169061%_
                               _%hd168566169064%_
                               _%tl168567169066%_
                               _%e168568169069%_
                               _%hd168569169072%_
                               _%tl168570169074%_
                               _%e168571169077%_
                               _%hd168572169080%_
                               _%tl168573169082%_
                               _%e168574169085%_
                               _%hd168575169088%_
                               _%tl168576169090%_
                               _%e168577169093%_
                               _%hd168578169096%_
                               _%tl168579169098%_
                               _%e168580169101%_
                               _%hd168581169104%_
                               _%tl168582169106%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl168576169090%_))
                            (_%__match174754174755%_
                             _%e168553169029%_
                             _%hd168554169032%_
                             _%tl168555169034%_
                             _%e168556169037%_
                             _%hd168557169040%_
                             _%tl168558169042%_
                             _%e168559169045%_
                             _%hd168560169048%_
                             _%tl168561169050%_
                             _%e168562169053%_
                             _%hd168563169056%_
                             _%tl168564169058%_
                             _%e168565169061%_
                             _%hd168566169064%_
                             _%tl168567169066%_
                             _%e168568169069%_
                             _%hd168569169072%_
                             _%tl168570169074%_
                             _%e168571169077%_
                             _%hd168572169080%_
                             _%tl168573169082%_
                             _%e168574169085%_
                             _%hd168575169088%_
                             _%tl168576169090%_
                             _%e168577169093%_
                             _%hd168578169096%_
                             _%tl168579169098%_
                             _%e168580169101%_
                             _%hd168581169104%_
                             _%tl168582169106%_)
                            (_%__match174832174833%_
                             _%e168553169029%_
                             _%hd168554169032%_
                             _%tl168555169034%_
                             _%e168556169037%_
                             _%hd168557169040%_
                             _%tl168558169042%_
                             _%e168559169045%_
                             _%hd168560169048%_
                             _%tl168561169050%_
                             _%e168562169053%_
                             _%hd168563169056%_
                             _%tl168564169058%_
                             _%e168565169061%_
                             _%hd168566169064%_
                             _%tl168567169066%_
                             _%e168568169069%_
                             _%hd168569169072%_
                             _%tl168570169074%_
                             _%e168571169077%_
                             _%hd168572169080%_
                             _%tl168573169082%_
                             _%e168574169085%_
                             _%hd168575169088%_
                             _%tl168576169090%_
                             _%e168577169093%_
                             _%hd168578169096%_
                             _%tl168579169098%_
                             _%e168580169101%_
                             _%hd168581169104%_
                             _%tl168582169106%_))))
                     (_%__match174742174743%_
                      (lambda (_%e168553169029%_
                               _%hd168554169032%_
                               _%tl168555169034%_
                               _%e168556169037%_
                               _%hd168557169040%_
                               _%tl168558169042%_
                               _%e168559169045%_
                               _%hd168560169048%_
                               _%tl168561169050%_
                               _%e168562169053%_
                               _%hd168563169056%_
                               _%tl168564169058%_
                               _%e168565169061%_
                               _%hd168566169064%_
                               _%tl168567169066%_
                               _%e168568169069%_
                               _%hd168569169072%_
                               _%tl168570169074%_
                               _%e168571169077%_
                               _%hd168572169080%_
                               _%tl168573169082%_
                               _%e168574169085%_
                               _%hd168575169088%_
                               _%tl168576169090%_
                               _%e168577169093%_
                               _%hd168578169096%_
                               _%tl168579169098%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd168578169096%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl168579169098%_))
                                (let ((_%e168580169101%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl168579169098%_))))
                                  (let ((_%tl168582169106%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168580169101%_)))
                                        (_%hd168581169104%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168580169101%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl168582169106%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168576169090%_))
                                            (_%__match174754174755%_
                                             _%e168553169029%_
                                             _%hd168554169032%_
                                             _%tl168555169034%_
                                             _%e168556169037%_
                                             _%hd168557169040%_
                                             _%tl168558169042%_
                                             _%e168559169045%_
                                             _%hd168560169048%_
                                             _%tl168561169050%_
                                             _%e168562169053%_
                                             _%hd168563169056%_
                                             _%tl168564169058%_
                                             _%e168565169061%_
                                             _%hd168566169064%_
                                             _%tl168567169066%_
                                             _%e168568169069%_
                                             _%hd168569169072%_
                                             _%tl168570169074%_
                                             _%e168571169077%_
                                             _%hd168572169080%_
                                             _%tl168573169082%_
                                             _%e168574169085%_
                                             _%hd168575169088%_
                                             _%tl168576169090%_
                                             _%e168577169093%_
                                             _%hd168578169096%_
                                             _%tl168579169098%_
                                             _%e168580169101%_
                                             _%hd168581169104%_
                                             _%tl168582169106%_)
                                            (_%__match174832174833%_
                                             _%e168553169029%_
                                             _%hd168554169032%_
                                             _%tl168555169034%_
                                             _%e168556169037%_
                                             _%hd168557169040%_
                                             _%tl168558169042%_
                                             _%e168559169045%_
                                             _%hd168560169048%_
                                             _%tl168561169050%_
                                             _%e168562169053%_
                                             _%hd168563169056%_
                                             _%tl168564169058%_
                                             _%e168565169061%_
                                             _%hd168566169064%_
                                             _%tl168567169066%_
                                             _%e168568169069%_
                                             _%hd168569169072%_
                                             _%tl168570169074%_
                                             _%e168571169077%_
                                             _%hd168572169080%_
                                             _%tl168573169082%_
                                             _%e168574169085%_
                                             _%hd168575169088%_
                                             _%tl168576169090%_
                                             _%e168577169093%_
                                             _%hd168578169096%_
                                             _%tl168579169098%_
                                             _%e168580169101%_
                                             _%hd168581169104%_
                                             _%tl168582169106%_))
                                        (_%__match174956174957%_
                                         _%e168553169029%_
                                         _%hd168554169032%_
                                         _%tl168555169034%_
                                         _%e168556169037%_
                                         _%hd168557169040%_
                                         _%tl168558169042%_
                                         _%e168559169045%_
                                         _%hd168560169048%_
                                         _%tl168561169050%_
                                         _%e168562169053%_
                                         _%hd168563169056%_
                                         _%tl168564169058%_
                                         _%e168565169061%_
                                         _%hd168566169064%_
                                         _%tl168567169066%_
                                         _%e168568169069%_
                                         _%hd168569169072%_
                                         _%tl168570169074%_
                                         _%e168571169077%_
                                         _%hd168572169080%_
                                         _%tl168573169082%_
                                         _%e168574169085%_
                                         _%hd168575169088%_
                                         _%tl168576169090%_))))
                                (_%__match174956174957%_
                                 _%e168553169029%_
                                 _%hd168554169032%_
                                 _%tl168555169034%_
                                 _%e168556169037%_
                                 _%hd168557169040%_
                                 _%tl168558169042%_
                                 _%e168559169045%_
                                 _%hd168560169048%_
                                 _%tl168561169050%_
                                 _%e168562169053%_
                                 _%hd168563169056%_
                                 _%tl168564169058%_
                                 _%e168565169061%_
                                 _%hd168566169064%_
                                 _%tl168567169066%_
                                 _%e168568169069%_
                                 _%hd168569169072%_
                                 _%tl168570169074%_
                                 _%e168571169077%_
                                 _%hd168572169080%_
                                 _%tl168573169082%_
                                 _%e168574169085%_
                                 _%hd168575169088%_
                                 _%tl168576169090%_))
                            (_%__match174956174957%_
                             _%e168553169029%_
                             _%hd168554169032%_
                             _%tl168555169034%_
                             _%e168556169037%_
                             _%hd168557169040%_
                             _%tl168558169042%_
                             _%e168559169045%_
                             _%hd168560169048%_
                             _%tl168561169050%_
                             _%e168562169053%_
                             _%hd168563169056%_
                             _%tl168564169058%_
                             _%e168565169061%_
                             _%hd168566169064%_
                             _%tl168567169066%_
                             _%e168568169069%_
                             _%hd168569169072%_
                             _%tl168570169074%_
                             _%e168571169077%_
                             _%hd168572169080%_
                             _%tl168573169082%_
                             _%e168574169085%_
                             _%hd168575169088%_
                             _%tl168576169090%_))))
                     (_%__match174674174675%_
                      (lambda (_%e168502169150%_
                               _%hd168503169153%_
                               _%tl168504169155%_
                               _%e168505169158%_
                               _%hd168506169161%_
                               _%tl168507169163%_
                               _%e168508169166%_
                               _%hd168509169169%_
                               _%tl168510169171%_
                               _%e168511169174%_
                               _%hd168512169177%_
                               _%tl168513169179%_
                               _%e168514169182%_
                               _%hd168515169185%_
                               _%tl168516169187%_
                               _%e168517169190%_
                               _%hd168518169193%_
                               _%tl168519169195%_
                               _%e168520169198%_
                               _%hd168521169201%_
                               _%tl168522169203%_
                               _%e168523169206%_
                               _%hd168524169209%_
                               _%tl168525169211%_
                               _%e168526169214%_
                               _%hd168527169217%_
                               _%tl168528169219%_
                               _%e168529169222%_
                               _%hd168530169225%_
                               _%tl168531169227%_
                               _%e168532169230%_
                               _%hd168533169233%_
                               _%tl168534169235%_
                               _%e168535169238%_
                               _%hd168536169241%_
                               _%tl168537169243%_
                               _%e168538169246%_
                               _%hd168539169249%_
                               _%tl168540169251%_
                               _%__splice174467174468%_
                               _%target168541169254%_
                               _%tl168543169256%_)
                        (letrec ((_%loop168544169259%_
                                  (lambda (_%hd168542169262%_
                                           _%args168548169264%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd168542169262%_))
                                        (let ((_%e168545169267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd168542169262%_))))
                                          (let ((_%lp-tl168547169272%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168545169267%_)))
                                                (_%lp-hd168546169270%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168545169267%_))))
                                            (_%loop168544169259%_
                                             _%lp-tl168547169272%_
                                             (cons _%lp-hd168546169270%_
                                                   _%args168548169264%_))))
                                        (let ((_%args168549169275%_
                                               (reverse _%args168548169264%_)))
                                          (let ((_%L169278%_
                                                 _%args168549169275%_)
                                                (_%L169279%_
                                                 _%hd168539169249%_)
                                                (_%L169280%_
                                                 _%hd168530169225%_)
                                                (_%L169281%_
                                                 _%hd168521169201%_)
                                                (_%L169282%_
                                                 _%hd168512169177%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L169282%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L169281%_
                                                        'call-method))
                                                     (let ((__tmp175120
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self168441%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L169280%_
                                                        __tmp175120)))
                                                (_%__kont174465174466%_
                                                 _%L169278%_
                                                 _%L169279%_
                                                 _%L169280%_
                                                 _%L169281%_
                                                 _%L169282%_)
                                                (_%__kont174477174478%_))))))))
                          (_%loop168544169259%_ _%target168541169254%_ '()))))
                     (_%__match174632174633%_
                      (lambda (_%e168502169150%_
                               _%hd168503169153%_
                               _%tl168504169155%_
                               _%e168505169158%_
                               _%hd168506169161%_
                               _%tl168507169163%_
                               _%e168508169166%_
                               _%hd168509169169%_
                               _%tl168510169171%_
                               _%e168511169174%_
                               _%hd168512169177%_
                               _%tl168513169179%_
                               _%e168514169182%_
                               _%hd168515169185%_
                               _%tl168516169187%_
                               _%e168517169190%_
                               _%hd168518169193%_
                               _%tl168519169195%_
                               _%e168520169198%_
                               _%hd168521169201%_
                               _%tl168522169203%_
                               _%e168523169206%_
                               _%hd168524169209%_
                               _%tl168525169211%_
                               _%e168526169214%_
                               _%hd168527169217%_
                               _%tl168528169219%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd168527169217%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl168528169219%_))
                                (let ((_%e168529169222%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl168528169219%_))))
                                  (let ((_%tl168531169227%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168529169222%_)))
                                        (_%hd168530169225%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168529169222%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl168531169227%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl168525169211%_))
                                            (let ((_%e168532169230%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl168525169211%_))))
                                              (let ((_%tl168534169235%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168532169230%_)))
                                                    (_%hd168533169233%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168532169230%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd168533169233%_))
                                                    (let ((_%e168535169238%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd168533169233%_))))
                                                      (let ((_%tl168537169243%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e168535169238%_)))
                    (_%hd168536169241%_
                     (let () (declare (not safe)) (##car _%e168535169238%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd168536169241%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd168536169241%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl168537169243%_))
                            (let ((_%e168538169246%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl168537169243%_))))
                              (let ((_%tl168540169251%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168538169246%_)))
                                    (_%hd168539169249%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168538169246%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl168540169251%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl168534169235%_))
                                        (let ((_%__splice174467174468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl168534169235%_
                                                  '0))))
                                          (let ((_%tl168543169256%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice174467174468%_
                                                    '1)))
                                                (_%target168541169254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice174467174468%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl168543169256%_))
                                                (_%__match174674174675%_
                                                 _%e168502169150%_
                                                 _%hd168503169153%_
                                                 _%tl168504169155%_
                                                 _%e168505169158%_
                                                 _%hd168506169161%_
                                                 _%tl168507169163%_
                                                 _%e168508169166%_
                                                 _%hd168509169169%_
                                                 _%tl168510169171%_
                                                 _%e168511169174%_
                                                 _%hd168512169177%_
                                                 _%tl168513169179%_
                                                 _%e168514169182%_
                                                 _%hd168515169185%_
                                                 _%tl168516169187%_
                                                 _%e168517169190%_
                                                 _%hd168518169193%_
                                                 _%tl168519169195%_
                                                 _%e168520169198%_
                                                 _%hd168521169201%_
                                                 _%tl168522169203%_
                                                 _%e168523169206%_
                                                 _%hd168524169209%_
                                                 _%tl168525169211%_
                                                 _%e168526169214%_
                                                 _%hd168527169217%_
                                                 _%tl168528169219%_
                                                 _%e168529169222%_
                                                 _%hd168530169225%_
                                                 _%tl168531169227%_
                                                 _%e168532169230%_
                                                 _%hd168533169233%_
                                                 _%tl168534169235%_
                                                 _%e168535169238%_
                                                 _%hd168536169241%_
                                                 _%tl168537169243%_
                                                 _%e168538169246%_
                                                 _%hd168539169249%_
                                                 _%tl168540169251%_
                                                 _%__splice174467174468%_
                                                 _%target168541169254%_
                                                 _%tl168543169256%_)
                                                (_%__kont174477174478%_))))
                                        (_%__kont174477174478%_))
                                    (_%__kont174477174478%_))))
                            (_%__kont174477174478%_))
                        (_%__kont174477174478%_))
                    (_%__kont174477174478%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont174477174478%_))))
                                            (_%__match174956174957%_
                                             _%e168502169150%_
                                             _%hd168503169153%_
                                             _%tl168504169155%_
                                             _%e168505169158%_
                                             _%hd168506169161%_
                                             _%tl168507169163%_
                                             _%e168508169166%_
                                             _%hd168509169169%_
                                             _%tl168510169171%_
                                             _%e168511169174%_
                                             _%hd168512169177%_
                                             _%tl168513169179%_
                                             _%e168514169182%_
                                             _%hd168515169185%_
                                             _%tl168516169187%_
                                             _%e168517169190%_
                                             _%hd168518169193%_
                                             _%tl168519169195%_
                                             _%e168520169198%_
                                             _%hd168521169201%_
                                             _%tl168522169203%_
                                             _%e168523169206%_
                                             _%hd168524169209%_
                                             _%tl168525169211%_))
                                        (_%__match174956174957%_
                                         _%e168502169150%_
                                         _%hd168503169153%_
                                         _%tl168504169155%_
                                         _%e168505169158%_
                                         _%hd168506169161%_
                                         _%tl168507169163%_
                                         _%e168508169166%_
                                         _%hd168509169169%_
                                         _%tl168510169171%_
                                         _%e168511169174%_
                                         _%hd168512169177%_
                                         _%tl168513169179%_
                                         _%e168514169182%_
                                         _%hd168515169185%_
                                         _%tl168516169187%_
                                         _%e168517169190%_
                                         _%hd168518169193%_
                                         _%tl168519169195%_
                                         _%e168520169198%_
                                         _%hd168521169201%_
                                         _%tl168522169203%_
                                         _%e168523169206%_
                                         _%hd168524169209%_
                                         _%tl168525169211%_))))
                                (_%__match174956174957%_
                                 _%e168502169150%_
                                 _%hd168503169153%_
                                 _%tl168504169155%_
                                 _%e168505169158%_
                                 _%hd168506169161%_
                                 _%tl168507169163%_
                                 _%e168508169166%_
                                 _%hd168509169169%_
                                 _%tl168510169171%_
                                 _%e168511169174%_
                                 _%hd168512169177%_
                                 _%tl168513169179%_
                                 _%e168514169182%_
                                 _%hd168515169185%_
                                 _%tl168516169187%_
                                 _%e168517169190%_
                                 _%hd168518169193%_
                                 _%tl168519169195%_
                                 _%e168520169198%_
                                 _%hd168521169201%_
                                 _%tl168522169203%_
                                 _%e168523169206%_
                                 _%hd168524169209%_
                                 _%tl168525169211%_))
                            (_%__match174742174743%_
                             _%e168502169150%_
                             _%hd168503169153%_
                             _%tl168504169155%_
                             _%e168505169158%_
                             _%hd168506169161%_
                             _%tl168507169163%_
                             _%e168508169166%_
                             _%hd168509169169%_
                             _%tl168510169171%_
                             _%e168511169174%_
                             _%hd168512169177%_
                             _%tl168513169179%_
                             _%e168514169182%_
                             _%hd168515169185%_
                             _%tl168516169187%_
                             _%e168517169190%_
                             _%hd168518169193%_
                             _%tl168519169195%_
                             _%e168520169198%_
                             _%hd168521169201%_
                             _%tl168522169203%_
                             _%e168523169206%_
                             _%hd168524169209%_
                             _%tl168525169211%_
                             _%e168526169214%_
                             _%hd168527169217%_
                             _%tl168528169219%_))))
                     (_%__match174564174565%_
                      (lambda (_%e168458169342%_
                               _%hd168459169345%_
                               _%tl168460169347%_
                               _%e168461169350%_
                               _%hd168462169353%_
                               _%tl168463169355%_
                               _%e168464169358%_
                               _%hd168465169361%_
                               _%tl168466169363%_
                               _%e168467169366%_
                               _%hd168468169369%_
                               _%tl168469169371%_
                               _%e168470169374%_
                               _%hd168471169377%_
                               _%tl168472169379%_
                               _%e168473169382%_
                               _%hd168474169385%_
                               _%tl168475169387%_
                               _%e168476169390%_
                               _%hd168477169393%_
                               _%tl168478169395%_
                               _%e168479169398%_
                               _%hd168480169401%_
                               _%tl168481169403%_
                               _%e168482169406%_
                               _%hd168483169409%_
                               _%tl168484169411%_
                               _%e168485169414%_
                               _%hd168486169417%_
                               _%tl168487169419%_
                               _%__splice174463174464%_
                               _%target168488169422%_
                               _%tl168490169424%_)
                        (letrec ((_%loop168491169427%_
                                  (lambda (_%hd168489169430%_
                                           _%args168495169432%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd168489169430%_))
                                        (let ((_%e168492169435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd168489169430%_))))
                                          (let ((_%lp-tl168494169440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168492169435%_)))
                                                (_%lp-hd168493169438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168492169435%_))))
                                            (_%loop168491169427%_
                                             _%lp-tl168494169440%_
                                             (cons _%lp-hd168493169438%_
                                                   _%args168495169432%_))))
                                        (let ((_%args168496169443%_
                                               (reverse _%args168495169432%_)))
                                          (let ((_%L169446%_
                                                 _%args168496169443%_)
                                                (_%L169447%_
                                                 _%hd168486169417%_)
                                                (_%L169448%_
                                                 _%hd168477169393%_)
                                                (_%L169449%_
                                                 _%hd168468169369%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L169449%_
                                                        'call-method))
                                                     (let ((__tmp175121
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self168441%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L169448%_
                                                        __tmp175121)))
                                                (_%__kont174461174462%_
                                                 _%L169446%_
                                                 _%L169447%_
                                                 _%L169448%_
                                                 _%L169449%_)
                                                (_%__match174752174753%_
                                                 _%e168458169342%_
                                                 _%hd168459169345%_
                                                 _%tl168460169347%_
                                                 _%e168461169350%_
                                                 _%hd168462169353%_
                                                 _%tl168463169355%_
                                                 _%e168464169358%_
                                                 _%hd168465169361%_
                                                 _%tl168466169363%_
                                                 _%e168467169366%_
                                                 _%hd168468169369%_
                                                 _%tl168469169371%_
                                                 _%e168470169374%_
                                                 _%hd168471169377%_
                                                 _%tl168472169379%_
                                                 _%e168473169382%_
                                                 _%hd168474169385%_
                                                 _%tl168475169387%_
                                                 _%e168476169390%_
                                                 _%hd168477169393%_
                                                 _%tl168478169395%_
                                                 _%e168479169398%_
                                                 _%hd168480169401%_
                                                 _%tl168481169403%_
                                                 _%e168482169406%_
                                                 _%hd168483169409%_
                                                 _%tl168484169411%_
                                                 _%e168485169414%_
                                                 _%hd168486169417%_
                                                 _%tl168487169419%_))))))))
                          (_%loop168491169427%_ _%target168488169422%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx174459174460%_))
                    (let ((_%e168458169342%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx174459174460%_))))
                      (let ((_%tl168460169347%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168458169342%_)))
                            (_%hd168459169345%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168458169342%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl168460169347%_))
                            (let ((_%e168461169350%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl168460169347%_))))
                              (let ((_%tl168463169355%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168461169350%_)))
                                    (_%hd168462169353%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168461169350%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd168462169353%_))
                                    (let ((_%e168464169358%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd168462169353%_))))
                                      (let ((_%tl168466169363%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168464169358%_)))
                                            (_%hd168465169361%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168464169358%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd168465169361%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd168465169361%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl168466169363%_))
                                                    (let ((_%e168467169366%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl168466169363%_))))
                                                      (let ((_%tl168469169371%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e168467169366%_)))
                    (_%hd168468169369%_
                     (let () (declare (not safe)) (##car _%e168467169366%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl168469169371%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl168463169355%_))
                        (let ((_%e168470169374%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168463169355%_))))
                          (let ((_%tl168472169379%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168470169374%_)))
                                (_%hd168471169377%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168470169374%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd168471169377%_))
                                (let ((_%e168473169382%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd168471169377%_))))
                                  (let ((_%tl168475169387%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168473169382%_)))
                                        (_%hd168474169385%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168473169382%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd168474169385%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd168474169385%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl168475169387%_))
                                                (let ((_%e168476169390%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl168475169387%_))))
                                                  (let ((_%tl168478169395%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168476169390%_)))
                                                        (_%hd168477169393%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168476169390%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl168478169395%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl168472169379%_))
                                                            (let ((_%e168479169398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl168472169379%_))))
                      (let ((_%tl168481169403%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168479169398%_)))
                            (_%hd168480169401%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168479169398%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd168480169401%_))
                            (let ((_%e168482169406%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd168480169401%_))))
                              (let ((_%tl168484169411%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168482169406%_)))
                                    (_%hd168483169409%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168482169406%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd168483169409%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd168483169409%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl168484169411%_))
                                            (let ((_%e168485169414%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl168484169411%_))))
                                              (let ((_%tl168487169419%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168485169414%_)))
                                                    (_%hd168486169417%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168485169414%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl168487169419%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl168481169403%_))
                                                        (let ((_%__splice174463174464%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl168481169403%_ '0))))
                  (let ((_%tl168490169424%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice174463174464%_ '1)))
                        (_%target168488169422%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice174463174464%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl168490169424%_))
                        (_%__match174564174565%_
                         _%e168458169342%_
                         _%hd168459169345%_
                         _%tl168460169347%_
                         _%e168461169350%_
                         _%hd168462169353%_
                         _%tl168463169355%_
                         _%e168464169358%_
                         _%hd168465169361%_
                         _%tl168466169363%_
                         _%e168467169366%_
                         _%hd168468169369%_
                         _%tl168469169371%_
                         _%e168470169374%_
                         _%hd168471169377%_
                         _%tl168472169379%_
                         _%e168473169382%_
                         _%hd168474169385%_
                         _%tl168475169387%_
                         _%e168476169390%_
                         _%hd168477169393%_
                         _%tl168478169395%_
                         _%e168479169398%_
                         _%hd168480169401%_
                         _%tl168481169403%_
                         _%e168482169406%_
                         _%hd168483169409%_
                         _%tl168484169411%_
                         _%e168485169414%_
                         _%hd168486169417%_
                         _%tl168487169419%_
                         _%__splice174463174464%_
                         _%target168488169422%_
                         _%tl168490169424%_)
                        (_%__match174752174753%_
                         _%e168458169342%_
                         _%hd168459169345%_
                         _%tl168460169347%_
                         _%e168461169350%_
                         _%hd168462169353%_
                         _%tl168463169355%_
                         _%e168464169358%_
                         _%hd168465169361%_
                         _%tl168466169363%_
                         _%e168467169366%_
                         _%hd168468169369%_
                         _%tl168469169371%_
                         _%e168470169374%_
                         _%hd168471169377%_
                         _%tl168472169379%_
                         _%e168473169382%_
                         _%hd168474169385%_
                         _%tl168475169387%_
                         _%e168476169390%_
                         _%hd168477169393%_
                         _%tl168478169395%_
                         _%e168479169398%_
                         _%hd168480169401%_
                         _%tl168481169403%_
                         _%e168482169406%_
                         _%hd168483169409%_
                         _%tl168484169411%_
                         _%e168485169414%_
                         _%hd168486169417%_
                         _%tl168487169419%_))))
                (_%__match174752174753%_
                 _%e168458169342%_
                 _%hd168459169345%_
                 _%tl168460169347%_
                 _%e168461169350%_
                 _%hd168462169353%_
                 _%tl168463169355%_
                 _%e168464169358%_
                 _%hd168465169361%_
                 _%tl168466169363%_
                 _%e168467169366%_
                 _%hd168468169369%_
                 _%tl168469169371%_
                 _%e168470169374%_
                 _%hd168471169377%_
                 _%tl168472169379%_
                 _%e168473169382%_
                 _%hd168474169385%_
                 _%tl168475169387%_
                 _%e168476169390%_
                 _%hd168477169393%_
                 _%tl168478169395%_
                 _%e168479169398%_
                 _%hd168480169401%_
                 _%tl168481169403%_
                 _%e168482169406%_
                 _%hd168483169409%_
                 _%tl168484169411%_
                 _%e168485169414%_
                 _%hd168486169417%_
                 _%tl168487169419%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match174956174957%_
                                                     _%e168458169342%_
                                                     _%hd168459169345%_
                                                     _%tl168460169347%_
                                                     _%e168461169350%_
                                                     _%hd168462169353%_
                                                     _%tl168463169355%_
                                                     _%e168464169358%_
                                                     _%hd168465169361%_
                                                     _%tl168466169363%_
                                                     _%e168467169366%_
                                                     _%hd168468169369%_
                                                     _%tl168469169371%_
                                                     _%e168470169374%_
                                                     _%hd168471169377%_
                                                     _%tl168472169379%_
                                                     _%e168473169382%_
                                                     _%hd168474169385%_
                                                     _%tl168475169387%_
                                                     _%e168476169390%_
                                                     _%hd168477169393%_
                                                     _%tl168478169395%_
                                                     _%e168479169398%_
                                                     _%hd168480169401%_
                                                     _%tl168481169403%_))))
                                            (_%__match174956174957%_
                                             _%e168458169342%_
                                             _%hd168459169345%_
                                             _%tl168460169347%_
                                             _%e168461169350%_
                                             _%hd168462169353%_
                                             _%tl168463169355%_
                                             _%e168464169358%_
                                             _%hd168465169361%_
                                             _%tl168466169363%_
                                             _%e168467169366%_
                                             _%hd168468169369%_
                                             _%tl168469169371%_
                                             _%e168470169374%_
                                             _%hd168471169377%_
                                             _%tl168472169379%_
                                             _%e168473169382%_
                                             _%hd168474169385%_
                                             _%tl168475169387%_
                                             _%e168476169390%_
                                             _%hd168477169393%_
                                             _%tl168478169395%_
                                             _%e168479169398%_
                                             _%hd168480169401%_
                                             _%tl168481169403%_))
                                        (_%__match174632174633%_
                                         _%e168458169342%_
                                         _%hd168459169345%_
                                         _%tl168460169347%_
                                         _%e168461169350%_
                                         _%hd168462169353%_
                                         _%tl168463169355%_
                                         _%e168464169358%_
                                         _%hd168465169361%_
                                         _%tl168466169363%_
                                         _%e168467169366%_
                                         _%hd168468169369%_
                                         _%tl168469169371%_
                                         _%e168470169374%_
                                         _%hd168471169377%_
                                         _%tl168472169379%_
                                         _%e168473169382%_
                                         _%hd168474169385%_
                                         _%tl168475169387%_
                                         _%e168476169390%_
                                         _%hd168477169393%_
                                         _%tl168478169395%_
                                         _%e168479169398%_
                                         _%hd168480169401%_
                                         _%tl168481169403%_
                                         _%e168482169406%_
                                         _%hd168483169409%_
                                         _%tl168484169411%_))
                                    (_%__match174956174957%_
                                     _%e168458169342%_
                                     _%hd168459169345%_
                                     _%tl168460169347%_
                                     _%e168461169350%_
                                     _%hd168462169353%_
                                     _%tl168463169355%_
                                     _%e168464169358%_
                                     _%hd168465169361%_
                                     _%tl168466169363%_
                                     _%e168467169366%_
                                     _%hd168468169369%_
                                     _%tl168469169371%_
                                     _%e168470169374%_
                                     _%hd168471169377%_
                                     _%tl168472169379%_
                                     _%e168473169382%_
                                     _%hd168474169385%_
                                     _%tl168475169387%_
                                     _%e168476169390%_
                                     _%hd168477169393%_
                                     _%tl168478169395%_
                                     _%e168479169398%_
                                     _%hd168480169401%_
                                     _%tl168481169403%_))))
                            (_%__match174956174957%_
                             _%e168458169342%_
                             _%hd168459169345%_
                             _%tl168460169347%_
                             _%e168461169350%_
                             _%hd168462169353%_
                             _%tl168463169355%_
                             _%e168464169358%_
                             _%hd168465169361%_
                             _%tl168466169363%_
                             _%e168467169366%_
                             _%hd168468169369%_
                             _%tl168469169371%_
                             _%e168470169374%_
                             _%hd168471169377%_
                             _%tl168472169379%_
                             _%e168473169382%_
                             _%hd168474169385%_
                             _%tl168475169387%_
                             _%e168476169390%_
                             _%hd168477169393%_
                             _%tl168478169395%_
                             _%e168479169398%_
                             _%hd168480169401%_
                             _%tl168481169403%_))))
                    (_%__match174894174895%_
                     _%e168458169342%_
                     _%hd168459169345%_
                     _%tl168460169347%_
                     _%e168461169350%_
                     _%hd168462169353%_
                     _%tl168463169355%_
                     _%e168464169358%_
                     _%hd168465169361%_
                     _%tl168466169363%_
                     _%e168467169366%_
                     _%hd168468169369%_
                     _%tl168469169371%_
                     _%e168470169374%_
                     _%hd168471169377%_
                     _%tl168472169379%_
                     _%e168473169382%_
                     _%hd168474169385%_
                     _%tl168475169387%_
                     _%e168476169390%_
                     _%hd168477169393%_
                     _%tl168478169395%_))
                (_%__kont174477174478%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont174477174478%_))
                                            (_%__kont174477174478%_))
                                        (_%__kont174477174478%_))))
                                (_%__kont174477174478%_))))
                        (_%__kont174477174478%_))
                    (_%__kont174477174478%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont174477174478%_))
                                                (_%__kont174477174478%_))
                                            (_%__kont174477174478%_))))
                                    (_%__kont174477174478%_))))
                            (_%__kont174477174478%_))))
                    (_%__kont174477174478%_))))))))))
