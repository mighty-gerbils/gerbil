(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712993619)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp175935 (list gxc#::identity::t))
            (__tmp175934 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp175935
         '()
         __tmp175934
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args174732%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args174732%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp175936
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
        (__make-promise __tmp175936)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx174724%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self174727%_
                (let ((__obj175927
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj175927))
               (__tmp175937
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self174727%_ _%stx174724%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp175937
           gxc#current-compile-method
           _%self174727%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp175939 (list gxc#::false::t))
            (__tmp175938 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp175939
         '()
         __tmp175938
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args174721%_
        (apply make-instance gxc#::extract-receiver::t _%$args174721%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp175940
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
        (__make-promise __tmp175940)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx174713%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self174716%_
                (let ((__obj175929
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj175929))
               (__tmp175941
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self174716%_ _%stx174713%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp175941
           gxc#current-compile-method
           _%self174716%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp175943 (list gxc#::void::t))
            (__tmp175942 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp175943
         '(receiver methods slots)
         __tmp175942
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args174710%_
        (apply make-instance gxc#::collect-object-refs::t _%$args174710%_)))
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
      (let ((__tmp175944
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
        (__make-promise __tmp175944)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords174676%_
               _%receiver174671174677%_
               _%methods174672174679%_
               _%slots174673174681%_
               _%stx174683%_)
        (let* ((_%receiver174686%_
                (if (eq? _%receiver174671174677%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver174671174677%_))
               (_%methods174688%_
                (if (eq? _%methods174672174679%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods174672174679%_))
               (_%slots174690%_
                (if (eq? _%slots174673174681%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots174673174681%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self174692%_
                  (let ((__obj175931
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
                       __obj175931
                       _%receiver174686%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj175931
                       _%methods174688%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj175931
                       _%slots174690%_
                       '3
                       '#f
                       '#f))
                    __obj175931))
                 (__tmp175945
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self174692%_ _%stx174683%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp175945
             gxc#current-compile-method
             _%self174692%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords174699%_ . _%args174700%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords174699%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174699%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174699%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174699%_
                  'slots:
                  absent-value))
               _%args174700%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args174674174706%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args174674174706%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp175947 (list gxc#::basic-xform-expression::t))
            (__tmp175946 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp175947
         '(receiver klass methods slots)
         __tmp175946
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args174667%_
        (apply make-instance gxc#::subst-object-refs::t _%$args174667%_)))
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
      (let ((__tmp175948
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
        (__make-promise __tmp175948)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords174629%_
               _%receiver174623174630%_
               _%klass174624174632%_
               _%methods174625174634%_
               _%slots174626174636%_
               _%stx174638%_)
        (let* ((_%receiver174641%_
                (if (eq? _%receiver174623174630%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver174623174630%_))
               (_%klass174643%_
                (if (eq? _%klass174624174632%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass174624174632%_))
               (_%methods174645%_
                (if (eq? _%methods174625174634%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods174625174634%_))
               (_%slots174647%_
                (if (eq? _%slots174626174636%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots174626174636%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self174649%_
                  (let ((__obj175933
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
                       __obj175933
                       _%receiver174641%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj175933
                       _%klass174643%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj175933
                       _%methods174645%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj175933
                       _%slots174647%_
                       '4
                       '#f
                       '#f))
                    __obj175933))
                 (__tmp175949
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self174649%_ _%stx174638%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp175949
             gxc#current-compile-method
             _%self174649%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords174656%_ . _%args174657%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords174656%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174656%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174656%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174656%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174656%_
                  'slots:
                  absent-value))
               _%args174657%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args174627174663%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args174627174663%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self171738%_ _%stx171739%_)
        (letrec ((_%generate-method-bind171741%_
                  (lambda (_%$klass174615%_
                           _%$method-table174616%_
                           _%id174617%_
                           _%$id174618%_)
                    (let ((_%$tmp174620%_
                           (let ((__tmp175950
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp175950))))
                      (cons (cons _%$id174618%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp174620%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table174616%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id174617%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp174620%_ '()))
                    (cons (cons '%#ref (cons _%$tmp174620%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id174617%_
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
                 (_%generate-slot-bind171742%_
                  (lambda (_%$klass174609%_ _%id174610%_ _%$id174611%_)
                    (let ((_%$tmp174613%_
                           (let ((__tmp175951
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp175951))))
                      (cons (cons _%$id174611%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp174613%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass174609%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id174610%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp174613%_ '()))
                        (cons (cons '%#ref (cons _%$tmp174613%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id174610%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl171743%_
                  (lambda (_%$klass174603%_
                           _%$method-table174604%_
                           _%methods-bind174605%_
                           _%slots-bind174606%_
                           _%specializer-impl174607%_)
                    (let ((__tmp175952
                           (cons '%#lambda
                                 (cons (cons _%$klass174603%_
                                             (cons _%$method-table174604%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind174606%_
                                                            _%methods-bind174605%_))
                                                         (cons _%specializer-impl174607%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp175952 _%stx171739%_))))
                 (_%generate-specializer-def171744%_
                  (lambda (_%id174599%_
                           _%specializer-id174600%_
                           _%specializer-impl174601%_)
                    (let ((__tmp175953
                           (cons '%#begin
                                 (cons _%stx171739%_
                                       (cons (let ((__tmp175954
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id174600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl174601%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp175954
                                                _%stx171739%_))
                                             (cons (let ((__tmp175955
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id174599%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id174600%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp175955
                                                      _%stx171739%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp175953 _%stx171739%_)))))
          (let* ((_%__stx174821174822%_ _%stx171739%_)
                 (_%g171747171767%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx174821174822%_)))))
            (let ((_%__kont174823174824%_
                   (lambda (_%L171811%_ _%L171812%_)
                     (let ((_%method-calls171831%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs171832%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty171833%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?171835%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls171831%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs171832%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L171811%_))
                             (let* ((_%__stx174735174736%_ _%L171811%_)
                                    (_%g172223172241%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx174735174736%_)))))
                               (let ((_%__kont174737174738%_
                                      (lambda (_%L172277%_
                                               _%L172278%_
                                               _%L172279%_)
                                        (let ((_%receiver172299%_
                                               (let ((_%$e172296%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L172277%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e172296%_
                                                     _%$e172296%_
                                                     _%L172279%_))))
                                          (for-each
                                           (lambda (_%g172300172302%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver172299%_
                                              _%method-calls171831%_
                                              _%slot-refs171832%_
                                              _%g172300172302%_))
                                           _%L172277%_)
                                          (if (_%no-specializer?171835%_)
                                              _%stx171739%_
                                              (let* ((_%specializer-id172311%_
                                                      (let* ((_%id172305%_
                                                              (let ((__tmp175956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L171812%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp175956 '"::specialize")))
                     (_%specializer-id172308%_
                      (let ((__tmp175957
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx171739%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id172305%_ __tmp175957))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id172308%_))
                _%specializer-id172308%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass172313%_
                                                      (let ((__tmp175958
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp175958)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table172315%_
                                                      (let ((__tmp175959
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp175959)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods172317%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls171831%_)))
                                                     (_%$methods172321%_
                                                      (map (lambda (_%id172319%_)
                                                             (let ((__tmp175960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172319%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp175960)))
                   _%methods172317%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172330%_
                                                      (for-each
                                                       (lambda (_%g172322172325%_
                                                                _%g172323172327%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls171831%_
                                                            _%g172322172325%_
                                                            _%g172323172327%_)))
                                                       _%methods172317%_
                                                       _%$methods172321%_))
                                                     (_%methods-bind172340%_
                                                      (map (lambda (_%g172332172335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172333172337%_)
                     (_%generate-method-bind171741%_
                      _%$klass172313%_
                      _%$method-table172315%_
                      _%g172332172335%_
                      _%g172333172337%_))
                   _%methods172317%_
                   _%$methods172321%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots172342%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs171832%_)))
                                                     (_%$slots172346%_
                                                      (map (lambda (_%id172344%_)
                                                             (let ((__tmp175961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172344%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp175961)))
                   _%slots172342%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172355%_
                                                      (for-each
                                                       (lambda (_%g172347172350%_
                                                                _%g172348172352%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs171832%_
                                                            _%g172347172350%_
                                                            _%g172348172352%_)))
                                                       _%slots172342%_
                                                       _%$slots172346%_))
                                                     (_%slots-bind172364%_
                                                      (map (lambda (_%g172356172359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172357172361%_)
                     (_%generate-slot-bind171742%_
                      _%$klass172313%_
                      _%g172356172359%_
                      _%g172357172361%_))
                   _%slots172342%_
                   _%$slots172346%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body172370%_
                                                      (map (lambda (_%g172365172367%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver172299%_
                                                              _%$klass172313%_
                                                              _%method-calls171831%_
                                                              _%slot-refs171832%_
                                                              _%g172365172367%_))
                                                           _%L172277%_))
                                                     (_%specializer-impl172372%_
                                                      (let ((__tmp175962
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L172279%_ _%L172278%_)
                                 _%specializer-body172370%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp175962 _%stx171739%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl172374%_
                                                      (_%generate-specializer-impl171743%_
                                                       _%$klass172313%_
                                                       _%$method-table172315%_
                                                       _%methods-bind172340%_
                                                       _%slots-bind172364%_
                                                       _%specializer-impl172372%_)))
                                                (let ((__tmp175964
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L171812%_)))
                                                      (__tmp175963
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id172311%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp175964
                                                   '" => "
                                                   __tmp175963))
                                                (_%generate-specializer-def171744%_
                                                 _%L171812%_
                                                 _%specializer-id172311%_
                                                 _%specializer-impl172374%_))))))
                                     (_%__kont174739174740%_
                                      (lambda () _%stx171739%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx174735174736%_))
                                     (let ((_%e172228172253%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx174735174736%_))))
                                       (let ((_%tl172230172258%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e172228172253%_)))
                                             (_%hd172229172256%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e172228172253%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl172230172258%_))
                                             (let ((_%e172231172261%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl172230172258%_))))
                                               (let ((_%tl172233172266%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e172231172261%_)))
                                                     (_%hd172232172264%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e172231172261%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd172232172264%_))
                                                     (let ((_%e172234172269%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd172232172264%_))))
                                                       (let ((_%tl172236172274%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e172234172269%_)))
                     (_%hd172235172272%_
                      (let () (declare (not safe)) (##car _%e172234172269%_))))
                 (_%__kont174737174738%_
                  _%tl172233172266%_
                  _%tl172236172274%_
                  _%hd172235172272%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont174739174740%_))))
                                             (_%__kont174739174740%_))))
                                     (_%__kont174739174740%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L171811%_))
                                 (let* ((_%g172381172400%_
                                         (lambda (_%g172382172397%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g172382172397%_))))
                                        (_%g172380172698%_
                                         (lambda (_%g172382172403%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g172382172403%_))
                                               (let ((_%e172384172405%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g172382172403%_))))
                                                 (let ((_%hd172385172408%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e172384172405%_)))
                                                       (_%tl172386172410%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e172384172405%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl172386172410%_))
                                                       (let ((_g175965_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl172386172410%_ '0))))
                 (begin
                   (let ((_g175966_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g175965_)
                                (##vector-length _g175965_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g175966_ 2)))
                         (error "Context expects 2 values" _g175966_)))
                   (let ((_%target172387172413%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g175965_ 0)))
                         (_%tl172389172415%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g175965_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl172389172415%_))
                         (letrec ((_%loop172390172418%_
                                   (lambda (_%hd172388172421%_
                                            _%clause172394172423%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd172388172421%_))
                                         (let ((_%e172391172426%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd172388172421%_))))
                                           (let ((_%lp-hd172392172429%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172391172426%_)))
                                                 (_%lp-tl172393172431%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172391172426%_))))
                                             (_%loop172390172418%_
                                              _%lp-tl172393172431%_
                                              (cons _%lp-hd172392172429%_
                                                    _%clause172394172423%_))))
                                         (let ((_%clause172395172434%_
                                                (reverse _%clause172394172423%_)))
                                           ((lambda (_%L172437%_)
                                              (for-each
                                               (lambda (_%clause172451%_)
                                                 (let* ((_%__stx174761174762%_
                                                         _%clause172451%_)
                                                        (_%g172454172469%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx174761174762%_)))))
                                                   (let ((_%__kont174763174764%_
                                                          (lambda (_%L172497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L172498%_
                           _%L172499%_)
                    (let ((_%receiver172518%_
                           (let ((_%$e172515%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L172497%_))))
                             (if _%$e172515%_ _%$e172515%_ _%L172499%_))))
                      (for-each
                       (lambda (_%g172519172521%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver172518%_
                          _%method-calls171831%_
                          _%slot-refs171832%_
                          _%g172519172521%_))
                       _%L172497%_))))
                 (_%__kont174765174766%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx174761174762%_))
                                                         (let ((_%e172459172481%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx174761174762%_))))
                   (let ((_%tl172461172486%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e172459172481%_)))
                         (_%hd172460172484%_
                          (let ()
                            (declare (not safe))
                            (##car _%e172459172481%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd172460172484%_))
                         (let ((_%e172462172489%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd172460172484%_))))
                           (let ((_%tl172464172494%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e172462172489%_)))
                                 (_%hd172463172492%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e172462172489%_))))
                             (_%__kont174763174764%_
                              _%tl172461172486%_
                              _%tl172464172494%_
                              _%hd172463172492%_)))
                         (_%__kont174765174766%_))))
                 (_%__kont174765174766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp175967
                                                      (lambda (_%g172526172529%_
                                                               _%g172527172531%_)
                                                        (cons _%g172526172529%_
                                                              _%g172527172531%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp175967
                                                  '()
                                                  _%L172437%_)))
                                              (if (_%no-specializer?171835%_)
                                                  _%stx171739%_
                                                  (let* ((_%specializer-id172540%_
                                                          (let* ((_%id172534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp175968
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L171812%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp175968 '"::specialize")))
                         (_%specializer-id172537%_
                          (let ((__tmp175969
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx171739%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id172534%_
                             __tmp175969))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id172537%_))
                    _%specializer-id172537%_))
                 (_%$klass172542%_
                  (let ((__tmp175970
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp175970)))
                 (_%$method-table172544%_
                  (let ((__tmp175971
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp175971)))
                 (_%methods172546%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls171831%_)))
                 (_%$methods172550%_
                  (map (lambda (_%id172548%_)
                         (let ((__tmp175972 (gensym _%id172548%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp175972)))
                       _%methods172546%_))
                 (_%_172559%_
                  (for-each
                   (lambda (_%g172551172554%_ _%g172552172556%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls171831%_
                        _%g172551172554%_
                        _%g172552172556%_)))
                   _%methods172546%_
                   _%$methods172550%_))
                 (_%methods-bind172569%_
                  (map (lambda (_%g172561172564%_ _%g172562172566%_)
                         (_%generate-method-bind171741%_
                          _%$klass172542%_
                          _%$method-table172544%_
                          _%g172561172564%_
                          _%g172562172566%_))
                       _%methods172546%_
                       _%$methods172550%_))
                 (_%slots172571%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs171832%_)))
                 (_%$slots172575%_
                  (map (lambda (_%id172573%_)
                         (let ((__tmp175973 (gensym _%id172573%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp175973)))
                       _%slots172571%_))
                 (_%_172584%_
                  (for-each
                   (lambda (_%g172576172579%_ _%g172577172581%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs171832%_
                        _%g172576172579%_
                        _%g172577172581%_)))
                   _%slots172571%_
                   _%$slots172575%_))
                 (_%slots-bind172593%_
                  (map (lambda (_%g172585172588%_ _%g172586172590%_)
                         (_%generate-slot-bind171742%_
                          _%$klass172542%_
                          _%g172585172588%_
                          _%g172586172590%_))
                       _%slots172571%_
                       _%$slots172575%_))
                 (_%specializer-clauses172691%_
                  (map (lambda (_%clause172595%_)
                         (let* ((_%__stx174781174782%_ _%clause172595%_)
                                (_%g172598172613%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx174781174782%_)))))
                           (let ((_%__kont174783174784%_
                                  (lambda (_%L172641%_ _%L172642%_ _%L172643%_)
                                    (let* ((_%receiver172672%_
                                            (let ((_%$e172669%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L172641%_))))
                                              (if _%$e172669%_
                                                  _%$e172669%_
                                                  _%L172643%_)))
                                           (_%body172678%_
                                            (map (lambda (_%g172673172675%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver172672%_
                                                    _%$klass172542%_
                                                    _%method-calls171831%_
                                                    _%slot-refs171832%_
                                                    _%g172673172675%_))
                                                 _%L172641%_)))
                                      (cons (cons _%L172643%_ _%L172642%_)
                                            _%body172678%_))))
                                 (_%__kont174785174786%_
                                  (lambda () _%clause172595%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx174781174782%_))
                                 (let ((_%e172603172625%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx174781174782%_))))
                                   (let ((_%tl172605172630%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e172603172625%_)))
                                         (_%hd172604172628%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e172603172625%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd172604172628%_))
                                         (let ((_%e172606172633%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd172604172628%_))))
                                           (let ((_%tl172608172638%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172606172633%_)))
                                                 (_%hd172607172636%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172606172633%_))))
                                             (_%__kont174783174784%_
                                              _%tl172605172630%_
                                              _%tl172608172638%_
                                              _%hd172607172636%_)))
                                         (_%__kont174785174786%_))))
                                 (_%__kont174785174786%_)))))
                       (let ((__tmp175974
                              (lambda (_%g172683172686%_ _%g172684172688%_)
                                (cons _%g172683172686%_ _%g172684172688%_))))
                         (declare (not safe))
                         (__foldr1 __tmp175974 '() _%L172437%_))))
                 (_%specializer-impl172693%_
                  (let ((__tmp175975
                         (cons '%#case-lambda _%specializer-clauses172691%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp175975 _%stx171739%_)))
                 (_%specializer-impl172695%_
                  (_%generate-specializer-impl171743%_
                   _%$klass172542%_
                   _%$method-table172544%_
                   _%methods-bind172569%_
                   _%slots-bind172593%_
                   _%specializer-impl172693%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp175977
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L171812%_)))
                                                          (__tmp175976
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id172540%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp175977
                                                       '" => "
                                                       __tmp175976))
                                                    (_%generate-specializer-def171744%_
                                                     _%L171812%_
                                                     _%specializer-id172540%_
                                                     _%specializer-impl172695%_))))
                                            _%clause172395172434%_))))))
                           (_%loop172390172418%_ _%target172387172413%_ '()))
                         (_%g172381172400%_ _%g172382172403%_)))))
               (_%g172381172400%_ _%g172382172403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g172381172400%_
                                                _%g172382172403%_)))))
                                   (_%g172380172698%_ _%L171811%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L171811%_))
                                     (let* ((_%g172702172732%_
                                             (lambda (_%g172703172729%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g172703172729%_))))
                                            (_%g172701173363%_
                                             (lambda (_%g172703172735%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g172703172735%_))
                                                   (let ((_%e172707172737%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g172703172735%_))))
                                                     (let ((_%hd172708172740%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e172707172737%_)))
                                                           (_%tl172709172742%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e172707172737%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl172709172742%_))
                                                           (let ((_%e172710172745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl172709172742%_))))
                     (let ((_%hd172711172748%_
                            (let ()
                              (declare (not safe))
                              (##car _%e172710172745%_)))
                           (_%tl172712172750%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e172710172745%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd172711172748%_))
                           (let ((_%e172713172753%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd172711172748%_))))
                             (let ((_%hd172714172756%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e172713172753%_)))
                                   (_%tl172715172758%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e172713172753%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd172714172756%_))
                                   (let ((_%e172716172761%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd172714172756%_))))
                                     (let ((_%hd172717172764%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e172716172761%_)))
                                           (_%tl172718172766%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e172716172761%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd172717172764%_))
                                           (let ((_%e172719172769%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd172717172764%_))))
                                             (let ((_%hd172720172772%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e172719172769%_)))
                                                   (_%tl172721172774%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e172719172769%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl172721172774%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl172718172766%_))
                                                       (let ((_%e172722172777%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl172718172766%_))))
                 (let ((_%hd172723172780%_
                        (let ()
                          (declare (not safe))
                          (##car _%e172722172777%_)))
                       (_%tl172724172782%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e172722172777%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl172724172782%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl172715172758%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl172712172750%_))
                               (let ((_%e172725172785%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl172712172750%_))))
                                 (let ((_%hd172726172788%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e172725172785%_)))
                                       (_%tl172727172790%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e172725172785%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl172727172790%_))
                                       ((lambda (_%L172793%_
                                                 _%L172794%_
                                                 _%L172795%_)
                                          (let* ((_%g172819172837%_
                                                  (lambda (_%g172820172834%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g172820172834%_))))
                                                 (_%g172818172893%_
                                                  (lambda (_%g172820172840%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g172820172840%_))
                                                        (let ((_%e172824172842%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g172820172840%_))))
                  (let ((_%hd172825172845%_
                         (let ()
                           (declare (not safe))
                           (##car _%e172824172842%_)))
                        (_%tl172826172847%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e172824172842%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl172826172847%_))
                        (let ((_%e172827172850%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl172826172847%_))))
                          (let ((_%hd172828172853%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e172827172850%_)))
                                (_%tl172829172855%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e172827172850%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd172828172853%_))
                                (let ((_%e172830172858%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd172828172853%_))))
                                  (let ((_%hd172831172861%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172830172858%_)))
                                        (_%tl172832172863%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172830172858%_))))
                                    ((lambda (_%L172866%_
                                              _%L172867%_
                                              _%L172868%_)
                                       (let ((_%receiver172887%_
                                              (let ((_%$e172884%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L172866%_))))
                                                (if _%$e172884%_
                                                    _%$e172884%_
                                                    _%L172868%_))))
                                         (for-each
                                          (lambda (_%g172888172890%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver172887%_
                                             _%method-calls171831%_
                                             _%slot-refs171832%_
                                             _%g172888172890%_))
                                          _%L172866%_)))
                                     _%tl172829172855%_
                                     _%tl172832172863%_
                                     _%hd172831172861%_)))
                                (_%g172819172837%_ _%g172820172840%_))))
                        (_%g172819172837%_ _%g172820172840%_))))
                (_%g172819172837%_ _%g172820172840%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g172818172893%_ _%L172794%_))
                                          (let* ((_%g172896172915%_
                                                  (lambda (_%g172897172912%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g172897172912%_))))
                                                 (_%g172895173039%_
                                                  (lambda (_%g172897172918%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g172897172918%_))
                                                        (let ((_%e172899172920%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g172897172918%_))))
                  (let ((_%hd172900172923%_
                         (let ()
                           (declare (not safe))
                           (##car _%e172899172920%_)))
                        (_%tl172901172925%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e172899172920%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl172901172925%_))
                        (let ((_g175978_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl172901172925%_
                                  '0))))
                          (begin
                            (let ((_g175979_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g175978_)
                                         (##vector-length _g175978_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g175979_ 2)))
                                  (error "Context expects 2 values"
                                         _g175979_)))
                            (let ((_%target172902172928%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g175978_ 0)))
                                  (_%tl172904172930%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g175978_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172904172930%_))
                                  (letrec ((_%loop172905172933%_
                                            (lambda (_%hd172903172936%_
                                                     _%clause172909172938%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd172903172936%_))
                                                  (let ((_%e172906172941%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd172903172936%_))))
                                                    (let ((_%lp-hd172907172944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e172906172941%_)))
                                                          (_%lp-tl172908172946%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e172906172941%_))))
                                                      (_%loop172905172933%_
                                                       _%lp-tl172908172946%_
                                                       (cons _%lp-hd172907172944%_
                                                             _%clause172909172938%_))))
                                                  (let ((_%clause172910172949%_
                                                         (reverse _%clause172909172938%_)))
                                                    ((lambda (_%L172952%_)
                                                       (for-each
                                                        (lambda (_%clause172965%_)
                                                          (let* ((_%g172967172982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g172968172979%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g172968172979%_))))
                         (_%g172966173029%_
                          (lambda (_%g172968172985%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g172968172985%_))
                                (let ((_%e172972172987%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g172968172985%_))))
                                  (let ((_%hd172973172990%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172972172987%_)))
                                        (_%tl172974172992%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172972172987%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172973172990%_))
                                        (let ((_%e172975172995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172973172990%_))))
                                          (let ((_%hd172976172998%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172975172995%_)))
                                                (_%tl172977173000%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172975172995%_))))
                                            ((lambda (_%L173003%_
                                                      _%L173004%_
                                                      _%L173005%_)
                                               (let ((_%receiver173023%_
                                                      (let ((_%$e173020%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L173003%_))))
                (if _%$e173020%_ _%$e173020%_ _%L173005%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g173024173026%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver173023%_
                                                     _%method-calls171831%_
                                                     _%slot-refs171832%_
                                                     _%g173024173026%_))
                                                  _%L173003%_)))
                                             _%tl172974172992%_
                                             _%tl172977173000%_
                                             _%hd172976172998%_)))
                                        (_%g172967172982%_
                                         _%g172968172985%_))))
                                (_%g172967172982%_ _%g172968172985%_)))))
                    (_%g172966173029%_ _%clause172965%_)))
                (let ((__tmp175980
                       (lambda (_%g173031173034%_ _%g173032173036%_)
                         (cons _%g173031173034%_ _%g173032173036%_))))
                  (declare (not safe))
                  (__foldr1 __tmp175980 '() _%L172952%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause172910172949%_))))))
                                    (_%loop172905172933%_
                                     _%target172902172928%_
                                     '()))
                                  (_%g172896172915%_ _%g172897172918%_)))))
                        (_%g172896172915%_ _%g172897172918%_))))
                (_%g172896172915%_ _%g172897172918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g172895173039%_ _%L172793%_))
                                          (if (_%no-specializer?171835%_)
                                              _%stx171739%_
                                              (let* ((_%specializer-id173048%_
                                                      (let* ((_%id173042%_
                                                              (let ((__tmp175981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L171812%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp175981 '"::specialize")))
                     (_%specializer-id173045%_
                      (let ((__tmp175982
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx171739%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id173042%_ __tmp175982))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id173045%_))
                _%specializer-id173045%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass173050%_
                                                      (let ((__tmp175983
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp175983)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table173052%_
                                                      (let ((__tmp175984
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp175984)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods173054%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls171831%_)))
                                                     (_%$methods173058%_
                                                      (map (lambda (_%id173056%_)
                                                             (let ((__tmp175985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id173056%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp175985)))
                   _%methods173054%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_173067%_
                                                      (for-each
                                                       (lambda (_%g173059173062%_
                                                                _%g173060173064%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls171831%_
                                                            _%g173059173062%_
                                                            _%g173060173064%_)))
                                                       _%methods173054%_
                                                       _%$methods173058%_))
                                                     (_%methods-bind173077%_
                                                      (map (lambda (_%g173069173072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g173070173074%_)
                     (_%generate-method-bind171741%_
                      _%$klass173050%_
                      _%$method-table173052%_
                      _%g173069173072%_
                      _%g173070173074%_))
                   _%methods173054%_
                   _%$methods173058%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots173079%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs171832%_)))
                                                     (_%$slots173083%_
                                                      (map (lambda (_%id173081%_)
                                                             (let ((__tmp175986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id173081%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp175986)))
                   _%slots173079%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_173092%_
                                                      (for-each
                                                       (lambda (_%g173084173087%_
                                                                _%g173085173089%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs171832%_
                                                            _%g173084173087%_
                                                            _%g173085173089%_)))
                                                       _%slots173079%_
                                                       _%$slots173083%_))
                                                     (_%slots-bind173101%_
                                                      (map (lambda (_%g173093173096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g173094173098%_)
                     (_%generate-slot-bind171742%_
                      _%$klass173050%_
                      _%g173093173096%_
                      _%g173094173098%_))
                   _%slots173079%_
                   _%$slots173083%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr173193%_
                                                      (let* ((_%g173103173121%_
                                                              (lambda (_%g173104173118%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g173104173118%_))))
                     (_%g173102173190%_
                      (lambda (_%g173104173124%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g173104173124%_))
                            (let ((_%e173108173126%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g173104173124%_))))
                              (let ((_%hd173109173129%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173108173126%_)))
                                    (_%tl173110173131%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173108173126%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl173110173131%_))
                                    (let ((_%e173111173134%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl173110173131%_))))
                                      (let ((_%hd173112173137%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173111173134%_)))
                                            (_%tl173113173139%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173111173134%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd173112173137%_))
                                            (let ((_%e173114173142%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd173112173137%_))))
                                              (let ((_%hd173115173145%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173114173142%_)))
                                                    (_%tl173116173147%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173114173142%_))))
                                                ((lambda (_%L173150%_
                                                          _%L173151%_
                                                          _%L173152%_)
                                                   (let* ((_%receiver173181%_
                                                           (let ((_%$e173178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L173150%_))))
                     (if _%$e173178%_ _%$e173178%_ _%L173152%_)))
                  (_%body173187%_
                   (map (lambda (_%g173182173184%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver173181%_
                           _%$klass173050%_
                           _%method-calls171831%_
                           _%slot-refs171832%_
                           _%g173182173184%_))
                        _%L173150%_))
                  (__tmp175987
                   (cons '%#lambda
                         (cons (cons _%L173152%_ _%L173151%_)
                               _%body173187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp175987
                                                      _%L172794%_)))
                                                 _%tl173113173139%_
                                                 _%tl173116173147%_
                                                 _%hd173115173145%_)))
                                            (_%g173103173121%_
                                             _%g173104173124%_))))
                                    (_%g173103173121%_ _%g173104173124%_))))
                            (_%g173103173121%_ _%g173104173124%_)))))
                (_%g173102173190%_ _%L172794%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr173356%_
                                                      (let* ((_%g173195173214%_
                                                              (lambda (_%g173196173211%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g173196173211%_))))
                     (_%g173194173353%_
                      (lambda (_%g173196173217%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g173196173217%_))
                            (let ((_%e173198173219%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g173196173217%_))))
                              (let ((_%hd173199173222%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173198173219%_)))
                                    (_%tl173200173224%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173198173219%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl173200173224%_))
                                    (let ((_g175988_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl173200173224%_
                                              '0))))
                                      (begin
                                        (let ((_g175989_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g175988_)
                                                     (##vector-length
                                                      _g175988_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g175989_ 2)))
                                              (error "Context expects 2 values"
                                                     _g175989_)))
                                        (let ((_%target173201173227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g175988_ 0)))
                                              (_%tl173203173229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g175988_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl173203173229%_))
                                              (letrec ((_%loop173204173232%_
                                                        (lambda (_%hd173202173235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause173208173237%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd173202173235%_))
                      (let ((_%e173205173240%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd173202173235%_))))
                        (let ((_%lp-hd173206173243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173205173240%_)))
                              (_%lp-tl173207173245%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173205173240%_))))
                          (_%loop173204173232%_
                           _%lp-tl173207173245%_
                           (cons _%lp-hd173206173243%_
                                 _%clause173208173237%_))))
                      (let ((_%clause173209173248%_
                             (reverse _%clause173208173237%_)))
                        ((lambda (_%L173251%_)
                           (let* ((_%clauses173351%_
                                   (map (lambda (_%clause173265%_)
                                          (let* ((_%__stx174801174802%_
                                                  _%clause173265%_)
                                                 (_%g173268173283%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx174801174802%_)))))
                                            (let ((_%__kont174803174804%_
                                                   (lambda (_%L173311%_
                                                            _%L173312%_
                                                            _%L173313%_)
                                                     (let* ((_%receiver173332%_
                                                             (let ((_%$e173329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L173311%_))))
                       (if _%$e173329%_ _%$e173329%_ _%L173313%_)))
                    (_%body173338%_
                     (map (lambda (_%g173333173335%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver173332%_
                             _%$klass173050%_
                             _%method-calls171831%_
                             _%slot-refs171832%_
                             _%g173333173335%_))
                          _%L173311%_)))
               (cons (cons _%L173313%_ _%L173312%_) _%body173338%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont174805174806%_
                                                   (lambda ()
                                                     _%clause173265%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx174801174802%_))
                                                  (let ((_%e173273173295%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx174801174802%_))))
                                                    (let ((_%tl173275173300%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173273173295%_)))
                                                          (_%hd173274173298%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173273173295%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd173274173298%_))
                                                          (let ((_%e173276173303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd173274173298%_))))
                    (let ((_%tl173278173308%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173276173303%_)))
                          (_%hd173277173306%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173276173303%_))))
                      (_%__kont174803174804%_
                       _%tl173275173300%_
                       _%tl173278173308%_
                       _%hd173277173306%_)))
                  (_%__kont174805174806%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont174805174806%_)))))
                                        (let ((__tmp175990
                                               (lambda (_%g173343173346%_
                                                        _%g173344173348%_)
                                                 (cons _%g173343173346%_
                                                       _%g173344173348%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp175990
                                           '()
                                           _%L173251%_))))
                                  (__tmp175991
                                   (cons '%#case-lambda _%clauses173351%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp175991 _%L172793%_)))
                         _%clause173209173248%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop173204173232%_
                                                 _%target173201173227%_
                                                 '()))
                                              (_%g173195173214%_
                                               _%g173196173217%_)))))
                                    (_%g173195173214%_ _%g173196173217%_))))
                            (_%g173195173214%_ _%g173196173217%_)))))
                (_%g173194173353%_ _%L172793%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl173358%_
                                                      (let ((__tmp175992
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L172795%_ '())
                                             (cons _%specializer-lambda-expr173193%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr173356%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp175992 _%stx171739%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl173360%_
                                                      (_%generate-specializer-impl171743%_
                                                       _%$klass173050%_
                                                       _%$method-table173052%_
                                                       _%methods-bind173077%_
                                                       _%slots-bind173101%_
                                                       _%specializer-impl173358%_)))
                                                (let ((__tmp175994
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L171812%_)))
                                                      (__tmp175993
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id173048%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp175994
                                                   '" => "
                                                   __tmp175993))
                                                (_%generate-specializer-def171744%_
                                                 _%L171812%_
                                                 _%specializer-id173048%_
                                                 _%specializer-impl173360%_))))
                                        _%hd172726172788%_
                                        _%hd172723172780%_
                                        _%hd172720172772%_)
                                       (_%g172702172732%_ _%g172703172735%_))))
                               (_%g172702172732%_ _%g172703172735%_))
                           (_%g172702172732%_ _%g172703172735%_))
                       (_%g172702172732%_ _%g172703172735%_))))
               (_%g172702172732%_ _%g172703172735%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g172702172732%_
                                                    _%g172703172735%_))))
                                           (_%g172702172732%_
                                            _%g172703172735%_))))
                                   (_%g172702172732%_ _%g172703172735%_))))
                           (_%g172702172732%_ _%g172703172735%_))))
                   (_%g172702172732%_ _%g172703172735%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g172702172732%_
                                                    _%g172703172735%_)))))
                                       (_%g172701173363%_ _%L171811%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L171811%_))
                                         (let* ((_%g173367173420%_
                                                 (lambda (_%g173368173417%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g173368173417%_))))
                                                (_%g173366174591%_
                                                 (lambda (_%g173368173423%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g173368173423%_))
                                                       (let ((_%e173374173425%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g173368173423%_))))
                 (let ((_%hd173375173428%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173374173425%_)))
                       (_%tl173376173430%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173374173425%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd173375173428%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd173375173428%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl173376173430%_))
                               (let ((_%e173377173433%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl173376173430%_))))
                                 (let ((_%hd173378173436%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e173377173433%_)))
                                       (_%tl173379173438%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e173377173433%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd173378173436%_))
                                       (let ((_%e173380173441%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd173378173436%_))))
                                         (let ((_%hd173381173444%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e173380173441%_)))
                                               (_%tl173382173446%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e173380173441%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd173381173444%_))
                                               (let ((_%e173383173449%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd173381173444%_))))
                                                 (let ((_%hd173384173452%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e173383173449%_)))
                                                       (_%tl173385173454%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e173383173449%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd173384173452%_))
                                                       (let ((_%e173386173457%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd173384173452%_))))
                 (let ((_%hd173387173460%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173386173457%_)))
                       (_%tl173388173462%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173386173457%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl173388173462%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl173385173454%_))
                           (let ((_%e173389173465%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl173385173454%_))))
                             (let ((_%hd173390173468%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e173389173465%_)))
                                   (_%tl173391173470%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e173389173465%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd173390173468%_))
                                   (let ((_%e173392173473%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd173390173468%_))))
                                     (let ((_%hd173393173476%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173392173473%_)))
                                           (_%tl173394173478%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173392173473%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd173393173476%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd173393173476%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl173394173478%_))
                                                   (let ((_%e173395173481%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl173394173478%_))))
                                                     (let ((_%hd173396173484%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e173395173481%_)))
                                                           (_%tl173397173486%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e173395173481%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd173396173484%_))
                                                           (let ((_%e173398173489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd173396173484%_))))
                     (let ((_%hd173399173492%_
                            (let ()
                              (declare (not safe))
                              (##car _%e173398173489%_)))
                           (_%tl173400173494%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e173398173489%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd173399173492%_))
                           (let ((_%e173401173497%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd173399173492%_))))
                             (let ((_%hd173402173500%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e173401173497%_)))
                                   (_%tl173403173502%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e173401173497%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd173402173500%_))
                                   (let ((_%e173404173505%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd173402173500%_))))
                                     (let ((_%hd173405173508%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173404173505%_)))
                                           (_%tl173406173510%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173404173505%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl173406173510%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl173403173502%_))
                                               (let ((_%e173407173513%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl173403173502%_))))
                                                 (let ((_%hd173408173516%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e173407173513%_)))
                                                       (_%tl173409173518%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e173407173513%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl173409173518%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl173400173494%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl173397173486%_))
                       (let ((_%e173410173521%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl173397173486%_))))
                         (let ((_%hd173411173524%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e173410173521%_)))
                               (_%tl173412173526%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e173410173521%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl173412173526%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl173391173470%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl173382173446%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl173379173438%_))
                                           (let ((_%e173413173529%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl173379173438%_))))
                                             (let ((_%hd173414173532%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e173413173529%_)))
                                                   (_%tl173415173534%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e173413173529%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl173415173534%_))
                                                   ((lambda (_%L173537%_
                                                             _%L173538%_
                                                             _%L173539%_
                                                             _%L173540%_
                                                             _%L173541%_)
                                                      (let* ((_%g173581173643%_
                                                              (lambda (_%g173582173640%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g173582173640%_))))
                     (_%g173580174588%_
                      (lambda (_%g173582173646%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g173582173646%_))
                            (let ((_%e173588173648%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g173582173646%_))))
                              (let ((_%hd173589173651%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173588173648%_)))
                                    (_%tl173590173653%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173588173648%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd173589173651%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd173589173651%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl173590173653%_))
                                            (let ((_%e173591173656%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl173590173653%_))))
                                              (let ((_%hd173592173659%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173591173656%_)))
                                                    (_%tl173593173661%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173591173656%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl173593173661%_))
                                                    (let ((_%e173594173664%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl173593173661%_))))
                                                      (let ((_%hd173595173667%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e173594173664%_)))
                    (_%tl173596173669%_
                     (let () (declare (not safe)) (##cdr _%e173594173664%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd173595173667%_))
                    (let ((_%e173597173672%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd173595173667%_))))
                      (let ((_%hd173598173675%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173597173672%_)))
                            (_%tl173599173677%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173597173672%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd173598173675%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd173598173675%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl173599173677%_))
                                    (let ((_%e173600173680%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl173599173677%_))))
                                      (let ((_%hd173601173683%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173600173680%_)))
                                            (_%tl173602173685%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173600173680%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd173601173683%_))
                                            (let ((_%e173603173688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd173601173683%_))))
                                              (let ((_%hd173604173691%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173603173688%_)))
                                                    (_%tl173605173693%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173603173688%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd173604173691%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd173604173691%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl173605173693%_))
                                                            (let ((_%e173606173696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl173605173693%_))))
                      (let ((_%hd173607173699%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173606173696%_)))
                            (_%tl173608173701%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173606173696%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173608173701%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl173602173685%_))
                                (let ((_%e173609173704%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl173602173685%_))))
                                  (let ((_%hd173610173707%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173609173704%_)))
                                        (_%tl173611173709%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173609173704%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd173610173707%_))
                                        (let ((_%e173612173712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd173610173707%_))))
                                          (let ((_%hd173613173715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e173612173712%_)))
                                                (_%tl173614173717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e173612173712%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd173613173715%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd173613173715%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl173614173717%_))
                                                        (let ((_%e173615173720%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl173614173717%_))))
                  (let ((_%hd173616173723%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173615173720%_)))
                        (_%tl173617173725%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173615173720%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl173617173725%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl173611173709%_))
                            (let ((_%e173618173728%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl173611173709%_))))
                              (let ((_%hd173619173731%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173618173728%_)))
                                    (_%tl173620173733%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173618173728%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd173619173731%_))
                                    (let ((_%e173621173736%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd173619173731%_))))
                                      (let ((_%hd173622173739%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173621173736%_)))
                                            (_%tl173623173741%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173621173736%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd173622173739%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd173622173739%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl173623173741%_))
                                                    (let ((_%e173624173744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl173623173741%_))))
                                                      (let ((_%hd173625173747%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e173624173744%_)))
                    (_%tl173626173749%_
                     (let () (declare (not safe)) (##cdr _%e173624173744%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl173626173749%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl173620173733%_))
                        (if (let ((__tmp175995
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl173620173733%_))))
                              (declare (not safe))
                              (##fx>= __tmp175995 '1))
                            (let ((_g175996_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl173620173733%_
                                      '1))))
                              (begin
                                (let ((_g175997_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g175996_)
                                             (##vector-length _g175996_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g175997_ 2)))
                                      (error "Context expects 2 values"
                                             _g175997_)))
                                (let ((_%target173627173752%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g175996_ 0)))
                                      (_%tl173629173754%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g175996_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl173629173754%_))
                                      (let ((_%e173636173757%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl173629173754%_))))
                                        (let ((_%hd173637173760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173636173757%_)))
                                              (_%tl173638173762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173636173757%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl173638173762%_))
                                              (letrec ((_%loop173630173765%_
                                                        (lambda (_%hd173628173768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref173634173770%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd173628173768%_))
                      (let ((_%e173631173773%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd173628173768%_))))
                        (let ((_%lp-hd173632173776%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173631173773%_)))
                              (_%lp-tl173633173778%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173631173773%_))))
                          (_%loop173630173765%_
                           _%lp-tl173633173778%_
                           (cons _%lp-hd173632173776%_
                                 _%kw-ref173634173770%_))))
                      (let ((_%kw-ref173635173781%_
                             (reverse _%kw-ref173634173770%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173596173669%_))
                            ((lambda (_%L173784%_
                                      _%L173785%_
                                      _%L173786%_
                                      _%L173787%_
                                      _%L173788%_)
                               (let* ((_%kw-count173839%_
                                       (length (let ((__tmp175998
                                                      (lambda (_%g173831173834%_
                                                               _%g173832173836%_)
                                                        (cons _%g173831173834%_
                                                              _%g173832173836%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp175998
                                                  '()
                                                  _%L173785%_))))
                                      (_%self-index173841%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count173839%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L173539%_))
                                     (let* ((_%g173845173859%_
                                             (lambda (_%g173846173856%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g173846173856%_))))
                                            (_%g173844173982%_
                                             (lambda (_%g173846173862%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g173846173862%_))
                                                   (let ((_%e173849173864%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g173846173862%_))))
                                                     (let ((_%hd173850173867%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e173849173864%_)))
                                                           (_%tl173851173869%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e173849173864%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl173851173869%_))
                                                           (let ((_%e173852173872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl173851173869%_))))
                     (let ((_%hd173853173875%_
                            (let ()
                              (declare (not safe))
                              (##car _%e173852173872%_)))
                           (_%tl173854173877%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e173852173872%_))))
                       ((lambda (_%L173880%_ _%L173881%_)
                          (let* ((_%self173898%_
                                  (list-ref _%L173881%_ _%self-index173841%_))
                                 (_%receiver173903%_
                                  (let ((_%$e173900%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L173880%_))))
                                    (if _%$e173900%_
                                        _%$e173900%_
                                        _%self173898%_))))
                            (for-each
                             (lambda (_%g173905173907%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver173903%_
                                _%method-calls171831%_
                                _%slot-refs171832%_
                                _%g173905173907%_))
                             _%L173880%_)
                            (if (_%no-specializer?171835%_)
                                _%stx171739%_
                                (let* ((_%specializer-id173916%_
                                        (let* ((_%id173910%_
                                                (let ((__tmp175999
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L171812%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp175999
                                                   '"::specialize")))
                                               (_%specializer-id173913%_
                                                (let ((__tmp176000
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx171739%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id173910%_
                                                   __tmp176000))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id173913%_))
                                          _%specializer-id173913%_))
                                       (_%$klass173918%_
                                        (let ((__tmp176001
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp176001)))
                                       (_%$method-table173920%_
                                        (let ((__tmp176002
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp176002)))
                                       (_%methods173922%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls171831%_)))
                                       (_%$methods173926%_
                                        (map (lambda (_%id173924%_)
                                               (let ((__tmp176003
                                                      (gensym _%id173924%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp176003)))
                                             _%methods173922%_))
                                       (_%_173935%_
                                        (for-each
                                         (lambda (_%g173927173930%_
                                                  _%g173928173932%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls171831%_
                                              _%g173927173930%_
                                              _%g173928173932%_)))
                                         _%methods173922%_
                                         _%$methods173926%_))
                                       (_%methods-bind173945%_
                                        (map (lambda (_%g173937173940%_
                                                      _%g173938173942%_)
                                               (_%generate-method-bind171741%_
                                                _%$klass173918%_
                                                _%$method-table173920%_
                                                _%g173937173940%_
                                                _%g173938173942%_))
                                             _%methods173922%_
                                             _%$methods173926%_))
                                       (_%slots173947%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs171832%_)))
                                       (_%$slots173951%_
                                        (map (lambda (_%id173949%_)
                                               (let ((__tmp176004
                                                      (gensym _%id173949%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp176004)))
                                             _%slots173947%_))
                                       (_%_173960%_
                                        (for-each
                                         (lambda (_%g173952173955%_
                                                  _%g173953173957%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs171832%_
                                              _%g173952173955%_
                                              _%g173953173957%_)))
                                         _%slots173947%_
                                         _%$slots173951%_))
                                       (_%slots-bind173969%_
                                        (map (lambda (_%g173961173964%_
                                                      _%g173962173966%_)
                                               (_%generate-slot-bind171742%_
                                                _%$klass173918%_
                                                _%g173961173964%_
                                                _%g173962173966%_))
                                             _%slots173947%_
                                             _%$slots173951%_))
                                       (_%specializer-impl173977%_
                                        (let* ((_%specializer-body173975%_
                                                (map (lambda (_%g173970173972%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver173903%_
                                                        _%$klass173918%_
                                                        _%method-calls171831%_
                                                        _%slot-refs171832%_
                                                        _%g173970173972%_))
                                                     _%L173880%_))
                                               (__tmp176005
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L173541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L173540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp176006
                                   (cons '%#lambda
                                         (cons _%L173881%_
                                               _%specializer-body173975%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp176006 _%L173539%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L173538%_ '())))
                                      '()))
                          '())
                    (cons _%L173537%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp176005
                                           _%stx171739%_)))
                                       (_%specializer-impl173979%_
                                        (_%generate-specializer-impl171743%_
                                         _%$klass173918%_
                                         _%$method-table173920%_
                                         _%methods-bind173945%_
                                         _%slots-bind173969%_
                                         _%specializer-impl173977%_)))
                                  (let ((__tmp176008
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L171812%_)))
                                        (__tmp176007
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id173916%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp176008
                                     '" => "
                                     __tmp176007))
                                  (_%generate-specializer-def171744%_
                                   _%L171812%_
                                   _%specializer-id173916%_
                                   _%specializer-impl173979%_)))))
                        _%tl173854173877%_
                        _%hd173853173875%_)))
                   (_%g173845173859%_ _%g173846173862%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g173845173859%_
                                                    _%g173846173862%_)))))
                                       (_%g173844173982%_ _%L173539%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L173539%_))
                                         (let* ((_%g173986174016%_
                                                 (lambda (_%g173987174013%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g173987174013%_))))
                                                (_%g173985174584%_
                                                 (lambda (_%g173987174019%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g173987174019%_))
                                                       (let ((_%e173991174021%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g173987174019%_))))
                 (let ((_%hd173992174024%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173991174021%_)))
                       (_%tl173993174026%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173991174021%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl173993174026%_))
                       (let ((_%e173994174029%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl173993174026%_))))
                         (let ((_%hd173995174032%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e173994174029%_)))
                               (_%tl173996174034%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e173994174029%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd173995174032%_))
                               (let ((_%e173997174037%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd173995174032%_))))
                                 (let ((_%hd173998174040%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e173997174037%_)))
                                       (_%tl173999174042%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e173997174037%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd173998174040%_))
                                       (let ((_%e174000174045%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd173998174040%_))))
                                         (let ((_%hd174001174048%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e174000174045%_)))
                                               (_%tl174002174050%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e174000174045%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd174001174048%_))
                                               (let ((_%e174003174053%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd174001174048%_))))
                                                 (let ((_%hd174004174056%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e174003174053%_)))
                                                       (_%tl174005174058%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e174003174053%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl174005174058%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl174002174050%_))
                                                           (let ((_%e174006174061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl174002174050%_))))
                     (let ((_%hd174007174064%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174006174061%_)))
                           (_%tl174008174066%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174006174061%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl174008174066%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl173999174042%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl173996174034%_))
                                   (let ((_%e174009174069%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl173996174034%_))))
                                     (let ((_%hd174010174072%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e174009174069%_)))
                                           (_%tl174011174074%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e174009174069%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl174011174074%_))
                                           ((lambda (_%L174077%_
                                                     _%L174078%_
                                                     _%L174079%_)
                                              (let* ((_%g174103174117%_
                                                      (lambda (_%g174104174114%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g174104174114%_))))
                                                     (_%g174102174164%_
                                                      (lambda (_%g174104174120%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g174104174120%_))
                                                            (let ((_%e174107174122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g174104174120%_))))
                      (let ((_%hd174108174125%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174107174122%_)))
                            (_%tl174109174127%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174107174122%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl174109174127%_))
                            (let ((_%e174110174130%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl174109174127%_))))
                              (let ((_%hd174111174133%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174110174130%_)))
                                    (_%tl174112174135%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174110174130%_))))
                                ((lambda (_%L174138%_ _%L174139%_)
                                   (let* ((_%self174152%_
                                           (list-ref
                                            _%L174139%_
                                            _%self-index173841%_))
                                          (_%receiver174157%_
                                           (let ((_%$e174154%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L174138%_))))
                                             (if _%$e174154%_
                                                 _%$e174154%_
                                                 _%self174152%_))))
                                     (for-each
                                      (lambda (_%g174159174161%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver174157%_
                                         _%method-calls171831%_
                                         _%slot-refs171832%_
                                         _%g174159174161%_))
                                      _%L174138%_)))
                                 _%tl174112174135%_
                                 _%hd174111174133%_)))
                            (_%g174103174117%_ _%g174104174120%_))))
                    (_%g174103174117%_ _%g174104174120%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g174102174164%_
                                                 _%L174078%_))
                                              (let* ((_%g174167174186%_
                                                      (lambda (_%g174168174183%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g174168174183%_))))
                                                     (_%g174166174297%_
                                                      (lambda (_%g174168174189%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g174168174189%_))
                                                            (let ((_%e174170174191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g174168174189%_))))
                      (let ((_%hd174171174194%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174170174191%_)))
                            (_%tl174172174196%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174170174191%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl174172174196%_))
                            (let ((_g176009_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl174172174196%_
                                      '0))))
                              (begin
                                (let ((_g176010_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g176009_)
                                             (##vector-length _g176009_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g176010_ 2)))
                                      (error "Context expects 2 values"
                                             _g176010_)))
                                (let ((_%target174173174199%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176009_ 0)))
                                      (_%tl174175174201%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176009_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl174175174201%_))
                                      (letrec ((_%loop174176174204%_
                                                (lambda (_%hd174174174207%_
                                                         _%clause174180174209%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd174174174207%_))
                                                      (let ((_%e174177174212%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd174174174207%_))))
                (let ((_%lp-hd174178174215%_
                       (let () (declare (not safe)) (##car _%e174177174212%_)))
                      (_%lp-tl174179174217%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e174177174212%_))))
                  (_%loop174176174204%_
                   _%lp-tl174179174217%_
                   (cons _%lp-hd174178174215%_ _%clause174180174209%_))))
              (let ((_%clause174181174220%_ (reverse _%clause174180174209%_)))
                ((lambda (_%L174223%_)
                   (for-each
                    (lambda (_%clause174236%_)
                      (let* ((_%g174238174249%_
                              (lambda (_%g174239174246%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g174239174246%_))))
                             (_%g174237174287%_
                              (lambda (_%g174239174252%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g174239174252%_))
                                    (let ((_%e174242174254%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g174239174252%_))))
                                      (let ((_%hd174243174257%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174242174254%_)))
                                            (_%tl174244174259%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174242174254%_))))
                                        ((lambda (_%L174262%_ _%L174263%_)
                                           (let* ((_%self174275%_
                                                   (list-ref
                                                    _%L174263%_
                                                    _%self-index173841%_))
                                                  (_%receiver174280%_
                                                   (let ((_%$e174277%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L174262%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e174277%_
                                                         _%$e174277%_
                                                         _%self174275%_))))
                                             (for-each
                                              (lambda (_%g174282174284%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver174280%_
                                                 _%method-calls171831%_
                                                 _%slot-refs171832%_
                                                 _%g174282174284%_))
                                              _%L174262%_)))
                                         _%tl174244174259%_
                                         _%hd174243174257%_)))
                                    (_%g174238174249%_ _%g174239174252%_)))))
                        (_%g174237174287%_ _%clause174236%_)))
                    (let ((__tmp176011
                           (lambda (_%g174289174292%_ _%g174290174294%_)
                             (cons _%g174289174292%_ _%g174290174294%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176011 '() _%L174223%_))))
                 _%clause174181174220%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop174176174204%_
                                         _%target174173174199%_
                                         '()))
                                      (_%g174167174186%_ _%g174168174189%_)))))
                            (_%g174167174186%_ _%g174168174189%_))))
                    (_%g174167174186%_ _%g174168174189%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g174166174297%_
                                                 _%L174077%_))
                                              (if (_%no-specializer?171835%_)
                                                  _%stx171739%_
                                                  (let* ((_%specializer-id174306%_
                                                          (let* ((_%id174300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176012
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L171812%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp176012 '"::specialize")))
                         (_%specializer-id174303%_
                          (let ((__tmp176013
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx171739%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id174300%_
                             __tmp176013))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id174303%_))
                    _%specializer-id174303%_))
                 (_%$klass174308%_
                  (let ((__tmp176014
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176014)))
                 (_%$method-table174310%_
                  (let ((__tmp176015
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176015)))
                 (_%methods174312%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls171831%_)))
                 (_%$methods174316%_
                  (map (lambda (_%id174314%_)
                         (let ((__tmp176016 (gensym _%id174314%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176016)))
                       _%methods174312%_))
                 (_%_174325%_
                  (for-each
                   (lambda (_%g174317174320%_ _%g174318174322%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls171831%_
                        _%g174317174320%_
                        _%g174318174322%_)))
                   _%methods174312%_
                   _%$methods174316%_))
                 (_%methods-bind174335%_
                  (map (lambda (_%g174327174330%_ _%g174328174332%_)
                         (_%generate-method-bind171741%_
                          _%$klass174308%_
                          _%$method-table174310%_
                          _%g174327174330%_
                          _%g174328174332%_))
                       _%methods174312%_
                       _%$methods174316%_))
                 (_%slots174337%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs171832%_)))
                 (_%$slots174341%_
                  (map (lambda (_%id174339%_)
                         (let ((__tmp176017 (gensym _%id174339%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176017)))
                       _%slots174337%_))
                 (_%_174350%_
                  (for-each
                   (lambda (_%g174342174345%_ _%g174343174347%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs171832%_
                        _%g174342174345%_
                        _%g174343174347%_)))
                   _%slots174337%_
                   _%$slots174341%_))
                 (_%slots-bind174359%_
                  (map (lambda (_%g174351174354%_ _%g174352174356%_)
                         (_%generate-slot-bind171742%_
                          _%$klass174308%_
                          _%g174351174354%_
                          _%g174352174356%_))
                       _%slots174337%_
                       _%$slots174341%_))
                 (_%specializer-lambda-expr174437%_
                  (let* ((_%g174361174375%_
                          (lambda (_%g174362174372%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g174362174372%_))))
                         (_%g174360174434%_
                          (lambda (_%g174362174378%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g174362174378%_))
                                (let ((_%e174365174380%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g174362174378%_))))
                                  (let ((_%hd174366174383%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174365174380%_)))
                                        (_%tl174367174385%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174365174380%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl174367174385%_))
                                        (let ((_%e174368174388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl174367174385%_))))
                                          (let ((_%hd174369174391%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e174368174388%_)))
                                                (_%tl174370174393%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e174368174388%_))))
                                            ((lambda (_%L174396%_ _%L174397%_)
                                               (let* ((_%self174420%_
                                                       (list-ref
                                                        _%L174397%_
                                                        _%self-index173841%_))
                                                      (_%receiver174425%_
                                                       (let ((_%$e174422%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L174396%_))))
                 (if _%$e174422%_ _%$e174422%_ _%self174420%_)))
              (_%body174431%_
               (map (lambda (_%g174426174428%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver174425%_
                       _%$klass174308%_
                       _%method-calls171831%_
                       _%slot-refs171832%_
                       _%g174426174428%_))
                    _%L174396%_))
              (__tmp176018 (cons '%#lambda (cons _%L174397%_ _%body174431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp176018
                                                  _%L174078%_)))
                                             _%tl174370174393%_
                                             _%hd174369174391%_)))
                                        (_%g174361174375%_
                                         _%g174362174378%_))))
                                (_%g174361174375%_ _%g174362174378%_)))))
                    (_%g174360174434%_ _%L174078%_)))
                 (_%specializer-case-lambda-expr174577%_
                  (let* ((_%g174439174458%_
                          (lambda (_%g174440174455%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g174440174455%_))))
                         (_%g174438174574%_
                          (lambda (_%g174440174461%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g174440174461%_))
                                (let ((_%e174442174463%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g174440174461%_))))
                                  (let ((_%hd174443174466%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174442174463%_)))
                                        (_%tl174444174468%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174442174463%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl174444174468%_))
                                        (let ((_g176019_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl174444174468%_
                                                  '0))))
                                          (begin
                                            (let ((_g176020_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g176019_)
                                                         (##vector-length
                                                          _g176019_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g176020_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g176020_)))
                                            (let ((_%target174445174471%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g176019_
                                                      0)))
                                                  (_%tl174447174473%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g176019_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl174447174473%_))
                                                  (letrec ((_%loop174448174476%_
                                                            (lambda (_%hd174446174479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause174452174481%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd174446174479%_))
                          (let ((_%e174449174484%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd174446174479%_))))
                            (let ((_%lp-hd174450174487%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e174449174484%_)))
                                  (_%lp-tl174451174489%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e174449174484%_))))
                              (_%loop174448174476%_
                               _%lp-tl174451174489%_
                               (cons _%lp-hd174450174487%_
                                     _%clause174452174481%_))))
                          (let ((_%clause174453174492%_
                                 (reverse _%clause174452174481%_)))
                            ((lambda (_%L174495%_)
                               (let* ((_%clauses174572%_
                                       (map (lambda (_%clause174509%_)
                                              (let* ((_%g174511174522%_
                                                      (lambda (_%g174512174519%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g174512174519%_))))
                                                     (_%g174510174562%_
                                                      (lambda (_%g174512174525%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g174512174525%_))
                                                            (let ((_%e174515174527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g174512174525%_))))
                      (let ((_%hd174516174530%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174515174527%_)))
                            (_%tl174517174532%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174515174527%_))))
                        ((lambda (_%L174535%_ _%L174536%_)
                           (let* ((_%self174548%_
                                   (list-ref _%L174536%_ _%self-index173841%_))
                                  (_%receiver174553%_
                                   (let ((_%$e174550%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L174535%_))))
                                     (if _%$e174550%_
                                         _%$e174550%_
                                         _%self174548%_)))
                                  (_%body174559%_
                                   (map (lambda (_%g174554174556%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver174553%_
                                           _%$klass174308%_
                                           _%method-calls171831%_
                                           _%slot-refs171832%_
                                           _%g174554174556%_))
                                        _%L174535%_)))
                             (cons _%L174536%_ _%body174559%_)))
                         _%tl174517174532%_
                         _%hd174516174530%_)))
                    (_%g174511174522%_ _%g174512174525%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g174510174562%_
                                                 _%clause174509%_)))
                                            (let ((__tmp176021
                                                   (lambda (_%g174564174567%_
                                                            _%g174565174569%_)
                                                     (cons _%g174564174567%_
                                                           _%g174565174569%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp176021
                                               '()
                                               _%L174495%_))))
                                      (__tmp176022
                                       (cons '%#case-lambda
                                             _%clauses174572%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp176022
                                  _%L174077%_)))
                             _%clause174453174492%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop174448174476%_
                                                     _%target174445174471%_
                                                     '()))
                                                  (_%g174439174458%_
                                                   _%g174440174461%_)))))
                                        (_%g174439174458%_
                                         _%g174440174461%_))))
                                (_%g174439174458%_ _%g174440174461%_)))))
                    (_%g174438174574%_ _%L174077%_)))
                 (_%specializer-impl174579%_
                  (let ((__tmp176023
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L173541%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L173540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp176024
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L174079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr174437%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr174577%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp176024
                                                _%stx171739%_))
                                             '()))
                                 '())
                           (cons _%L173538%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L173537%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp176023 _%stx171739%_)))
                 (_%specializer-impl174581%_
                  (_%generate-specializer-impl171743%_
                   _%$klass174308%_
                   _%$method-table174310%_
                   _%methods-bind174335%_
                   _%slots-bind174359%_
                   _%specializer-impl174579%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp176026
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L171812%_)))
                                                          (__tmp176025
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id174306%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp176026
                                                       '" => "
                                                       __tmp176025))
                                                    (_%generate-specializer-def171744%_
                                                     _%L171812%_
                                                     _%specializer-id174306%_
                                                     _%specializer-impl174581%_))))
                                            _%hd174010174072%_
                                            _%hd174007174064%_
                                            _%hd174004174056%_)
                                           (_%g173986174016%_
                                            _%g173987174019%_))))
                                   (_%g173986174016%_ _%g173987174019%_))
                               (_%g173986174016%_ _%g173987174019%_))
                           (_%g173986174016%_ _%g173987174019%_))))
                   (_%g173986174016%_ _%g173987174019%_))
               (_%g173986174016%_ _%g173987174019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173986174016%_
                                                _%g173987174019%_))))
                                       (_%g173986174016%_ _%g173987174019%_))))
                               (_%g173986174016%_ _%g173987174019%_))))
                       (_%g173986174016%_ _%g173987174019%_))))
               (_%g173986174016%_ _%g173987174019%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g173985174584%_ _%L173539%_))
                                         _%stx171739%_))))
                             _%hd173637173760%_
                             _%kw-ref173635173781%_
                             _%hd173625173747%_
                             _%hd173616173723%_
                             _%hd173607173699%_)
                            (_%g173581173643%_ _%g173582173646%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop173630173765%_
                                                 _%target173627173752%_
                                                 '()))
                                              (_%g173581173643%_
                                               _%g173582173646%_))))
                                      (_%g173581173643%_ _%g173582173646%_)))))
                            (_%g173581173643%_ _%g173582173646%_))
                        (_%g173581173643%_ _%g173582173646%_))
                    (_%g173581173643%_ _%g173582173646%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g173581173643%_
                                                     _%g173582173646%_))
                                                (_%g173581173643%_
                                                 _%g173582173646%_))
                                            (_%g173581173643%_
                                             _%g173582173646%_))))
                                    (_%g173581173643%_ _%g173582173646%_))))
                            (_%g173581173643%_ _%g173582173646%_))
                        (_%g173581173643%_ _%g173582173646%_))))
                (_%g173581173643%_ _%g173582173646%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g173581173643%_
                                                     _%g173582173646%_))
                                                (_%g173581173643%_
                                                 _%g173582173646%_))))
                                        (_%g173581173643%_
                                         _%g173582173646%_))))
                                (_%g173581173643%_ _%g173582173646%_))
                            (_%g173581173643%_ _%g173582173646%_))))
                    (_%g173581173643%_ _%g173582173646%_))
                (_%g173581173643%_ _%g173582173646%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g173581173643%_
                                                     _%g173582173646%_))))
                                            (_%g173581173643%_
                                             _%g173582173646%_))))
                                    (_%g173581173643%_ _%g173582173646%_))
                                (_%g173581173643%_ _%g173582173646%_))
                            (_%g173581173643%_ _%g173582173646%_))))
                    (_%g173581173643%_ _%g173582173646%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g173581173643%_
                                                     _%g173582173646%_))))
                                            (_%g173581173643%_
                                             _%g173582173646%_))
                                        (_%g173581173643%_ _%g173582173646%_))
                                    (_%g173581173643%_ _%g173582173646%_))))
                            (_%g173581173643%_ _%g173582173646%_)))))
                (_%g173580174588%_ _%L173538%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd173414173532%_
                                                    _%hd173411173524%_
                                                    _%hd173408173516%_
                                                    _%hd173405173508%_
                                                    _%hd173387173460%_)
                                                   (_%g173367173420%_
                                                    _%g173368173423%_))))
                                           (_%g173367173420%_
                                            _%g173368173423%_))
                                       (_%g173367173420%_ _%g173368173423%_))
                                   (_%g173367173420%_ _%g173368173423%_))
                               (_%g173367173420%_ _%g173368173423%_))))
                       (_%g173367173420%_ _%g173368173423%_))
                   (_%g173367173420%_ _%g173368173423%_))
               (_%g173367173420%_ _%g173368173423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173367173420%_
                                                _%g173368173423%_))
                                           (_%g173367173420%_
                                            _%g173368173423%_))))
                                   (_%g173367173420%_ _%g173368173423%_))))
                           (_%g173367173420%_ _%g173368173423%_))))
                   (_%g173367173420%_ _%g173368173423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g173367173420%_
                                                    _%g173368173423%_))
                                               (_%g173367173420%_
                                                _%g173368173423%_))
                                           (_%g173367173420%_
                                            _%g173368173423%_))))
                                   (_%g173367173420%_ _%g173368173423%_))))
                           (_%g173367173420%_ _%g173368173423%_))
                       (_%g173367173420%_ _%g173368173423%_))))
               (_%g173367173420%_ _%g173368173423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173367173420%_
                                                _%g173368173423%_))))
                                       (_%g173367173420%_ _%g173368173423%_))))
                               (_%g173367173420%_ _%g173368173423%_))
                           (_%g173367173420%_ _%g173368173423%_))
                       (_%g173367173420%_ _%g173368173423%_))))
               (_%g173367173420%_ _%g173368173423%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g173366174591%_ _%L171811%_))
                                         _%stx171739%_))))))))
                  (_%__kont174825174826%_ (lambda () _%stx171739%_)))
              (let ((_%__match174854174855%_
                     (lambda (_%e171751171779%_
                              _%hd171752171782%_
                              _%tl171753171784%_
                              _%e171754171787%_
                              _%hd171755171790%_
                              _%tl171756171792%_
                              _%e171757171795%_
                              _%hd171758171798%_
                              _%tl171759171800%_
                              _%e171760171803%_
                              _%hd171761171806%_
                              _%tl171762171808%_)
                       (let ((_%L171811%_ _%hd171761171806%_)
                             (_%L171812%_ _%hd171758171798%_))
                         (if (let ((__tmp176027
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L171812%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp176027))
                             (_%__kont174823174824%_ _%L171811%_ _%L171812%_)
                             (_%__kont174825174826%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx174821174822%_))
                    (let ((_%e171751171779%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx174821174822%_))))
                      (let ((_%tl171753171784%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171751171779%_)))
                            (_%hd171752171782%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171751171779%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171753171784%_))
                            (let ((_%e171754171787%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171753171784%_))))
                              (let ((_%tl171756171792%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171754171787%_)))
                                    (_%hd171755171790%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171754171787%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd171755171790%_))
                                    (let ((_%e171757171795%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd171755171790%_))))
                                      (let ((_%tl171759171800%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171757171795%_)))
                                            (_%hd171758171798%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171757171795%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl171759171800%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl171756171792%_))
                                                (let ((_%e171760171803%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl171756171792%_))))
                                                  (let ((_%tl171762171808%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e171760171803%_)))
                                                        (_%hd171761171806%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e171760171803%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl171762171808%_))
                                                        (_%__match174854174855%_
                                                         _%e171751171779%_
                                                         _%hd171752171782%_
                                                         _%tl171753171784%_
                                                         _%e171754171787%_
                                                         _%hd171755171790%_
                                                         _%tl171756171792%_
                                                         _%e171757171795%_
                                                         _%hd171758171798%_
                                                         _%tl171759171800%_
                                                         _%e171760171803%_
                                                         _%hd171761171806%_
                                                         _%tl171762171808%_)
                                                        (_%__kont174825174826%_))))
                                                (_%__kont174825174826%_))
                                            (_%__kont174825174826%_))))
                                    (_%__kont174825174826%_))))
                            (_%__kont174825174826%_))))
                    (_%__kont174825174826%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self171591%_ _%stx171592%_)
        (let* ((_%__stx174857174858%_ _%stx171592%_)
               (_%g171595171628%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx174857174858%_)))))
          (let ((_%__kont174859174860%_ (lambda (_%L171718%_) _%L171718%_))
                (_%__kont174861174862%_
                 (lambda (_%L171657%_ _%L171658%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self171591%_ _%L171657%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx174857174858%_))
                (let ((_%e171598171678%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx174857174858%_))))
                  (let ((_%tl171600171683%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e171598171678%_)))
                        (_%hd171599171681%_
                         (let ()
                           (declare (not safe))
                           (##car _%e171598171678%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl171600171683%_))
                        (let ((_%e171601171686%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl171600171683%_))))
                          (let ((_%tl171603171691%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171601171686%_)))
                                (_%hd171602171689%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171601171686%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd171602171689%_))
                                (let ((_%e171604171694%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd171602171689%_))))
                                  (let ((_%tl171606171699%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171604171694%_)))
                                        (_%hd171605171697%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171604171694%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd171605171697%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd171605171697%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl171606171699%_))
                                                (let ((_%e171607171702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl171606171699%_))))
                                                  (let ((_%tl171609171707%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e171607171702%_)))
                                                        (_%hd171608171705%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e171607171702%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl171609171707%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl171603171691%_))
                                                            (let ((_%e171610171710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl171603171691%_))))
                      (let ((_%tl171612171715%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171610171710%_)))
                            (_%hd171611171713%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171610171710%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171612171715%_))
                            (_%__kont174859174860%_ _%hd171608171705%_)
                            (let ()
                              (declare (not safe))
                              (_%g171595171628%_)))))
                    (let () (declare (not safe)) (_%g171595171628%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl171603171691%_))
                    (let ((_%e171621171649%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl171603171691%_))))
                      (let ((_%tl171623171654%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171621171649%_)))
                            (_%hd171622171652%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171621171649%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171623171654%_))
                            (_%__kont174861174862%_
                             _%hd171622171652%_
                             _%hd171602171689%_)
                            (let ()
                              (declare (not safe))
                              (_%g171595171628%_)))))
                    (let () (declare (not safe)) (_%g171595171628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl171603171691%_))
                                                    (let ((_%e171621171649%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl171603171691%_))))
                                                      (let ((_%tl171623171654%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171621171649%_)))
                    (_%hd171622171652%_
                     (let () (declare (not safe)) (##car _%e171621171649%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl171623171654%_))
                    (_%__kont174861174862%_
                     _%hd171622171652%_
                     _%hd171602171689%_)
                    (let () (declare (not safe)) (_%g171595171628%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g171595171628%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl171603171691%_))
                                                (let ((_%e171621171649%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl171603171691%_))))
                                                  (let ((_%tl171623171654%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e171621171649%_)))
                                                        (_%hd171622171652%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e171621171649%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl171623171654%_))
                                                        (_%__kont174861174862%_
                                                         _%hd171622171652%_
                                                         _%hd171602171689%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g171595171628%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g171595171628%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171603171691%_))
                                            (let ((_%e171621171649%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171603171691%_))))
                                              (let ((_%tl171623171654%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171621171649%_)))
                                                    (_%hd171622171652%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171621171649%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl171623171654%_))
                                                    (_%__kont174861174862%_
                                                     _%hd171622171652%_
                                                     _%hd171602171689%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g171595171628%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g171595171628%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl171603171691%_))
                                    (let ((_%e171621171649%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl171603171691%_))))
                                      (let ((_%tl171623171654%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171621171649%_)))
                                            (_%hd171622171652%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171621171649%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl171623171654%_))
                                            (_%__kont174861174862%_
                                             _%hd171622171652%_
                                             _%hd171602171689%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g171595171628%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g171595171628%_))))))
                        (let () (declare (not safe)) (_%g171595171628%_)))))
                (let () (declare (not safe)) (_%g171595171628%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self171507%_ _%stx171508%_)
        (let* ((_%g171510171531%_
                (lambda (_%g171511171528%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171511171528%_))))
               (_%g171509171588%_
                (lambda (_%g171511171534%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171511171534%_))
                      (let ((_%e171515171536%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171511171534%_))))
                        (let ((_%hd171516171539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171515171536%_)))
                              (_%tl171517171541%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171515171536%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171517171541%_))
                              (let ((_%e171518171544%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171517171541%_))))
                                (let ((_%hd171519171547%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171518171544%_)))
                                      (_%tl171520171549%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171518171544%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171520171549%_))
                                      (let ((_%e171521171552%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171520171549%_))))
                                        (let ((_%hd171522171555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171521171552%_)))
                                              (_%tl171523171557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171521171552%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl171523171557%_))
                                              (let ((_%e171524171560%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl171523171557%_))))
                                                (let ((_%hd171525171563%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e171524171560%_)))
                                                      (_%tl171526171565%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e171524171560%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl171526171565%_))
                                                      ((lambda (_%L171568%_
                                                                _%L171569%_
                                                                _%L171570%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self171507%_
                                                            _%L171569%_)))
                                                       _%hd171525171563%_
                                                       _%hd171522171555%_
                                                       _%hd171519171547%_)
                                                      (_%g171510171531%_
                                                       _%g171511171534%_))))
                                              (_%g171510171531%_
                                               _%g171511171534%_))))
                                      (_%g171510171531%_ _%g171511171534%_))))
                              (_%g171510171531%_ _%g171511171534%_))))
                      (_%g171510171531%_ _%g171511171534%_)))))
          (_%g171509171588%_ _%stx171508%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self170468%_ _%stx170469%_)
        (let* ((_%__stx174923174924%_ _%stx170469%_)
               (_%g170477170699%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx174923174924%_)))))
          (let ((_%__kont174925174926%_
                 (lambda (_%L171456%_ _%L171457%_ _%L171458%_ _%L171459%_)
                   (let ((__tmp176029
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170468%_ 'methods)))
                         (__tmp176028
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171457%_))))
                     (declare (not safe))
                     (hash-put! __tmp176029 __tmp176028 '#t))
                   (for-each
                    (lambda (_%g171492171494%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self170468%_ _%g171492171494%_)))
                    (let ((__tmp176030
                           (lambda (_%g171496171499%_ _%g171497171501%_)
                             (cons _%g171496171499%_ _%g171497171501%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176030 '() _%L171456%_)))))
                (_%__kont174929174930%_
                 (lambda (_%L171291%_
                          _%L171292%_
                          _%L171293%_
                          _%L171294%_
                          _%L171295%_)
                   (let ((__tmp176032
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170468%_ 'methods)))
                         (__tmp176031
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171292%_))))
                     (declare (not safe))
                     (hash-put! __tmp176032 __tmp176031 '#t))
                   (for-each
                    (lambda (_%g171335171337%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self170468%_ _%g171335171337%_)))
                    (let ((__tmp176033
                           (lambda (_%g171339171342%_ _%g171340171344%_)
                             (cons _%g171339171342%_ _%g171340171344%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176033 '() _%L171291%_)))))
                (_%__kont174933174934%_
                 (lambda (_%L171124%_ _%L171125%_ _%L171126%_)
                   (let ((__tmp176035
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170468%_ 'slots)))
                         (__tmp176034
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171124%_))))
                     (declare (not safe))
                     (hash-put! __tmp176035 __tmp176034 '#t))))
                (_%__kont174935174936%_
                 (lambda (_%L171001%_ _%L171002%_ _%L171003%_ _%L171004%_)
                   (let ((__tmp176037
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170468%_ 'slots)))
                         (__tmp176036
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171002%_))))
                     (declare (not safe))
                     (hash-put! __tmp176037 __tmp176036 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self170468%_ _%L171001%_))))
                (_%__kont174937174938%_
                 (lambda (_%L170875%_ _%L170876%_)
                   (let* ((_%accessor170898%_
                           (let ((__tmp176038
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L170876%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp176038)))
                          (_%klass170900%_
                           (let ((__tmp176039
                                  (##structure-ref
                                   _%accessor170898%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx170469%_
                              __tmp176039)))
                          (_%slot170902%_
                           (##structure-ref
                            _%accessor170898%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor170898%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass170900%_
                                    _%slot170902%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass170900%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp176041
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self170468%_ 'slots)))
                               (__tmp176040
                                (##structure-ref
                                 _%accessor170898%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp176041 __tmp176040 '#t))))))
                (_%__kont174939174940%_
                 (lambda (_%L170775%_ _%L170776%_ _%L170777%_)
                   (let* ((_%mutator170804%_
                           (let ((__tmp176042
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L170777%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp176042)))
                          (_%klass170806%_
                           (let ((__tmp176043
                                  (##structure-ref
                                   _%mutator170804%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx170469%_
                              __tmp176043)))
                          (_%slot170808%_
                           (##structure-ref
                            _%mutator170804%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator170804%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass170806%_
                                    _%slot170808%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass170806%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp176044
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self170468%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp176044 _%slot170808%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self170468%_ _%L170775%_)))))
                (_%__kont174941174942%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self170468%_ _%stx170469%_)))))
            (let* ((_%__match175422175423%_
                    (lambda (_%e170671170711%_
                             _%hd170672170714%_
                             _%tl170673170716%_
                             _%e170674170719%_
                             _%hd170675170722%_
                             _%tl170676170724%_
                             _%e170677170727%_
                             _%hd170678170730%_
                             _%tl170679170732%_
                             _%e170680170735%_
                             _%hd170681170738%_
                             _%tl170682170740%_
                             _%e170683170743%_
                             _%hd170684170746%_
                             _%tl170685170748%_
                             _%e170686170751%_
                             _%hd170687170754%_
                             _%tl170688170756%_
                             _%e170689170759%_
                             _%hd170690170762%_
                             _%tl170691170764%_
                             _%e170692170767%_
                             _%hd170693170770%_
                             _%tl170694170772%_)
                      (let ((_%L170775%_ _%hd170693170770%_)
                            (_%L170776%_ _%hd170690170762%_)
                            (_%L170777%_ _%hd170681170738%_))
                        (if (and (let ((__tmp176045
                                        (let ((__tmp176046
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L170777%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp176046))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp176045
                                    'gxc#!mutator::t))
                                 (let ((__tmp176047
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170468%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L170776%_
                                    __tmp176047)))
                            (_%__kont174939174940%_
                             _%L170775%_
                             _%L170776%_
                             _%L170777%_)
                            (_%__kont174941174942%_)))))
                   (_%__match175420175421%_
                    (lambda (_%e170671170711%_
                             _%hd170672170714%_
                             _%tl170673170716%_
                             _%e170674170719%_
                             _%hd170675170722%_
                             _%tl170676170724%_
                             _%e170677170727%_
                             _%hd170678170730%_
                             _%tl170679170732%_
                             _%e170680170735%_
                             _%hd170681170738%_
                             _%tl170682170740%_
                             _%e170683170743%_
                             _%hd170684170746%_
                             _%tl170685170748%_
                             _%e170686170751%_
                             _%hd170687170754%_
                             _%tl170688170756%_
                             _%e170689170759%_
                             _%hd170690170762%_
                             _%tl170691170764%_
                             _%e170692170767%_
                             _%hd170693170770%_
                             _%tl170694170772%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl170694170772%_))
                          (_%__match175422175423%_
                           _%e170671170711%_
                           _%hd170672170714%_
                           _%tl170673170716%_
                           _%e170674170719%_
                           _%hd170675170722%_
                           _%tl170676170724%_
                           _%e170677170727%_
                           _%hd170678170730%_
                           _%tl170679170732%_
                           _%e170680170735%_
                           _%hd170681170738%_
                           _%tl170682170740%_
                           _%e170683170743%_
                           _%hd170684170746%_
                           _%tl170685170748%_
                           _%e170686170751%_
                           _%hd170687170754%_
                           _%tl170688170756%_
                           _%e170689170759%_
                           _%hd170690170762%_
                           _%tl170691170764%_
                           _%e170692170767%_
                           _%hd170693170770%_
                           _%tl170694170772%_)
                          (_%__kont174941174942%_))))
                   (_%__match175414175415%_
                    (lambda (_%e170671170711%_
                             _%hd170672170714%_
                             _%tl170673170716%_
                             _%e170674170719%_
                             _%hd170675170722%_
                             _%tl170676170724%_
                             _%e170677170727%_
                             _%hd170678170730%_
                             _%tl170679170732%_
                             _%e170680170735%_
                             _%hd170681170738%_
                             _%tl170682170740%_
                             _%e170683170743%_
                             _%hd170684170746%_
                             _%tl170685170748%_
                             _%e170686170751%_
                             _%hd170687170754%_
                             _%tl170688170756%_
                             _%e170689170759%_
                             _%hd170690170762%_
                             _%tl170691170764%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170685170748%_))
                          (let ((_%e170692170767%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170685170748%_))))
                            (let ((_%tl170694170772%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170692170767%_)))
                                  (_%hd170693170770%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170692170767%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl170694170772%_))
                                  (_%__match175422175423%_
                                   _%e170671170711%_
                                   _%hd170672170714%_
                                   _%tl170673170716%_
                                   _%e170674170719%_
                                   _%hd170675170722%_
                                   _%tl170676170724%_
                                   _%e170677170727%_
                                   _%hd170678170730%_
                                   _%tl170679170732%_
                                   _%e170680170735%_
                                   _%hd170681170738%_
                                   _%tl170682170740%_
                                   _%e170683170743%_
                                   _%hd170684170746%_
                                   _%tl170685170748%_
                                   _%e170686170751%_
                                   _%hd170687170754%_
                                   _%tl170688170756%_
                                   _%e170689170759%_
                                   _%hd170690170762%_
                                   _%tl170691170764%_
                                   _%e170692170767%_
                                   _%hd170693170770%_
                                   _%tl170694170772%_)
                                  (_%__kont174941174942%_))))
                          (_%__kont174941174942%_))))
                   (_%__match175360175361%_
                    (lambda (_%e170647170819%_
                             _%hd170648170822%_
                             _%tl170649170824%_
                             _%e170650170827%_
                             _%hd170651170830%_
                             _%tl170652170832%_
                             _%e170653170835%_
                             _%hd170654170838%_
                             _%tl170655170840%_
                             _%e170656170843%_
                             _%hd170657170846%_
                             _%tl170658170848%_
                             _%e170659170851%_
                             _%hd170660170854%_
                             _%tl170661170856%_
                             _%e170662170859%_
                             _%hd170663170862%_
                             _%tl170664170864%_
                             _%e170665170867%_
                             _%hd170666170870%_
                             _%tl170667170872%_)
                      (let ((_%L170875%_ _%hd170666170870%_)
                            (_%L170876%_ _%hd170657170846%_))
                        (if (and (let ((__tmp176048
                                        (let ((__tmp176049
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L170876%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp176049))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp176048
                                    'gxc#!accessor::t))
                                 (let ((__tmp176050
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170468%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L170875%_
                                    __tmp176050)))
                            (_%__kont174937174938%_ _%L170875%_ _%L170876%_)
                            (_%__kont174941174942%_)))))
                   (_%__match175358175359%_
                    (lambda (_%e170647170819%_
                             _%hd170648170822%_
                             _%tl170649170824%_
                             _%e170650170827%_
                             _%hd170651170830%_
                             _%tl170652170832%_
                             _%e170653170835%_
                             _%hd170654170838%_
                             _%tl170655170840%_
                             _%e170656170843%_
                             _%hd170657170846%_
                             _%tl170658170848%_
                             _%e170659170851%_
                             _%hd170660170854%_
                             _%tl170661170856%_
                             _%e170662170859%_
                             _%hd170663170862%_
                             _%tl170664170864%_
                             _%e170665170867%_
                             _%hd170666170870%_
                             _%tl170667170872%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl170661170856%_))
                          (_%__match175360175361%_
                           _%e170647170819%_
                           _%hd170648170822%_
                           _%tl170649170824%_
                           _%e170650170827%_
                           _%hd170651170830%_
                           _%tl170652170832%_
                           _%e170653170835%_
                           _%hd170654170838%_
                           _%tl170655170840%_
                           _%e170656170843%_
                           _%hd170657170846%_
                           _%tl170658170848%_
                           _%e170659170851%_
                           _%hd170660170854%_
                           _%tl170661170856%_
                           _%e170662170859%_
                           _%hd170663170862%_
                           _%tl170664170864%_
                           _%e170665170867%_
                           _%hd170666170870%_
                           _%tl170667170872%_)
                          (_%__match175414175415%_
                           _%e170647170819%_
                           _%hd170648170822%_
                           _%tl170649170824%_
                           _%e170650170827%_
                           _%hd170651170830%_
                           _%tl170652170832%_
                           _%e170653170835%_
                           _%hd170654170838%_
                           _%tl170655170840%_
                           _%e170656170843%_
                           _%hd170657170846%_
                           _%tl170658170848%_
                           _%e170659170851%_
                           _%hd170660170854%_
                           _%tl170661170856%_
                           _%e170662170859%_
                           _%hd170663170862%_
                           _%tl170664170864%_
                           _%e170665170867%_
                           _%hd170666170870%_
                           _%tl170667170872%_))))
                   (_%__match175304175305%_
                    (lambda (_%e170612170913%_
                             _%hd170613170916%_
                             _%tl170614170918%_
                             _%e170615170921%_
                             _%hd170616170924%_
                             _%tl170617170926%_
                             _%e170618170929%_
                             _%hd170619170932%_
                             _%tl170620170934%_
                             _%e170621170937%_
                             _%hd170622170940%_
                             _%tl170623170942%_
                             _%e170624170945%_
                             _%hd170625170948%_
                             _%tl170626170950%_
                             _%e170627170953%_
                             _%hd170628170956%_
                             _%tl170629170958%_
                             _%e170630170961%_
                             _%hd170631170964%_
                             _%tl170632170966%_
                             _%e170633170969%_
                             _%hd170634170972%_
                             _%tl170635170974%_
                             _%e170636170977%_
                             _%hd170637170980%_
                             _%tl170638170982%_
                             _%e170639170985%_
                             _%hd170640170988%_
                             _%tl170641170990%_
                             _%e170642170993%_
                             _%hd170643170996%_
                             _%tl170644170998%_)
                      (let ((_%L171001%_ _%hd170643170996%_)
                            (_%L171002%_ _%hd170640170988%_)
                            (_%L171003%_ _%hd170631170964%_)
                            (_%L171004%_ _%hd170622170940%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171004%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171004%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp176051
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170468%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171003%_
                                    __tmp176051)))
                            (_%__kont174935174936%_
                             _%L171001%_
                             _%L171002%_
                             _%L171003%_
                             _%L171004%_)
                            (_%__kont174941174942%_)))))
                   (_%__match175296175297%_
                    (lambda (_%e170612170913%_
                             _%hd170613170916%_
                             _%tl170614170918%_
                             _%e170615170921%_
                             _%hd170616170924%_
                             _%tl170617170926%_
                             _%e170618170929%_
                             _%hd170619170932%_
                             _%tl170620170934%_
                             _%e170621170937%_
                             _%hd170622170940%_
                             _%tl170623170942%_
                             _%e170624170945%_
                             _%hd170625170948%_
                             _%tl170626170950%_
                             _%e170627170953%_
                             _%hd170628170956%_
                             _%tl170629170958%_
                             _%e170630170961%_
                             _%hd170631170964%_
                             _%tl170632170966%_
                             _%e170633170969%_
                             _%hd170634170972%_
                             _%tl170635170974%_
                             _%e170636170977%_
                             _%hd170637170980%_
                             _%tl170638170982%_
                             _%e170639170985%_
                             _%hd170640170988%_
                             _%tl170641170990%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170635170974%_))
                          (let ((_%e170642170993%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170635170974%_))))
                            (let ((_%tl170644170998%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170642170993%_)))
                                  (_%hd170643170996%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170642170993%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl170644170998%_))
                                  (_%__match175304175305%_
                                   _%e170612170913%_
                                   _%hd170613170916%_
                                   _%tl170614170918%_
                                   _%e170615170921%_
                                   _%hd170616170924%_
                                   _%tl170617170926%_
                                   _%e170618170929%_
                                   _%hd170619170932%_
                                   _%tl170620170934%_
                                   _%e170621170937%_
                                   _%hd170622170940%_
                                   _%tl170623170942%_
                                   _%e170624170945%_
                                   _%hd170625170948%_
                                   _%tl170626170950%_
                                   _%e170627170953%_
                                   _%hd170628170956%_
                                   _%tl170629170958%_
                                   _%e170630170961%_
                                   _%hd170631170964%_
                                   _%tl170632170966%_
                                   _%e170633170969%_
                                   _%hd170634170972%_
                                   _%tl170635170974%_
                                   _%e170636170977%_
                                   _%hd170637170980%_
                                   _%tl170638170982%_
                                   _%e170639170985%_
                                   _%hd170640170988%_
                                   _%tl170641170990%_
                                   _%e170642170993%_
                                   _%hd170643170996%_
                                   _%tl170644170998%_)
                                  (_%__kont174941174942%_))))
                          (_%__match175420175421%_
                           _%e170612170913%_
                           _%hd170613170916%_
                           _%tl170614170918%_
                           _%e170615170921%_
                           _%hd170616170924%_
                           _%tl170617170926%_
                           _%e170618170929%_
                           _%hd170619170932%_
                           _%tl170620170934%_
                           _%e170621170937%_
                           _%hd170622170940%_
                           _%tl170623170942%_
                           _%e170624170945%_
                           _%hd170625170948%_
                           _%tl170626170950%_
                           _%e170627170953%_
                           _%hd170628170956%_
                           _%tl170629170958%_
                           _%e170630170961%_
                           _%hd170631170964%_
                           _%tl170632170966%_
                           _%e170633170969%_
                           _%hd170634170972%_
                           _%tl170635170974%_))))
                   (_%__match175218175219%_
                    (lambda (_%e170578171044%_
                             _%hd170579171047%_
                             _%tl170580171049%_
                             _%e170581171052%_
                             _%hd170582171055%_
                             _%tl170583171057%_
                             _%e170584171060%_
                             _%hd170585171063%_
                             _%tl170586171065%_
                             _%e170587171068%_
                             _%hd170588171071%_
                             _%tl170589171073%_
                             _%e170590171076%_
                             _%hd170591171079%_
                             _%tl170592171081%_
                             _%e170593171084%_
                             _%hd170594171087%_
                             _%tl170595171089%_
                             _%e170596171092%_
                             _%hd170597171095%_
                             _%tl170598171097%_
                             _%e170599171100%_
                             _%hd170600171103%_
                             _%tl170601171105%_
                             _%e170602171108%_
                             _%hd170603171111%_
                             _%tl170604171113%_
                             _%e170605171116%_
                             _%hd170606171119%_
                             _%tl170607171121%_)
                      (let ((_%L171124%_ _%hd170606171119%_)
                            (_%L171125%_ _%hd170597171095%_)
                            (_%L171126%_ _%hd170588171071%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171126%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171126%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp176052
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170468%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171125%_
                                    __tmp176052)))
                            (_%__kont174933174934%_
                             _%L171124%_
                             _%L171125%_
                             _%L171126%_)
                            (_%__match175422175423%_
                             _%e170578171044%_
                             _%hd170579171047%_
                             _%tl170580171049%_
                             _%e170581171052%_
                             _%hd170582171055%_
                             _%tl170583171057%_
                             _%e170584171060%_
                             _%hd170585171063%_
                             _%tl170586171065%_
                             _%e170587171068%_
                             _%hd170588171071%_
                             _%tl170589171073%_
                             _%e170590171076%_
                             _%hd170591171079%_
                             _%tl170592171081%_
                             _%e170593171084%_
                             _%hd170594171087%_
                             _%tl170595171089%_
                             _%e170596171092%_
                             _%hd170597171095%_
                             _%tl170598171097%_
                             _%e170599171100%_
                             _%hd170600171103%_
                             _%tl170601171105%_)))))
                   (_%__match175216175217%_
                    (lambda (_%e170578171044%_
                             _%hd170579171047%_
                             _%tl170580171049%_
                             _%e170581171052%_
                             _%hd170582171055%_
                             _%tl170583171057%_
                             _%e170584171060%_
                             _%hd170585171063%_
                             _%tl170586171065%_
                             _%e170587171068%_
                             _%hd170588171071%_
                             _%tl170589171073%_
                             _%e170590171076%_
                             _%hd170591171079%_
                             _%tl170592171081%_
                             _%e170593171084%_
                             _%hd170594171087%_
                             _%tl170595171089%_
                             _%e170596171092%_
                             _%hd170597171095%_
                             _%tl170598171097%_
                             _%e170599171100%_
                             _%hd170600171103%_
                             _%tl170601171105%_
                             _%e170602171108%_
                             _%hd170603171111%_
                             _%tl170604171113%_
                             _%e170605171116%_
                             _%hd170606171119%_
                             _%tl170607171121%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl170601171105%_))
                          (_%__match175218175219%_
                           _%e170578171044%_
                           _%hd170579171047%_
                           _%tl170580171049%_
                           _%e170581171052%_
                           _%hd170582171055%_
                           _%tl170583171057%_
                           _%e170584171060%_
                           _%hd170585171063%_
                           _%tl170586171065%_
                           _%e170587171068%_
                           _%hd170588171071%_
                           _%tl170589171073%_
                           _%e170590171076%_
                           _%hd170591171079%_
                           _%tl170592171081%_
                           _%e170593171084%_
                           _%hd170594171087%_
                           _%tl170595171089%_
                           _%e170596171092%_
                           _%hd170597171095%_
                           _%tl170598171097%_
                           _%e170599171100%_
                           _%hd170600171103%_
                           _%tl170601171105%_
                           _%e170602171108%_
                           _%hd170603171111%_
                           _%tl170604171113%_
                           _%e170605171116%_
                           _%hd170606171119%_
                           _%tl170607171121%_)
                          (_%__match175296175297%_
                           _%e170578171044%_
                           _%hd170579171047%_
                           _%tl170580171049%_
                           _%e170581171052%_
                           _%hd170582171055%_
                           _%tl170583171057%_
                           _%e170584171060%_
                           _%hd170585171063%_
                           _%tl170586171065%_
                           _%e170587171068%_
                           _%hd170588171071%_
                           _%tl170589171073%_
                           _%e170590171076%_
                           _%hd170591171079%_
                           _%tl170592171081%_
                           _%e170593171084%_
                           _%hd170594171087%_
                           _%tl170595171089%_
                           _%e170596171092%_
                           _%hd170597171095%_
                           _%tl170598171097%_
                           _%e170599171100%_
                           _%hd170600171103%_
                           _%tl170601171105%_
                           _%e170602171108%_
                           _%hd170603171111%_
                           _%tl170604171113%_
                           _%e170605171116%_
                           _%hd170606171119%_
                           _%tl170607171121%_))))
                   (_%__match175206175207%_
                    (lambda (_%e170578171044%_
                             _%hd170579171047%_
                             _%tl170580171049%_
                             _%e170581171052%_
                             _%hd170582171055%_
                             _%tl170583171057%_
                             _%e170584171060%_
                             _%hd170585171063%_
                             _%tl170586171065%_
                             _%e170587171068%_
                             _%hd170588171071%_
                             _%tl170589171073%_
                             _%e170590171076%_
                             _%hd170591171079%_
                             _%tl170592171081%_
                             _%e170593171084%_
                             _%hd170594171087%_
                             _%tl170595171089%_
                             _%e170596171092%_
                             _%hd170597171095%_
                             _%tl170598171097%_
                             _%e170599171100%_
                             _%hd170600171103%_
                             _%tl170601171105%_
                             _%e170602171108%_
                             _%hd170603171111%_
                             _%tl170604171113%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd170603171111%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170604171113%_))
                              (let ((_%e170605171116%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170604171113%_))))
                                (let ((_%tl170607171121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170605171116%_)))
                                      (_%hd170606171119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170605171116%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl170607171121%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl170601171105%_))
                                          (_%__match175218175219%_
                                           _%e170578171044%_
                                           _%hd170579171047%_
                                           _%tl170580171049%_
                                           _%e170581171052%_
                                           _%hd170582171055%_
                                           _%tl170583171057%_
                                           _%e170584171060%_
                                           _%hd170585171063%_
                                           _%tl170586171065%_
                                           _%e170587171068%_
                                           _%hd170588171071%_
                                           _%tl170589171073%_
                                           _%e170590171076%_
                                           _%hd170591171079%_
                                           _%tl170592171081%_
                                           _%e170593171084%_
                                           _%hd170594171087%_
                                           _%tl170595171089%_
                                           _%e170596171092%_
                                           _%hd170597171095%_
                                           _%tl170598171097%_
                                           _%e170599171100%_
                                           _%hd170600171103%_
                                           _%tl170601171105%_
                                           _%e170602171108%_
                                           _%hd170603171111%_
                                           _%tl170604171113%_
                                           _%e170605171116%_
                                           _%hd170606171119%_
                                           _%tl170607171121%_)
                                          (_%__match175296175297%_
                                           _%e170578171044%_
                                           _%hd170579171047%_
                                           _%tl170580171049%_
                                           _%e170581171052%_
                                           _%hd170582171055%_
                                           _%tl170583171057%_
                                           _%e170584171060%_
                                           _%hd170585171063%_
                                           _%tl170586171065%_
                                           _%e170587171068%_
                                           _%hd170588171071%_
                                           _%tl170589171073%_
                                           _%e170590171076%_
                                           _%hd170591171079%_
                                           _%tl170592171081%_
                                           _%e170593171084%_
                                           _%hd170594171087%_
                                           _%tl170595171089%_
                                           _%e170596171092%_
                                           _%hd170597171095%_
                                           _%tl170598171097%_
                                           _%e170599171100%_
                                           _%hd170600171103%_
                                           _%tl170601171105%_
                                           _%e170602171108%_
                                           _%hd170603171111%_
                                           _%tl170604171113%_
                                           _%e170605171116%_
                                           _%hd170606171119%_
                                           _%tl170607171121%_))
                                      (_%__match175420175421%_
                                       _%e170578171044%_
                                       _%hd170579171047%_
                                       _%tl170580171049%_
                                       _%e170581171052%_
                                       _%hd170582171055%_
                                       _%tl170583171057%_
                                       _%e170584171060%_
                                       _%hd170585171063%_
                                       _%tl170586171065%_
                                       _%e170587171068%_
                                       _%hd170588171071%_
                                       _%tl170589171073%_
                                       _%e170590171076%_
                                       _%hd170591171079%_
                                       _%tl170592171081%_
                                       _%e170593171084%_
                                       _%hd170594171087%_
                                       _%tl170595171089%_
                                       _%e170596171092%_
                                       _%hd170597171095%_
                                       _%tl170598171097%_
                                       _%e170599171100%_
                                       _%hd170600171103%_
                                       _%tl170601171105%_))))
                              (_%__match175420175421%_
                               _%e170578171044%_
                               _%hd170579171047%_
                               _%tl170580171049%_
                               _%e170581171052%_
                               _%hd170582171055%_
                               _%tl170583171057%_
                               _%e170584171060%_
                               _%hd170585171063%_
                               _%tl170586171065%_
                               _%e170587171068%_
                               _%hd170588171071%_
                               _%tl170589171073%_
                               _%e170590171076%_
                               _%hd170591171079%_
                               _%tl170592171081%_
                               _%e170593171084%_
                               _%hd170594171087%_
                               _%tl170595171089%_
                               _%e170596171092%_
                               _%hd170597171095%_
                               _%tl170598171097%_
                               _%e170599171100%_
                               _%hd170600171103%_
                               _%tl170601171105%_))
                          (_%__match175420175421%_
                           _%e170578171044%_
                           _%hd170579171047%_
                           _%tl170580171049%_
                           _%e170581171052%_
                           _%hd170582171055%_
                           _%tl170583171057%_
                           _%e170584171060%_
                           _%hd170585171063%_
                           _%tl170586171065%_
                           _%e170587171068%_
                           _%hd170588171071%_
                           _%tl170589171073%_
                           _%e170590171076%_
                           _%hd170591171079%_
                           _%tl170592171081%_
                           _%e170593171084%_
                           _%hd170594171087%_
                           _%tl170595171089%_
                           _%e170596171092%_
                           _%hd170597171095%_
                           _%tl170598171097%_
                           _%e170599171100%_
                           _%hd170600171103%_
                           _%tl170601171105%_))))
                   (_%__match175138175139%_
                    (lambda (_%e170527171163%_
                             _%hd170528171166%_
                             _%tl170529171168%_
                             _%e170530171171%_
                             _%hd170531171174%_
                             _%tl170532171176%_
                             _%e170533171179%_
                             _%hd170534171182%_
                             _%tl170535171184%_
                             _%e170536171187%_
                             _%hd170537171190%_
                             _%tl170538171192%_
                             _%e170539171195%_
                             _%hd170540171198%_
                             _%tl170541171200%_
                             _%e170542171203%_
                             _%hd170543171206%_
                             _%tl170544171208%_
                             _%e170545171211%_
                             _%hd170546171214%_
                             _%tl170547171216%_
                             _%e170548171219%_
                             _%hd170549171222%_
                             _%tl170550171224%_
                             _%e170551171227%_
                             _%hd170552171230%_
                             _%tl170553171232%_
                             _%e170554171235%_
                             _%hd170555171238%_
                             _%tl170556171240%_
                             _%e170557171243%_
                             _%hd170558171246%_
                             _%tl170559171248%_
                             _%e170560171251%_
                             _%hd170561171254%_
                             _%tl170562171256%_
                             _%e170563171259%_
                             _%hd170564171262%_
                             _%tl170565171264%_
                             _%__splice174931174932%_
                             _%target170566171267%_
                             _%tl170568171269%_)
                      (letrec ((_%loop170569171272%_
                                (lambda (_%hd170567171275%_
                                         _%args170573171277%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170567171275%_))
                                      (let ((_%e170570171280%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170567171275%_))))
                                        (let ((_%lp-tl170572171285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170570171280%_)))
                                              (_%lp-hd170571171283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170570171280%_))))
                                          (_%loop170569171272%_
                                           _%lp-tl170572171285%_
                                           (cons _%lp-hd170571171283%_
                                                 _%args170573171277%_))))
                                      (let ((_%args170574171288%_
                                             (reverse _%args170573171277%_)))
                                        (let ((_%L171291%_
                                               _%args170574171288%_)
                                              (_%L171292%_ _%hd170564171262%_)
                                              (_%L171293%_ _%hd170555171238%_)
                                              (_%L171294%_ _%hd170546171214%_)
                                              (_%L171295%_ _%hd170537171190%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171295%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171294%_
                                                      'call-method))
                                                   (let ((__tmp176053
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self170468%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L171293%_
                                                      __tmp176053)))
                                              (_%__kont174929174930%_
                                               _%L171291%_
                                               _%L171292%_
                                               _%L171293%_
                                               _%L171294%_
                                               _%L171295%_)
                                              (_%__kont174941174942%_))))))))
                        (_%loop170569171272%_ _%target170566171267%_ '()))))
                   (_%__match175096175097%_
                    (lambda (_%e170527171163%_
                             _%hd170528171166%_
                             _%tl170529171168%_
                             _%e170530171171%_
                             _%hd170531171174%_
                             _%tl170532171176%_
                             _%e170533171179%_
                             _%hd170534171182%_
                             _%tl170535171184%_
                             _%e170536171187%_
                             _%hd170537171190%_
                             _%tl170538171192%_
                             _%e170539171195%_
                             _%hd170540171198%_
                             _%tl170541171200%_
                             _%e170542171203%_
                             _%hd170543171206%_
                             _%tl170544171208%_
                             _%e170545171211%_
                             _%hd170546171214%_
                             _%tl170547171216%_
                             _%e170548171219%_
                             _%hd170549171222%_
                             _%tl170550171224%_
                             _%e170551171227%_
                             _%hd170552171230%_
                             _%tl170553171232%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd170552171230%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170553171232%_))
                              (let ((_%e170554171235%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170553171232%_))))
                                (let ((_%tl170556171240%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170554171235%_)))
                                      (_%hd170555171238%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170554171235%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl170556171240%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl170550171224%_))
                                          (let ((_%e170557171243%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl170550171224%_))))
                                            (let ((_%tl170559171248%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170557171243%_)))
                                                  (_%hd170558171246%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170557171243%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd170558171246%_))
                                                  (let ((_%e170560171251%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd170558171246%_))))
                                                    (let ((_%tl170562171256%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e170560171251%_)))
                                                          (_%hd170561171254%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e170560171251%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd170561171254%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd170561171254%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170562171256%_))
                          (let ((_%e170563171259%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170562171256%_))))
                            (let ((_%tl170565171264%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170563171259%_)))
                                  (_%hd170564171262%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170563171259%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl170565171264%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl170559171248%_))
                                      (let ((_%__splice174931174932%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl170559171248%_
                                                '0))))
                                        (let ((_%tl170568171269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice174931174932%_
                                                  '1)))
                                              (_%target170566171267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice174931174932%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170568171269%_))
                                              (_%__match175138175139%_
                                               _%e170527171163%_
                                               _%hd170528171166%_
                                               _%tl170529171168%_
                                               _%e170530171171%_
                                               _%hd170531171174%_
                                               _%tl170532171176%_
                                               _%e170533171179%_
                                               _%hd170534171182%_
                                               _%tl170535171184%_
                                               _%e170536171187%_
                                               _%hd170537171190%_
                                               _%tl170538171192%_
                                               _%e170539171195%_
                                               _%hd170540171198%_
                                               _%tl170541171200%_
                                               _%e170542171203%_
                                               _%hd170543171206%_
                                               _%tl170544171208%_
                                               _%e170545171211%_
                                               _%hd170546171214%_
                                               _%tl170547171216%_
                                               _%e170548171219%_
                                               _%hd170549171222%_
                                               _%tl170550171224%_
                                               _%e170551171227%_
                                               _%hd170552171230%_
                                               _%tl170553171232%_
                                               _%e170554171235%_
                                               _%hd170555171238%_
                                               _%tl170556171240%_
                                               _%e170557171243%_
                                               _%hd170558171246%_
                                               _%tl170559171248%_
                                               _%e170560171251%_
                                               _%hd170561171254%_
                                               _%tl170562171256%_
                                               _%e170563171259%_
                                               _%hd170564171262%_
                                               _%tl170565171264%_
                                               _%__splice174931174932%_
                                               _%target170566171267%_
                                               _%tl170568171269%_)
                                              (_%__kont174941174942%_))))
                                      (_%__kont174941174942%_))
                                  (_%__kont174941174942%_))))
                          (_%__kont174941174942%_))
                      (_%__kont174941174942%_))
                  (_%__kont174941174942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont174941174942%_))))
                                          (_%__match175420175421%_
                                           _%e170527171163%_
                                           _%hd170528171166%_
                                           _%tl170529171168%_
                                           _%e170530171171%_
                                           _%hd170531171174%_
                                           _%tl170532171176%_
                                           _%e170533171179%_
                                           _%hd170534171182%_
                                           _%tl170535171184%_
                                           _%e170536171187%_
                                           _%hd170537171190%_
                                           _%tl170538171192%_
                                           _%e170539171195%_
                                           _%hd170540171198%_
                                           _%tl170541171200%_
                                           _%e170542171203%_
                                           _%hd170543171206%_
                                           _%tl170544171208%_
                                           _%e170545171211%_
                                           _%hd170546171214%_
                                           _%tl170547171216%_
                                           _%e170548171219%_
                                           _%hd170549171222%_
                                           _%tl170550171224%_))
                                      (_%__match175420175421%_
                                       _%e170527171163%_
                                       _%hd170528171166%_
                                       _%tl170529171168%_
                                       _%e170530171171%_
                                       _%hd170531171174%_
                                       _%tl170532171176%_
                                       _%e170533171179%_
                                       _%hd170534171182%_
                                       _%tl170535171184%_
                                       _%e170536171187%_
                                       _%hd170537171190%_
                                       _%tl170538171192%_
                                       _%e170539171195%_
                                       _%hd170540171198%_
                                       _%tl170541171200%_
                                       _%e170542171203%_
                                       _%hd170543171206%_
                                       _%tl170544171208%_
                                       _%e170545171211%_
                                       _%hd170546171214%_
                                       _%tl170547171216%_
                                       _%e170548171219%_
                                       _%hd170549171222%_
                                       _%tl170550171224%_))))
                              (_%__match175420175421%_
                               _%e170527171163%_
                               _%hd170528171166%_
                               _%tl170529171168%_
                               _%e170530171171%_
                               _%hd170531171174%_
                               _%tl170532171176%_
                               _%e170533171179%_
                               _%hd170534171182%_
                               _%tl170535171184%_
                               _%e170536171187%_
                               _%hd170537171190%_
                               _%tl170538171192%_
                               _%e170539171195%_
                               _%hd170540171198%_
                               _%tl170541171200%_
                               _%e170542171203%_
                               _%hd170543171206%_
                               _%tl170544171208%_
                               _%e170545171211%_
                               _%hd170546171214%_
                               _%tl170547171216%_
                               _%e170548171219%_
                               _%hd170549171222%_
                               _%tl170550171224%_))
                          (_%__match175206175207%_
                           _%e170527171163%_
                           _%hd170528171166%_
                           _%tl170529171168%_
                           _%e170530171171%_
                           _%hd170531171174%_
                           _%tl170532171176%_
                           _%e170533171179%_
                           _%hd170534171182%_
                           _%tl170535171184%_
                           _%e170536171187%_
                           _%hd170537171190%_
                           _%tl170538171192%_
                           _%e170539171195%_
                           _%hd170540171198%_
                           _%tl170541171200%_
                           _%e170542171203%_
                           _%hd170543171206%_
                           _%tl170544171208%_
                           _%e170545171211%_
                           _%hd170546171214%_
                           _%tl170547171216%_
                           _%e170548171219%_
                           _%hd170549171222%_
                           _%tl170550171224%_
                           _%e170551171227%_
                           _%hd170552171230%_
                           _%tl170553171232%_))))
                   (_%__match175028175029%_
                    (lambda (_%e170483171352%_
                             _%hd170484171355%_
                             _%tl170485171357%_
                             _%e170486171360%_
                             _%hd170487171363%_
                             _%tl170488171365%_
                             _%e170489171368%_
                             _%hd170490171371%_
                             _%tl170491171373%_
                             _%e170492171376%_
                             _%hd170493171379%_
                             _%tl170494171381%_
                             _%e170495171384%_
                             _%hd170496171387%_
                             _%tl170497171389%_
                             _%e170498171392%_
                             _%hd170499171395%_
                             _%tl170500171397%_
                             _%e170501171400%_
                             _%hd170502171403%_
                             _%tl170503171405%_
                             _%e170504171408%_
                             _%hd170505171411%_
                             _%tl170506171413%_
                             _%e170507171416%_
                             _%hd170508171419%_
                             _%tl170509171421%_
                             _%e170510171424%_
                             _%hd170511171427%_
                             _%tl170512171429%_
                             _%__splice174927174928%_
                             _%target170513171432%_
                             _%tl170515171434%_)
                      (letrec ((_%loop170516171437%_
                                (lambda (_%hd170514171440%_
                                         _%args170520171442%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170514171440%_))
                                      (let ((_%e170517171445%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170514171440%_))))
                                        (let ((_%lp-tl170519171450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170517171445%_)))
                                              (_%lp-hd170518171448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170517171445%_))))
                                          (_%loop170516171437%_
                                           _%lp-tl170519171450%_
                                           (cons _%lp-hd170518171448%_
                                                 _%args170520171442%_))))
                                      (let ((_%args170521171453%_
                                             (reverse _%args170520171442%_)))
                                        (let ((_%L171456%_
                                               _%args170521171453%_)
                                              (_%L171457%_ _%hd170511171427%_)
                                              (_%L171458%_ _%hd170502171403%_)
                                              (_%L171459%_ _%hd170493171379%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171459%_
                                                      'call-method))
                                                   (let ((__tmp176054
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self170468%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L171458%_
                                                      __tmp176054)))
                                              (_%__kont174925174926%_
                                               _%L171456%_
                                               _%L171457%_
                                               _%L171458%_
                                               _%L171459%_)
                                              (_%__match175216175217%_
                                               _%e170483171352%_
                                               _%hd170484171355%_
                                               _%tl170485171357%_
                                               _%e170486171360%_
                                               _%hd170487171363%_
                                               _%tl170488171365%_
                                               _%e170489171368%_
                                               _%hd170490171371%_
                                               _%tl170491171373%_
                                               _%e170492171376%_
                                               _%hd170493171379%_
                                               _%tl170494171381%_
                                               _%e170495171384%_
                                               _%hd170496171387%_
                                               _%tl170497171389%_
                                               _%e170498171392%_
                                               _%hd170499171395%_
                                               _%tl170500171397%_
                                               _%e170501171400%_
                                               _%hd170502171403%_
                                               _%tl170503171405%_
                                               _%e170504171408%_
                                               _%hd170505171411%_
                                               _%tl170506171413%_
                                               _%e170507171416%_
                                               _%hd170508171419%_
                                               _%tl170509171421%_
                                               _%e170510171424%_
                                               _%hd170511171427%_
                                               _%tl170512171429%_))))))))
                        (_%loop170516171437%_ _%target170513171432%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx174923174924%_))
                  (let ((_%e170483171352%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx174923174924%_))))
                    (let ((_%tl170485171357%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170483171352%_)))
                          (_%hd170484171355%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170483171352%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170485171357%_))
                          (let ((_%e170486171360%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170485171357%_))))
                            (let ((_%tl170488171365%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170486171360%_)))
                                  (_%hd170487171363%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170486171360%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd170487171363%_))
                                  (let ((_%e170489171368%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd170487171363%_))))
                                    (let ((_%tl170491171373%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170489171368%_)))
                                          (_%hd170490171371%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170489171368%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd170490171371%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd170490171371%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl170491171373%_))
                                                  (let ((_%e170492171376%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl170491171373%_))))
                                                    (let ((_%tl170494171381%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e170492171376%_)))
                                                          (_%hd170493171379%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e170492171376%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl170494171381%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl170488171365%_))
                      (let ((_%e170495171384%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl170488171365%_))))
                        (let ((_%tl170497171389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170495171384%_)))
                              (_%hd170496171387%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170495171384%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd170496171387%_))
                              (let ((_%e170498171392%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd170496171387%_))))
                                (let ((_%tl170500171397%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170498171392%_)))
                                      (_%hd170499171395%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170498171392%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd170499171395%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd170499171395%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl170500171397%_))
                                              (let ((_%e170501171400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl170500171397%_))))
                                                (let ((_%tl170503171405%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170501171400%_)))
                                                      (_%hd170502171403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170501171400%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl170503171405%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl170497171389%_))
                                                          (let ((_%e170504171408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl170497171389%_))))
                    (let ((_%tl170506171413%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170504171408%_)))
                          (_%hd170505171411%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170504171408%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd170505171411%_))
                          (let ((_%e170507171416%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd170505171411%_))))
                            (let ((_%tl170509171421%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170507171416%_)))
                                  (_%hd170508171419%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170507171416%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd170508171419%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd170508171419%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl170509171421%_))
                                          (let ((_%e170510171424%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl170509171421%_))))
                                            (let ((_%tl170512171429%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170510171424%_)))
                                                  (_%hd170511171427%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170510171424%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl170512171429%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl170506171413%_))
                                                      (let ((_%__splice174927174928%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl170506171413%_ '0))))
                (let ((_%tl170515171434%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice174927174928%_ '1)))
                      (_%target170513171432%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice174927174928%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170515171434%_))
                      (_%__match175028175029%_
                       _%e170483171352%_
                       _%hd170484171355%_
                       _%tl170485171357%_
                       _%e170486171360%_
                       _%hd170487171363%_
                       _%tl170488171365%_
                       _%e170489171368%_
                       _%hd170490171371%_
                       _%tl170491171373%_
                       _%e170492171376%_
                       _%hd170493171379%_
                       _%tl170494171381%_
                       _%e170495171384%_
                       _%hd170496171387%_
                       _%tl170497171389%_
                       _%e170498171392%_
                       _%hd170499171395%_
                       _%tl170500171397%_
                       _%e170501171400%_
                       _%hd170502171403%_
                       _%tl170503171405%_
                       _%e170504171408%_
                       _%hd170505171411%_
                       _%tl170506171413%_
                       _%e170507171416%_
                       _%hd170508171419%_
                       _%tl170509171421%_
                       _%e170510171424%_
                       _%hd170511171427%_
                       _%tl170512171429%_
                       _%__splice174927174928%_
                       _%target170513171432%_
                       _%tl170515171434%_)
                      (_%__match175216175217%_
                       _%e170483171352%_
                       _%hd170484171355%_
                       _%tl170485171357%_
                       _%e170486171360%_
                       _%hd170487171363%_
                       _%tl170488171365%_
                       _%e170489171368%_
                       _%hd170490171371%_
                       _%tl170491171373%_
                       _%e170492171376%_
                       _%hd170493171379%_
                       _%tl170494171381%_
                       _%e170495171384%_
                       _%hd170496171387%_
                       _%tl170497171389%_
                       _%e170498171392%_
                       _%hd170499171395%_
                       _%tl170500171397%_
                       _%e170501171400%_
                       _%hd170502171403%_
                       _%tl170503171405%_
                       _%e170504171408%_
                       _%hd170505171411%_
                       _%tl170506171413%_
                       _%e170507171416%_
                       _%hd170508171419%_
                       _%tl170509171421%_
                       _%e170510171424%_
                       _%hd170511171427%_
                       _%tl170512171429%_))))
              (_%__match175216175217%_
               _%e170483171352%_
               _%hd170484171355%_
               _%tl170485171357%_
               _%e170486171360%_
               _%hd170487171363%_
               _%tl170488171365%_
               _%e170489171368%_
               _%hd170490171371%_
               _%tl170491171373%_
               _%e170492171376%_
               _%hd170493171379%_
               _%tl170494171381%_
               _%e170495171384%_
               _%hd170496171387%_
               _%tl170497171389%_
               _%e170498171392%_
               _%hd170499171395%_
               _%tl170500171397%_
               _%e170501171400%_
               _%hd170502171403%_
               _%tl170503171405%_
               _%e170504171408%_
               _%hd170505171411%_
               _%tl170506171413%_
               _%e170507171416%_
               _%hd170508171419%_
               _%tl170509171421%_
               _%e170510171424%_
               _%hd170511171427%_
               _%tl170512171429%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match175420175421%_
                                                   _%e170483171352%_
                                                   _%hd170484171355%_
                                                   _%tl170485171357%_
                                                   _%e170486171360%_
                                                   _%hd170487171363%_
                                                   _%tl170488171365%_
                                                   _%e170489171368%_
                                                   _%hd170490171371%_
                                                   _%tl170491171373%_
                                                   _%e170492171376%_
                                                   _%hd170493171379%_
                                                   _%tl170494171381%_
                                                   _%e170495171384%_
                                                   _%hd170496171387%_
                                                   _%tl170497171389%_
                                                   _%e170498171392%_
                                                   _%hd170499171395%_
                                                   _%tl170500171397%_
                                                   _%e170501171400%_
                                                   _%hd170502171403%_
                                                   _%tl170503171405%_
                                                   _%e170504171408%_
                                                   _%hd170505171411%_
                                                   _%tl170506171413%_))))
                                          (_%__match175420175421%_
                                           _%e170483171352%_
                                           _%hd170484171355%_
                                           _%tl170485171357%_
                                           _%e170486171360%_
                                           _%hd170487171363%_
                                           _%tl170488171365%_
                                           _%e170489171368%_
                                           _%hd170490171371%_
                                           _%tl170491171373%_
                                           _%e170492171376%_
                                           _%hd170493171379%_
                                           _%tl170494171381%_
                                           _%e170495171384%_
                                           _%hd170496171387%_
                                           _%tl170497171389%_
                                           _%e170498171392%_
                                           _%hd170499171395%_
                                           _%tl170500171397%_
                                           _%e170501171400%_
                                           _%hd170502171403%_
                                           _%tl170503171405%_
                                           _%e170504171408%_
                                           _%hd170505171411%_
                                           _%tl170506171413%_))
                                      (_%__match175096175097%_
                                       _%e170483171352%_
                                       _%hd170484171355%_
                                       _%tl170485171357%_
                                       _%e170486171360%_
                                       _%hd170487171363%_
                                       _%tl170488171365%_
                                       _%e170489171368%_
                                       _%hd170490171371%_
                                       _%tl170491171373%_
                                       _%e170492171376%_
                                       _%hd170493171379%_
                                       _%tl170494171381%_
                                       _%e170495171384%_
                                       _%hd170496171387%_
                                       _%tl170497171389%_
                                       _%e170498171392%_
                                       _%hd170499171395%_
                                       _%tl170500171397%_
                                       _%e170501171400%_
                                       _%hd170502171403%_
                                       _%tl170503171405%_
                                       _%e170504171408%_
                                       _%hd170505171411%_
                                       _%tl170506171413%_
                                       _%e170507171416%_
                                       _%hd170508171419%_
                                       _%tl170509171421%_))
                                  (_%__match175420175421%_
                                   _%e170483171352%_
                                   _%hd170484171355%_
                                   _%tl170485171357%_
                                   _%e170486171360%_
                                   _%hd170487171363%_
                                   _%tl170488171365%_
                                   _%e170489171368%_
                                   _%hd170490171371%_
                                   _%tl170491171373%_
                                   _%e170492171376%_
                                   _%hd170493171379%_
                                   _%tl170494171381%_
                                   _%e170495171384%_
                                   _%hd170496171387%_
                                   _%tl170497171389%_
                                   _%e170498171392%_
                                   _%hd170499171395%_
                                   _%tl170500171397%_
                                   _%e170501171400%_
                                   _%hd170502171403%_
                                   _%tl170503171405%_
                                   _%e170504171408%_
                                   _%hd170505171411%_
                                   _%tl170506171413%_))))
                          (_%__match175420175421%_
                           _%e170483171352%_
                           _%hd170484171355%_
                           _%tl170485171357%_
                           _%e170486171360%_
                           _%hd170487171363%_
                           _%tl170488171365%_
                           _%e170489171368%_
                           _%hd170490171371%_
                           _%tl170491171373%_
                           _%e170492171376%_
                           _%hd170493171379%_
                           _%tl170494171381%_
                           _%e170495171384%_
                           _%hd170496171387%_
                           _%tl170497171389%_
                           _%e170498171392%_
                           _%hd170499171395%_
                           _%tl170500171397%_
                           _%e170501171400%_
                           _%hd170502171403%_
                           _%tl170503171405%_
                           _%e170504171408%_
                           _%hd170505171411%_
                           _%tl170506171413%_))))
                  (_%__match175358175359%_
                   _%e170483171352%_
                   _%hd170484171355%_
                   _%tl170485171357%_
                   _%e170486171360%_
                   _%hd170487171363%_
                   _%tl170488171365%_
                   _%e170489171368%_
                   _%hd170490171371%_
                   _%tl170491171373%_
                   _%e170492171376%_
                   _%hd170493171379%_
                   _%tl170494171381%_
                   _%e170495171384%_
                   _%hd170496171387%_
                   _%tl170497171389%_
                   _%e170498171392%_
                   _%hd170499171395%_
                   _%tl170500171397%_
                   _%e170501171400%_
                   _%hd170502171403%_
                   _%tl170503171405%_))
              (_%__kont174941174942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont174941174942%_))
                                          (_%__kont174941174942%_))
                                      (_%__kont174941174942%_))))
                              (_%__kont174941174942%_))))
                      (_%__kont174941174942%_))
                  (_%__kont174941174942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont174941174942%_))
                                              (_%__kont174941174942%_))
                                          (_%__kont174941174942%_))))
                                  (_%__kont174941174942%_))))
                          (_%__kont174941174942%_))))
                  (_%__kont174941174942%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self169407%_ _%stx169408%_)
        (letrec ((_%force-e169410%_
                  (lambda (_%target170466%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target170466%_ '()))
                                      '()))))))
          (let* ((_%__stx175425175426%_ _%stx169408%_)
                 (_%g169418169640%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx175425175426%_)))))
            (let ((_%__kont175427175428%_
                   (lambda (_%L170412%_ _%L170413%_ _%L170414%_ _%L170415%_)
                     (let ((_%$method170460%_
                            (let ((__tmp176056
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169407%_ 'methods)))
                                  (__tmp176055
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170413%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176056 __tmp176055)))
                           (_%args170461%_
                            (map (lambda (_%g170448170450%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self169407%_
                                      _%g170448170450%_)))
                                 (let ((__tmp176057
                                        (lambda (_%g170452170455%_
                                                 _%g170453170457%_)
                                          (cons _%g170452170455%_
                                                _%g170453170457%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp176057 '() _%L170412%_)))))
                       (let ((__tmp176058
                              (cons '%#call
                                    (cons (_%force-e169410%_ _%$method170460%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169407%_
                                                               'receiver))
                                                            '()))
                                                _%args170461%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176058 _%stx169408%_)))))
                  (_%__kont175431175432%_
                   (lambda (_%L170244%_
                            _%L170245%_
                            _%L170246%_
                            _%L170247%_
                            _%L170248%_)
                     (let ((_%$method170300%_
                            (let ((__tmp176060
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169407%_ 'methods)))
                                  (__tmp176059
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170245%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176060 __tmp176059)))
                           (_%args170301%_
                            (map (lambda (_%g170288170290%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self169407%_
                                      _%g170288170290%_)))
                                 (let ((__tmp176061
                                        (lambda (_%g170292170295%_
                                                 _%g170293170297%_)
                                          (cons _%g170292170295%_
                                                _%g170293170297%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp176061 '() _%L170244%_)))))
                       (let ((__tmp176062
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e169410%_
                                                 _%$method170300%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self169407%_ 'receiver))
                          '()))
              _%args170301%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176062 _%stx169408%_)))))
                  (_%__kont175435175436%_
                   (lambda (_%L170075%_ _%L170076%_ _%L170077%_)
                     (let* ((_%$field170109%_
                             (let ((__tmp176064
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self169407%_ 'slots)))
                                   (__tmp176063
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L170075%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp176064 __tmp176063)))
                            (__tmp176065
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self169407%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field170109%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self169407%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp176065 _%stx169408%_))))
                  (_%__kont175437175438%_
                   (lambda (_%L169949%_ _%L169950%_ _%L169951%_ _%L169952%_)
                     (let ((_%$field169987%_
                            (let ((__tmp176067
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169407%_ 'slots)))
                                  (__tmp176066
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L169950%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176067 __tmp176066)))
                           (_%expr169988%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self169407%_ _%L169949%_))))
                       (let ((__tmp176068
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self169407%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field169987%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self169407%_ 'receiver))
                          '()))
              (cons _%expr169988%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176068 _%stx169408%_)))))
                  (_%__kont175439175440%_
                   (lambda (_%L169821%_ _%L169822%_)
                     (let* ((_%accessor169844%_
                             (let ((__tmp176069
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L169822%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp176069)))
                            (_%klass169846%_
                             (let ((__tmp176070
                                    (##structure-ref
                                     _%accessor169844%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx169408%_
                                __tmp176070)))
                            (_%slot169848%_
                             (##structure-ref
                              _%accessor169844%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor169844%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass169846%_
                                      _%slot169848%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass169846%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx169408%_
                           (let* ((_%$field169854%_
                                   (let ((__tmp176071
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169407%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp176071 _%slot169848%_)))
                                  (__tmp176072
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self169407%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field169854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self169407%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp176072
                              _%stx169408%_))))))
                  (_%__kont175441175442%_
                   (lambda (_%L169716%_ _%L169717%_ _%L169718%_)
                     (let* ((_%mutator169746%_
                             (let ((__tmp176073
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L169718%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp176073)))
                            (_%klass169748%_
                             (let ((__tmp176074
                                    (##structure-ref
                                     _%mutator169746%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx169408%_
                                __tmp176074)))
                            (_%slot169750%_
                             (##structure-ref
                              _%mutator169746%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr169752%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self169407%_ _%L169716%_))))
                       (if (if (##structure-ref
                                _%mutator169746%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass169748%_
                                      _%slot169750%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass169748%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp176075
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L169718%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L169717%_
                                                                '()))
                                                    (cons _%expr169752%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp176075 _%stx169408%_))
                           (let* ((_%$field169758%_
                                   (let ((__tmp176076
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169407%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp176076 _%slot169750%_)))
                                  (__tmp176077
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self169407%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field169758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self169407%_ 'receiver))
                               '()))
                   (cons _%expr169752%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp176077
                              _%stx169408%_))))))
                  (_%__kont175443175444%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self169407%_ _%stx169408%_)))))
              (let* ((_%__match175924175925%_
                      (lambda (_%e169612169652%_
                               _%hd169613169655%_
                               _%tl169614169657%_
                               _%e169615169660%_
                               _%hd169616169663%_
                               _%tl169617169665%_
                               _%e169618169668%_
                               _%hd169619169671%_
                               _%tl169620169673%_
                               _%e169621169676%_
                               _%hd169622169679%_
                               _%tl169623169681%_
                               _%e169624169684%_
                               _%hd169625169687%_
                               _%tl169626169689%_
                               _%e169627169692%_
                               _%hd169628169695%_
                               _%tl169629169697%_
                               _%e169630169700%_
                               _%hd169631169703%_
                               _%tl169632169705%_
                               _%e169633169708%_
                               _%hd169634169711%_
                               _%tl169635169713%_)
                        (let ((_%L169716%_ _%hd169634169711%_)
                              (_%L169717%_ _%hd169631169703%_)
                              (_%L169718%_ _%hd169622169679%_))
                          (if (and (let ((__tmp176078
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169407%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L169717%_
                                      __tmp176078))
                                   (let ((__tmp176079
                                          (let ((__tmp176080
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L169718%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp176080))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp176079
                                      'gxc#!mutator::t)))
                              (_%__kont175441175442%_
                               _%L169716%_
                               _%L169717%_
                               _%L169718%_)
                              (_%__kont175443175444%_)))))
                     (_%__match175922175923%_
                      (lambda (_%e169612169652%_
                               _%hd169613169655%_
                               _%tl169614169657%_
                               _%e169615169660%_
                               _%hd169616169663%_
                               _%tl169617169665%_
                               _%e169618169668%_
                               _%hd169619169671%_
                               _%tl169620169673%_
                               _%e169621169676%_
                               _%hd169622169679%_
                               _%tl169623169681%_
                               _%e169624169684%_
                               _%hd169625169687%_
                               _%tl169626169689%_
                               _%e169627169692%_
                               _%hd169628169695%_
                               _%tl169629169697%_
                               _%e169630169700%_
                               _%hd169631169703%_
                               _%tl169632169705%_
                               _%e169633169708%_
                               _%hd169634169711%_
                               _%tl169635169713%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169635169713%_))
                            (_%__match175924175925%_
                             _%e169612169652%_
                             _%hd169613169655%_
                             _%tl169614169657%_
                             _%e169615169660%_
                             _%hd169616169663%_
                             _%tl169617169665%_
                             _%e169618169668%_
                             _%hd169619169671%_
                             _%tl169620169673%_
                             _%e169621169676%_
                             _%hd169622169679%_
                             _%tl169623169681%_
                             _%e169624169684%_
                             _%hd169625169687%_
                             _%tl169626169689%_
                             _%e169627169692%_
                             _%hd169628169695%_
                             _%tl169629169697%_
                             _%e169630169700%_
                             _%hd169631169703%_
                             _%tl169632169705%_
                             _%e169633169708%_
                             _%hd169634169711%_
                             _%tl169635169713%_)
                            (_%__kont175443175444%_))))
                     (_%__match175916175917%_
                      (lambda (_%e169612169652%_
                               _%hd169613169655%_
                               _%tl169614169657%_
                               _%e169615169660%_
                               _%hd169616169663%_
                               _%tl169617169665%_
                               _%e169618169668%_
                               _%hd169619169671%_
                               _%tl169620169673%_
                               _%e169621169676%_
                               _%hd169622169679%_
                               _%tl169623169681%_
                               _%e169624169684%_
                               _%hd169625169687%_
                               _%tl169626169689%_
                               _%e169627169692%_
                               _%hd169628169695%_
                               _%tl169629169697%_
                               _%e169630169700%_
                               _%hd169631169703%_
                               _%tl169632169705%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169626169689%_))
                            (let ((_%e169633169708%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169626169689%_))))
                              (let ((_%tl169635169713%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169633169708%_)))
                                    (_%hd169634169711%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169633169708%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169635169713%_))
                                    (_%__match175924175925%_
                                     _%e169612169652%_
                                     _%hd169613169655%_
                                     _%tl169614169657%_
                                     _%e169615169660%_
                                     _%hd169616169663%_
                                     _%tl169617169665%_
                                     _%e169618169668%_
                                     _%hd169619169671%_
                                     _%tl169620169673%_
                                     _%e169621169676%_
                                     _%hd169622169679%_
                                     _%tl169623169681%_
                                     _%e169624169684%_
                                     _%hd169625169687%_
                                     _%tl169626169689%_
                                     _%e169627169692%_
                                     _%hd169628169695%_
                                     _%tl169629169697%_
                                     _%e169630169700%_
                                     _%hd169631169703%_
                                     _%tl169632169705%_
                                     _%e169633169708%_
                                     _%hd169634169711%_
                                     _%tl169635169713%_)
                                    (_%__kont175443175444%_))))
                            (_%__kont175443175444%_))))
                     (_%__match175862175863%_
                      (lambda (_%e169588169765%_
                               _%hd169589169768%_
                               _%tl169590169770%_
                               _%e169591169773%_
                               _%hd169592169776%_
                               _%tl169593169778%_
                               _%e169594169781%_
                               _%hd169595169784%_
                               _%tl169596169786%_
                               _%e169597169789%_
                               _%hd169598169792%_
                               _%tl169599169794%_
                               _%e169600169797%_
                               _%hd169601169800%_
                               _%tl169602169802%_
                               _%e169603169805%_
                               _%hd169604169808%_
                               _%tl169605169810%_
                               _%e169606169813%_
                               _%hd169607169816%_
                               _%tl169608169818%_)
                        (let ((_%L169821%_ _%hd169607169816%_)
                              (_%L169822%_ _%hd169598169792%_))
                          (if (and (let ((__tmp176081
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169407%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L169821%_
                                      __tmp176081))
                                   (let ((__tmp176082
                                          (let ((__tmp176083
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L169822%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp176083))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp176082
                                      'gxc#!accessor::t)))
                              (_%__kont175439175440%_ _%L169821%_ _%L169822%_)
                              (_%__kont175443175444%_)))))
                     (_%__match175860175861%_
                      (lambda (_%e169588169765%_
                               _%hd169589169768%_
                               _%tl169590169770%_
                               _%e169591169773%_
                               _%hd169592169776%_
                               _%tl169593169778%_
                               _%e169594169781%_
                               _%hd169595169784%_
                               _%tl169596169786%_
                               _%e169597169789%_
                               _%hd169598169792%_
                               _%tl169599169794%_
                               _%e169600169797%_
                               _%hd169601169800%_
                               _%tl169602169802%_
                               _%e169603169805%_
                               _%hd169604169808%_
                               _%tl169605169810%_
                               _%e169606169813%_
                               _%hd169607169816%_
                               _%tl169608169818%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169602169802%_))
                            (_%__match175862175863%_
                             _%e169588169765%_
                             _%hd169589169768%_
                             _%tl169590169770%_
                             _%e169591169773%_
                             _%hd169592169776%_
                             _%tl169593169778%_
                             _%e169594169781%_
                             _%hd169595169784%_
                             _%tl169596169786%_
                             _%e169597169789%_
                             _%hd169598169792%_
                             _%tl169599169794%_
                             _%e169600169797%_
                             _%hd169601169800%_
                             _%tl169602169802%_
                             _%e169603169805%_
                             _%hd169604169808%_
                             _%tl169605169810%_
                             _%e169606169813%_
                             _%hd169607169816%_
                             _%tl169608169818%_)
                            (_%__match175916175917%_
                             _%e169588169765%_
                             _%hd169589169768%_
                             _%tl169590169770%_
                             _%e169591169773%_
                             _%hd169592169776%_
                             _%tl169593169778%_
                             _%e169594169781%_
                             _%hd169595169784%_
                             _%tl169596169786%_
                             _%e169597169789%_
                             _%hd169598169792%_
                             _%tl169599169794%_
                             _%e169600169797%_
                             _%hd169601169800%_
                             _%tl169602169802%_
                             _%e169603169805%_
                             _%hd169604169808%_
                             _%tl169605169810%_
                             _%e169606169813%_
                             _%hd169607169816%_
                             _%tl169608169818%_))))
                     (_%__match175806175807%_
                      (lambda (_%e169553169861%_
                               _%hd169554169864%_
                               _%tl169555169866%_
                               _%e169556169869%_
                               _%hd169557169872%_
                               _%tl169558169874%_
                               _%e169559169877%_
                               _%hd169560169880%_
                               _%tl169561169882%_
                               _%e169562169885%_
                               _%hd169563169888%_
                               _%tl169564169890%_
                               _%e169565169893%_
                               _%hd169566169896%_
                               _%tl169567169898%_
                               _%e169568169901%_
                               _%hd169569169904%_
                               _%tl169570169906%_
                               _%e169571169909%_
                               _%hd169572169912%_
                               _%tl169573169914%_
                               _%e169574169917%_
                               _%hd169575169920%_
                               _%tl169576169922%_
                               _%e169577169925%_
                               _%hd169578169928%_
                               _%tl169579169930%_
                               _%e169580169933%_
                               _%hd169581169936%_
                               _%tl169582169938%_
                               _%e169583169941%_
                               _%hd169584169944%_
                               _%tl169585169946%_)
                        (let ((_%L169949%_ _%hd169584169944%_)
                              (_%L169950%_ _%hd169581169936%_)
                              (_%L169951%_ _%hd169572169912%_)
                              (_%L169952%_ _%hd169563169888%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L169952%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L169952%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp176084
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169407%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L169951%_
                                      __tmp176084)))
                              (_%__kont175437175438%_
                               _%L169949%_
                               _%L169950%_
                               _%L169951%_
                               _%L169952%_)
                              (_%__kont175443175444%_)))))
                     (_%__match175798175799%_
                      (lambda (_%e169553169861%_
                               _%hd169554169864%_
                               _%tl169555169866%_
                               _%e169556169869%_
                               _%hd169557169872%_
                               _%tl169558169874%_
                               _%e169559169877%_
                               _%hd169560169880%_
                               _%tl169561169882%_
                               _%e169562169885%_
                               _%hd169563169888%_
                               _%tl169564169890%_
                               _%e169565169893%_
                               _%hd169566169896%_
                               _%tl169567169898%_
                               _%e169568169901%_
                               _%hd169569169904%_
                               _%tl169570169906%_
                               _%e169571169909%_
                               _%hd169572169912%_
                               _%tl169573169914%_
                               _%e169574169917%_
                               _%hd169575169920%_
                               _%tl169576169922%_
                               _%e169577169925%_
                               _%hd169578169928%_
                               _%tl169579169930%_
                               _%e169580169933%_
                               _%hd169581169936%_
                               _%tl169582169938%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169576169922%_))
                            (let ((_%e169583169941%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169576169922%_))))
                              (let ((_%tl169585169946%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169583169941%_)))
                                    (_%hd169584169944%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169583169941%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169585169946%_))
                                    (_%__match175806175807%_
                                     _%e169553169861%_
                                     _%hd169554169864%_
                                     _%tl169555169866%_
                                     _%e169556169869%_
                                     _%hd169557169872%_
                                     _%tl169558169874%_
                                     _%e169559169877%_
                                     _%hd169560169880%_
                                     _%tl169561169882%_
                                     _%e169562169885%_
                                     _%hd169563169888%_
                                     _%tl169564169890%_
                                     _%e169565169893%_
                                     _%hd169566169896%_
                                     _%tl169567169898%_
                                     _%e169568169901%_
                                     _%hd169569169904%_
                                     _%tl169570169906%_
                                     _%e169571169909%_
                                     _%hd169572169912%_
                                     _%tl169573169914%_
                                     _%e169574169917%_
                                     _%hd169575169920%_
                                     _%tl169576169922%_
                                     _%e169577169925%_
                                     _%hd169578169928%_
                                     _%tl169579169930%_
                                     _%e169580169933%_
                                     _%hd169581169936%_
                                     _%tl169582169938%_
                                     _%e169583169941%_
                                     _%hd169584169944%_
                                     _%tl169585169946%_)
                                    (_%__kont175443175444%_))))
                            (_%__match175922175923%_
                             _%e169553169861%_
                             _%hd169554169864%_
                             _%tl169555169866%_
                             _%e169556169869%_
                             _%hd169557169872%_
                             _%tl169558169874%_
                             _%e169559169877%_
                             _%hd169560169880%_
                             _%tl169561169882%_
                             _%e169562169885%_
                             _%hd169563169888%_
                             _%tl169564169890%_
                             _%e169565169893%_
                             _%hd169566169896%_
                             _%tl169567169898%_
                             _%e169568169901%_
                             _%hd169569169904%_
                             _%tl169570169906%_
                             _%e169571169909%_
                             _%hd169572169912%_
                             _%tl169573169914%_
                             _%e169574169917%_
                             _%hd169575169920%_
                             _%tl169576169922%_))))
                     (_%__match175720175721%_
                      (lambda (_%e169519169995%_
                               _%hd169520169998%_
                               _%tl169521170000%_
                               _%e169522170003%_
                               _%hd169523170006%_
                               _%tl169524170008%_
                               _%e169525170011%_
                               _%hd169526170014%_
                               _%tl169527170016%_
                               _%e169528170019%_
                               _%hd169529170022%_
                               _%tl169530170024%_
                               _%e169531170027%_
                               _%hd169532170030%_
                               _%tl169533170032%_
                               _%e169534170035%_
                               _%hd169535170038%_
                               _%tl169536170040%_
                               _%e169537170043%_
                               _%hd169538170046%_
                               _%tl169539170048%_
                               _%e169540170051%_
                               _%hd169541170054%_
                               _%tl169542170056%_
                               _%e169543170059%_
                               _%hd169544170062%_
                               _%tl169545170064%_
                               _%e169546170067%_
                               _%hd169547170070%_
                               _%tl169548170072%_)
                        (let ((_%L170075%_ _%hd169547170070%_)
                              (_%L170076%_ _%hd169538170046%_)
                              (_%L170077%_ _%hd169529170022%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170077%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170077%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp176085
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169407%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170076%_
                                      __tmp176085)))
                              (_%__kont175435175436%_
                               _%L170075%_
                               _%L170076%_
                               _%L170077%_)
                              (_%__match175924175925%_
                               _%e169519169995%_
                               _%hd169520169998%_
                               _%tl169521170000%_
                               _%e169522170003%_
                               _%hd169523170006%_
                               _%tl169524170008%_
                               _%e169525170011%_
                               _%hd169526170014%_
                               _%tl169527170016%_
                               _%e169528170019%_
                               _%hd169529170022%_
                               _%tl169530170024%_
                               _%e169531170027%_
                               _%hd169532170030%_
                               _%tl169533170032%_
                               _%e169534170035%_
                               _%hd169535170038%_
                               _%tl169536170040%_
                               _%e169537170043%_
                               _%hd169538170046%_
                               _%tl169539170048%_
                               _%e169540170051%_
                               _%hd169541170054%_
                               _%tl169542170056%_)))))
                     (_%__match175718175719%_
                      (lambda (_%e169519169995%_
                               _%hd169520169998%_
                               _%tl169521170000%_
                               _%e169522170003%_
                               _%hd169523170006%_
                               _%tl169524170008%_
                               _%e169525170011%_
                               _%hd169526170014%_
                               _%tl169527170016%_
                               _%e169528170019%_
                               _%hd169529170022%_
                               _%tl169530170024%_
                               _%e169531170027%_
                               _%hd169532170030%_
                               _%tl169533170032%_
                               _%e169534170035%_
                               _%hd169535170038%_
                               _%tl169536170040%_
                               _%e169537170043%_
                               _%hd169538170046%_
                               _%tl169539170048%_
                               _%e169540170051%_
                               _%hd169541170054%_
                               _%tl169542170056%_
                               _%e169543170059%_
                               _%hd169544170062%_
                               _%tl169545170064%_
                               _%e169546170067%_
                               _%hd169547170070%_
                               _%tl169548170072%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169542170056%_))
                            (_%__match175720175721%_
                             _%e169519169995%_
                             _%hd169520169998%_
                             _%tl169521170000%_
                             _%e169522170003%_
                             _%hd169523170006%_
                             _%tl169524170008%_
                             _%e169525170011%_
                             _%hd169526170014%_
                             _%tl169527170016%_
                             _%e169528170019%_
                             _%hd169529170022%_
                             _%tl169530170024%_
                             _%e169531170027%_
                             _%hd169532170030%_
                             _%tl169533170032%_
                             _%e169534170035%_
                             _%hd169535170038%_
                             _%tl169536170040%_
                             _%e169537170043%_
                             _%hd169538170046%_
                             _%tl169539170048%_
                             _%e169540170051%_
                             _%hd169541170054%_
                             _%tl169542170056%_
                             _%e169543170059%_
                             _%hd169544170062%_
                             _%tl169545170064%_
                             _%e169546170067%_
                             _%hd169547170070%_
                             _%tl169548170072%_)
                            (_%__match175798175799%_
                             _%e169519169995%_
                             _%hd169520169998%_
                             _%tl169521170000%_
                             _%e169522170003%_
                             _%hd169523170006%_
                             _%tl169524170008%_
                             _%e169525170011%_
                             _%hd169526170014%_
                             _%tl169527170016%_
                             _%e169528170019%_
                             _%hd169529170022%_
                             _%tl169530170024%_
                             _%e169531170027%_
                             _%hd169532170030%_
                             _%tl169533170032%_
                             _%e169534170035%_
                             _%hd169535170038%_
                             _%tl169536170040%_
                             _%e169537170043%_
                             _%hd169538170046%_
                             _%tl169539170048%_
                             _%e169540170051%_
                             _%hd169541170054%_
                             _%tl169542170056%_
                             _%e169543170059%_
                             _%hd169544170062%_
                             _%tl169545170064%_
                             _%e169546170067%_
                             _%hd169547170070%_
                             _%tl169548170072%_))))
                     (_%__match175708175709%_
                      (lambda (_%e169519169995%_
                               _%hd169520169998%_
                               _%tl169521170000%_
                               _%e169522170003%_
                               _%hd169523170006%_
                               _%tl169524170008%_
                               _%e169525170011%_
                               _%hd169526170014%_
                               _%tl169527170016%_
                               _%e169528170019%_
                               _%hd169529170022%_
                               _%tl169530170024%_
                               _%e169531170027%_
                               _%hd169532170030%_
                               _%tl169533170032%_
                               _%e169534170035%_
                               _%hd169535170038%_
                               _%tl169536170040%_
                               _%e169537170043%_
                               _%hd169538170046%_
                               _%tl169539170048%_
                               _%e169540170051%_
                               _%hd169541170054%_
                               _%tl169542170056%_
                               _%e169543170059%_
                               _%hd169544170062%_
                               _%tl169545170064%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd169544170062%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169545170064%_))
                                (let ((_%e169546170067%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169545170064%_))))
                                  (let ((_%tl169548170072%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169546170067%_)))
                                        (_%hd169547170070%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169546170067%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl169548170072%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl169542170056%_))
                                            (_%__match175720175721%_
                                             _%e169519169995%_
                                             _%hd169520169998%_
                                             _%tl169521170000%_
                                             _%e169522170003%_
                                             _%hd169523170006%_
                                             _%tl169524170008%_
                                             _%e169525170011%_
                                             _%hd169526170014%_
                                             _%tl169527170016%_
                                             _%e169528170019%_
                                             _%hd169529170022%_
                                             _%tl169530170024%_
                                             _%e169531170027%_
                                             _%hd169532170030%_
                                             _%tl169533170032%_
                                             _%e169534170035%_
                                             _%hd169535170038%_
                                             _%tl169536170040%_
                                             _%e169537170043%_
                                             _%hd169538170046%_
                                             _%tl169539170048%_
                                             _%e169540170051%_
                                             _%hd169541170054%_
                                             _%tl169542170056%_
                                             _%e169543170059%_
                                             _%hd169544170062%_
                                             _%tl169545170064%_
                                             _%e169546170067%_
                                             _%hd169547170070%_
                                             _%tl169548170072%_)
                                            (_%__match175798175799%_
                                             _%e169519169995%_
                                             _%hd169520169998%_
                                             _%tl169521170000%_
                                             _%e169522170003%_
                                             _%hd169523170006%_
                                             _%tl169524170008%_
                                             _%e169525170011%_
                                             _%hd169526170014%_
                                             _%tl169527170016%_
                                             _%e169528170019%_
                                             _%hd169529170022%_
                                             _%tl169530170024%_
                                             _%e169531170027%_
                                             _%hd169532170030%_
                                             _%tl169533170032%_
                                             _%e169534170035%_
                                             _%hd169535170038%_
                                             _%tl169536170040%_
                                             _%e169537170043%_
                                             _%hd169538170046%_
                                             _%tl169539170048%_
                                             _%e169540170051%_
                                             _%hd169541170054%_
                                             _%tl169542170056%_
                                             _%e169543170059%_
                                             _%hd169544170062%_
                                             _%tl169545170064%_
                                             _%e169546170067%_
                                             _%hd169547170070%_
                                             _%tl169548170072%_))
                                        (_%__match175922175923%_
                                         _%e169519169995%_
                                         _%hd169520169998%_
                                         _%tl169521170000%_
                                         _%e169522170003%_
                                         _%hd169523170006%_
                                         _%tl169524170008%_
                                         _%e169525170011%_
                                         _%hd169526170014%_
                                         _%tl169527170016%_
                                         _%e169528170019%_
                                         _%hd169529170022%_
                                         _%tl169530170024%_
                                         _%e169531170027%_
                                         _%hd169532170030%_
                                         _%tl169533170032%_
                                         _%e169534170035%_
                                         _%hd169535170038%_
                                         _%tl169536170040%_
                                         _%e169537170043%_
                                         _%hd169538170046%_
                                         _%tl169539170048%_
                                         _%e169540170051%_
                                         _%hd169541170054%_
                                         _%tl169542170056%_))))
                                (_%__match175922175923%_
                                 _%e169519169995%_
                                 _%hd169520169998%_
                                 _%tl169521170000%_
                                 _%e169522170003%_
                                 _%hd169523170006%_
                                 _%tl169524170008%_
                                 _%e169525170011%_
                                 _%hd169526170014%_
                                 _%tl169527170016%_
                                 _%e169528170019%_
                                 _%hd169529170022%_
                                 _%tl169530170024%_
                                 _%e169531170027%_
                                 _%hd169532170030%_
                                 _%tl169533170032%_
                                 _%e169534170035%_
                                 _%hd169535170038%_
                                 _%tl169536170040%_
                                 _%e169537170043%_
                                 _%hd169538170046%_
                                 _%tl169539170048%_
                                 _%e169540170051%_
                                 _%hd169541170054%_
                                 _%tl169542170056%_))
                            (_%__match175922175923%_
                             _%e169519169995%_
                             _%hd169520169998%_
                             _%tl169521170000%_
                             _%e169522170003%_
                             _%hd169523170006%_
                             _%tl169524170008%_
                             _%e169525170011%_
                             _%hd169526170014%_
                             _%tl169527170016%_
                             _%e169528170019%_
                             _%hd169529170022%_
                             _%tl169530170024%_
                             _%e169531170027%_
                             _%hd169532170030%_
                             _%tl169533170032%_
                             _%e169534170035%_
                             _%hd169535170038%_
                             _%tl169536170040%_
                             _%e169537170043%_
                             _%hd169538170046%_
                             _%tl169539170048%_
                             _%e169540170051%_
                             _%hd169541170054%_
                             _%tl169542170056%_))))
                     (_%__match175640175641%_
                      (lambda (_%e169468170116%_
                               _%hd169469170119%_
                               _%tl169470170121%_
                               _%e169471170124%_
                               _%hd169472170127%_
                               _%tl169473170129%_
                               _%e169474170132%_
                               _%hd169475170135%_
                               _%tl169476170137%_
                               _%e169477170140%_
                               _%hd169478170143%_
                               _%tl169479170145%_
                               _%e169480170148%_
                               _%hd169481170151%_
                               _%tl169482170153%_
                               _%e169483170156%_
                               _%hd169484170159%_
                               _%tl169485170161%_
                               _%e169486170164%_
                               _%hd169487170167%_
                               _%tl169488170169%_
                               _%e169489170172%_
                               _%hd169490170175%_
                               _%tl169491170177%_
                               _%e169492170180%_
                               _%hd169493170183%_
                               _%tl169494170185%_
                               _%e169495170188%_
                               _%hd169496170191%_
                               _%tl169497170193%_
                               _%e169498170196%_
                               _%hd169499170199%_
                               _%tl169500170201%_
                               _%e169501170204%_
                               _%hd169502170207%_
                               _%tl169503170209%_
                               _%e169504170212%_
                               _%hd169505170215%_
                               _%tl169506170217%_
                               _%__splice175433175434%_
                               _%target169507170220%_
                               _%tl169509170222%_)
                        (letrec ((_%loop169510170225%_
                                  (lambda (_%hd169508170228%_
                                           _%args169514170230%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169508170228%_))
                                        (let ((_%e169511170233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169508170228%_))))
                                          (let ((_%lp-tl169513170238%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169511170233%_)))
                                                (_%lp-hd169512170236%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169511170233%_))))
                                            (_%loop169510170225%_
                                             _%lp-tl169513170238%_
                                             (cons _%lp-hd169512170236%_
                                                   _%args169514170230%_))))
                                        (let ((_%args169515170241%_
                                               (reverse _%args169514170230%_)))
                                          (let ((_%L170244%_
                                                 _%args169515170241%_)
                                                (_%L170245%_
                                                 _%hd169505170215%_)
                                                (_%L170246%_
                                                 _%hd169496170191%_)
                                                (_%L170247%_
                                                 _%hd169487170167%_)
                                                (_%L170248%_
                                                 _%hd169478170143%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170248%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170247%_
                                                        'call-method))
                                                     (let ((__tmp176086
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169407%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L170246%_
                                                        __tmp176086)))
                                                (_%__kont175431175432%_
                                                 _%L170244%_
                                                 _%L170245%_
                                                 _%L170246%_
                                                 _%L170247%_
                                                 _%L170248%_)
                                                (_%__kont175443175444%_))))))))
                          (_%loop169510170225%_ _%target169507170220%_ '()))))
                     (_%__match175598175599%_
                      (lambda (_%e169468170116%_
                               _%hd169469170119%_
                               _%tl169470170121%_
                               _%e169471170124%_
                               _%hd169472170127%_
                               _%tl169473170129%_
                               _%e169474170132%_
                               _%hd169475170135%_
                               _%tl169476170137%_
                               _%e169477170140%_
                               _%hd169478170143%_
                               _%tl169479170145%_
                               _%e169480170148%_
                               _%hd169481170151%_
                               _%tl169482170153%_
                               _%e169483170156%_
                               _%hd169484170159%_
                               _%tl169485170161%_
                               _%e169486170164%_
                               _%hd169487170167%_
                               _%tl169488170169%_
                               _%e169489170172%_
                               _%hd169490170175%_
                               _%tl169491170177%_
                               _%e169492170180%_
                               _%hd169493170183%_
                               _%tl169494170185%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd169493170183%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169494170185%_))
                                (let ((_%e169495170188%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169494170185%_))))
                                  (let ((_%tl169497170193%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169495170188%_)))
                                        (_%hd169496170191%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169495170188%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl169497170193%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169491170177%_))
                                            (let ((_%e169498170196%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169491170177%_))))
                                              (let ((_%tl169500170201%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169498170196%_)))
                                                    (_%hd169499170199%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169498170196%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169499170199%_))
                                                    (let ((_%e169501170204%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169499170199%_))))
                                                      (let ((_%tl169503170209%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169501170204%_)))
                    (_%hd169502170207%_
                     (let () (declare (not safe)) (##car _%e169501170204%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd169502170207%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd169502170207%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169503170209%_))
                            (let ((_%e169504170212%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169503170209%_))))
                              (let ((_%tl169506170217%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169504170212%_)))
                                    (_%hd169505170215%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169504170212%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169506170217%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl169500170201%_))
                                        (let ((_%__splice175433175434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl169500170201%_
                                                  '0))))
                                          (let ((_%tl169509170222%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice175433175434%_
                                                    '1)))
                                                (_%target169507170220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice175433175434%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169509170222%_))
                                                (_%__match175640175641%_
                                                 _%e169468170116%_
                                                 _%hd169469170119%_
                                                 _%tl169470170121%_
                                                 _%e169471170124%_
                                                 _%hd169472170127%_
                                                 _%tl169473170129%_
                                                 _%e169474170132%_
                                                 _%hd169475170135%_
                                                 _%tl169476170137%_
                                                 _%e169477170140%_
                                                 _%hd169478170143%_
                                                 _%tl169479170145%_
                                                 _%e169480170148%_
                                                 _%hd169481170151%_
                                                 _%tl169482170153%_
                                                 _%e169483170156%_
                                                 _%hd169484170159%_
                                                 _%tl169485170161%_
                                                 _%e169486170164%_
                                                 _%hd169487170167%_
                                                 _%tl169488170169%_
                                                 _%e169489170172%_
                                                 _%hd169490170175%_
                                                 _%tl169491170177%_
                                                 _%e169492170180%_
                                                 _%hd169493170183%_
                                                 _%tl169494170185%_
                                                 _%e169495170188%_
                                                 _%hd169496170191%_
                                                 _%tl169497170193%_
                                                 _%e169498170196%_
                                                 _%hd169499170199%_
                                                 _%tl169500170201%_
                                                 _%e169501170204%_
                                                 _%hd169502170207%_
                                                 _%tl169503170209%_
                                                 _%e169504170212%_
                                                 _%hd169505170215%_
                                                 _%tl169506170217%_
                                                 _%__splice175433175434%_
                                                 _%target169507170220%_
                                                 _%tl169509170222%_)
                                                (_%__kont175443175444%_))))
                                        (_%__kont175443175444%_))
                                    (_%__kont175443175444%_))))
                            (_%__kont175443175444%_))
                        (_%__kont175443175444%_))
                    (_%__kont175443175444%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont175443175444%_))))
                                            (_%__match175922175923%_
                                             _%e169468170116%_
                                             _%hd169469170119%_
                                             _%tl169470170121%_
                                             _%e169471170124%_
                                             _%hd169472170127%_
                                             _%tl169473170129%_
                                             _%e169474170132%_
                                             _%hd169475170135%_
                                             _%tl169476170137%_
                                             _%e169477170140%_
                                             _%hd169478170143%_
                                             _%tl169479170145%_
                                             _%e169480170148%_
                                             _%hd169481170151%_
                                             _%tl169482170153%_
                                             _%e169483170156%_
                                             _%hd169484170159%_
                                             _%tl169485170161%_
                                             _%e169486170164%_
                                             _%hd169487170167%_
                                             _%tl169488170169%_
                                             _%e169489170172%_
                                             _%hd169490170175%_
                                             _%tl169491170177%_))
                                        (_%__match175922175923%_
                                         _%e169468170116%_
                                         _%hd169469170119%_
                                         _%tl169470170121%_
                                         _%e169471170124%_
                                         _%hd169472170127%_
                                         _%tl169473170129%_
                                         _%e169474170132%_
                                         _%hd169475170135%_
                                         _%tl169476170137%_
                                         _%e169477170140%_
                                         _%hd169478170143%_
                                         _%tl169479170145%_
                                         _%e169480170148%_
                                         _%hd169481170151%_
                                         _%tl169482170153%_
                                         _%e169483170156%_
                                         _%hd169484170159%_
                                         _%tl169485170161%_
                                         _%e169486170164%_
                                         _%hd169487170167%_
                                         _%tl169488170169%_
                                         _%e169489170172%_
                                         _%hd169490170175%_
                                         _%tl169491170177%_))))
                                (_%__match175922175923%_
                                 _%e169468170116%_
                                 _%hd169469170119%_
                                 _%tl169470170121%_
                                 _%e169471170124%_
                                 _%hd169472170127%_
                                 _%tl169473170129%_
                                 _%e169474170132%_
                                 _%hd169475170135%_
                                 _%tl169476170137%_
                                 _%e169477170140%_
                                 _%hd169478170143%_
                                 _%tl169479170145%_
                                 _%e169480170148%_
                                 _%hd169481170151%_
                                 _%tl169482170153%_
                                 _%e169483170156%_
                                 _%hd169484170159%_
                                 _%tl169485170161%_
                                 _%e169486170164%_
                                 _%hd169487170167%_
                                 _%tl169488170169%_
                                 _%e169489170172%_
                                 _%hd169490170175%_
                                 _%tl169491170177%_))
                            (_%__match175708175709%_
                             _%e169468170116%_
                             _%hd169469170119%_
                             _%tl169470170121%_
                             _%e169471170124%_
                             _%hd169472170127%_
                             _%tl169473170129%_
                             _%e169474170132%_
                             _%hd169475170135%_
                             _%tl169476170137%_
                             _%e169477170140%_
                             _%hd169478170143%_
                             _%tl169479170145%_
                             _%e169480170148%_
                             _%hd169481170151%_
                             _%tl169482170153%_
                             _%e169483170156%_
                             _%hd169484170159%_
                             _%tl169485170161%_
                             _%e169486170164%_
                             _%hd169487170167%_
                             _%tl169488170169%_
                             _%e169489170172%_
                             _%hd169490170175%_
                             _%tl169491170177%_
                             _%e169492170180%_
                             _%hd169493170183%_
                             _%tl169494170185%_))))
                     (_%__match175530175531%_
                      (lambda (_%e169424170308%_
                               _%hd169425170311%_
                               _%tl169426170313%_
                               _%e169427170316%_
                               _%hd169428170319%_
                               _%tl169429170321%_
                               _%e169430170324%_
                               _%hd169431170327%_
                               _%tl169432170329%_
                               _%e169433170332%_
                               _%hd169434170335%_
                               _%tl169435170337%_
                               _%e169436170340%_
                               _%hd169437170343%_
                               _%tl169438170345%_
                               _%e169439170348%_
                               _%hd169440170351%_
                               _%tl169441170353%_
                               _%e169442170356%_
                               _%hd169443170359%_
                               _%tl169444170361%_
                               _%e169445170364%_
                               _%hd169446170367%_
                               _%tl169447170369%_
                               _%e169448170372%_
                               _%hd169449170375%_
                               _%tl169450170377%_
                               _%e169451170380%_
                               _%hd169452170383%_
                               _%tl169453170385%_
                               _%__splice175429175430%_
                               _%target169454170388%_
                               _%tl169456170390%_)
                        (letrec ((_%loop169457170393%_
                                  (lambda (_%hd169455170396%_
                                           _%args169461170398%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169455170396%_))
                                        (let ((_%e169458170401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169455170396%_))))
                                          (let ((_%lp-tl169460170406%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169458170401%_)))
                                                (_%lp-hd169459170404%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169458170401%_))))
                                            (_%loop169457170393%_
                                             _%lp-tl169460170406%_
                                             (cons _%lp-hd169459170404%_
                                                   _%args169461170398%_))))
                                        (let ((_%args169462170409%_
                                               (reverse _%args169461170398%_)))
                                          (let ((_%L170412%_
                                                 _%args169462170409%_)
                                                (_%L170413%_
                                                 _%hd169452170383%_)
                                                (_%L170414%_
                                                 _%hd169443170359%_)
                                                (_%L170415%_
                                                 _%hd169434170335%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170415%_
                                                        'call-method))
                                                     (let ((__tmp176087
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169407%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L170414%_
                                                        __tmp176087)))
                                                (_%__kont175427175428%_
                                                 _%L170412%_
                                                 _%L170413%_
                                                 _%L170414%_
                                                 _%L170415%_)
                                                (_%__match175718175719%_
                                                 _%e169424170308%_
                                                 _%hd169425170311%_
                                                 _%tl169426170313%_
                                                 _%e169427170316%_
                                                 _%hd169428170319%_
                                                 _%tl169429170321%_
                                                 _%e169430170324%_
                                                 _%hd169431170327%_
                                                 _%tl169432170329%_
                                                 _%e169433170332%_
                                                 _%hd169434170335%_
                                                 _%tl169435170337%_
                                                 _%e169436170340%_
                                                 _%hd169437170343%_
                                                 _%tl169438170345%_
                                                 _%e169439170348%_
                                                 _%hd169440170351%_
                                                 _%tl169441170353%_
                                                 _%e169442170356%_
                                                 _%hd169443170359%_
                                                 _%tl169444170361%_
                                                 _%e169445170364%_
                                                 _%hd169446170367%_
                                                 _%tl169447170369%_
                                                 _%e169448170372%_
                                                 _%hd169449170375%_
                                                 _%tl169450170377%_
                                                 _%e169451170380%_
                                                 _%hd169452170383%_
                                                 _%tl169453170385%_))))))))
                          (_%loop169457170393%_ _%target169454170388%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx175425175426%_))
                    (let ((_%e169424170308%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx175425175426%_))))
                      (let ((_%tl169426170313%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169424170308%_)))
                            (_%hd169425170311%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169424170308%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169426170313%_))
                            (let ((_%e169427170316%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169426170313%_))))
                              (let ((_%tl169429170321%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169427170316%_)))
                                    (_%hd169428170319%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169427170316%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd169428170319%_))
                                    (let ((_%e169430170324%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd169428170319%_))))
                                      (let ((_%tl169432170329%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169430170324%_)))
                                            (_%hd169431170327%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169430170324%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd169431170327%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd169431170327%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169432170329%_))
                                                    (let ((_%e169433170332%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169432170329%_))))
                                                      (let ((_%tl169435170337%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169433170332%_)))
                    (_%hd169434170335%_
                     (let () (declare (not safe)) (##car _%e169433170332%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl169435170337%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl169429170321%_))
                        (let ((_%e169436170340%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169429170321%_))))
                          (let ((_%tl169438170345%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169436170340%_)))
                                (_%hd169437170343%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169436170340%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd169437170343%_))
                                (let ((_%e169439170348%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd169437170343%_))))
                                  (let ((_%tl169441170353%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169439170348%_)))
                                        (_%hd169440170351%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169439170348%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd169440170351%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd169440170351%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl169441170353%_))
                                                (let ((_%e169442170356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl169441170353%_))))
                                                  (let ((_%tl169444170361%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169442170356%_)))
                                                        (_%hd169443170359%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169442170356%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl169444170361%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169438170345%_))
                                                            (let ((_%e169445170364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169438170345%_))))
                      (let ((_%tl169447170369%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169445170364%_)))
                            (_%hd169446170367%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169445170364%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd169446170367%_))
                            (let ((_%e169448170372%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd169446170367%_))))
                              (let ((_%tl169450170377%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169448170372%_)))
                                    (_%hd169449170375%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169448170372%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169449170375%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd169449170375%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169450170377%_))
                                            (let ((_%e169451170380%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169450170377%_))))
                                              (let ((_%tl169453170385%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169451170380%_)))
                                                    (_%hd169452170383%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169451170380%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl169453170385%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl169447170369%_))
                                                        (let ((_%__splice175429175430%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl169447170369%_ '0))))
                  (let ((_%tl169456170390%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice175429175430%_ '1)))
                        (_%target169454170388%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice175429175430%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl169456170390%_))
                        (_%__match175530175531%_
                         _%e169424170308%_
                         _%hd169425170311%_
                         _%tl169426170313%_
                         _%e169427170316%_
                         _%hd169428170319%_
                         _%tl169429170321%_
                         _%e169430170324%_
                         _%hd169431170327%_
                         _%tl169432170329%_
                         _%e169433170332%_
                         _%hd169434170335%_
                         _%tl169435170337%_
                         _%e169436170340%_
                         _%hd169437170343%_
                         _%tl169438170345%_
                         _%e169439170348%_
                         _%hd169440170351%_
                         _%tl169441170353%_
                         _%e169442170356%_
                         _%hd169443170359%_
                         _%tl169444170361%_
                         _%e169445170364%_
                         _%hd169446170367%_
                         _%tl169447170369%_
                         _%e169448170372%_
                         _%hd169449170375%_
                         _%tl169450170377%_
                         _%e169451170380%_
                         _%hd169452170383%_
                         _%tl169453170385%_
                         _%__splice175429175430%_
                         _%target169454170388%_
                         _%tl169456170390%_)
                        (_%__match175718175719%_
                         _%e169424170308%_
                         _%hd169425170311%_
                         _%tl169426170313%_
                         _%e169427170316%_
                         _%hd169428170319%_
                         _%tl169429170321%_
                         _%e169430170324%_
                         _%hd169431170327%_
                         _%tl169432170329%_
                         _%e169433170332%_
                         _%hd169434170335%_
                         _%tl169435170337%_
                         _%e169436170340%_
                         _%hd169437170343%_
                         _%tl169438170345%_
                         _%e169439170348%_
                         _%hd169440170351%_
                         _%tl169441170353%_
                         _%e169442170356%_
                         _%hd169443170359%_
                         _%tl169444170361%_
                         _%e169445170364%_
                         _%hd169446170367%_
                         _%tl169447170369%_
                         _%e169448170372%_
                         _%hd169449170375%_
                         _%tl169450170377%_
                         _%e169451170380%_
                         _%hd169452170383%_
                         _%tl169453170385%_))))
                (_%__match175718175719%_
                 _%e169424170308%_
                 _%hd169425170311%_
                 _%tl169426170313%_
                 _%e169427170316%_
                 _%hd169428170319%_
                 _%tl169429170321%_
                 _%e169430170324%_
                 _%hd169431170327%_
                 _%tl169432170329%_
                 _%e169433170332%_
                 _%hd169434170335%_
                 _%tl169435170337%_
                 _%e169436170340%_
                 _%hd169437170343%_
                 _%tl169438170345%_
                 _%e169439170348%_
                 _%hd169440170351%_
                 _%tl169441170353%_
                 _%e169442170356%_
                 _%hd169443170359%_
                 _%tl169444170361%_
                 _%e169445170364%_
                 _%hd169446170367%_
                 _%tl169447170369%_
                 _%e169448170372%_
                 _%hd169449170375%_
                 _%tl169450170377%_
                 _%e169451170380%_
                 _%hd169452170383%_
                 _%tl169453170385%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match175922175923%_
                                                     _%e169424170308%_
                                                     _%hd169425170311%_
                                                     _%tl169426170313%_
                                                     _%e169427170316%_
                                                     _%hd169428170319%_
                                                     _%tl169429170321%_
                                                     _%e169430170324%_
                                                     _%hd169431170327%_
                                                     _%tl169432170329%_
                                                     _%e169433170332%_
                                                     _%hd169434170335%_
                                                     _%tl169435170337%_
                                                     _%e169436170340%_
                                                     _%hd169437170343%_
                                                     _%tl169438170345%_
                                                     _%e169439170348%_
                                                     _%hd169440170351%_
                                                     _%tl169441170353%_
                                                     _%e169442170356%_
                                                     _%hd169443170359%_
                                                     _%tl169444170361%_
                                                     _%e169445170364%_
                                                     _%hd169446170367%_
                                                     _%tl169447170369%_))))
                                            (_%__match175922175923%_
                                             _%e169424170308%_
                                             _%hd169425170311%_
                                             _%tl169426170313%_
                                             _%e169427170316%_
                                             _%hd169428170319%_
                                             _%tl169429170321%_
                                             _%e169430170324%_
                                             _%hd169431170327%_
                                             _%tl169432170329%_
                                             _%e169433170332%_
                                             _%hd169434170335%_
                                             _%tl169435170337%_
                                             _%e169436170340%_
                                             _%hd169437170343%_
                                             _%tl169438170345%_
                                             _%e169439170348%_
                                             _%hd169440170351%_
                                             _%tl169441170353%_
                                             _%e169442170356%_
                                             _%hd169443170359%_
                                             _%tl169444170361%_
                                             _%e169445170364%_
                                             _%hd169446170367%_
                                             _%tl169447170369%_))
                                        (_%__match175598175599%_
                                         _%e169424170308%_
                                         _%hd169425170311%_
                                         _%tl169426170313%_
                                         _%e169427170316%_
                                         _%hd169428170319%_
                                         _%tl169429170321%_
                                         _%e169430170324%_
                                         _%hd169431170327%_
                                         _%tl169432170329%_
                                         _%e169433170332%_
                                         _%hd169434170335%_
                                         _%tl169435170337%_
                                         _%e169436170340%_
                                         _%hd169437170343%_
                                         _%tl169438170345%_
                                         _%e169439170348%_
                                         _%hd169440170351%_
                                         _%tl169441170353%_
                                         _%e169442170356%_
                                         _%hd169443170359%_
                                         _%tl169444170361%_
                                         _%e169445170364%_
                                         _%hd169446170367%_
                                         _%tl169447170369%_
                                         _%e169448170372%_
                                         _%hd169449170375%_
                                         _%tl169450170377%_))
                                    (_%__match175922175923%_
                                     _%e169424170308%_
                                     _%hd169425170311%_
                                     _%tl169426170313%_
                                     _%e169427170316%_
                                     _%hd169428170319%_
                                     _%tl169429170321%_
                                     _%e169430170324%_
                                     _%hd169431170327%_
                                     _%tl169432170329%_
                                     _%e169433170332%_
                                     _%hd169434170335%_
                                     _%tl169435170337%_
                                     _%e169436170340%_
                                     _%hd169437170343%_
                                     _%tl169438170345%_
                                     _%e169439170348%_
                                     _%hd169440170351%_
                                     _%tl169441170353%_
                                     _%e169442170356%_
                                     _%hd169443170359%_
                                     _%tl169444170361%_
                                     _%e169445170364%_
                                     _%hd169446170367%_
                                     _%tl169447170369%_))))
                            (_%__match175922175923%_
                             _%e169424170308%_
                             _%hd169425170311%_
                             _%tl169426170313%_
                             _%e169427170316%_
                             _%hd169428170319%_
                             _%tl169429170321%_
                             _%e169430170324%_
                             _%hd169431170327%_
                             _%tl169432170329%_
                             _%e169433170332%_
                             _%hd169434170335%_
                             _%tl169435170337%_
                             _%e169436170340%_
                             _%hd169437170343%_
                             _%tl169438170345%_
                             _%e169439170348%_
                             _%hd169440170351%_
                             _%tl169441170353%_
                             _%e169442170356%_
                             _%hd169443170359%_
                             _%tl169444170361%_
                             _%e169445170364%_
                             _%hd169446170367%_
                             _%tl169447170369%_))))
                    (_%__match175860175861%_
                     _%e169424170308%_
                     _%hd169425170311%_
                     _%tl169426170313%_
                     _%e169427170316%_
                     _%hd169428170319%_
                     _%tl169429170321%_
                     _%e169430170324%_
                     _%hd169431170327%_
                     _%tl169432170329%_
                     _%e169433170332%_
                     _%hd169434170335%_
                     _%tl169435170337%_
                     _%e169436170340%_
                     _%hd169437170343%_
                     _%tl169438170345%_
                     _%e169439170348%_
                     _%hd169440170351%_
                     _%tl169441170353%_
                     _%e169442170356%_
                     _%hd169443170359%_
                     _%tl169444170361%_))
                (_%__kont175443175444%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont175443175444%_))
                                            (_%__kont175443175444%_))
                                        (_%__kont175443175444%_))))
                                (_%__kont175443175444%_))))
                        (_%__kont175443175444%_))
                    (_%__kont175443175444%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont175443175444%_))
                                                (_%__kont175443175444%_))
                                            (_%__kont175443175444%_))))
                                    (_%__kont175443175444%_))))
                            (_%__kont175443175444%_))))
                    (_%__kont175443175444%_))))))))))
