(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712944166)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp174911 (list gxc#::identity::t))
            (__tmp174910 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp174911
         '()
         __tmp174910
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args173708%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args173708%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp174912
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
        (__make-promise __tmp174912)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx173700%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self173703%_
                (let ((__obj174903
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj174903))
               (__tmp174913
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self173703%_ _%stx173700%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp174913
           gxc#current-compile-method
           _%self173703%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp174915 (list gxc#::false::t))
            (__tmp174914 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp174915
         '()
         __tmp174914
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args173697%_
        (apply make-instance gxc#::extract-receiver::t _%$args173697%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp174916
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
        (__make-promise __tmp174916)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx173689%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self173692%_
                (let ((__obj174905
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj174905))
               (__tmp174917
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self173692%_ _%stx173689%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp174917
           gxc#current-compile-method
           _%self173692%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp174919 (list gxc#::void::t))
            (__tmp174918 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp174919
         '(receiver methods slots)
         __tmp174918
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args173686%_
        (apply make-instance gxc#::collect-object-refs::t _%$args173686%_)))
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
      (let ((__tmp174920
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
        (__make-promise __tmp174920)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords173652%_
               _%receiver173647173653%_
               _%methods173648173655%_
               _%slots173649173657%_
               _%stx173659%_)
        (let* ((_%receiver173662%_
                (if (eq? _%receiver173647173653%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver173647173653%_))
               (_%methods173664%_
                (if (eq? _%methods173648173655%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods173648173655%_))
               (_%slots173666%_
                (if (eq? _%slots173649173657%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots173649173657%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self173668%_
                  (let ((__obj174907
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
                       __obj174907
                       _%receiver173662%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj174907
                       _%methods173664%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj174907
                       _%slots173666%_
                       '3
                       '#f
                       '#f))
                    __obj174907))
                 (__tmp174921
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self173668%_ _%stx173659%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp174921
             gxc#current-compile-method
             _%self173668%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords173675%_ . _%args173676%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords173675%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords173675%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords173675%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords173675%_
                  'slots:
                  absent-value))
               _%args173676%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args173650173682%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args173650173682%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp174923 (list gxc#::basic-xform-expression::t))
            (__tmp174922 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp174923
         '(receiver klass methods slots)
         __tmp174922
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args173643%_
        (apply make-instance gxc#::subst-object-refs::t _%$args173643%_)))
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
      (let ((__tmp174924
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
        (__make-promise __tmp174924)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords173605%_
               _%receiver173599173606%_
               _%klass173600173608%_
               _%methods173601173610%_
               _%slots173602173612%_
               _%stx173614%_)
        (let* ((_%receiver173617%_
                (if (eq? _%receiver173599173606%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver173599173606%_))
               (_%klass173619%_
                (if (eq? _%klass173600173608%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass173600173608%_))
               (_%methods173621%_
                (if (eq? _%methods173601173610%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods173601173610%_))
               (_%slots173623%_
                (if (eq? _%slots173602173612%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots173602173612%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self173625%_
                  (let ((__obj174909
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
                       __obj174909
                       _%receiver173617%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj174909
                       _%klass173619%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj174909
                       _%methods173621%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj174909
                       _%slots173623%_
                       '4
                       '#f
                       '#f))
                    __obj174909))
                 (__tmp174925
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self173625%_ _%stx173614%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp174925
             gxc#current-compile-method
             _%self173625%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords173632%_ . _%args173633%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords173632%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords173632%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords173632%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords173632%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords173632%_
                  'slots:
                  absent-value))
               _%args173633%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args173603173639%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args173603173639%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self170714%_ _%stx170715%_)
        (letrec ((_%generate-method-bind170717%_
                  (lambda (_%$klass173591%_
                           _%$method-table173592%_
                           _%id173593%_
                           _%$id173594%_)
                    (let ((_%$tmp173596%_
                           (let ((__tmp174926
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp174926))))
                      (cons (cons _%$id173594%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp173596%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table173592%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id173593%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp173596%_ '()))
                    (cons (cons '%#ref (cons _%$tmp173596%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id173593%_
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
                 (_%generate-slot-bind170718%_
                  (lambda (_%$klass173585%_ _%id173586%_ _%$id173587%_)
                    (let ((_%$tmp173589%_
                           (let ((__tmp174927
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp174927))))
                      (cons (cons _%$id173587%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp173589%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass173585%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id173586%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp173589%_ '()))
                        (cons (cons '%#ref (cons _%$tmp173589%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id173586%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl170719%_
                  (lambda (_%$klass173579%_
                           _%$method-table173580%_
                           _%methods-bind173581%_
                           _%slots-bind173582%_
                           _%specializer-impl173583%_)
                    (let ((__tmp174928
                           (cons '%#lambda
                                 (cons (cons _%$klass173579%_
                                             (cons _%$method-table173580%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind173582%_
                                                            _%methods-bind173581%_))
                                                         (cons _%specializer-impl173583%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp174928 _%stx170715%_))))
                 (_%generate-specializer-def170720%_
                  (lambda (_%id173575%_
                           _%specializer-id173576%_
                           _%specializer-impl173577%_)
                    (let ((__tmp174929
                           (cons '%#begin
                                 (cons _%stx170715%_
                                       (cons (let ((__tmp174930
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id173576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl173577%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp174930
                                                _%stx170715%_))
                                             (cons (let ((__tmp174931
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id173575%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id173576%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp174931
                                                      _%stx170715%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp174929 _%stx170715%_)))))
          (let* ((_%__stx173797173798%_ _%stx170715%_)
                 (_%g170723170743%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx173797173798%_)))))
            (let ((_%__kont173799173800%_
                   (lambda (_%L170787%_ _%L170788%_)
                     (let ((_%method-calls170807%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs170808%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty170809%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?170811%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls170807%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs170808%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L170787%_))
                             (let* ((_%__stx173711173712%_ _%L170787%_)
                                    (_%g171199171217%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx173711173712%_)))))
                               (let ((_%__kont173713173714%_
                                      (lambda (_%L171253%_
                                               _%L171254%_
                                               _%L171255%_)
                                        (let ((_%receiver171275%_
                                               (let ((_%$e171272%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L171253%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e171272%_
                                                     _%$e171272%_
                                                     _%L171255%_))))
                                          (for-each
                                           (lambda (_%g171276171278%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver171275%_
                                              _%method-calls170807%_
                                              _%slot-refs170808%_
                                              _%g171276171278%_))
                                           _%L171253%_)
                                          (if (_%no-specializer?170811%_)
                                              _%stx170715%_
                                              (let* ((_%specializer-id171287%_
                                                      (let* ((_%id171281%_
                                                              (let ((__tmp174932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L170788%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp174932 '"::specialize")))
                     (_%specializer-id171284%_
                      (let ((__tmp174933
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx170715%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id171281%_ __tmp174933))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id171284%_))
                _%specializer-id171284%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass171289%_
                                                      (let ((__tmp174934
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp174934)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table171291%_
                                                      (let ((__tmp174935
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp174935)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods171293%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls170807%_)))
                                                     (_%$methods171297%_
                                                      (map (lambda (_%id171295%_)
                                                             (let ((__tmp174936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id171295%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp174936)))
                   _%methods171293%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_171306%_
                                                      (for-each
                                                       (lambda (_%g171298171301%_
                                                                _%g171299171303%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls170807%_
                                                            _%g171298171301%_
                                                            _%g171299171303%_)))
                                                       _%methods171293%_
                                                       _%$methods171297%_))
                                                     (_%methods-bind171316%_
                                                      (map (lambda (_%g171308171311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g171309171313%_)
                     (_%generate-method-bind170717%_
                      _%$klass171289%_
                      _%$method-table171291%_
                      _%g171308171311%_
                      _%g171309171313%_))
                   _%methods171293%_
                   _%$methods171297%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots171318%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs170808%_)))
                                                     (_%$slots171322%_
                                                      (map (lambda (_%id171320%_)
                                                             (let ((__tmp174937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id171320%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp174937)))
                   _%slots171318%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_171331%_
                                                      (for-each
                                                       (lambda (_%g171323171326%_
                                                                _%g171324171328%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs170808%_
                                                            _%g171323171326%_
                                                            _%g171324171328%_)))
                                                       _%slots171318%_
                                                       _%$slots171322%_))
                                                     (_%slots-bind171340%_
                                                      (map (lambda (_%g171332171335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g171333171337%_)
                     (_%generate-slot-bind170718%_
                      _%$klass171289%_
                      _%g171332171335%_
                      _%g171333171337%_))
                   _%slots171318%_
                   _%$slots171322%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body171346%_
                                                      (map (lambda (_%g171341171343%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver171275%_
                                                              _%$klass171289%_
                                                              _%method-calls170807%_
                                                              _%slot-refs170808%_
                                                              _%g171341171343%_))
                                                           _%L171253%_))
                                                     (_%specializer-impl171348%_
                                                      (let ((__tmp174938
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L171255%_ _%L171254%_)
                                 _%specializer-body171346%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp174938 _%stx170715%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl171350%_
                                                      (_%generate-specializer-impl170719%_
                                                       _%$klass171289%_
                                                       _%$method-table171291%_
                                                       _%methods-bind171316%_
                                                       _%slots-bind171340%_
                                                       _%specializer-impl171348%_)))
                                                (let ((__tmp174940
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L170788%_)))
                                                      (__tmp174939
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id171287%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp174940
                                                   '" => "
                                                   __tmp174939))
                                                (_%generate-specializer-def170720%_
                                                 _%L170788%_
                                                 _%specializer-id171287%_
                                                 _%specializer-impl171350%_))))))
                                     (_%__kont173715173716%_
                                      (lambda () _%stx170715%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx173711173712%_))
                                     (let ((_%e171204171229%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx173711173712%_))))
                                       (let ((_%tl171206171234%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e171204171229%_)))
                                             (_%hd171205171232%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e171204171229%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl171206171234%_))
                                             (let ((_%e171207171237%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl171206171234%_))))
                                               (let ((_%tl171209171242%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e171207171237%_)))
                                                     (_%hd171208171240%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e171207171237%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd171208171240%_))
                                                     (let ((_%e171210171245%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd171208171240%_))))
                                                       (let ((_%tl171212171250%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e171210171245%_)))
                     (_%hd171211171248%_
                      (let () (declare (not safe)) (##car _%e171210171245%_))))
                 (_%__kont173713173714%_
                  _%tl171209171242%_
                  _%tl171212171250%_
                  _%hd171211171248%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont173715173716%_))))
                                             (_%__kont173715173716%_))))
                                     (_%__kont173715173716%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L170787%_))
                                 (let* ((_%g171357171376%_
                                         (lambda (_%g171358171373%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g171358171373%_))))
                                        (_%g171356171674%_
                                         (lambda (_%g171358171379%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g171358171379%_))
                                               (let ((_%e171360171381%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g171358171379%_))))
                                                 (let ((_%hd171361171384%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e171360171381%_)))
                                                       (_%tl171362171386%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e171360171381%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl171362171386%_))
                                                       (let ((_g174941_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl171362171386%_ '0))))
                 (begin
                   (let ((_g174942_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g174941_)
                                (##vector-length _g174941_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g174942_ 2)))
                         (error "Context expects 2 values" _g174942_)))
                   (let ((_%target171363171389%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g174941_ 0)))
                         (_%tl171365171391%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g174941_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl171365171391%_))
                         (letrec ((_%loop171366171394%_
                                   (lambda (_%hd171364171397%_
                                            _%clause171370171399%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd171364171397%_))
                                         (let ((_%e171367171402%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd171364171397%_))))
                                           (let ((_%lp-hd171368171405%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171367171402%_)))
                                                 (_%lp-tl171369171407%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171367171402%_))))
                                             (_%loop171366171394%_
                                              _%lp-tl171369171407%_
                                              (cons _%lp-hd171368171405%_
                                                    _%clause171370171399%_))))
                                         (let ((_%clause171371171410%_
                                                (reverse _%clause171370171399%_)))
                                           ((lambda (_%L171413%_)
                                              (for-each
                                               (lambda (_%clause171427%_)
                                                 (let* ((_%__stx173737173738%_
                                                         _%clause171427%_)
                                                        (_%g171430171445%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx173737173738%_)))))
                                                   (let ((_%__kont173739173740%_
                                                          (lambda (_%L171473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L171474%_
                           _%L171475%_)
                    (let ((_%receiver171494%_
                           (let ((_%$e171491%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L171473%_))))
                             (if _%$e171491%_ _%$e171491%_ _%L171475%_))))
                      (for-each
                       (lambda (_%g171495171497%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver171494%_
                          _%method-calls170807%_
                          _%slot-refs170808%_
                          _%g171495171497%_))
                       _%L171473%_))))
                 (_%__kont173741173742%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx173737173738%_))
                                                         (let ((_%e171435171457%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx173737173738%_))))
                   (let ((_%tl171437171462%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e171435171457%_)))
                         (_%hd171436171460%_
                          (let ()
                            (declare (not safe))
                            (##car _%e171435171457%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd171436171460%_))
                         (let ((_%e171438171465%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd171436171460%_))))
                           (let ((_%tl171440171470%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e171438171465%_)))
                                 (_%hd171439171468%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e171438171465%_))))
                             (_%__kont173739173740%_
                              _%tl171437171462%_
                              _%tl171440171470%_
                              _%hd171439171468%_)))
                         (_%__kont173741173742%_))))
                 (_%__kont173741173742%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp174943
                                                      (lambda (_%g171502171505%_
                                                               _%g171503171507%_)
                                                        (cons _%g171502171505%_
                                                              _%g171503171507%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp174943
                                                  '()
                                                  _%L171413%_)))
                                              (if (_%no-specializer?170811%_)
                                                  _%stx170715%_
                                                  (let* ((_%specializer-id171516%_
                                                          (let* ((_%id171510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp174944
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L170788%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp174944 '"::specialize")))
                         (_%specializer-id171513%_
                          (let ((__tmp174945
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx170715%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id171510%_
                             __tmp174945))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id171513%_))
                    _%specializer-id171513%_))
                 (_%$klass171518%_
                  (let ((__tmp174946
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp174946)))
                 (_%$method-table171520%_
                  (let ((__tmp174947
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp174947)))
                 (_%methods171522%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls170807%_)))
                 (_%$methods171526%_
                  (map (lambda (_%id171524%_)
                         (let ((__tmp174948 (gensym _%id171524%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp174948)))
                       _%methods171522%_))
                 (_%_171535%_
                  (for-each
                   (lambda (_%g171527171530%_ _%g171528171532%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls170807%_
                        _%g171527171530%_
                        _%g171528171532%_)))
                   _%methods171522%_
                   _%$methods171526%_))
                 (_%methods-bind171545%_
                  (map (lambda (_%g171537171540%_ _%g171538171542%_)
                         (_%generate-method-bind170717%_
                          _%$klass171518%_
                          _%$method-table171520%_
                          _%g171537171540%_
                          _%g171538171542%_))
                       _%methods171522%_
                       _%$methods171526%_))
                 (_%slots171547%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs170808%_)))
                 (_%$slots171551%_
                  (map (lambda (_%id171549%_)
                         (let ((__tmp174949 (gensym _%id171549%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp174949)))
                       _%slots171547%_))
                 (_%_171560%_
                  (for-each
                   (lambda (_%g171552171555%_ _%g171553171557%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs170808%_
                        _%g171552171555%_
                        _%g171553171557%_)))
                   _%slots171547%_
                   _%$slots171551%_))
                 (_%slots-bind171569%_
                  (map (lambda (_%g171561171564%_ _%g171562171566%_)
                         (_%generate-slot-bind170718%_
                          _%$klass171518%_
                          _%g171561171564%_
                          _%g171562171566%_))
                       _%slots171547%_
                       _%$slots171551%_))
                 (_%specializer-clauses171667%_
                  (map (lambda (_%clause171571%_)
                         (let* ((_%__stx173757173758%_ _%clause171571%_)
                                (_%g171574171589%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx173757173758%_)))))
                           (let ((_%__kont173759173760%_
                                  (lambda (_%L171617%_ _%L171618%_ _%L171619%_)
                                    (let* ((_%receiver171648%_
                                            (let ((_%$e171645%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L171617%_))))
                                              (if _%$e171645%_
                                                  _%$e171645%_
                                                  _%L171619%_)))
                                           (_%body171654%_
                                            (map (lambda (_%g171649171651%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver171648%_
                                                    _%$klass171518%_
                                                    _%method-calls170807%_
                                                    _%slot-refs170808%_
                                                    _%g171649171651%_))
                                                 _%L171617%_)))
                                      (cons (cons _%L171619%_ _%L171618%_)
                                            _%body171654%_))))
                                 (_%__kont173761173762%_
                                  (lambda () _%clause171571%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx173757173758%_))
                                 (let ((_%e171579171601%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx173757173758%_))))
                                   (let ((_%tl171581171606%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e171579171601%_)))
                                         (_%hd171580171604%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e171579171601%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd171580171604%_))
                                         (let ((_%e171582171609%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd171580171604%_))))
                                           (let ((_%tl171584171614%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171582171609%_)))
                                                 (_%hd171583171612%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171582171609%_))))
                                             (_%__kont173759173760%_
                                              _%tl171581171606%_
                                              _%tl171584171614%_
                                              _%hd171583171612%_)))
                                         (_%__kont173761173762%_))))
                                 (_%__kont173761173762%_)))))
                       (let ((__tmp174950
                              (lambda (_%g171659171662%_ _%g171660171664%_)
                                (cons _%g171659171662%_ _%g171660171664%_))))
                         (declare (not safe))
                         (__foldr1 __tmp174950 '() _%L171413%_))))
                 (_%specializer-impl171669%_
                  (let ((__tmp174951
                         (cons '%#case-lambda _%specializer-clauses171667%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp174951 _%stx170715%_)))
                 (_%specializer-impl171671%_
                  (_%generate-specializer-impl170719%_
                   _%$klass171518%_
                   _%$method-table171520%_
                   _%methods-bind171545%_
                   _%slots-bind171569%_
                   _%specializer-impl171669%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp174953
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L170788%_)))
                                                          (__tmp174952
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id171516%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp174953
                                                       '" => "
                                                       __tmp174952))
                                                    (_%generate-specializer-def170720%_
                                                     _%L170788%_
                                                     _%specializer-id171516%_
                                                     _%specializer-impl171671%_))))
                                            _%clause171371171410%_))))))
                           (_%loop171366171394%_ _%target171363171389%_ '()))
                         (_%g171357171376%_ _%g171358171379%_)))))
               (_%g171357171376%_ _%g171358171379%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g171357171376%_
                                                _%g171358171379%_)))))
                                   (_%g171356171674%_ _%L170787%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L170787%_))
                                     (let* ((_%g171678171708%_
                                             (lambda (_%g171679171705%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g171679171705%_))))
                                            (_%g171677172339%_
                                             (lambda (_%g171679171711%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g171679171711%_))
                                                   (let ((_%e171683171713%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g171679171711%_))))
                                                     (let ((_%hd171684171716%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e171683171713%_)))
                                                           (_%tl171685171718%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e171683171713%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl171685171718%_))
                                                           (let ((_%e171686171721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl171685171718%_))))
                     (let ((_%hd171687171724%_
                            (let ()
                              (declare (not safe))
                              (##car _%e171686171721%_)))
                           (_%tl171688171726%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e171686171721%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd171687171724%_))
                           (let ((_%e171689171729%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd171687171724%_))))
                             (let ((_%hd171690171732%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e171689171729%_)))
                                   (_%tl171691171734%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e171689171729%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd171690171732%_))
                                   (let ((_%e171692171737%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd171690171732%_))))
                                     (let ((_%hd171693171740%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e171692171737%_)))
                                           (_%tl171694171742%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e171692171737%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd171693171740%_))
                                           (let ((_%e171695171745%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd171693171740%_))))
                                             (let ((_%hd171696171748%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e171695171745%_)))
                                                   (_%tl171697171750%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e171695171745%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl171697171750%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl171694171742%_))
                                                       (let ((_%e171698171753%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl171694171742%_))))
                 (let ((_%hd171699171756%_
                        (let ()
                          (declare (not safe))
                          (##car _%e171698171753%_)))
                       (_%tl171700171758%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e171698171753%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl171700171758%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl171691171734%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl171688171726%_))
                               (let ((_%e171701171761%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl171688171726%_))))
                                 (let ((_%hd171702171764%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e171701171761%_)))
                                       (_%tl171703171766%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e171701171761%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl171703171766%_))
                                       ((lambda (_%L171769%_
                                                 _%L171770%_
                                                 _%L171771%_)
                                          (let* ((_%g171795171813%_
                                                  (lambda (_%g171796171810%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g171796171810%_))))
                                                 (_%g171794171869%_
                                                  (lambda (_%g171796171816%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g171796171816%_))
                                                        (let ((_%e171800171818%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g171796171816%_))))
                  (let ((_%hd171801171821%_
                         (let ()
                           (declare (not safe))
                           (##car _%e171800171818%_)))
                        (_%tl171802171823%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e171800171818%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl171802171823%_))
                        (let ((_%e171803171826%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl171802171823%_))))
                          (let ((_%hd171804171829%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171803171826%_)))
                                (_%tl171805171831%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171803171826%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd171804171829%_))
                                (let ((_%e171806171834%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd171804171829%_))))
                                  (let ((_%hd171807171837%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171806171834%_)))
                                        (_%tl171808171839%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171806171834%_))))
                                    ((lambda (_%L171842%_
                                              _%L171843%_
                                              _%L171844%_)
                                       (let ((_%receiver171863%_
                                              (let ((_%$e171860%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L171842%_))))
                                                (if _%$e171860%_
                                                    _%$e171860%_
                                                    _%L171844%_))))
                                         (for-each
                                          (lambda (_%g171864171866%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver171863%_
                                             _%method-calls170807%_
                                             _%slot-refs170808%_
                                             _%g171864171866%_))
                                          _%L171842%_)))
                                     _%tl171805171831%_
                                     _%tl171808171839%_
                                     _%hd171807171837%_)))
                                (_%g171795171813%_ _%g171796171816%_))))
                        (_%g171795171813%_ _%g171796171816%_))))
                (_%g171795171813%_ _%g171796171816%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g171794171869%_ _%L171770%_))
                                          (let* ((_%g171872171891%_
                                                  (lambda (_%g171873171888%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g171873171888%_))))
                                                 (_%g171871172015%_
                                                  (lambda (_%g171873171894%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g171873171894%_))
                                                        (let ((_%e171875171896%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g171873171894%_))))
                  (let ((_%hd171876171899%_
                         (let ()
                           (declare (not safe))
                           (##car _%e171875171896%_)))
                        (_%tl171877171901%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e171875171896%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl171877171901%_))
                        (let ((_g174954_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl171877171901%_
                                  '0))))
                          (begin
                            (let ((_g174955_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g174954_)
                                         (##vector-length _g174954_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g174955_ 2)))
                                  (error "Context expects 2 values"
                                         _g174955_)))
                            (let ((_%target171878171904%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g174954_ 0)))
                                  (_%tl171880171906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g174954_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl171880171906%_))
                                  (letrec ((_%loop171881171909%_
                                            (lambda (_%hd171879171912%_
                                                     _%clause171885171914%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd171879171912%_))
                                                  (let ((_%e171882171917%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd171879171912%_))))
                                                    (let ((_%lp-hd171883171920%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e171882171917%_)))
                                                          (_%lp-tl171884171922%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e171882171917%_))))
                                                      (_%loop171881171909%_
                                                       _%lp-tl171884171922%_
                                                       (cons _%lp-hd171883171920%_
                                                             _%clause171885171914%_))))
                                                  (let ((_%clause171886171925%_
                                                         (reverse _%clause171885171914%_)))
                                                    ((lambda (_%L171928%_)
                                                       (for-each
                                                        (lambda (_%clause171941%_)
                                                          (let* ((_%g171943171958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g171944171955%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g171944171955%_))))
                         (_%g171942172005%_
                          (lambda (_%g171944171961%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g171944171961%_))
                                (let ((_%e171948171963%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g171944171961%_))))
                                  (let ((_%hd171949171966%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171948171963%_)))
                                        (_%tl171950171968%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171948171963%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd171949171966%_))
                                        (let ((_%e171951171971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd171949171966%_))))
                                          (let ((_%hd171952171974%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171951171971%_)))
                                                (_%tl171953171976%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171951171971%_))))
                                            ((lambda (_%L171979%_
                                                      _%L171980%_
                                                      _%L171981%_)
                                               (let ((_%receiver171999%_
                                                      (let ((_%$e171996%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L171979%_))))
                (if _%$e171996%_ _%$e171996%_ _%L171981%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g172000172002%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver171999%_
                                                     _%method-calls170807%_
                                                     _%slot-refs170808%_
                                                     _%g172000172002%_))
                                                  _%L171979%_)))
                                             _%tl171950171968%_
                                             _%tl171953171976%_
                                             _%hd171952171974%_)))
                                        (_%g171943171958%_
                                         _%g171944171961%_))))
                                (_%g171943171958%_ _%g171944171961%_)))))
                    (_%g171942172005%_ _%clause171941%_)))
                (let ((__tmp174956
                       (lambda (_%g172007172010%_ _%g172008172012%_)
                         (cons _%g172007172010%_ _%g172008172012%_))))
                  (declare (not safe))
                  (__foldr1 __tmp174956 '() _%L171928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause171886171925%_))))))
                                    (_%loop171881171909%_
                                     _%target171878171904%_
                                     '()))
                                  (_%g171872171891%_ _%g171873171894%_)))))
                        (_%g171872171891%_ _%g171873171894%_))))
                (_%g171872171891%_ _%g171873171894%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g171871172015%_ _%L171769%_))
                                          (if (_%no-specializer?170811%_)
                                              _%stx170715%_
                                              (let* ((_%specializer-id172024%_
                                                      (let* ((_%id172018%_
                                                              (let ((__tmp174957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L170788%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp174957 '"::specialize")))
                     (_%specializer-id172021%_
                      (let ((__tmp174958
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx170715%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id172018%_ __tmp174958))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id172021%_))
                _%specializer-id172021%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass172026%_
                                                      (let ((__tmp174959
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp174959)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table172028%_
                                                      (let ((__tmp174960
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp174960)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods172030%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls170807%_)))
                                                     (_%$methods172034%_
                                                      (map (lambda (_%id172032%_)
                                                             (let ((__tmp174961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172032%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp174961)))
                   _%methods172030%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172043%_
                                                      (for-each
                                                       (lambda (_%g172035172038%_
                                                                _%g172036172040%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls170807%_
                                                            _%g172035172038%_
                                                            _%g172036172040%_)))
                                                       _%methods172030%_
                                                       _%$methods172034%_))
                                                     (_%methods-bind172053%_
                                                      (map (lambda (_%g172045172048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172046172050%_)
                     (_%generate-method-bind170717%_
                      _%$klass172026%_
                      _%$method-table172028%_
                      _%g172045172048%_
                      _%g172046172050%_))
                   _%methods172030%_
                   _%$methods172034%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots172055%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs170808%_)))
                                                     (_%$slots172059%_
                                                      (map (lambda (_%id172057%_)
                                                             (let ((__tmp174962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172057%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp174962)))
                   _%slots172055%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172068%_
                                                      (for-each
                                                       (lambda (_%g172060172063%_
                                                                _%g172061172065%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs170808%_
                                                            _%g172060172063%_
                                                            _%g172061172065%_)))
                                                       _%slots172055%_
                                                       _%$slots172059%_))
                                                     (_%slots-bind172077%_
                                                      (map (lambda (_%g172069172072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172070172074%_)
                     (_%generate-slot-bind170718%_
                      _%$klass172026%_
                      _%g172069172072%_
                      _%g172070172074%_))
                   _%slots172055%_
                   _%$slots172059%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr172169%_
                                                      (let* ((_%g172079172097%_
                                                              (lambda (_%g172080172094%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g172080172094%_))))
                     (_%g172078172166%_
                      (lambda (_%g172080172100%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g172080172100%_))
                            (let ((_%e172084172102%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g172080172100%_))))
                              (let ((_%hd172085172105%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172084172102%_)))
                                    (_%tl172086172107%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172084172102%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl172086172107%_))
                                    (let ((_%e172087172110%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl172086172107%_))))
                                      (let ((_%hd172088172113%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172087172110%_)))
                                            (_%tl172089172115%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172087172110%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd172088172113%_))
                                            (let ((_%e172090172118%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd172088172113%_))))
                                              (let ((_%hd172091172121%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172090172118%_)))
                                                    (_%tl172092172123%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172090172118%_))))
                                                ((lambda (_%L172126%_
                                                          _%L172127%_
                                                          _%L172128%_)
                                                   (let* ((_%receiver172157%_
                                                           (let ((_%$e172154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L172126%_))))
                     (if _%$e172154%_ _%$e172154%_ _%L172128%_)))
                  (_%body172163%_
                   (map (lambda (_%g172158172160%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver172157%_
                           _%$klass172026%_
                           _%method-calls170807%_
                           _%slot-refs170808%_
                           _%g172158172160%_))
                        _%L172126%_))
                  (__tmp174963
                   (cons '%#lambda
                         (cons (cons _%L172128%_ _%L172127%_)
                               _%body172163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp174963
                                                      _%L171770%_)))
                                                 _%tl172089172115%_
                                                 _%tl172092172123%_
                                                 _%hd172091172121%_)))
                                            (_%g172079172097%_
                                             _%g172080172100%_))))
                                    (_%g172079172097%_ _%g172080172100%_))))
                            (_%g172079172097%_ _%g172080172100%_)))))
                (_%g172078172166%_ _%L171770%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr172332%_
                                                      (let* ((_%g172171172190%_
                                                              (lambda (_%g172172172187%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g172172172187%_))))
                     (_%g172170172329%_
                      (lambda (_%g172172172193%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g172172172193%_))
                            (let ((_%e172174172195%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g172172172193%_))))
                              (let ((_%hd172175172198%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172174172195%_)))
                                    (_%tl172176172200%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172174172195%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl172176172200%_))
                                    (let ((_g174964_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl172176172200%_
                                              '0))))
                                      (begin
                                        (let ((_g174965_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g174964_)
                                                     (##vector-length
                                                      _g174964_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g174965_ 2)))
                                              (error "Context expects 2 values"
                                                     _g174965_)))
                                        (let ((_%target172177172203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g174964_ 0)))
                                              (_%tl172179172205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g174964_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl172179172205%_))
                                              (letrec ((_%loop172180172208%_
                                                        (lambda (_%hd172178172211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause172184172213%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd172178172211%_))
                      (let ((_%e172181172216%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd172178172211%_))))
                        (let ((_%lp-hd172182172219%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172181172216%_)))
                              (_%lp-tl172183172221%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172181172216%_))))
                          (_%loop172180172208%_
                           _%lp-tl172183172221%_
                           (cons _%lp-hd172182172219%_
                                 _%clause172184172213%_))))
                      (let ((_%clause172185172224%_
                             (reverse _%clause172184172213%_)))
                        ((lambda (_%L172227%_)
                           (let* ((_%clauses172327%_
                                   (map (lambda (_%clause172241%_)
                                          (let* ((_%__stx173777173778%_
                                                  _%clause172241%_)
                                                 (_%g172244172259%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx173777173778%_)))))
                                            (let ((_%__kont173779173780%_
                                                   (lambda (_%L172287%_
                                                            _%L172288%_
                                                            _%L172289%_)
                                                     (let* ((_%receiver172308%_
                                                             (let ((_%$e172305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L172287%_))))
                       (if _%$e172305%_ _%$e172305%_ _%L172289%_)))
                    (_%body172314%_
                     (map (lambda (_%g172309172311%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver172308%_
                             _%$klass172026%_
                             _%method-calls170807%_
                             _%slot-refs170808%_
                             _%g172309172311%_))
                          _%L172287%_)))
               (cons (cons _%L172289%_ _%L172288%_) _%body172314%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont173781173782%_
                                                   (lambda ()
                                                     _%clause172241%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx173777173778%_))
                                                  (let ((_%e172249172271%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx173777173778%_))))
                                                    (let ((_%tl172251172276%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e172249172271%_)))
                                                          (_%hd172250172274%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e172249172271%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd172250172274%_))
                                                          (let ((_%e172252172279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd172250172274%_))))
                    (let ((_%tl172254172284%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e172252172279%_)))
                          (_%hd172253172282%_
                           (let ()
                             (declare (not safe))
                             (##car _%e172252172279%_))))
                      (_%__kont173779173780%_
                       _%tl172251172276%_
                       _%tl172254172284%_
                       _%hd172253172282%_)))
                  (_%__kont173781173782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont173781173782%_)))))
                                        (let ((__tmp174966
                                               (lambda (_%g172319172322%_
                                                        _%g172320172324%_)
                                                 (cons _%g172319172322%_
                                                       _%g172320172324%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp174966
                                           '()
                                           _%L172227%_))))
                                  (__tmp174967
                                   (cons '%#case-lambda _%clauses172327%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp174967 _%L171769%_)))
                         _%clause172185172224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop172180172208%_
                                                 _%target172177172203%_
                                                 '()))
                                              (_%g172171172190%_
                                               _%g172172172193%_)))))
                                    (_%g172171172190%_ _%g172172172193%_))))
                            (_%g172171172190%_ _%g172172172193%_)))))
                (_%g172170172329%_ _%L171769%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl172334%_
                                                      (let ((__tmp174968
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L171771%_ '())
                                             (cons _%specializer-lambda-expr172169%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr172332%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp174968 _%stx170715%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl172336%_
                                                      (_%generate-specializer-impl170719%_
                                                       _%$klass172026%_
                                                       _%$method-table172028%_
                                                       _%methods-bind172053%_
                                                       _%slots-bind172077%_
                                                       _%specializer-impl172334%_)))
                                                (let ((__tmp174970
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L170788%_)))
                                                      (__tmp174969
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id172024%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp174970
                                                   '" => "
                                                   __tmp174969))
                                                (_%generate-specializer-def170720%_
                                                 _%L170788%_
                                                 _%specializer-id172024%_
                                                 _%specializer-impl172336%_))))
                                        _%hd171702171764%_
                                        _%hd171699171756%_
                                        _%hd171696171748%_)
                                       (_%g171678171708%_ _%g171679171711%_))))
                               (_%g171678171708%_ _%g171679171711%_))
                           (_%g171678171708%_ _%g171679171711%_))
                       (_%g171678171708%_ _%g171679171711%_))))
               (_%g171678171708%_ _%g171679171711%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g171678171708%_
                                                    _%g171679171711%_))))
                                           (_%g171678171708%_
                                            _%g171679171711%_))))
                                   (_%g171678171708%_ _%g171679171711%_))))
                           (_%g171678171708%_ _%g171679171711%_))))
                   (_%g171678171708%_ _%g171679171711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g171678171708%_
                                                    _%g171679171711%_)))))
                                       (_%g171677172339%_ _%L170787%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L170787%_))
                                         (let* ((_%g172343172396%_
                                                 (lambda (_%g172344172393%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g172344172393%_))))
                                                (_%g172342173567%_
                                                 (lambda (_%g172344172399%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g172344172399%_))
                                                       (let ((_%e172350172401%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g172344172399%_))))
                 (let ((_%hd172351172404%_
                        (let ()
                          (declare (not safe))
                          (##car _%e172350172401%_)))
                       (_%tl172352172406%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e172350172401%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd172351172404%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd172351172404%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl172352172406%_))
                               (let ((_%e172353172409%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl172352172406%_))))
                                 (let ((_%hd172354172412%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e172353172409%_)))
                                       (_%tl172355172414%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e172353172409%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd172354172412%_))
                                       (let ((_%e172356172417%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd172354172412%_))))
                                         (let ((_%hd172357172420%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e172356172417%_)))
                                               (_%tl172358172422%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e172356172417%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd172357172420%_))
                                               (let ((_%e172359172425%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd172357172420%_))))
                                                 (let ((_%hd172360172428%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e172359172425%_)))
                                                       (_%tl172361172430%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e172359172425%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd172360172428%_))
                                                       (let ((_%e172362172433%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd172360172428%_))))
                 (let ((_%hd172363172436%_
                        (let ()
                          (declare (not safe))
                          (##car _%e172362172433%_)))
                       (_%tl172364172438%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e172362172433%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl172364172438%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl172361172430%_))
                           (let ((_%e172365172441%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl172361172430%_))))
                             (let ((_%hd172366172444%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e172365172441%_)))
                                   (_%tl172367172446%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e172365172441%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd172366172444%_))
                                   (let ((_%e172368172449%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd172366172444%_))))
                                     (let ((_%hd172369172452%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e172368172449%_)))
                                           (_%tl172370172454%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e172368172449%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd172369172452%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd172369172452%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl172370172454%_))
                                                   (let ((_%e172371172457%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl172370172454%_))))
                                                     (let ((_%hd172372172460%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e172371172457%_)))
                                                           (_%tl172373172462%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e172371172457%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd172372172460%_))
                                                           (let ((_%e172374172465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd172372172460%_))))
                     (let ((_%hd172375172468%_
                            (let ()
                              (declare (not safe))
                              (##car _%e172374172465%_)))
                           (_%tl172376172470%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e172374172465%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd172375172468%_))
                           (let ((_%e172377172473%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd172375172468%_))))
                             (let ((_%hd172378172476%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e172377172473%_)))
                                   (_%tl172379172478%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e172377172473%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd172378172476%_))
                                   (let ((_%e172380172481%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd172378172476%_))))
                                     (let ((_%hd172381172484%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e172380172481%_)))
                                           (_%tl172382172486%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e172380172481%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl172382172486%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl172379172478%_))
                                               (let ((_%e172383172489%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl172379172478%_))))
                                                 (let ((_%hd172384172492%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e172383172489%_)))
                                                       (_%tl172385172494%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e172383172489%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl172385172494%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl172376172470%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl172373172462%_))
                       (let ((_%e172386172497%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl172373172462%_))))
                         (let ((_%hd172387172500%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e172386172497%_)))
                               (_%tl172388172502%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e172386172497%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl172388172502%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl172367172446%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl172358172422%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl172355172414%_))
                                           (let ((_%e172389172505%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl172355172414%_))))
                                             (let ((_%hd172390172508%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e172389172505%_)))
                                                   (_%tl172391172510%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e172389172505%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl172391172510%_))
                                                   ((lambda (_%L172513%_
                                                             _%L172514%_
                                                             _%L172515%_
                                                             _%L172516%_
                                                             _%L172517%_)
                                                      (let* ((_%g172557172619%_
                                                              (lambda (_%g172558172616%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g172558172616%_))))
                     (_%g172556173564%_
                      (lambda (_%g172558172622%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g172558172622%_))
                            (let ((_%e172564172624%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g172558172622%_))))
                              (let ((_%hd172565172627%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172564172624%_)))
                                    (_%tl172566172629%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172564172624%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd172565172627%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd172565172627%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172566172629%_))
                                            (let ((_%e172567172632%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172566172629%_))))
                                              (let ((_%hd172568172635%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172567172632%_)))
                                                    (_%tl172569172637%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172567172632%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl172569172637%_))
                                                    (let ((_%e172570172640%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl172569172637%_))))
                                                      (let ((_%hd172571172643%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e172570172640%_)))
                    (_%tl172572172645%_
                     (let () (declare (not safe)) (##cdr _%e172570172640%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd172571172643%_))
                    (let ((_%e172573172648%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd172571172643%_))))
                      (let ((_%hd172574172651%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172573172648%_)))
                            (_%tl172575172653%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172573172648%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd172574172651%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd172574172651%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl172575172653%_))
                                    (let ((_%e172576172656%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl172575172653%_))))
                                      (let ((_%hd172577172659%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172576172656%_)))
                                            (_%tl172578172661%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172576172656%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd172577172659%_))
                                            (let ((_%e172579172664%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd172577172659%_))))
                                              (let ((_%hd172580172667%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172579172664%_)))
                                                    (_%tl172581172669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172579172664%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd172580172667%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd172580172667%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl172581172669%_))
                                                            (let ((_%e172582172672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl172581172669%_))))
                      (let ((_%hd172583172675%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172582172672%_)))
                            (_%tl172584172677%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172582172672%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172584172677%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl172578172661%_))
                                (let ((_%e172585172680%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl172578172661%_))))
                                  (let ((_%hd172586172683%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172585172680%_)))
                                        (_%tl172587172685%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172585172680%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172586172683%_))
                                        (let ((_%e172588172688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172586172683%_))))
                                          (let ((_%hd172589172691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172588172688%_)))
                                                (_%tl172590172693%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172588172688%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd172589172691%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd172589172691%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl172590172693%_))
                                                        (let ((_%e172591172696%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl172590172693%_))))
                  (let ((_%hd172592172699%_
                         (let ()
                           (declare (not safe))
                           (##car _%e172591172696%_)))
                        (_%tl172593172701%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e172591172696%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl172593172701%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172587172685%_))
                            (let ((_%e172594172704%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172587172685%_))))
                              (let ((_%hd172595172707%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172594172704%_)))
                                    (_%tl172596172709%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172594172704%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd172595172707%_))
                                    (let ((_%e172597172712%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd172595172707%_))))
                                      (let ((_%hd172598172715%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172597172712%_)))
                                            (_%tl172599172717%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172597172712%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd172598172715%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd172598172715%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl172599172717%_))
                                                    (let ((_%e172600172720%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl172599172717%_))))
                                                      (let ((_%hd172601172723%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e172600172720%_)))
                    (_%tl172602172725%_
                     (let () (declare (not safe)) (##cdr _%e172600172720%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl172602172725%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl172596172709%_))
                        (if (let ((__tmp174971
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl172596172709%_))))
                              (declare (not safe))
                              (##fx>= __tmp174971 '1))
                            (let ((_g174972_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl172596172709%_
                                      '1))))
                              (begin
                                (let ((_g174973_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g174972_)
                                             (##vector-length _g174972_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g174973_ 2)))
                                      (error "Context expects 2 values"
                                             _g174973_)))
                                (let ((_%target172603172728%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g174972_ 0)))
                                      (_%tl172605172730%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g174972_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl172605172730%_))
                                      (let ((_%e172612172733%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl172605172730%_))))
                                        (let ((_%hd172613172736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e172612172733%_)))
                                              (_%tl172614172738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e172612172733%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl172614172738%_))
                                              (letrec ((_%loop172606172741%_
                                                        (lambda (_%hd172604172744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref172610172746%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd172604172744%_))
                      (let ((_%e172607172749%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd172604172744%_))))
                        (let ((_%lp-hd172608172752%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172607172749%_)))
                              (_%lp-tl172609172754%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172607172749%_))))
                          (_%loop172606172741%_
                           _%lp-tl172609172754%_
                           (cons _%lp-hd172608172752%_
                                 _%kw-ref172610172746%_))))
                      (let ((_%kw-ref172611172757%_
                             (reverse _%kw-ref172610172746%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172572172645%_))
                            ((lambda (_%L172760%_
                                      _%L172761%_
                                      _%L172762%_
                                      _%L172763%_
                                      _%L172764%_)
                               (let* ((_%kw-count172815%_
                                       (length (let ((__tmp174974
                                                      (lambda (_%g172807172810%_
                                                               _%g172808172812%_)
                                                        (cons _%g172807172810%_
                                                              _%g172808172812%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp174974
                                                  '()
                                                  _%L172761%_))))
                                      (_%self-index172817%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count172815%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L172515%_))
                                     (let* ((_%g172821172835%_
                                             (lambda (_%g172822172832%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g172822172832%_))))
                                            (_%g172820172958%_
                                             (lambda (_%g172822172838%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g172822172838%_))
                                                   (let ((_%e172825172840%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g172822172838%_))))
                                                     (let ((_%hd172826172843%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e172825172840%_)))
                                                           (_%tl172827172845%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e172825172840%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl172827172845%_))
                                                           (let ((_%e172828172848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl172827172845%_))))
                     (let ((_%hd172829172851%_
                            (let ()
                              (declare (not safe))
                              (##car _%e172828172848%_)))
                           (_%tl172830172853%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e172828172848%_))))
                       ((lambda (_%L172856%_ _%L172857%_)
                          (let* ((_%self172874%_
                                  (list-ref _%L172857%_ _%self-index172817%_))
                                 (_%receiver172879%_
                                  (let ((_%$e172876%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L172856%_))))
                                    (if _%$e172876%_
                                        _%$e172876%_
                                        _%self172874%_))))
                            (for-each
                             (lambda (_%g172881172883%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver172879%_
                                _%method-calls170807%_
                                _%slot-refs170808%_
                                _%g172881172883%_))
                             _%L172856%_)
                            (if (_%no-specializer?170811%_)
                                _%stx170715%_
                                (let* ((_%specializer-id172892%_
                                        (let* ((_%id172886%_
                                                (let ((__tmp174975
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L170788%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp174975
                                                   '"::specialize")))
                                               (_%specializer-id172889%_
                                                (let ((__tmp174976
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx170715%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id172886%_
                                                   __tmp174976))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id172889%_))
                                          _%specializer-id172889%_))
                                       (_%$klass172894%_
                                        (let ((__tmp174977
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp174977)))
                                       (_%$method-table172896%_
                                        (let ((__tmp174978
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp174978)))
                                       (_%methods172898%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%method-calls170807%_)))
                                       (_%$methods172902%_
                                        (map (lambda (_%id172900%_)
                                               (let ((__tmp174979
                                                      (gensym _%id172900%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp174979)))
                                             _%methods172898%_))
                                       (_%_172911%_
                                        (for-each
                                         (lambda (_%g172903172906%_
                                                  _%g172904172908%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%method-calls170807%_
                                              _%g172903172906%_
                                              _%g172904172908%_)))
                                         _%methods172898%_
                                         _%$methods172902%_))
                                       (_%methods-bind172921%_
                                        (map (lambda (_%g172913172916%_
                                                      _%g172914172918%_)
                                               (_%generate-method-bind170717%_
                                                _%$klass172894%_
                                                _%$method-table172896%_
                                                _%g172913172916%_
                                                _%g172914172918%_))
                                             _%methods172898%_
                                             _%$methods172902%_))
                                       (_%slots172923%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%slot-refs170808%_)))
                                       (_%$slots172927%_
                                        (map (lambda (_%id172925%_)
                                               (let ((__tmp174980
                                                      (gensym _%id172925%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp174980)))
                                             _%slots172923%_))
                                       (_%_172936%_
                                        (for-each
                                         (lambda (_%g172928172931%_
                                                  _%g172929172933%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%slot-refs170808%_
                                              _%g172928172931%_
                                              _%g172929172933%_)))
                                         _%slots172923%_
                                         _%$slots172927%_))
                                       (_%slots-bind172945%_
                                        (map (lambda (_%g172937172940%_
                                                      _%g172938172942%_)
                                               (_%generate-slot-bind170718%_
                                                _%$klass172894%_
                                                _%g172937172940%_
                                                _%g172938172942%_))
                                             _%slots172923%_
                                             _%$slots172927%_))
                                       (_%specializer-impl172953%_
                                        (let* ((_%specializer-body172951%_
                                                (map (lambda (_%g172946172948%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver172879%_
                                                        _%$klass172894%_
                                                        _%method-calls170807%_
                                                        _%slot-refs170808%_
                                                        _%g172946172948%_))
                                                     _%L172856%_))
                                               (__tmp174981
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L172517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L172516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp174982
                                   (cons '%#lambda
                                         (cons _%L172857%_
                                               _%specializer-body172951%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp174982 _%L172515%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L172514%_ '())))
                                      '()))
                          '())
                    (cons _%L172513%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp174981
                                           _%stx170715%_)))
                                       (_%specializer-impl172955%_
                                        (_%generate-specializer-impl170719%_
                                         _%$klass172894%_
                                         _%$method-table172896%_
                                         _%methods-bind172921%_
                                         _%slots-bind172945%_
                                         _%specializer-impl172953%_)))
                                  (let ((__tmp174984
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L170788%_)))
                                        (__tmp174983
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id172892%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp174984
                                     '" => "
                                     __tmp174983))
                                  (_%generate-specializer-def170720%_
                                   _%L170788%_
                                   _%specializer-id172892%_
                                   _%specializer-impl172955%_)))))
                        _%tl172830172853%_
                        _%hd172829172851%_)))
                   (_%g172821172835%_ _%g172822172838%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g172821172835%_
                                                    _%g172822172838%_)))))
                                       (_%g172820172958%_ _%L172515%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L172515%_))
                                         (let* ((_%g172962172992%_
                                                 (lambda (_%g172963172989%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g172963172989%_))))
                                                (_%g172961173560%_
                                                 (lambda (_%g172963172995%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g172963172995%_))
                                                       (let ((_%e172967172997%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g172963172995%_))))
                 (let ((_%hd172968173000%_
                        (let ()
                          (declare (not safe))
                          (##car _%e172967172997%_)))
                       (_%tl172969173002%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e172967172997%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl172969173002%_))
                       (let ((_%e172970173005%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl172969173002%_))))
                         (let ((_%hd172971173008%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e172970173005%_)))
                               (_%tl172972173010%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e172970173005%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd172971173008%_))
                               (let ((_%e172973173013%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd172971173008%_))))
                                 (let ((_%hd172974173016%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e172973173013%_)))
                                       (_%tl172975173018%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e172973173013%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd172974173016%_))
                                       (let ((_%e172976173021%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd172974173016%_))))
                                         (let ((_%hd172977173024%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e172976173021%_)))
                                               (_%tl172978173026%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e172976173021%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd172977173024%_))
                                               (let ((_%e172979173029%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd172977173024%_))))
                                                 (let ((_%hd172980173032%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e172979173029%_)))
                                                       (_%tl172981173034%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e172979173029%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl172981173034%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl172978173026%_))
                                                           (let ((_%e172982173037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl172978173026%_))))
                     (let ((_%hd172983173040%_
                            (let ()
                              (declare (not safe))
                              (##car _%e172982173037%_)))
                           (_%tl172984173042%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e172982173037%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl172984173042%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl172975173018%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl172972173010%_))
                                   (let ((_%e172985173045%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl172972173010%_))))
                                     (let ((_%hd172986173048%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e172985173045%_)))
                                           (_%tl172987173050%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e172985173045%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl172987173050%_))
                                           ((lambda (_%L173053%_
                                                     _%L173054%_
                                                     _%L173055%_)
                                              (let* ((_%g173079173093%_
                                                      (lambda (_%g173080173090%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g173080173090%_))))
                                                     (_%g173078173140%_
                                                      (lambda (_%g173080173096%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g173080173096%_))
                                                            (let ((_%e173083173098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g173080173096%_))))
                      (let ((_%hd173084173101%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173083173098%_)))
                            (_%tl173085173103%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173083173098%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl173085173103%_))
                            (let ((_%e173086173106%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl173085173103%_))))
                              (let ((_%hd173087173109%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173086173106%_)))
                                    (_%tl173088173111%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173086173106%_))))
                                ((lambda (_%L173114%_ _%L173115%_)
                                   (let* ((_%self173128%_
                                           (list-ref
                                            _%L173115%_
                                            _%self-index172817%_))
                                          (_%receiver173133%_
                                           (let ((_%$e173130%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L173114%_))))
                                             (if _%$e173130%_
                                                 _%$e173130%_
                                                 _%self173128%_))))
                                     (for-each
                                      (lambda (_%g173135173137%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver173133%_
                                         _%method-calls170807%_
                                         _%slot-refs170808%_
                                         _%g173135173137%_))
                                      _%L173114%_)))
                                 _%tl173088173111%_
                                 _%hd173087173109%_)))
                            (_%g173079173093%_ _%g173080173096%_))))
                    (_%g173079173093%_ _%g173080173096%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g173078173140%_
                                                 _%L173054%_))
                                              (let* ((_%g173143173162%_
                                                      (lambda (_%g173144173159%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g173144173159%_))))
                                                     (_%g173142173273%_
                                                      (lambda (_%g173144173165%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g173144173165%_))
                                                            (let ((_%e173146173167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g173144173165%_))))
                      (let ((_%hd173147173170%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173146173167%_)))
                            (_%tl173148173172%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173146173167%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl173148173172%_))
                            (let ((_g174985_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl173148173172%_
                                      '0))))
                              (begin
                                (let ((_g174986_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g174985_)
                                             (##vector-length _g174985_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g174986_ 2)))
                                      (error "Context expects 2 values"
                                             _g174986_)))
                                (let ((_%target173149173175%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g174985_ 0)))
                                      (_%tl173151173177%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g174985_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl173151173177%_))
                                      (letrec ((_%loop173152173180%_
                                                (lambda (_%hd173150173183%_
                                                         _%clause173156173185%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd173150173183%_))
                                                      (let ((_%e173153173188%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd173150173183%_))))
                (let ((_%lp-hd173154173191%_
                       (let () (declare (not safe)) (##car _%e173153173188%_)))
                      (_%lp-tl173155173193%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e173153173188%_))))
                  (_%loop173152173180%_
                   _%lp-tl173155173193%_
                   (cons _%lp-hd173154173191%_ _%clause173156173185%_))))
              (let ((_%clause173157173196%_ (reverse _%clause173156173185%_)))
                ((lambda (_%L173199%_)
                   (for-each
                    (lambda (_%clause173212%_)
                      (let* ((_%g173214173225%_
                              (lambda (_%g173215173222%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g173215173222%_))))
                             (_%g173213173263%_
                              (lambda (_%g173215173228%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g173215173228%_))
                                    (let ((_%e173218173230%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g173215173228%_))))
                                      (let ((_%hd173219173233%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173218173230%_)))
                                            (_%tl173220173235%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173218173230%_))))
                                        ((lambda (_%L173238%_ _%L173239%_)
                                           (let* ((_%self173251%_
                                                   (list-ref
                                                    _%L173239%_
                                                    _%self-index172817%_))
                                                  (_%receiver173256%_
                                                   (let ((_%$e173253%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L173238%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e173253%_
                                                         _%$e173253%_
                                                         _%self173251%_))))
                                             (for-each
                                              (lambda (_%g173258173260%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver173256%_
                                                 _%method-calls170807%_
                                                 _%slot-refs170808%_
                                                 _%g173258173260%_))
                                              _%L173238%_)))
                                         _%tl173220173235%_
                                         _%hd173219173233%_)))
                                    (_%g173214173225%_ _%g173215173228%_)))))
                        (_%g173213173263%_ _%clause173212%_)))
                    (let ((__tmp174987
                           (lambda (_%g173265173268%_ _%g173266173270%_)
                             (cons _%g173265173268%_ _%g173266173270%_))))
                      (declare (not safe))
                      (__foldr1 __tmp174987 '() _%L173199%_))))
                 _%clause173157173196%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop173152173180%_
                                         _%target173149173175%_
                                         '()))
                                      (_%g173143173162%_ _%g173144173165%_)))))
                            (_%g173143173162%_ _%g173144173165%_))))
                    (_%g173143173162%_ _%g173144173165%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g173142173273%_
                                                 _%L173053%_))
                                              (if (_%no-specializer?170811%_)
                                                  _%stx170715%_
                                                  (let* ((_%specializer-id173282%_
                                                          (let* ((_%id173276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp174988
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L170788%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp174988 '"::specialize")))
                         (_%specializer-id173279%_
                          (let ((__tmp174989
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx170715%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id173276%_
                             __tmp174989))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id173279%_))
                    _%specializer-id173279%_))
                 (_%$klass173284%_
                  (let ((__tmp174990
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp174990)))
                 (_%$method-table173286%_
                  (let ((__tmp174991
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp174991)))
                 (_%methods173288%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls170807%_)))
                 (_%$methods173292%_
                  (map (lambda (_%id173290%_)
                         (let ((__tmp174992 (gensym _%id173290%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp174992)))
                       _%methods173288%_))
                 (_%_173301%_
                  (for-each
                   (lambda (_%g173293173296%_ _%g173294173298%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls170807%_
                        _%g173293173296%_
                        _%g173294173298%_)))
                   _%methods173288%_
                   _%$methods173292%_))
                 (_%methods-bind173311%_
                  (map (lambda (_%g173303173306%_ _%g173304173308%_)
                         (_%generate-method-bind170717%_
                          _%$klass173284%_
                          _%$method-table173286%_
                          _%g173303173306%_
                          _%g173304173308%_))
                       _%methods173288%_
                       _%$methods173292%_))
                 (_%slots173313%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs170808%_)))
                 (_%$slots173317%_
                  (map (lambda (_%id173315%_)
                         (let ((__tmp174993 (gensym _%id173315%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp174993)))
                       _%slots173313%_))
                 (_%_173326%_
                  (for-each
                   (lambda (_%g173318173321%_ _%g173319173323%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs170808%_
                        _%g173318173321%_
                        _%g173319173323%_)))
                   _%slots173313%_
                   _%$slots173317%_))
                 (_%slots-bind173335%_
                  (map (lambda (_%g173327173330%_ _%g173328173332%_)
                         (_%generate-slot-bind170718%_
                          _%$klass173284%_
                          _%g173327173330%_
                          _%g173328173332%_))
                       _%slots173313%_
                       _%$slots173317%_))
                 (_%specializer-lambda-expr173413%_
                  (let* ((_%g173337173351%_
                          (lambda (_%g173338173348%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g173338173348%_))))
                         (_%g173336173410%_
                          (lambda (_%g173338173354%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g173338173354%_))
                                (let ((_%e173341173356%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g173338173354%_))))
                                  (let ((_%hd173342173359%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173341173356%_)))
                                        (_%tl173343173361%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173341173356%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl173343173361%_))
                                        (let ((_%e173344173364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl173343173361%_))))
                                          (let ((_%hd173345173367%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e173344173364%_)))
                                                (_%tl173346173369%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e173344173364%_))))
                                            ((lambda (_%L173372%_ _%L173373%_)
                                               (let* ((_%self173396%_
                                                       (list-ref
                                                        _%L173373%_
                                                        _%self-index172817%_))
                                                      (_%receiver173401%_
                                                       (let ((_%$e173398%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L173372%_))))
                 (if _%$e173398%_ _%$e173398%_ _%self173396%_)))
              (_%body173407%_
               (map (lambda (_%g173402173404%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver173401%_
                       _%$klass173284%_
                       _%method-calls170807%_
                       _%slot-refs170808%_
                       _%g173402173404%_))
                    _%L173372%_))
              (__tmp174994 (cons '%#lambda (cons _%L173373%_ _%body173407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp174994
                                                  _%L173054%_)))
                                             _%tl173346173369%_
                                             _%hd173345173367%_)))
                                        (_%g173337173351%_
                                         _%g173338173354%_))))
                                (_%g173337173351%_ _%g173338173354%_)))))
                    (_%g173336173410%_ _%L173054%_)))
                 (_%specializer-case-lambda-expr173553%_
                  (let* ((_%g173415173434%_
                          (lambda (_%g173416173431%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g173416173431%_))))
                         (_%g173414173550%_
                          (lambda (_%g173416173437%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g173416173437%_))
                                (let ((_%e173418173439%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g173416173437%_))))
                                  (let ((_%hd173419173442%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173418173439%_)))
                                        (_%tl173420173444%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173418173439%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl173420173444%_))
                                        (let ((_g174995_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl173420173444%_
                                                  '0))))
                                          (begin
                                            (let ((_g174996_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g174995_)
                                                         (##vector-length
                                                          _g174995_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g174996_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g174996_)))
                                            (let ((_%target173421173447%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g174995_
                                                      0)))
                                                  (_%tl173423173449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g174995_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl173423173449%_))
                                                  (letrec ((_%loop173424173452%_
                                                            (lambda (_%hd173422173455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause173428173457%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd173422173455%_))
                          (let ((_%e173425173460%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd173422173455%_))))
                            (let ((_%lp-hd173426173463%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173425173460%_)))
                                  (_%lp-tl173427173465%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173425173460%_))))
                              (_%loop173424173452%_
                               _%lp-tl173427173465%_
                               (cons _%lp-hd173426173463%_
                                     _%clause173428173457%_))))
                          (let ((_%clause173429173468%_
                                 (reverse _%clause173428173457%_)))
                            ((lambda (_%L173471%_)
                               (let* ((_%clauses173548%_
                                       (map (lambda (_%clause173485%_)
                                              (let* ((_%g173487173498%_
                                                      (lambda (_%g173488173495%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g173488173495%_))))
                                                     (_%g173486173538%_
                                                      (lambda (_%g173488173501%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g173488173501%_))
                                                            (let ((_%e173491173503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g173488173501%_))))
                      (let ((_%hd173492173506%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173491173503%_)))
                            (_%tl173493173508%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173491173503%_))))
                        ((lambda (_%L173511%_ _%L173512%_)
                           (let* ((_%self173524%_
                                   (list-ref _%L173512%_ _%self-index172817%_))
                                  (_%receiver173529%_
                                   (let ((_%$e173526%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L173511%_))))
                                     (if _%$e173526%_
                                         _%$e173526%_
                                         _%self173524%_)))
                                  (_%body173535%_
                                   (map (lambda (_%g173530173532%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver173529%_
                                           _%$klass173284%_
                                           _%method-calls170807%_
                                           _%slot-refs170808%_
                                           _%g173530173532%_))
                                        _%L173511%_)))
                             (cons _%L173512%_ _%body173535%_)))
                         _%tl173493173508%_
                         _%hd173492173506%_)))
                    (_%g173487173498%_ _%g173488173501%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g173486173538%_
                                                 _%clause173485%_)))
                                            (let ((__tmp174997
                                                   (lambda (_%g173540173543%_
                                                            _%g173541173545%_)
                                                     (cons _%g173540173543%_
                                                           _%g173541173545%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp174997
                                               '()
                                               _%L173471%_))))
                                      (__tmp174998
                                       (cons '%#case-lambda
                                             _%clauses173548%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp174998
                                  _%L173053%_)))
                             _%clause173429173468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop173424173452%_
                                                     _%target173421173447%_
                                                     '()))
                                                  (_%g173415173434%_
                                                   _%g173416173437%_)))))
                                        (_%g173415173434%_
                                         _%g173416173437%_))))
                                (_%g173415173434%_ _%g173416173437%_)))))
                    (_%g173414173550%_ _%L173053%_)))
                 (_%specializer-impl173555%_
                  (let ((__tmp174999
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L172517%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L172516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp175000
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L173055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr173413%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr173553%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp175000
                                                _%stx170715%_))
                                             '()))
                                 '())
                           (cons _%L172514%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L172513%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp174999 _%stx170715%_)))
                 (_%specializer-impl173557%_
                  (_%generate-specializer-impl170719%_
                   _%$klass173284%_
                   _%$method-table173286%_
                   _%methods-bind173311%_
                   _%slots-bind173335%_
                   _%specializer-impl173555%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp175002
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L170788%_)))
                                                          (__tmp175001
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id173282%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp175002
                                                       '" => "
                                                       __tmp175001))
                                                    (_%generate-specializer-def170720%_
                                                     _%L170788%_
                                                     _%specializer-id173282%_
                                                     _%specializer-impl173557%_))))
                                            _%hd172986173048%_
                                            _%hd172983173040%_
                                            _%hd172980173032%_)
                                           (_%g172962172992%_
                                            _%g172963172995%_))))
                                   (_%g172962172992%_ _%g172963172995%_))
                               (_%g172962172992%_ _%g172963172995%_))
                           (_%g172962172992%_ _%g172963172995%_))))
                   (_%g172962172992%_ _%g172963172995%_))
               (_%g172962172992%_ _%g172963172995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g172962172992%_
                                                _%g172963172995%_))))
                                       (_%g172962172992%_ _%g172963172995%_))))
                               (_%g172962172992%_ _%g172963172995%_))))
                       (_%g172962172992%_ _%g172963172995%_))))
               (_%g172962172992%_ _%g172963172995%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g172961173560%_ _%L172515%_))
                                         _%stx170715%_))))
                             _%hd172613172736%_
                             _%kw-ref172611172757%_
                             _%hd172601172723%_
                             _%hd172592172699%_
                             _%hd172583172675%_)
                            (_%g172557172619%_ _%g172558172622%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop172606172741%_
                                                 _%target172603172728%_
                                                 '()))
                                              (_%g172557172619%_
                                               _%g172558172622%_))))
                                      (_%g172557172619%_ _%g172558172622%_)))))
                            (_%g172557172619%_ _%g172558172622%_))
                        (_%g172557172619%_ _%g172558172622%_))
                    (_%g172557172619%_ _%g172558172622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g172557172619%_
                                                     _%g172558172622%_))
                                                (_%g172557172619%_
                                                 _%g172558172622%_))
                                            (_%g172557172619%_
                                             _%g172558172622%_))))
                                    (_%g172557172619%_ _%g172558172622%_))))
                            (_%g172557172619%_ _%g172558172622%_))
                        (_%g172557172619%_ _%g172558172622%_))))
                (_%g172557172619%_ _%g172558172622%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g172557172619%_
                                                     _%g172558172622%_))
                                                (_%g172557172619%_
                                                 _%g172558172622%_))))
                                        (_%g172557172619%_
                                         _%g172558172622%_))))
                                (_%g172557172619%_ _%g172558172622%_))
                            (_%g172557172619%_ _%g172558172622%_))))
                    (_%g172557172619%_ _%g172558172622%_))
                (_%g172557172619%_ _%g172558172622%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g172557172619%_
                                                     _%g172558172622%_))))
                                            (_%g172557172619%_
                                             _%g172558172622%_))))
                                    (_%g172557172619%_ _%g172558172622%_))
                                (_%g172557172619%_ _%g172558172622%_))
                            (_%g172557172619%_ _%g172558172622%_))))
                    (_%g172557172619%_ _%g172558172622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g172557172619%_
                                                     _%g172558172622%_))))
                                            (_%g172557172619%_
                                             _%g172558172622%_))
                                        (_%g172557172619%_ _%g172558172622%_))
                                    (_%g172557172619%_ _%g172558172622%_))))
                            (_%g172557172619%_ _%g172558172622%_)))))
                (_%g172556173564%_ _%L172514%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd172390172508%_
                                                    _%hd172387172500%_
                                                    _%hd172384172492%_
                                                    _%hd172381172484%_
                                                    _%hd172363172436%_)
                                                   (_%g172343172396%_
                                                    _%g172344172399%_))))
                                           (_%g172343172396%_
                                            _%g172344172399%_))
                                       (_%g172343172396%_ _%g172344172399%_))
                                   (_%g172343172396%_ _%g172344172399%_))
                               (_%g172343172396%_ _%g172344172399%_))))
                       (_%g172343172396%_ _%g172344172399%_))
                   (_%g172343172396%_ _%g172344172399%_))
               (_%g172343172396%_ _%g172344172399%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g172343172396%_
                                                _%g172344172399%_))
                                           (_%g172343172396%_
                                            _%g172344172399%_))))
                                   (_%g172343172396%_ _%g172344172399%_))))
                           (_%g172343172396%_ _%g172344172399%_))))
                   (_%g172343172396%_ _%g172344172399%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g172343172396%_
                                                    _%g172344172399%_))
                                               (_%g172343172396%_
                                                _%g172344172399%_))
                                           (_%g172343172396%_
                                            _%g172344172399%_))))
                                   (_%g172343172396%_ _%g172344172399%_))))
                           (_%g172343172396%_ _%g172344172399%_))
                       (_%g172343172396%_ _%g172344172399%_))))
               (_%g172343172396%_ _%g172344172399%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g172343172396%_
                                                _%g172344172399%_))))
                                       (_%g172343172396%_ _%g172344172399%_))))
                               (_%g172343172396%_ _%g172344172399%_))
                           (_%g172343172396%_ _%g172344172399%_))
                       (_%g172343172396%_ _%g172344172399%_))))
               (_%g172343172396%_ _%g172344172399%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g172342173567%_ _%L170787%_))
                                         _%stx170715%_))))))))
                  (_%__kont173801173802%_ (lambda () _%stx170715%_)))
              (let ((_%__match173830173831%_
                     (lambda (_%e170727170755%_
                              _%hd170728170758%_
                              _%tl170729170760%_
                              _%e170730170763%_
                              _%hd170731170766%_
                              _%tl170732170768%_
                              _%e170733170771%_
                              _%hd170734170774%_
                              _%tl170735170776%_
                              _%e170736170779%_
                              _%hd170737170782%_
                              _%tl170738170784%_)
                       (let ((_%L170787%_ _%hd170737170782%_)
                             (_%L170788%_ _%hd170734170774%_))
                         (if (let ((__tmp175003
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L170788%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp175003))
                             (_%__kont173799173800%_ _%L170787%_ _%L170788%_)
                             (_%__kont173801173802%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx173797173798%_))
                    (let ((_%e170727170755%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx173797173798%_))))
                      (let ((_%tl170729170760%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170727170755%_)))
                            (_%hd170728170758%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170727170755%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170729170760%_))
                            (let ((_%e170730170763%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170729170760%_))))
                              (let ((_%tl170732170768%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170730170763%_)))
                                    (_%hd170731170766%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170730170763%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd170731170766%_))
                                    (let ((_%e170733170771%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd170731170766%_))))
                                      (let ((_%tl170735170776%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170733170771%_)))
                                            (_%hd170734170774%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170733170771%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl170735170776%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl170732170768%_))
                                                (let ((_%e170736170779%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl170732170768%_))))
                                                  (let ((_%tl170738170784%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e170736170779%_)))
                                                        (_%hd170737170782%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e170736170779%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl170738170784%_))
                                                        (_%__match173830173831%_
                                                         _%e170727170755%_
                                                         _%hd170728170758%_
                                                         _%tl170729170760%_
                                                         _%e170730170763%_
                                                         _%hd170731170766%_
                                                         _%tl170732170768%_
                                                         _%e170733170771%_
                                                         _%hd170734170774%_
                                                         _%tl170735170776%_
                                                         _%e170736170779%_
                                                         _%hd170737170782%_
                                                         _%tl170738170784%_)
                                                        (_%__kont173801173802%_))))
                                                (_%__kont173801173802%_))
                                            (_%__kont173801173802%_))))
                                    (_%__kont173801173802%_))))
                            (_%__kont173801173802%_))))
                    (_%__kont173801173802%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self170567%_ _%stx170568%_)
        (let* ((_%__stx173833173834%_ _%stx170568%_)
               (_%g170571170604%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx173833173834%_)))))
          (let ((_%__kont173835173836%_ (lambda (_%L170694%_) _%L170694%_))
                (_%__kont173837173838%_
                 (lambda (_%L170633%_ _%L170634%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self170567%_ _%L170633%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx173833173834%_))
                (let ((_%e170574170654%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx173833173834%_))))
                  (let ((_%tl170576170659%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e170574170654%_)))
                        (_%hd170575170657%_
                         (let ()
                           (declare (not safe))
                           (##car _%e170574170654%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl170576170659%_))
                        (let ((_%e170577170662%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl170576170659%_))))
                          (let ((_%tl170579170667%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170577170662%_)))
                                (_%hd170578170665%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170577170662%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd170578170665%_))
                                (let ((_%e170580170670%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd170578170665%_))))
                                  (let ((_%tl170582170675%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170580170670%_)))
                                        (_%hd170581170673%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170580170670%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd170581170673%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd170581170673%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl170582170675%_))
                                                (let ((_%e170583170678%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl170582170675%_))))
                                                  (let ((_%tl170585170683%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e170583170678%_)))
                                                        (_%hd170584170681%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e170583170678%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl170585170683%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl170579170667%_))
                                                            (let ((_%e170586170686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl170579170667%_))))
                      (let ((_%tl170588170691%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170586170686%_)))
                            (_%hd170587170689%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170586170686%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170588170691%_))
                            (_%__kont173835173836%_ _%hd170584170681%_)
                            (let ()
                              (declare (not safe))
                              (_%g170571170604%_)))))
                    (let () (declare (not safe)) (_%g170571170604%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl170579170667%_))
                    (let ((_%e170597170625%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl170579170667%_))))
                      (let ((_%tl170599170630%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170597170625%_)))
                            (_%hd170598170628%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170597170625%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170599170630%_))
                            (_%__kont173837173838%_
                             _%hd170598170628%_
                             _%hd170578170665%_)
                            (let ()
                              (declare (not safe))
                              (_%g170571170604%_)))))
                    (let () (declare (not safe)) (_%g170571170604%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl170579170667%_))
                                                    (let ((_%e170597170625%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl170579170667%_))))
                                                      (let ((_%tl170599170630%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e170597170625%_)))
                    (_%hd170598170628%_
                     (let () (declare (not safe)) (##car _%e170597170625%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl170599170630%_))
                    (_%__kont173837173838%_
                     _%hd170598170628%_
                     _%hd170578170665%_)
                    (let () (declare (not safe)) (_%g170571170604%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g170571170604%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl170579170667%_))
                                                (let ((_%e170597170625%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl170579170667%_))))
                                                  (let ((_%tl170599170630%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e170597170625%_)))
                                                        (_%hd170598170628%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e170597170625%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl170599170630%_))
                                                        (_%__kont173837173838%_
                                                         _%hd170598170628%_
                                                         _%hd170578170665%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g170571170604%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g170571170604%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170579170667%_))
                                            (let ((_%e170597170625%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170579170667%_))))
                                              (let ((_%tl170599170630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170597170625%_)))
                                                    (_%hd170598170628%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170597170625%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl170599170630%_))
                                                    (_%__kont173837173838%_
                                                     _%hd170598170628%_
                                                     _%hd170578170665%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g170571170604%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g170571170604%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl170579170667%_))
                                    (let ((_%e170597170625%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl170579170667%_))))
                                      (let ((_%tl170599170630%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170597170625%_)))
                                            (_%hd170598170628%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170597170625%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl170599170630%_))
                                            (_%__kont173837173838%_
                                             _%hd170598170628%_
                                             _%hd170578170665%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g170571170604%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g170571170604%_))))))
                        (let () (declare (not safe)) (_%g170571170604%_)))))
                (let () (declare (not safe)) (_%g170571170604%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self170483%_ _%stx170484%_)
        (let* ((_%g170486170507%_
                (lambda (_%g170487170504%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170487170504%_))))
               (_%g170485170564%_
                (lambda (_%g170487170510%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170487170510%_))
                      (let ((_%e170491170512%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170487170510%_))))
                        (let ((_%hd170492170515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170491170512%_)))
                              (_%tl170493170517%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170491170512%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170493170517%_))
                              (let ((_%e170494170520%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170493170517%_))))
                                (let ((_%hd170495170523%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170494170520%_)))
                                      (_%tl170496170525%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170494170520%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170496170525%_))
                                      (let ((_%e170497170528%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170496170525%_))))
                                        (let ((_%hd170498170531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170497170528%_)))
                                              (_%tl170499170533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170497170528%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl170499170533%_))
                                              (let ((_%e170500170536%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl170499170533%_))))
                                                (let ((_%hd170501170539%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170500170536%_)))
                                                      (_%tl170502170541%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170500170536%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl170502170541%_))
                                                      ((lambda (_%L170544%_
                                                                _%L170545%_
                                                                _%L170546%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self170483%_
                                                            _%L170545%_)))
                                                       _%hd170501170539%_
                                                       _%hd170498170531%_
                                                       _%hd170495170523%_)
                                                      (_%g170486170507%_
                                                       _%g170487170510%_))))
                                              (_%g170486170507%_
                                               _%g170487170510%_))))
                                      (_%g170486170507%_ _%g170487170510%_))))
                              (_%g170486170507%_ _%g170487170510%_))))
                      (_%g170486170507%_ _%g170487170510%_)))))
          (_%g170485170564%_ _%stx170484%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self169444%_ _%stx169445%_)
        (let* ((_%__stx173899173900%_ _%stx169445%_)
               (_%g169453169675%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx173899173900%_)))))
          (let ((_%__kont173901173902%_
                 (lambda (_%L170432%_ _%L170433%_ _%L170434%_ _%L170435%_)
                   (let ((__tmp175005
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self169444%_ 'methods)))
                         (__tmp175004
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L170433%_))))
                     (declare (not safe))
                     (hash-put! __tmp175005 __tmp175004 '#t))
                   (for-each
                    (lambda (_%g170468170470%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self169444%_ _%g170468170470%_)))
                    (let ((__tmp175006
                           (lambda (_%g170472170475%_ _%g170473170477%_)
                             (cons _%g170472170475%_ _%g170473170477%_))))
                      (declare (not safe))
                      (__foldr1 __tmp175006 '() _%L170432%_)))))
                (_%__kont173905173906%_
                 (lambda (_%L170267%_
                          _%L170268%_
                          _%L170269%_
                          _%L170270%_
                          _%L170271%_)
                   (let ((__tmp175008
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self169444%_ 'methods)))
                         (__tmp175007
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L170268%_))))
                     (declare (not safe))
                     (hash-put! __tmp175008 __tmp175007 '#t))
                   (for-each
                    (lambda (_%g170311170313%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self169444%_ _%g170311170313%_)))
                    (let ((__tmp175009
                           (lambda (_%g170315170318%_ _%g170316170320%_)
                             (cons _%g170315170318%_ _%g170316170320%_))))
                      (declare (not safe))
                      (__foldr1 __tmp175009 '() _%L170267%_)))))
                (_%__kont173909173910%_
                 (lambda (_%L170100%_ _%L170101%_ _%L170102%_)
                   (let ((__tmp175011
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self169444%_ 'slots)))
                         (__tmp175010
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L170100%_))))
                     (declare (not safe))
                     (hash-put! __tmp175011 __tmp175010 '#t))))
                (_%__kont173911173912%_
                 (lambda (_%L169977%_ _%L169978%_ _%L169979%_ _%L169980%_)
                   (let ((__tmp175013
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self169444%_ 'slots)))
                         (__tmp175012
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L169978%_))))
                     (declare (not safe))
                     (hash-put! __tmp175013 __tmp175012 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self169444%_ _%L169977%_))))
                (_%__kont173913173914%_
                 (lambda (_%L169851%_ _%L169852%_)
                   (let* ((_%accessor169874%_
                           (let ((__tmp175014
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L169852%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp175014)))
                          (_%klass169876%_
                           (let ((__tmp175015
                                  (##structure-ref
                                   _%accessor169874%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx169445%_
                              __tmp175015)))
                          (_%slot169878%_
                           (##structure-ref
                            _%accessor169874%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor169874%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass169876%_
                                    _%slot169878%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass169876%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp175017
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self169444%_ 'slots)))
                               (__tmp175016
                                (##structure-ref
                                 _%accessor169874%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp175017 __tmp175016 '#t))))))
                (_%__kont173915173916%_
                 (lambda (_%L169751%_ _%L169752%_ _%L169753%_)
                   (let* ((_%mutator169780%_
                           (let ((__tmp175018
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L169753%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp175018)))
                          (_%klass169782%_
                           (let ((__tmp175019
                                  (##structure-ref
                                   _%mutator169780%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx169445%_
                              __tmp175019)))
                          (_%slot169784%_
                           (##structure-ref
                            _%mutator169780%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator169780%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass169782%_
                                    _%slot169784%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass169782%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp175020
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self169444%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp175020 _%slot169784%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self169444%_ _%L169751%_)))))
                (_%__kont173917173918%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self169444%_ _%stx169445%_)))))
            (let* ((_%__match174398174399%_
                    (lambda (_%e169647169687%_
                             _%hd169648169690%_
                             _%tl169649169692%_
                             _%e169650169695%_
                             _%hd169651169698%_
                             _%tl169652169700%_
                             _%e169653169703%_
                             _%hd169654169706%_
                             _%tl169655169708%_
                             _%e169656169711%_
                             _%hd169657169714%_
                             _%tl169658169716%_
                             _%e169659169719%_
                             _%hd169660169722%_
                             _%tl169661169724%_
                             _%e169662169727%_
                             _%hd169663169730%_
                             _%tl169664169732%_
                             _%e169665169735%_
                             _%hd169666169738%_
                             _%tl169667169740%_
                             _%e169668169743%_
                             _%hd169669169746%_
                             _%tl169670169748%_)
                      (let ((_%L169751%_ _%hd169669169746%_)
                            (_%L169752%_ _%hd169666169738%_)
                            (_%L169753%_ _%hd169657169714%_))
                        (if (and (let ((__tmp175021
                                        (let ((__tmp175022
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L169753%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp175022))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp175021
                                    'gxc#!mutator::t))
                                 (let ((__tmp175023
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self169444%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L169752%_
                                    __tmp175023)))
                            (_%__kont173915173916%_
                             _%L169751%_
                             _%L169752%_
                             _%L169753%_)
                            (_%__kont173917173918%_)))))
                   (_%__match174396174397%_
                    (lambda (_%e169647169687%_
                             _%hd169648169690%_
                             _%tl169649169692%_
                             _%e169650169695%_
                             _%hd169651169698%_
                             _%tl169652169700%_
                             _%e169653169703%_
                             _%hd169654169706%_
                             _%tl169655169708%_
                             _%e169656169711%_
                             _%hd169657169714%_
                             _%tl169658169716%_
                             _%e169659169719%_
                             _%hd169660169722%_
                             _%tl169661169724%_
                             _%e169662169727%_
                             _%hd169663169730%_
                             _%tl169664169732%_
                             _%e169665169735%_
                             _%hd169666169738%_
                             _%tl169667169740%_
                             _%e169668169743%_
                             _%hd169669169746%_
                             _%tl169670169748%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169670169748%_))
                          (_%__match174398174399%_
                           _%e169647169687%_
                           _%hd169648169690%_
                           _%tl169649169692%_
                           _%e169650169695%_
                           _%hd169651169698%_
                           _%tl169652169700%_
                           _%e169653169703%_
                           _%hd169654169706%_
                           _%tl169655169708%_
                           _%e169656169711%_
                           _%hd169657169714%_
                           _%tl169658169716%_
                           _%e169659169719%_
                           _%hd169660169722%_
                           _%tl169661169724%_
                           _%e169662169727%_
                           _%hd169663169730%_
                           _%tl169664169732%_
                           _%e169665169735%_
                           _%hd169666169738%_
                           _%tl169667169740%_
                           _%e169668169743%_
                           _%hd169669169746%_
                           _%tl169670169748%_)
                          (_%__kont173917173918%_))))
                   (_%__match174390174391%_
                    (lambda (_%e169647169687%_
                             _%hd169648169690%_
                             _%tl169649169692%_
                             _%e169650169695%_
                             _%hd169651169698%_
                             _%tl169652169700%_
                             _%e169653169703%_
                             _%hd169654169706%_
                             _%tl169655169708%_
                             _%e169656169711%_
                             _%hd169657169714%_
                             _%tl169658169716%_
                             _%e169659169719%_
                             _%hd169660169722%_
                             _%tl169661169724%_
                             _%e169662169727%_
                             _%hd169663169730%_
                             _%tl169664169732%_
                             _%e169665169735%_
                             _%hd169666169738%_
                             _%tl169667169740%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169661169724%_))
                          (let ((_%e169668169743%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169661169724%_))))
                            (let ((_%tl169670169748%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169668169743%_)))
                                  (_%hd169669169746%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169668169743%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl169670169748%_))
                                  (_%__match174398174399%_
                                   _%e169647169687%_
                                   _%hd169648169690%_
                                   _%tl169649169692%_
                                   _%e169650169695%_
                                   _%hd169651169698%_
                                   _%tl169652169700%_
                                   _%e169653169703%_
                                   _%hd169654169706%_
                                   _%tl169655169708%_
                                   _%e169656169711%_
                                   _%hd169657169714%_
                                   _%tl169658169716%_
                                   _%e169659169719%_
                                   _%hd169660169722%_
                                   _%tl169661169724%_
                                   _%e169662169727%_
                                   _%hd169663169730%_
                                   _%tl169664169732%_
                                   _%e169665169735%_
                                   _%hd169666169738%_
                                   _%tl169667169740%_
                                   _%e169668169743%_
                                   _%hd169669169746%_
                                   _%tl169670169748%_)
                                  (_%__kont173917173918%_))))
                          (_%__kont173917173918%_))))
                   (_%__match174336174337%_
                    (lambda (_%e169623169795%_
                             _%hd169624169798%_
                             _%tl169625169800%_
                             _%e169626169803%_
                             _%hd169627169806%_
                             _%tl169628169808%_
                             _%e169629169811%_
                             _%hd169630169814%_
                             _%tl169631169816%_
                             _%e169632169819%_
                             _%hd169633169822%_
                             _%tl169634169824%_
                             _%e169635169827%_
                             _%hd169636169830%_
                             _%tl169637169832%_
                             _%e169638169835%_
                             _%hd169639169838%_
                             _%tl169640169840%_
                             _%e169641169843%_
                             _%hd169642169846%_
                             _%tl169643169848%_)
                      (let ((_%L169851%_ _%hd169642169846%_)
                            (_%L169852%_ _%hd169633169822%_))
                        (if (and (let ((__tmp175024
                                        (let ((__tmp175025
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L169852%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp175025))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp175024
                                    'gxc#!accessor::t))
                                 (let ((__tmp175026
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self169444%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L169851%_
                                    __tmp175026)))
                            (_%__kont173913173914%_ _%L169851%_ _%L169852%_)
                            (_%__kont173917173918%_)))))
                   (_%__match174334174335%_
                    (lambda (_%e169623169795%_
                             _%hd169624169798%_
                             _%tl169625169800%_
                             _%e169626169803%_
                             _%hd169627169806%_
                             _%tl169628169808%_
                             _%e169629169811%_
                             _%hd169630169814%_
                             _%tl169631169816%_
                             _%e169632169819%_
                             _%hd169633169822%_
                             _%tl169634169824%_
                             _%e169635169827%_
                             _%hd169636169830%_
                             _%tl169637169832%_
                             _%e169638169835%_
                             _%hd169639169838%_
                             _%tl169640169840%_
                             _%e169641169843%_
                             _%hd169642169846%_
                             _%tl169643169848%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169637169832%_))
                          (_%__match174336174337%_
                           _%e169623169795%_
                           _%hd169624169798%_
                           _%tl169625169800%_
                           _%e169626169803%_
                           _%hd169627169806%_
                           _%tl169628169808%_
                           _%e169629169811%_
                           _%hd169630169814%_
                           _%tl169631169816%_
                           _%e169632169819%_
                           _%hd169633169822%_
                           _%tl169634169824%_
                           _%e169635169827%_
                           _%hd169636169830%_
                           _%tl169637169832%_
                           _%e169638169835%_
                           _%hd169639169838%_
                           _%tl169640169840%_
                           _%e169641169843%_
                           _%hd169642169846%_
                           _%tl169643169848%_)
                          (_%__match174390174391%_
                           _%e169623169795%_
                           _%hd169624169798%_
                           _%tl169625169800%_
                           _%e169626169803%_
                           _%hd169627169806%_
                           _%tl169628169808%_
                           _%e169629169811%_
                           _%hd169630169814%_
                           _%tl169631169816%_
                           _%e169632169819%_
                           _%hd169633169822%_
                           _%tl169634169824%_
                           _%e169635169827%_
                           _%hd169636169830%_
                           _%tl169637169832%_
                           _%e169638169835%_
                           _%hd169639169838%_
                           _%tl169640169840%_
                           _%e169641169843%_
                           _%hd169642169846%_
                           _%tl169643169848%_))))
                   (_%__match174280174281%_
                    (lambda (_%e169588169889%_
                             _%hd169589169892%_
                             _%tl169590169894%_
                             _%e169591169897%_
                             _%hd169592169900%_
                             _%tl169593169902%_
                             _%e169594169905%_
                             _%hd169595169908%_
                             _%tl169596169910%_
                             _%e169597169913%_
                             _%hd169598169916%_
                             _%tl169599169918%_
                             _%e169600169921%_
                             _%hd169601169924%_
                             _%tl169602169926%_
                             _%e169603169929%_
                             _%hd169604169932%_
                             _%tl169605169934%_
                             _%e169606169937%_
                             _%hd169607169940%_
                             _%tl169608169942%_
                             _%e169609169945%_
                             _%hd169610169948%_
                             _%tl169611169950%_
                             _%e169612169953%_
                             _%hd169613169956%_
                             _%tl169614169958%_
                             _%e169615169961%_
                             _%hd169616169964%_
                             _%tl169617169966%_
                             _%e169618169969%_
                             _%hd169619169972%_
                             _%tl169620169974%_)
                      (let ((_%L169977%_ _%hd169619169972%_)
                            (_%L169978%_ _%hd169616169964%_)
                            (_%L169979%_ _%hd169607169940%_)
                            (_%L169980%_ _%hd169598169916%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L169980%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L169980%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp175027
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self169444%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L169979%_
                                    __tmp175027)))
                            (_%__kont173911173912%_
                             _%L169977%_
                             _%L169978%_
                             _%L169979%_
                             _%L169980%_)
                            (_%__kont173917173918%_)))))
                   (_%__match174272174273%_
                    (lambda (_%e169588169889%_
                             _%hd169589169892%_
                             _%tl169590169894%_
                             _%e169591169897%_
                             _%hd169592169900%_
                             _%tl169593169902%_
                             _%e169594169905%_
                             _%hd169595169908%_
                             _%tl169596169910%_
                             _%e169597169913%_
                             _%hd169598169916%_
                             _%tl169599169918%_
                             _%e169600169921%_
                             _%hd169601169924%_
                             _%tl169602169926%_
                             _%e169603169929%_
                             _%hd169604169932%_
                             _%tl169605169934%_
                             _%e169606169937%_
                             _%hd169607169940%_
                             _%tl169608169942%_
                             _%e169609169945%_
                             _%hd169610169948%_
                             _%tl169611169950%_
                             _%e169612169953%_
                             _%hd169613169956%_
                             _%tl169614169958%_
                             _%e169615169961%_
                             _%hd169616169964%_
                             _%tl169617169966%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169611169950%_))
                          (let ((_%e169618169969%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169611169950%_))))
                            (let ((_%tl169620169974%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169618169969%_)))
                                  (_%hd169619169972%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169618169969%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl169620169974%_))
                                  (_%__match174280174281%_
                                   _%e169588169889%_
                                   _%hd169589169892%_
                                   _%tl169590169894%_
                                   _%e169591169897%_
                                   _%hd169592169900%_
                                   _%tl169593169902%_
                                   _%e169594169905%_
                                   _%hd169595169908%_
                                   _%tl169596169910%_
                                   _%e169597169913%_
                                   _%hd169598169916%_
                                   _%tl169599169918%_
                                   _%e169600169921%_
                                   _%hd169601169924%_
                                   _%tl169602169926%_
                                   _%e169603169929%_
                                   _%hd169604169932%_
                                   _%tl169605169934%_
                                   _%e169606169937%_
                                   _%hd169607169940%_
                                   _%tl169608169942%_
                                   _%e169609169945%_
                                   _%hd169610169948%_
                                   _%tl169611169950%_
                                   _%e169612169953%_
                                   _%hd169613169956%_
                                   _%tl169614169958%_
                                   _%e169615169961%_
                                   _%hd169616169964%_
                                   _%tl169617169966%_
                                   _%e169618169969%_
                                   _%hd169619169972%_
                                   _%tl169620169974%_)
                                  (_%__kont173917173918%_))))
                          (_%__match174396174397%_
                           _%e169588169889%_
                           _%hd169589169892%_
                           _%tl169590169894%_
                           _%e169591169897%_
                           _%hd169592169900%_
                           _%tl169593169902%_
                           _%e169594169905%_
                           _%hd169595169908%_
                           _%tl169596169910%_
                           _%e169597169913%_
                           _%hd169598169916%_
                           _%tl169599169918%_
                           _%e169600169921%_
                           _%hd169601169924%_
                           _%tl169602169926%_
                           _%e169603169929%_
                           _%hd169604169932%_
                           _%tl169605169934%_
                           _%e169606169937%_
                           _%hd169607169940%_
                           _%tl169608169942%_
                           _%e169609169945%_
                           _%hd169610169948%_
                           _%tl169611169950%_))))
                   (_%__match174194174195%_
                    (lambda (_%e169554170020%_
                             _%hd169555170023%_
                             _%tl169556170025%_
                             _%e169557170028%_
                             _%hd169558170031%_
                             _%tl169559170033%_
                             _%e169560170036%_
                             _%hd169561170039%_
                             _%tl169562170041%_
                             _%e169563170044%_
                             _%hd169564170047%_
                             _%tl169565170049%_
                             _%e169566170052%_
                             _%hd169567170055%_
                             _%tl169568170057%_
                             _%e169569170060%_
                             _%hd169570170063%_
                             _%tl169571170065%_
                             _%e169572170068%_
                             _%hd169573170071%_
                             _%tl169574170073%_
                             _%e169575170076%_
                             _%hd169576170079%_
                             _%tl169577170081%_
                             _%e169578170084%_
                             _%hd169579170087%_
                             _%tl169580170089%_
                             _%e169581170092%_
                             _%hd169582170095%_
                             _%tl169583170097%_)
                      (let ((_%L170100%_ _%hd169582170095%_)
                            (_%L170101%_ _%hd169573170071%_)
                            (_%L170102%_ _%hd169564170047%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L170102%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L170102%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp175028
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self169444%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L170101%_
                                    __tmp175028)))
                            (_%__kont173909173910%_
                             _%L170100%_
                             _%L170101%_
                             _%L170102%_)
                            (_%__match174398174399%_
                             _%e169554170020%_
                             _%hd169555170023%_
                             _%tl169556170025%_
                             _%e169557170028%_
                             _%hd169558170031%_
                             _%tl169559170033%_
                             _%e169560170036%_
                             _%hd169561170039%_
                             _%tl169562170041%_
                             _%e169563170044%_
                             _%hd169564170047%_
                             _%tl169565170049%_
                             _%e169566170052%_
                             _%hd169567170055%_
                             _%tl169568170057%_
                             _%e169569170060%_
                             _%hd169570170063%_
                             _%tl169571170065%_
                             _%e169572170068%_
                             _%hd169573170071%_
                             _%tl169574170073%_
                             _%e169575170076%_
                             _%hd169576170079%_
                             _%tl169577170081%_)))))
                   (_%__match174192174193%_
                    (lambda (_%e169554170020%_
                             _%hd169555170023%_
                             _%tl169556170025%_
                             _%e169557170028%_
                             _%hd169558170031%_
                             _%tl169559170033%_
                             _%e169560170036%_
                             _%hd169561170039%_
                             _%tl169562170041%_
                             _%e169563170044%_
                             _%hd169564170047%_
                             _%tl169565170049%_
                             _%e169566170052%_
                             _%hd169567170055%_
                             _%tl169568170057%_
                             _%e169569170060%_
                             _%hd169570170063%_
                             _%tl169571170065%_
                             _%e169572170068%_
                             _%hd169573170071%_
                             _%tl169574170073%_
                             _%e169575170076%_
                             _%hd169576170079%_
                             _%tl169577170081%_
                             _%e169578170084%_
                             _%hd169579170087%_
                             _%tl169580170089%_
                             _%e169581170092%_
                             _%hd169582170095%_
                             _%tl169583170097%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169577170081%_))
                          (_%__match174194174195%_
                           _%e169554170020%_
                           _%hd169555170023%_
                           _%tl169556170025%_
                           _%e169557170028%_
                           _%hd169558170031%_
                           _%tl169559170033%_
                           _%e169560170036%_
                           _%hd169561170039%_
                           _%tl169562170041%_
                           _%e169563170044%_
                           _%hd169564170047%_
                           _%tl169565170049%_
                           _%e169566170052%_
                           _%hd169567170055%_
                           _%tl169568170057%_
                           _%e169569170060%_
                           _%hd169570170063%_
                           _%tl169571170065%_
                           _%e169572170068%_
                           _%hd169573170071%_
                           _%tl169574170073%_
                           _%e169575170076%_
                           _%hd169576170079%_
                           _%tl169577170081%_
                           _%e169578170084%_
                           _%hd169579170087%_
                           _%tl169580170089%_
                           _%e169581170092%_
                           _%hd169582170095%_
                           _%tl169583170097%_)
                          (_%__match174272174273%_
                           _%e169554170020%_
                           _%hd169555170023%_
                           _%tl169556170025%_
                           _%e169557170028%_
                           _%hd169558170031%_
                           _%tl169559170033%_
                           _%e169560170036%_
                           _%hd169561170039%_
                           _%tl169562170041%_
                           _%e169563170044%_
                           _%hd169564170047%_
                           _%tl169565170049%_
                           _%e169566170052%_
                           _%hd169567170055%_
                           _%tl169568170057%_
                           _%e169569170060%_
                           _%hd169570170063%_
                           _%tl169571170065%_
                           _%e169572170068%_
                           _%hd169573170071%_
                           _%tl169574170073%_
                           _%e169575170076%_
                           _%hd169576170079%_
                           _%tl169577170081%_
                           _%e169578170084%_
                           _%hd169579170087%_
                           _%tl169580170089%_
                           _%e169581170092%_
                           _%hd169582170095%_
                           _%tl169583170097%_))))
                   (_%__match174182174183%_
                    (lambda (_%e169554170020%_
                             _%hd169555170023%_
                             _%tl169556170025%_
                             _%e169557170028%_
                             _%hd169558170031%_
                             _%tl169559170033%_
                             _%e169560170036%_
                             _%hd169561170039%_
                             _%tl169562170041%_
                             _%e169563170044%_
                             _%hd169564170047%_
                             _%tl169565170049%_
                             _%e169566170052%_
                             _%hd169567170055%_
                             _%tl169568170057%_
                             _%e169569170060%_
                             _%hd169570170063%_
                             _%tl169571170065%_
                             _%e169572170068%_
                             _%hd169573170071%_
                             _%tl169574170073%_
                             _%e169575170076%_
                             _%hd169576170079%_
                             _%tl169577170081%_
                             _%e169578170084%_
                             _%hd169579170087%_
                             _%tl169580170089%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd169579170087%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl169580170089%_))
                              (let ((_%e169581170092%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl169580170089%_))))
                                (let ((_%tl169583170097%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169581170092%_)))
                                      (_%hd169582170095%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169581170092%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl169583170097%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl169577170081%_))
                                          (_%__match174194174195%_
                                           _%e169554170020%_
                                           _%hd169555170023%_
                                           _%tl169556170025%_
                                           _%e169557170028%_
                                           _%hd169558170031%_
                                           _%tl169559170033%_
                                           _%e169560170036%_
                                           _%hd169561170039%_
                                           _%tl169562170041%_
                                           _%e169563170044%_
                                           _%hd169564170047%_
                                           _%tl169565170049%_
                                           _%e169566170052%_
                                           _%hd169567170055%_
                                           _%tl169568170057%_
                                           _%e169569170060%_
                                           _%hd169570170063%_
                                           _%tl169571170065%_
                                           _%e169572170068%_
                                           _%hd169573170071%_
                                           _%tl169574170073%_
                                           _%e169575170076%_
                                           _%hd169576170079%_
                                           _%tl169577170081%_
                                           _%e169578170084%_
                                           _%hd169579170087%_
                                           _%tl169580170089%_
                                           _%e169581170092%_
                                           _%hd169582170095%_
                                           _%tl169583170097%_)
                                          (_%__match174272174273%_
                                           _%e169554170020%_
                                           _%hd169555170023%_
                                           _%tl169556170025%_
                                           _%e169557170028%_
                                           _%hd169558170031%_
                                           _%tl169559170033%_
                                           _%e169560170036%_
                                           _%hd169561170039%_
                                           _%tl169562170041%_
                                           _%e169563170044%_
                                           _%hd169564170047%_
                                           _%tl169565170049%_
                                           _%e169566170052%_
                                           _%hd169567170055%_
                                           _%tl169568170057%_
                                           _%e169569170060%_
                                           _%hd169570170063%_
                                           _%tl169571170065%_
                                           _%e169572170068%_
                                           _%hd169573170071%_
                                           _%tl169574170073%_
                                           _%e169575170076%_
                                           _%hd169576170079%_
                                           _%tl169577170081%_
                                           _%e169578170084%_
                                           _%hd169579170087%_
                                           _%tl169580170089%_
                                           _%e169581170092%_
                                           _%hd169582170095%_
                                           _%tl169583170097%_))
                                      (_%__match174396174397%_
                                       _%e169554170020%_
                                       _%hd169555170023%_
                                       _%tl169556170025%_
                                       _%e169557170028%_
                                       _%hd169558170031%_
                                       _%tl169559170033%_
                                       _%e169560170036%_
                                       _%hd169561170039%_
                                       _%tl169562170041%_
                                       _%e169563170044%_
                                       _%hd169564170047%_
                                       _%tl169565170049%_
                                       _%e169566170052%_
                                       _%hd169567170055%_
                                       _%tl169568170057%_
                                       _%e169569170060%_
                                       _%hd169570170063%_
                                       _%tl169571170065%_
                                       _%e169572170068%_
                                       _%hd169573170071%_
                                       _%tl169574170073%_
                                       _%e169575170076%_
                                       _%hd169576170079%_
                                       _%tl169577170081%_))))
                              (_%__match174396174397%_
                               _%e169554170020%_
                               _%hd169555170023%_
                               _%tl169556170025%_
                               _%e169557170028%_
                               _%hd169558170031%_
                               _%tl169559170033%_
                               _%e169560170036%_
                               _%hd169561170039%_
                               _%tl169562170041%_
                               _%e169563170044%_
                               _%hd169564170047%_
                               _%tl169565170049%_
                               _%e169566170052%_
                               _%hd169567170055%_
                               _%tl169568170057%_
                               _%e169569170060%_
                               _%hd169570170063%_
                               _%tl169571170065%_
                               _%e169572170068%_
                               _%hd169573170071%_
                               _%tl169574170073%_
                               _%e169575170076%_
                               _%hd169576170079%_
                               _%tl169577170081%_))
                          (_%__match174396174397%_
                           _%e169554170020%_
                           _%hd169555170023%_
                           _%tl169556170025%_
                           _%e169557170028%_
                           _%hd169558170031%_
                           _%tl169559170033%_
                           _%e169560170036%_
                           _%hd169561170039%_
                           _%tl169562170041%_
                           _%e169563170044%_
                           _%hd169564170047%_
                           _%tl169565170049%_
                           _%e169566170052%_
                           _%hd169567170055%_
                           _%tl169568170057%_
                           _%e169569170060%_
                           _%hd169570170063%_
                           _%tl169571170065%_
                           _%e169572170068%_
                           _%hd169573170071%_
                           _%tl169574170073%_
                           _%e169575170076%_
                           _%hd169576170079%_
                           _%tl169577170081%_))))
                   (_%__match174114174115%_
                    (lambda (_%e169503170139%_
                             _%hd169504170142%_
                             _%tl169505170144%_
                             _%e169506170147%_
                             _%hd169507170150%_
                             _%tl169508170152%_
                             _%e169509170155%_
                             _%hd169510170158%_
                             _%tl169511170160%_
                             _%e169512170163%_
                             _%hd169513170166%_
                             _%tl169514170168%_
                             _%e169515170171%_
                             _%hd169516170174%_
                             _%tl169517170176%_
                             _%e169518170179%_
                             _%hd169519170182%_
                             _%tl169520170184%_
                             _%e169521170187%_
                             _%hd169522170190%_
                             _%tl169523170192%_
                             _%e169524170195%_
                             _%hd169525170198%_
                             _%tl169526170200%_
                             _%e169527170203%_
                             _%hd169528170206%_
                             _%tl169529170208%_
                             _%e169530170211%_
                             _%hd169531170214%_
                             _%tl169532170216%_
                             _%e169533170219%_
                             _%hd169534170222%_
                             _%tl169535170224%_
                             _%e169536170227%_
                             _%hd169537170230%_
                             _%tl169538170232%_
                             _%e169539170235%_
                             _%hd169540170238%_
                             _%tl169541170240%_
                             _%__splice173907173908%_
                             _%target169542170243%_
                             _%tl169544170245%_)
                      (letrec ((_%loop169545170248%_
                                (lambda (_%hd169543170251%_
                                         _%args169549170253%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd169543170251%_))
                                      (let ((_%e169546170256%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd169543170251%_))))
                                        (let ((_%lp-tl169548170261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169546170256%_)))
                                              (_%lp-hd169547170259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169546170256%_))))
                                          (_%loop169545170248%_
                                           _%lp-tl169548170261%_
                                           (cons _%lp-hd169547170259%_
                                                 _%args169549170253%_))))
                                      (let ((_%args169550170264%_
                                             (reverse _%args169549170253%_)))
                                        (let ((_%L170267%_
                                               _%args169550170264%_)
                                              (_%L170268%_ _%hd169540170238%_)
                                              (_%L170269%_ _%hd169531170214%_)
                                              (_%L170270%_ _%hd169522170190%_)
                                              (_%L170271%_ _%hd169513170166%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L170271%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L170270%_
                                                      'call-method))
                                                   (let ((__tmp175029
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self169444%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L170269%_
                                                      __tmp175029)))
                                              (_%__kont173905173906%_
                                               _%L170267%_
                                               _%L170268%_
                                               _%L170269%_
                                               _%L170270%_
                                               _%L170271%_)
                                              (_%__kont173917173918%_))))))))
                        (_%loop169545170248%_ _%target169542170243%_ '()))))
                   (_%__match174072174073%_
                    (lambda (_%e169503170139%_
                             _%hd169504170142%_
                             _%tl169505170144%_
                             _%e169506170147%_
                             _%hd169507170150%_
                             _%tl169508170152%_
                             _%e169509170155%_
                             _%hd169510170158%_
                             _%tl169511170160%_
                             _%e169512170163%_
                             _%hd169513170166%_
                             _%tl169514170168%_
                             _%e169515170171%_
                             _%hd169516170174%_
                             _%tl169517170176%_
                             _%e169518170179%_
                             _%hd169519170182%_
                             _%tl169520170184%_
                             _%e169521170187%_
                             _%hd169522170190%_
                             _%tl169523170192%_
                             _%e169524170195%_
                             _%hd169525170198%_
                             _%tl169526170200%_
                             _%e169527170203%_
                             _%hd169528170206%_
                             _%tl169529170208%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd169528170206%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl169529170208%_))
                              (let ((_%e169530170211%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl169529170208%_))))
                                (let ((_%tl169532170216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169530170211%_)))
                                      (_%hd169531170214%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169530170211%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl169532170216%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169526170200%_))
                                          (let ((_%e169533170219%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169526170200%_))))
                                            (let ((_%tl169535170224%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169533170219%_)))
                                                  (_%hd169534170222%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169533170219%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169534170222%_))
                                                  (let ((_%e169536170227%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169534170222%_))))
                                                    (let ((_%tl169538170232%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169536170227%_)))
                                                          (_%hd169537170230%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169536170227%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd169537170230%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd169537170230%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169538170232%_))
                          (let ((_%e169539170235%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169538170232%_))))
                            (let ((_%tl169541170240%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169539170235%_)))
                                  (_%hd169540170238%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169539170235%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl169541170240%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl169535170224%_))
                                      (let ((_%__splice173907173908%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl169535170224%_
                                                '0))))
                                        (let ((_%tl169544170245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice173907173908%_
                                                  '1)))
                                              (_%target169542170243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice173907173908%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169544170245%_))
                                              (_%__match174114174115%_
                                               _%e169503170139%_
                                               _%hd169504170142%_
                                               _%tl169505170144%_
                                               _%e169506170147%_
                                               _%hd169507170150%_
                                               _%tl169508170152%_
                                               _%e169509170155%_
                                               _%hd169510170158%_
                                               _%tl169511170160%_
                                               _%e169512170163%_
                                               _%hd169513170166%_
                                               _%tl169514170168%_
                                               _%e169515170171%_
                                               _%hd169516170174%_
                                               _%tl169517170176%_
                                               _%e169518170179%_
                                               _%hd169519170182%_
                                               _%tl169520170184%_
                                               _%e169521170187%_
                                               _%hd169522170190%_
                                               _%tl169523170192%_
                                               _%e169524170195%_
                                               _%hd169525170198%_
                                               _%tl169526170200%_
                                               _%e169527170203%_
                                               _%hd169528170206%_
                                               _%tl169529170208%_
                                               _%e169530170211%_
                                               _%hd169531170214%_
                                               _%tl169532170216%_
                                               _%e169533170219%_
                                               _%hd169534170222%_
                                               _%tl169535170224%_
                                               _%e169536170227%_
                                               _%hd169537170230%_
                                               _%tl169538170232%_
                                               _%e169539170235%_
                                               _%hd169540170238%_
                                               _%tl169541170240%_
                                               _%__splice173907173908%_
                                               _%target169542170243%_
                                               _%tl169544170245%_)
                                              (_%__kont173917173918%_))))
                                      (_%__kont173917173918%_))
                                  (_%__kont173917173918%_))))
                          (_%__kont173917173918%_))
                      (_%__kont173917173918%_))
                  (_%__kont173917173918%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont173917173918%_))))
                                          (_%__match174396174397%_
                                           _%e169503170139%_
                                           _%hd169504170142%_
                                           _%tl169505170144%_
                                           _%e169506170147%_
                                           _%hd169507170150%_
                                           _%tl169508170152%_
                                           _%e169509170155%_
                                           _%hd169510170158%_
                                           _%tl169511170160%_
                                           _%e169512170163%_
                                           _%hd169513170166%_
                                           _%tl169514170168%_
                                           _%e169515170171%_
                                           _%hd169516170174%_
                                           _%tl169517170176%_
                                           _%e169518170179%_
                                           _%hd169519170182%_
                                           _%tl169520170184%_
                                           _%e169521170187%_
                                           _%hd169522170190%_
                                           _%tl169523170192%_
                                           _%e169524170195%_
                                           _%hd169525170198%_
                                           _%tl169526170200%_))
                                      (_%__match174396174397%_
                                       _%e169503170139%_
                                       _%hd169504170142%_
                                       _%tl169505170144%_
                                       _%e169506170147%_
                                       _%hd169507170150%_
                                       _%tl169508170152%_
                                       _%e169509170155%_
                                       _%hd169510170158%_
                                       _%tl169511170160%_
                                       _%e169512170163%_
                                       _%hd169513170166%_
                                       _%tl169514170168%_
                                       _%e169515170171%_
                                       _%hd169516170174%_
                                       _%tl169517170176%_
                                       _%e169518170179%_
                                       _%hd169519170182%_
                                       _%tl169520170184%_
                                       _%e169521170187%_
                                       _%hd169522170190%_
                                       _%tl169523170192%_
                                       _%e169524170195%_
                                       _%hd169525170198%_
                                       _%tl169526170200%_))))
                              (_%__match174396174397%_
                               _%e169503170139%_
                               _%hd169504170142%_
                               _%tl169505170144%_
                               _%e169506170147%_
                               _%hd169507170150%_
                               _%tl169508170152%_
                               _%e169509170155%_
                               _%hd169510170158%_
                               _%tl169511170160%_
                               _%e169512170163%_
                               _%hd169513170166%_
                               _%tl169514170168%_
                               _%e169515170171%_
                               _%hd169516170174%_
                               _%tl169517170176%_
                               _%e169518170179%_
                               _%hd169519170182%_
                               _%tl169520170184%_
                               _%e169521170187%_
                               _%hd169522170190%_
                               _%tl169523170192%_
                               _%e169524170195%_
                               _%hd169525170198%_
                               _%tl169526170200%_))
                          (_%__match174182174183%_
                           _%e169503170139%_
                           _%hd169504170142%_
                           _%tl169505170144%_
                           _%e169506170147%_
                           _%hd169507170150%_
                           _%tl169508170152%_
                           _%e169509170155%_
                           _%hd169510170158%_
                           _%tl169511170160%_
                           _%e169512170163%_
                           _%hd169513170166%_
                           _%tl169514170168%_
                           _%e169515170171%_
                           _%hd169516170174%_
                           _%tl169517170176%_
                           _%e169518170179%_
                           _%hd169519170182%_
                           _%tl169520170184%_
                           _%e169521170187%_
                           _%hd169522170190%_
                           _%tl169523170192%_
                           _%e169524170195%_
                           _%hd169525170198%_
                           _%tl169526170200%_
                           _%e169527170203%_
                           _%hd169528170206%_
                           _%tl169529170208%_))))
                   (_%__match174004174005%_
                    (lambda (_%e169459170328%_
                             _%hd169460170331%_
                             _%tl169461170333%_
                             _%e169462170336%_
                             _%hd169463170339%_
                             _%tl169464170341%_
                             _%e169465170344%_
                             _%hd169466170347%_
                             _%tl169467170349%_
                             _%e169468170352%_
                             _%hd169469170355%_
                             _%tl169470170357%_
                             _%e169471170360%_
                             _%hd169472170363%_
                             _%tl169473170365%_
                             _%e169474170368%_
                             _%hd169475170371%_
                             _%tl169476170373%_
                             _%e169477170376%_
                             _%hd169478170379%_
                             _%tl169479170381%_
                             _%e169480170384%_
                             _%hd169481170387%_
                             _%tl169482170389%_
                             _%e169483170392%_
                             _%hd169484170395%_
                             _%tl169485170397%_
                             _%e169486170400%_
                             _%hd169487170403%_
                             _%tl169488170405%_
                             _%__splice173903173904%_
                             _%target169489170408%_
                             _%tl169491170410%_)
                      (letrec ((_%loop169492170413%_
                                (lambda (_%hd169490170416%_
                                         _%args169496170418%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd169490170416%_))
                                      (let ((_%e169493170421%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd169490170416%_))))
                                        (let ((_%lp-tl169495170426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169493170421%_)))
                                              (_%lp-hd169494170424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169493170421%_))))
                                          (_%loop169492170413%_
                                           _%lp-tl169495170426%_
                                           (cons _%lp-hd169494170424%_
                                                 _%args169496170418%_))))
                                      (let ((_%args169497170429%_
                                             (reverse _%args169496170418%_)))
                                        (let ((_%L170432%_
                                               _%args169497170429%_)
                                              (_%L170433%_ _%hd169487170403%_)
                                              (_%L170434%_ _%hd169478170379%_)
                                              (_%L170435%_ _%hd169469170355%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L170435%_
                                                      'call-method))
                                                   (let ((__tmp175030
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self169444%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L170434%_
                                                      __tmp175030)))
                                              (_%__kont173901173902%_
                                               _%L170432%_
                                               _%L170433%_
                                               _%L170434%_
                                               _%L170435%_)
                                              (_%__match174192174193%_
                                               _%e169459170328%_
                                               _%hd169460170331%_
                                               _%tl169461170333%_
                                               _%e169462170336%_
                                               _%hd169463170339%_
                                               _%tl169464170341%_
                                               _%e169465170344%_
                                               _%hd169466170347%_
                                               _%tl169467170349%_
                                               _%e169468170352%_
                                               _%hd169469170355%_
                                               _%tl169470170357%_
                                               _%e169471170360%_
                                               _%hd169472170363%_
                                               _%tl169473170365%_
                                               _%e169474170368%_
                                               _%hd169475170371%_
                                               _%tl169476170373%_
                                               _%e169477170376%_
                                               _%hd169478170379%_
                                               _%tl169479170381%_
                                               _%e169480170384%_
                                               _%hd169481170387%_
                                               _%tl169482170389%_
                                               _%e169483170392%_
                                               _%hd169484170395%_
                                               _%tl169485170397%_
                                               _%e169486170400%_
                                               _%hd169487170403%_
                                               _%tl169488170405%_))))))))
                        (_%loop169492170413%_ _%target169489170408%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx173899173900%_))
                  (let ((_%e169459170328%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx173899173900%_))))
                    (let ((_%tl169461170333%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169459170328%_)))
                          (_%hd169460170331%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169459170328%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169461170333%_))
                          (let ((_%e169462170336%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169461170333%_))))
                            (let ((_%tl169464170341%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169462170336%_)))
                                  (_%hd169463170339%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169462170336%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169463170339%_))
                                  (let ((_%e169465170344%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169463170339%_))))
                                    (let ((_%tl169467170349%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169465170344%_)))
                                          (_%hd169466170347%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169465170344%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd169466170347%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd169466170347%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl169467170349%_))
                                                  (let ((_%e169468170352%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl169467170349%_))))
                                                    (let ((_%tl169470170357%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169468170352%_)))
                                                          (_%hd169469170355%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169468170352%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169470170357%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169464170341%_))
                      (let ((_%e169471170360%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169464170341%_))))
                        (let ((_%tl169473170365%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169471170360%_)))
                              (_%hd169472170363%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169471170360%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169472170363%_))
                              (let ((_%e169474170368%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169472170363%_))))
                                (let ((_%tl169476170373%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169474170368%_)))
                                      (_%hd169475170371%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169474170368%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd169475170371%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd169475170371%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl169476170373%_))
                                              (let ((_%e169477170376%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl169476170373%_))))
                                                (let ((_%tl169479170381%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169477170376%_)))
                                                      (_%hd169478170379%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169477170376%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169479170381%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl169473170365%_))
                                                          (let ((_%e169480170384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl169473170365%_))))
                    (let ((_%tl169482170389%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169480170384%_)))
                          (_%hd169481170387%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169480170384%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd169481170387%_))
                          (let ((_%e169483170392%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd169481170387%_))))
                            (let ((_%tl169485170397%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169483170392%_)))
                                  (_%hd169484170395%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169483170392%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd169484170395%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd169484170395%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169485170397%_))
                                          (let ((_%e169486170400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169485170397%_))))
                                            (let ((_%tl169488170405%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169486170400%_)))
                                                  (_%hd169487170403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169486170400%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl169488170405%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl169482170389%_))
                                                      (let ((_%__splice173903173904%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl169482170389%_ '0))))
                (let ((_%tl169491170410%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice173903173904%_ '1)))
                      (_%target169489170408%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice173903173904%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl169491170410%_))
                      (_%__match174004174005%_
                       _%e169459170328%_
                       _%hd169460170331%_
                       _%tl169461170333%_
                       _%e169462170336%_
                       _%hd169463170339%_
                       _%tl169464170341%_
                       _%e169465170344%_
                       _%hd169466170347%_
                       _%tl169467170349%_
                       _%e169468170352%_
                       _%hd169469170355%_
                       _%tl169470170357%_
                       _%e169471170360%_
                       _%hd169472170363%_
                       _%tl169473170365%_
                       _%e169474170368%_
                       _%hd169475170371%_
                       _%tl169476170373%_
                       _%e169477170376%_
                       _%hd169478170379%_
                       _%tl169479170381%_
                       _%e169480170384%_
                       _%hd169481170387%_
                       _%tl169482170389%_
                       _%e169483170392%_
                       _%hd169484170395%_
                       _%tl169485170397%_
                       _%e169486170400%_
                       _%hd169487170403%_
                       _%tl169488170405%_
                       _%__splice173903173904%_
                       _%target169489170408%_
                       _%tl169491170410%_)
                      (_%__match174192174193%_
                       _%e169459170328%_
                       _%hd169460170331%_
                       _%tl169461170333%_
                       _%e169462170336%_
                       _%hd169463170339%_
                       _%tl169464170341%_
                       _%e169465170344%_
                       _%hd169466170347%_
                       _%tl169467170349%_
                       _%e169468170352%_
                       _%hd169469170355%_
                       _%tl169470170357%_
                       _%e169471170360%_
                       _%hd169472170363%_
                       _%tl169473170365%_
                       _%e169474170368%_
                       _%hd169475170371%_
                       _%tl169476170373%_
                       _%e169477170376%_
                       _%hd169478170379%_
                       _%tl169479170381%_
                       _%e169480170384%_
                       _%hd169481170387%_
                       _%tl169482170389%_
                       _%e169483170392%_
                       _%hd169484170395%_
                       _%tl169485170397%_
                       _%e169486170400%_
                       _%hd169487170403%_
                       _%tl169488170405%_))))
              (_%__match174192174193%_
               _%e169459170328%_
               _%hd169460170331%_
               _%tl169461170333%_
               _%e169462170336%_
               _%hd169463170339%_
               _%tl169464170341%_
               _%e169465170344%_
               _%hd169466170347%_
               _%tl169467170349%_
               _%e169468170352%_
               _%hd169469170355%_
               _%tl169470170357%_
               _%e169471170360%_
               _%hd169472170363%_
               _%tl169473170365%_
               _%e169474170368%_
               _%hd169475170371%_
               _%tl169476170373%_
               _%e169477170376%_
               _%hd169478170379%_
               _%tl169479170381%_
               _%e169480170384%_
               _%hd169481170387%_
               _%tl169482170389%_
               _%e169483170392%_
               _%hd169484170395%_
               _%tl169485170397%_
               _%e169486170400%_
               _%hd169487170403%_
               _%tl169488170405%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match174396174397%_
                                                   _%e169459170328%_
                                                   _%hd169460170331%_
                                                   _%tl169461170333%_
                                                   _%e169462170336%_
                                                   _%hd169463170339%_
                                                   _%tl169464170341%_
                                                   _%e169465170344%_
                                                   _%hd169466170347%_
                                                   _%tl169467170349%_
                                                   _%e169468170352%_
                                                   _%hd169469170355%_
                                                   _%tl169470170357%_
                                                   _%e169471170360%_
                                                   _%hd169472170363%_
                                                   _%tl169473170365%_
                                                   _%e169474170368%_
                                                   _%hd169475170371%_
                                                   _%tl169476170373%_
                                                   _%e169477170376%_
                                                   _%hd169478170379%_
                                                   _%tl169479170381%_
                                                   _%e169480170384%_
                                                   _%hd169481170387%_
                                                   _%tl169482170389%_))))
                                          (_%__match174396174397%_
                                           _%e169459170328%_
                                           _%hd169460170331%_
                                           _%tl169461170333%_
                                           _%e169462170336%_
                                           _%hd169463170339%_
                                           _%tl169464170341%_
                                           _%e169465170344%_
                                           _%hd169466170347%_
                                           _%tl169467170349%_
                                           _%e169468170352%_
                                           _%hd169469170355%_
                                           _%tl169470170357%_
                                           _%e169471170360%_
                                           _%hd169472170363%_
                                           _%tl169473170365%_
                                           _%e169474170368%_
                                           _%hd169475170371%_
                                           _%tl169476170373%_
                                           _%e169477170376%_
                                           _%hd169478170379%_
                                           _%tl169479170381%_
                                           _%e169480170384%_
                                           _%hd169481170387%_
                                           _%tl169482170389%_))
                                      (_%__match174072174073%_
                                       _%e169459170328%_
                                       _%hd169460170331%_
                                       _%tl169461170333%_
                                       _%e169462170336%_
                                       _%hd169463170339%_
                                       _%tl169464170341%_
                                       _%e169465170344%_
                                       _%hd169466170347%_
                                       _%tl169467170349%_
                                       _%e169468170352%_
                                       _%hd169469170355%_
                                       _%tl169470170357%_
                                       _%e169471170360%_
                                       _%hd169472170363%_
                                       _%tl169473170365%_
                                       _%e169474170368%_
                                       _%hd169475170371%_
                                       _%tl169476170373%_
                                       _%e169477170376%_
                                       _%hd169478170379%_
                                       _%tl169479170381%_
                                       _%e169480170384%_
                                       _%hd169481170387%_
                                       _%tl169482170389%_
                                       _%e169483170392%_
                                       _%hd169484170395%_
                                       _%tl169485170397%_))
                                  (_%__match174396174397%_
                                   _%e169459170328%_
                                   _%hd169460170331%_
                                   _%tl169461170333%_
                                   _%e169462170336%_
                                   _%hd169463170339%_
                                   _%tl169464170341%_
                                   _%e169465170344%_
                                   _%hd169466170347%_
                                   _%tl169467170349%_
                                   _%e169468170352%_
                                   _%hd169469170355%_
                                   _%tl169470170357%_
                                   _%e169471170360%_
                                   _%hd169472170363%_
                                   _%tl169473170365%_
                                   _%e169474170368%_
                                   _%hd169475170371%_
                                   _%tl169476170373%_
                                   _%e169477170376%_
                                   _%hd169478170379%_
                                   _%tl169479170381%_
                                   _%e169480170384%_
                                   _%hd169481170387%_
                                   _%tl169482170389%_))))
                          (_%__match174396174397%_
                           _%e169459170328%_
                           _%hd169460170331%_
                           _%tl169461170333%_
                           _%e169462170336%_
                           _%hd169463170339%_
                           _%tl169464170341%_
                           _%e169465170344%_
                           _%hd169466170347%_
                           _%tl169467170349%_
                           _%e169468170352%_
                           _%hd169469170355%_
                           _%tl169470170357%_
                           _%e169471170360%_
                           _%hd169472170363%_
                           _%tl169473170365%_
                           _%e169474170368%_
                           _%hd169475170371%_
                           _%tl169476170373%_
                           _%e169477170376%_
                           _%hd169478170379%_
                           _%tl169479170381%_
                           _%e169480170384%_
                           _%hd169481170387%_
                           _%tl169482170389%_))))
                  (_%__match174334174335%_
                   _%e169459170328%_
                   _%hd169460170331%_
                   _%tl169461170333%_
                   _%e169462170336%_
                   _%hd169463170339%_
                   _%tl169464170341%_
                   _%e169465170344%_
                   _%hd169466170347%_
                   _%tl169467170349%_
                   _%e169468170352%_
                   _%hd169469170355%_
                   _%tl169470170357%_
                   _%e169471170360%_
                   _%hd169472170363%_
                   _%tl169473170365%_
                   _%e169474170368%_
                   _%hd169475170371%_
                   _%tl169476170373%_
                   _%e169477170376%_
                   _%hd169478170379%_
                   _%tl169479170381%_))
              (_%__kont173917173918%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont173917173918%_))
                                          (_%__kont173917173918%_))
                                      (_%__kont173917173918%_))))
                              (_%__kont173917173918%_))))
                      (_%__kont173917173918%_))
                  (_%__kont173917173918%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont173917173918%_))
                                              (_%__kont173917173918%_))
                                          (_%__kont173917173918%_))))
                                  (_%__kont173917173918%_))))
                          (_%__kont173917173918%_))))
                  (_%__kont173917173918%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self168383%_ _%stx168384%_)
        (letrec ((_%force-e168386%_
                  (lambda (_%target169442%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target169442%_ '()))
                                      '()))))))
          (let* ((_%__stx174401174402%_ _%stx168384%_)
                 (_%g168394168616%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx174401174402%_)))))
            (let ((_%__kont174403174404%_
                   (lambda (_%L169388%_ _%L169389%_ _%L169390%_ _%L169391%_)
                     (let ((_%$method169436%_
                            (let ((__tmp175032
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self168383%_ 'methods)))
                                  (__tmp175031
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L169389%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp175032 __tmp175031)))
                           (_%args169437%_
                            (map (lambda (_%g169424169426%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self168383%_
                                      _%g169424169426%_)))
                                 (let ((__tmp175033
                                        (lambda (_%g169428169431%_
                                                 _%g169429169433%_)
                                          (cons _%g169428169431%_
                                                _%g169429169433%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp175033 '() _%L169388%_)))))
                       (let ((__tmp175034
                              (cons '%#call
                                    (cons (_%force-e168386%_ _%$method169436%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self168383%_
                                                               'receiver))
                                                            '()))
                                                _%args169437%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp175034 _%stx168384%_)))))
                  (_%__kont174407174408%_
                   (lambda (_%L169220%_
                            _%L169221%_
                            _%L169222%_
                            _%L169223%_
                            _%L169224%_)
                     (let ((_%$method169276%_
                            (let ((__tmp175036
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self168383%_ 'methods)))
                                  (__tmp175035
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L169221%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp175036 __tmp175035)))
                           (_%args169277%_
                            (map (lambda (_%g169264169266%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self168383%_
                                      _%g169264169266%_)))
                                 (let ((__tmp175037
                                        (lambda (_%g169268169271%_
                                                 _%g169269169273%_)
                                          (cons _%g169268169271%_
                                                _%g169269169273%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp175037 '() _%L169220%_)))))
                       (let ((__tmp175038
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e168386%_
                                                 _%$method169276%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self168383%_ 'receiver))
                          '()))
              _%args169277%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp175038 _%stx168384%_)))))
                  (_%__kont174411174412%_
                   (lambda (_%L169051%_ _%L169052%_ _%L169053%_)
                     (let* ((_%$field169085%_
                             (let ((__tmp175040
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self168383%_ 'slots)))
                                   (__tmp175039
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L169051%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp175040 __tmp175039)))
                            (__tmp175041
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self168383%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field169085%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self168383%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp175041 _%stx168384%_))))
                  (_%__kont174413174414%_
                   (lambda (_%L168925%_ _%L168926%_ _%L168927%_ _%L168928%_)
                     (let ((_%$field168963%_
                            (let ((__tmp175043
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self168383%_ 'slots)))
                                  (__tmp175042
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L168926%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp175043 __tmp175042)))
                           (_%expr168964%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self168383%_ _%L168925%_))))
                       (let ((__tmp175044
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self168383%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field168963%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self168383%_ 'receiver))
                          '()))
              (cons _%expr168964%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp175044 _%stx168384%_)))))
                  (_%__kont174415174416%_
                   (lambda (_%L168797%_ _%L168798%_)
                     (let* ((_%accessor168820%_
                             (let ((__tmp175045
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L168798%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp175045)))
                            (_%klass168822%_
                             (let ((__tmp175046
                                    (##structure-ref
                                     _%accessor168820%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx168384%_
                                __tmp175046)))
                            (_%slot168824%_
                             (##structure-ref
                              _%accessor168820%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor168820%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass168822%_
                                      _%slot168824%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass168822%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx168384%_
                           (let* ((_%$field168830%_
                                   (let ((__tmp175047
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self168383%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp175047 _%slot168824%_)))
                                  (__tmp175048
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self168383%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field168830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self168383%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp175048
                              _%stx168384%_))))))
                  (_%__kont174417174418%_
                   (lambda (_%L168692%_ _%L168693%_ _%L168694%_)
                     (let* ((_%mutator168722%_
                             (let ((__tmp175049
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L168694%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp175049)))
                            (_%klass168724%_
                             (let ((__tmp175050
                                    (##structure-ref
                                     _%mutator168722%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx168384%_
                                __tmp175050)))
                            (_%slot168726%_
                             (##structure-ref
                              _%mutator168722%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr168728%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self168383%_ _%L168692%_))))
                       (if (if (##structure-ref
                                _%mutator168722%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass168724%_
                                      _%slot168726%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass168724%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp175051
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L168694%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L168693%_
                                                                '()))
                                                    (cons _%expr168728%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp175051 _%stx168384%_))
                           (let* ((_%$field168734%_
                                   (let ((__tmp175052
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self168383%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp175052 _%slot168726%_)))
                                  (__tmp175053
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self168383%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field168734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self168383%_ 'receiver))
                               '()))
                   (cons _%expr168728%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp175053
                              _%stx168384%_))))))
                  (_%__kont174419174420%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self168383%_ _%stx168384%_)))))
              (let* ((_%__match174900174901%_
                      (lambda (_%e168588168628%_
                               _%hd168589168631%_
                               _%tl168590168633%_
                               _%e168591168636%_
                               _%hd168592168639%_
                               _%tl168593168641%_
                               _%e168594168644%_
                               _%hd168595168647%_
                               _%tl168596168649%_
                               _%e168597168652%_
                               _%hd168598168655%_
                               _%tl168599168657%_
                               _%e168600168660%_
                               _%hd168601168663%_
                               _%tl168602168665%_
                               _%e168603168668%_
                               _%hd168604168671%_
                               _%tl168605168673%_
                               _%e168606168676%_
                               _%hd168607168679%_
                               _%tl168608168681%_
                               _%e168609168684%_
                               _%hd168610168687%_
                               _%tl168611168689%_)
                        (let ((_%L168692%_ _%hd168610168687%_)
                              (_%L168693%_ _%hd168607168679%_)
                              (_%L168694%_ _%hd168598168655%_))
                          (if (and (let ((__tmp175054
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self168383%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L168693%_
                                      __tmp175054))
                                   (let ((__tmp175055
                                          (let ((__tmp175056
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L168694%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp175056))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp175055
                                      'gxc#!mutator::t)))
                              (_%__kont174417174418%_
                               _%L168692%_
                               _%L168693%_
                               _%L168694%_)
                              (_%__kont174419174420%_)))))
                     (_%__match174898174899%_
                      (lambda (_%e168588168628%_
                               _%hd168589168631%_
                               _%tl168590168633%_
                               _%e168591168636%_
                               _%hd168592168639%_
                               _%tl168593168641%_
                               _%e168594168644%_
                               _%hd168595168647%_
                               _%tl168596168649%_
                               _%e168597168652%_
                               _%hd168598168655%_
                               _%tl168599168657%_
                               _%e168600168660%_
                               _%hd168601168663%_
                               _%tl168602168665%_
                               _%e168603168668%_
                               _%hd168604168671%_
                               _%tl168605168673%_
                               _%e168606168676%_
                               _%hd168607168679%_
                               _%tl168608168681%_
                               _%e168609168684%_
                               _%hd168610168687%_
                               _%tl168611168689%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl168611168689%_))
                            (_%__match174900174901%_
                             _%e168588168628%_
                             _%hd168589168631%_
                             _%tl168590168633%_
                             _%e168591168636%_
                             _%hd168592168639%_
                             _%tl168593168641%_
                             _%e168594168644%_
                             _%hd168595168647%_
                             _%tl168596168649%_
                             _%e168597168652%_
                             _%hd168598168655%_
                             _%tl168599168657%_
                             _%e168600168660%_
                             _%hd168601168663%_
                             _%tl168602168665%_
                             _%e168603168668%_
                             _%hd168604168671%_
                             _%tl168605168673%_
                             _%e168606168676%_
                             _%hd168607168679%_
                             _%tl168608168681%_
                             _%e168609168684%_
                             _%hd168610168687%_
                             _%tl168611168689%_)
                            (_%__kont174419174420%_))))
                     (_%__match174892174893%_
                      (lambda (_%e168588168628%_
                               _%hd168589168631%_
                               _%tl168590168633%_
                               _%e168591168636%_
                               _%hd168592168639%_
                               _%tl168593168641%_
                               _%e168594168644%_
                               _%hd168595168647%_
                               _%tl168596168649%_
                               _%e168597168652%_
                               _%hd168598168655%_
                               _%tl168599168657%_
                               _%e168600168660%_
                               _%hd168601168663%_
                               _%tl168602168665%_
                               _%e168603168668%_
                               _%hd168604168671%_
                               _%tl168605168673%_
                               _%e168606168676%_
                               _%hd168607168679%_
                               _%tl168608168681%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl168602168665%_))
                            (let ((_%e168609168684%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl168602168665%_))))
                              (let ((_%tl168611168689%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168609168684%_)))
                                    (_%hd168610168687%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168609168684%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl168611168689%_))
                                    (_%__match174900174901%_
                                     _%e168588168628%_
                                     _%hd168589168631%_
                                     _%tl168590168633%_
                                     _%e168591168636%_
                                     _%hd168592168639%_
                                     _%tl168593168641%_
                                     _%e168594168644%_
                                     _%hd168595168647%_
                                     _%tl168596168649%_
                                     _%e168597168652%_
                                     _%hd168598168655%_
                                     _%tl168599168657%_
                                     _%e168600168660%_
                                     _%hd168601168663%_
                                     _%tl168602168665%_
                                     _%e168603168668%_
                                     _%hd168604168671%_
                                     _%tl168605168673%_
                                     _%e168606168676%_
                                     _%hd168607168679%_
                                     _%tl168608168681%_
                                     _%e168609168684%_
                                     _%hd168610168687%_
                                     _%tl168611168689%_)
                                    (_%__kont174419174420%_))))
                            (_%__kont174419174420%_))))
                     (_%__match174838174839%_
                      (lambda (_%e168564168741%_
                               _%hd168565168744%_
                               _%tl168566168746%_
                               _%e168567168749%_
                               _%hd168568168752%_
                               _%tl168569168754%_
                               _%e168570168757%_
                               _%hd168571168760%_
                               _%tl168572168762%_
                               _%e168573168765%_
                               _%hd168574168768%_
                               _%tl168575168770%_
                               _%e168576168773%_
                               _%hd168577168776%_
                               _%tl168578168778%_
                               _%e168579168781%_
                               _%hd168580168784%_
                               _%tl168581168786%_
                               _%e168582168789%_
                               _%hd168583168792%_
                               _%tl168584168794%_)
                        (let ((_%L168797%_ _%hd168583168792%_)
                              (_%L168798%_ _%hd168574168768%_))
                          (if (and (let ((__tmp175057
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self168383%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L168797%_
                                      __tmp175057))
                                   (let ((__tmp175058
                                          (let ((__tmp175059
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L168798%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp175059))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp175058
                                      'gxc#!accessor::t)))
                              (_%__kont174415174416%_ _%L168797%_ _%L168798%_)
                              (_%__kont174419174420%_)))))
                     (_%__match174836174837%_
                      (lambda (_%e168564168741%_
                               _%hd168565168744%_
                               _%tl168566168746%_
                               _%e168567168749%_
                               _%hd168568168752%_
                               _%tl168569168754%_
                               _%e168570168757%_
                               _%hd168571168760%_
                               _%tl168572168762%_
                               _%e168573168765%_
                               _%hd168574168768%_
                               _%tl168575168770%_
                               _%e168576168773%_
                               _%hd168577168776%_
                               _%tl168578168778%_
                               _%e168579168781%_
                               _%hd168580168784%_
                               _%tl168581168786%_
                               _%e168582168789%_
                               _%hd168583168792%_
                               _%tl168584168794%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl168578168778%_))
                            (_%__match174838174839%_
                             _%e168564168741%_
                             _%hd168565168744%_
                             _%tl168566168746%_
                             _%e168567168749%_
                             _%hd168568168752%_
                             _%tl168569168754%_
                             _%e168570168757%_
                             _%hd168571168760%_
                             _%tl168572168762%_
                             _%e168573168765%_
                             _%hd168574168768%_
                             _%tl168575168770%_
                             _%e168576168773%_
                             _%hd168577168776%_
                             _%tl168578168778%_
                             _%e168579168781%_
                             _%hd168580168784%_
                             _%tl168581168786%_
                             _%e168582168789%_
                             _%hd168583168792%_
                             _%tl168584168794%_)
                            (_%__match174892174893%_
                             _%e168564168741%_
                             _%hd168565168744%_
                             _%tl168566168746%_
                             _%e168567168749%_
                             _%hd168568168752%_
                             _%tl168569168754%_
                             _%e168570168757%_
                             _%hd168571168760%_
                             _%tl168572168762%_
                             _%e168573168765%_
                             _%hd168574168768%_
                             _%tl168575168770%_
                             _%e168576168773%_
                             _%hd168577168776%_
                             _%tl168578168778%_
                             _%e168579168781%_
                             _%hd168580168784%_
                             _%tl168581168786%_
                             _%e168582168789%_
                             _%hd168583168792%_
                             _%tl168584168794%_))))
                     (_%__match174782174783%_
                      (lambda (_%e168529168837%_
                               _%hd168530168840%_
                               _%tl168531168842%_
                               _%e168532168845%_
                               _%hd168533168848%_
                               _%tl168534168850%_
                               _%e168535168853%_
                               _%hd168536168856%_
                               _%tl168537168858%_
                               _%e168538168861%_
                               _%hd168539168864%_
                               _%tl168540168866%_
                               _%e168541168869%_
                               _%hd168542168872%_
                               _%tl168543168874%_
                               _%e168544168877%_
                               _%hd168545168880%_
                               _%tl168546168882%_
                               _%e168547168885%_
                               _%hd168548168888%_
                               _%tl168549168890%_
                               _%e168550168893%_
                               _%hd168551168896%_
                               _%tl168552168898%_
                               _%e168553168901%_
                               _%hd168554168904%_
                               _%tl168555168906%_
                               _%e168556168909%_
                               _%hd168557168912%_
                               _%tl168558168914%_
                               _%e168559168917%_
                               _%hd168560168920%_
                               _%tl168561168922%_)
                        (let ((_%L168925%_ _%hd168560168920%_)
                              (_%L168926%_ _%hd168557168912%_)
                              (_%L168927%_ _%hd168548168888%_)
                              (_%L168928%_ _%hd168539168864%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L168928%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L168928%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp175060
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self168383%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L168927%_
                                      __tmp175060)))
                              (_%__kont174413174414%_
                               _%L168925%_
                               _%L168926%_
                               _%L168927%_
                               _%L168928%_)
                              (_%__kont174419174420%_)))))
                     (_%__match174774174775%_
                      (lambda (_%e168529168837%_
                               _%hd168530168840%_
                               _%tl168531168842%_
                               _%e168532168845%_
                               _%hd168533168848%_
                               _%tl168534168850%_
                               _%e168535168853%_
                               _%hd168536168856%_
                               _%tl168537168858%_
                               _%e168538168861%_
                               _%hd168539168864%_
                               _%tl168540168866%_
                               _%e168541168869%_
                               _%hd168542168872%_
                               _%tl168543168874%_
                               _%e168544168877%_
                               _%hd168545168880%_
                               _%tl168546168882%_
                               _%e168547168885%_
                               _%hd168548168888%_
                               _%tl168549168890%_
                               _%e168550168893%_
                               _%hd168551168896%_
                               _%tl168552168898%_
                               _%e168553168901%_
                               _%hd168554168904%_
                               _%tl168555168906%_
                               _%e168556168909%_
                               _%hd168557168912%_
                               _%tl168558168914%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl168552168898%_))
                            (let ((_%e168559168917%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl168552168898%_))))
                              (let ((_%tl168561168922%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168559168917%_)))
                                    (_%hd168560168920%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168559168917%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl168561168922%_))
                                    (_%__match174782174783%_
                                     _%e168529168837%_
                                     _%hd168530168840%_
                                     _%tl168531168842%_
                                     _%e168532168845%_
                                     _%hd168533168848%_
                                     _%tl168534168850%_
                                     _%e168535168853%_
                                     _%hd168536168856%_
                                     _%tl168537168858%_
                                     _%e168538168861%_
                                     _%hd168539168864%_
                                     _%tl168540168866%_
                                     _%e168541168869%_
                                     _%hd168542168872%_
                                     _%tl168543168874%_
                                     _%e168544168877%_
                                     _%hd168545168880%_
                                     _%tl168546168882%_
                                     _%e168547168885%_
                                     _%hd168548168888%_
                                     _%tl168549168890%_
                                     _%e168550168893%_
                                     _%hd168551168896%_
                                     _%tl168552168898%_
                                     _%e168553168901%_
                                     _%hd168554168904%_
                                     _%tl168555168906%_
                                     _%e168556168909%_
                                     _%hd168557168912%_
                                     _%tl168558168914%_
                                     _%e168559168917%_
                                     _%hd168560168920%_
                                     _%tl168561168922%_)
                                    (_%__kont174419174420%_))))
                            (_%__match174898174899%_
                             _%e168529168837%_
                             _%hd168530168840%_
                             _%tl168531168842%_
                             _%e168532168845%_
                             _%hd168533168848%_
                             _%tl168534168850%_
                             _%e168535168853%_
                             _%hd168536168856%_
                             _%tl168537168858%_
                             _%e168538168861%_
                             _%hd168539168864%_
                             _%tl168540168866%_
                             _%e168541168869%_
                             _%hd168542168872%_
                             _%tl168543168874%_
                             _%e168544168877%_
                             _%hd168545168880%_
                             _%tl168546168882%_
                             _%e168547168885%_
                             _%hd168548168888%_
                             _%tl168549168890%_
                             _%e168550168893%_
                             _%hd168551168896%_
                             _%tl168552168898%_))))
                     (_%__match174696174697%_
                      (lambda (_%e168495168971%_
                               _%hd168496168974%_
                               _%tl168497168976%_
                               _%e168498168979%_
                               _%hd168499168982%_
                               _%tl168500168984%_
                               _%e168501168987%_
                               _%hd168502168990%_
                               _%tl168503168992%_
                               _%e168504168995%_
                               _%hd168505168998%_
                               _%tl168506169000%_
                               _%e168507169003%_
                               _%hd168508169006%_
                               _%tl168509169008%_
                               _%e168510169011%_
                               _%hd168511169014%_
                               _%tl168512169016%_
                               _%e168513169019%_
                               _%hd168514169022%_
                               _%tl168515169024%_
                               _%e168516169027%_
                               _%hd168517169030%_
                               _%tl168518169032%_
                               _%e168519169035%_
                               _%hd168520169038%_
                               _%tl168521169040%_
                               _%e168522169043%_
                               _%hd168523169046%_
                               _%tl168524169048%_)
                        (let ((_%L169051%_ _%hd168523169046%_)
                              (_%L169052%_ _%hd168514169022%_)
                              (_%L169053%_ _%hd168505168998%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L169053%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L169053%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp175061
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self168383%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L169052%_
                                      __tmp175061)))
                              (_%__kont174411174412%_
                               _%L169051%_
                               _%L169052%_
                               _%L169053%_)
                              (_%__match174900174901%_
                               _%e168495168971%_
                               _%hd168496168974%_
                               _%tl168497168976%_
                               _%e168498168979%_
                               _%hd168499168982%_
                               _%tl168500168984%_
                               _%e168501168987%_
                               _%hd168502168990%_
                               _%tl168503168992%_
                               _%e168504168995%_
                               _%hd168505168998%_
                               _%tl168506169000%_
                               _%e168507169003%_
                               _%hd168508169006%_
                               _%tl168509169008%_
                               _%e168510169011%_
                               _%hd168511169014%_
                               _%tl168512169016%_
                               _%e168513169019%_
                               _%hd168514169022%_
                               _%tl168515169024%_
                               _%e168516169027%_
                               _%hd168517169030%_
                               _%tl168518169032%_)))))
                     (_%__match174694174695%_
                      (lambda (_%e168495168971%_
                               _%hd168496168974%_
                               _%tl168497168976%_
                               _%e168498168979%_
                               _%hd168499168982%_
                               _%tl168500168984%_
                               _%e168501168987%_
                               _%hd168502168990%_
                               _%tl168503168992%_
                               _%e168504168995%_
                               _%hd168505168998%_
                               _%tl168506169000%_
                               _%e168507169003%_
                               _%hd168508169006%_
                               _%tl168509169008%_
                               _%e168510169011%_
                               _%hd168511169014%_
                               _%tl168512169016%_
                               _%e168513169019%_
                               _%hd168514169022%_
                               _%tl168515169024%_
                               _%e168516169027%_
                               _%hd168517169030%_
                               _%tl168518169032%_
                               _%e168519169035%_
                               _%hd168520169038%_
                               _%tl168521169040%_
                               _%e168522169043%_
                               _%hd168523169046%_
                               _%tl168524169048%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl168518169032%_))
                            (_%__match174696174697%_
                             _%e168495168971%_
                             _%hd168496168974%_
                             _%tl168497168976%_
                             _%e168498168979%_
                             _%hd168499168982%_
                             _%tl168500168984%_
                             _%e168501168987%_
                             _%hd168502168990%_
                             _%tl168503168992%_
                             _%e168504168995%_
                             _%hd168505168998%_
                             _%tl168506169000%_
                             _%e168507169003%_
                             _%hd168508169006%_
                             _%tl168509169008%_
                             _%e168510169011%_
                             _%hd168511169014%_
                             _%tl168512169016%_
                             _%e168513169019%_
                             _%hd168514169022%_
                             _%tl168515169024%_
                             _%e168516169027%_
                             _%hd168517169030%_
                             _%tl168518169032%_
                             _%e168519169035%_
                             _%hd168520169038%_
                             _%tl168521169040%_
                             _%e168522169043%_
                             _%hd168523169046%_
                             _%tl168524169048%_)
                            (_%__match174774174775%_
                             _%e168495168971%_
                             _%hd168496168974%_
                             _%tl168497168976%_
                             _%e168498168979%_
                             _%hd168499168982%_
                             _%tl168500168984%_
                             _%e168501168987%_
                             _%hd168502168990%_
                             _%tl168503168992%_
                             _%e168504168995%_
                             _%hd168505168998%_
                             _%tl168506169000%_
                             _%e168507169003%_
                             _%hd168508169006%_
                             _%tl168509169008%_
                             _%e168510169011%_
                             _%hd168511169014%_
                             _%tl168512169016%_
                             _%e168513169019%_
                             _%hd168514169022%_
                             _%tl168515169024%_
                             _%e168516169027%_
                             _%hd168517169030%_
                             _%tl168518169032%_
                             _%e168519169035%_
                             _%hd168520169038%_
                             _%tl168521169040%_
                             _%e168522169043%_
                             _%hd168523169046%_
                             _%tl168524169048%_))))
                     (_%__match174684174685%_
                      (lambda (_%e168495168971%_
                               _%hd168496168974%_
                               _%tl168497168976%_
                               _%e168498168979%_
                               _%hd168499168982%_
                               _%tl168500168984%_
                               _%e168501168987%_
                               _%hd168502168990%_
                               _%tl168503168992%_
                               _%e168504168995%_
                               _%hd168505168998%_
                               _%tl168506169000%_
                               _%e168507169003%_
                               _%hd168508169006%_
                               _%tl168509169008%_
                               _%e168510169011%_
                               _%hd168511169014%_
                               _%tl168512169016%_
                               _%e168513169019%_
                               _%hd168514169022%_
                               _%tl168515169024%_
                               _%e168516169027%_
                               _%hd168517169030%_
                               _%tl168518169032%_
                               _%e168519169035%_
                               _%hd168520169038%_
                               _%tl168521169040%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd168520169038%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl168521169040%_))
                                (let ((_%e168522169043%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl168521169040%_))))
                                  (let ((_%tl168524169048%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168522169043%_)))
                                        (_%hd168523169046%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168522169043%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl168524169048%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168518169032%_))
                                            (_%__match174696174697%_
                                             _%e168495168971%_
                                             _%hd168496168974%_
                                             _%tl168497168976%_
                                             _%e168498168979%_
                                             _%hd168499168982%_
                                             _%tl168500168984%_
                                             _%e168501168987%_
                                             _%hd168502168990%_
                                             _%tl168503168992%_
                                             _%e168504168995%_
                                             _%hd168505168998%_
                                             _%tl168506169000%_
                                             _%e168507169003%_
                                             _%hd168508169006%_
                                             _%tl168509169008%_
                                             _%e168510169011%_
                                             _%hd168511169014%_
                                             _%tl168512169016%_
                                             _%e168513169019%_
                                             _%hd168514169022%_
                                             _%tl168515169024%_
                                             _%e168516169027%_
                                             _%hd168517169030%_
                                             _%tl168518169032%_
                                             _%e168519169035%_
                                             _%hd168520169038%_
                                             _%tl168521169040%_
                                             _%e168522169043%_
                                             _%hd168523169046%_
                                             _%tl168524169048%_)
                                            (_%__match174774174775%_
                                             _%e168495168971%_
                                             _%hd168496168974%_
                                             _%tl168497168976%_
                                             _%e168498168979%_
                                             _%hd168499168982%_
                                             _%tl168500168984%_
                                             _%e168501168987%_
                                             _%hd168502168990%_
                                             _%tl168503168992%_
                                             _%e168504168995%_
                                             _%hd168505168998%_
                                             _%tl168506169000%_
                                             _%e168507169003%_
                                             _%hd168508169006%_
                                             _%tl168509169008%_
                                             _%e168510169011%_
                                             _%hd168511169014%_
                                             _%tl168512169016%_
                                             _%e168513169019%_
                                             _%hd168514169022%_
                                             _%tl168515169024%_
                                             _%e168516169027%_
                                             _%hd168517169030%_
                                             _%tl168518169032%_
                                             _%e168519169035%_
                                             _%hd168520169038%_
                                             _%tl168521169040%_
                                             _%e168522169043%_
                                             _%hd168523169046%_
                                             _%tl168524169048%_))
                                        (_%__match174898174899%_
                                         _%e168495168971%_
                                         _%hd168496168974%_
                                         _%tl168497168976%_
                                         _%e168498168979%_
                                         _%hd168499168982%_
                                         _%tl168500168984%_
                                         _%e168501168987%_
                                         _%hd168502168990%_
                                         _%tl168503168992%_
                                         _%e168504168995%_
                                         _%hd168505168998%_
                                         _%tl168506169000%_
                                         _%e168507169003%_
                                         _%hd168508169006%_
                                         _%tl168509169008%_
                                         _%e168510169011%_
                                         _%hd168511169014%_
                                         _%tl168512169016%_
                                         _%e168513169019%_
                                         _%hd168514169022%_
                                         _%tl168515169024%_
                                         _%e168516169027%_
                                         _%hd168517169030%_
                                         _%tl168518169032%_))))
                                (_%__match174898174899%_
                                 _%e168495168971%_
                                 _%hd168496168974%_
                                 _%tl168497168976%_
                                 _%e168498168979%_
                                 _%hd168499168982%_
                                 _%tl168500168984%_
                                 _%e168501168987%_
                                 _%hd168502168990%_
                                 _%tl168503168992%_
                                 _%e168504168995%_
                                 _%hd168505168998%_
                                 _%tl168506169000%_
                                 _%e168507169003%_
                                 _%hd168508169006%_
                                 _%tl168509169008%_
                                 _%e168510169011%_
                                 _%hd168511169014%_
                                 _%tl168512169016%_
                                 _%e168513169019%_
                                 _%hd168514169022%_
                                 _%tl168515169024%_
                                 _%e168516169027%_
                                 _%hd168517169030%_
                                 _%tl168518169032%_))
                            (_%__match174898174899%_
                             _%e168495168971%_
                             _%hd168496168974%_
                             _%tl168497168976%_
                             _%e168498168979%_
                             _%hd168499168982%_
                             _%tl168500168984%_
                             _%e168501168987%_
                             _%hd168502168990%_
                             _%tl168503168992%_
                             _%e168504168995%_
                             _%hd168505168998%_
                             _%tl168506169000%_
                             _%e168507169003%_
                             _%hd168508169006%_
                             _%tl168509169008%_
                             _%e168510169011%_
                             _%hd168511169014%_
                             _%tl168512169016%_
                             _%e168513169019%_
                             _%hd168514169022%_
                             _%tl168515169024%_
                             _%e168516169027%_
                             _%hd168517169030%_
                             _%tl168518169032%_))))
                     (_%__match174616174617%_
                      (lambda (_%e168444169092%_
                               _%hd168445169095%_
                               _%tl168446169097%_
                               _%e168447169100%_
                               _%hd168448169103%_
                               _%tl168449169105%_
                               _%e168450169108%_
                               _%hd168451169111%_
                               _%tl168452169113%_
                               _%e168453169116%_
                               _%hd168454169119%_
                               _%tl168455169121%_
                               _%e168456169124%_
                               _%hd168457169127%_
                               _%tl168458169129%_
                               _%e168459169132%_
                               _%hd168460169135%_
                               _%tl168461169137%_
                               _%e168462169140%_
                               _%hd168463169143%_
                               _%tl168464169145%_
                               _%e168465169148%_
                               _%hd168466169151%_
                               _%tl168467169153%_
                               _%e168468169156%_
                               _%hd168469169159%_
                               _%tl168470169161%_
                               _%e168471169164%_
                               _%hd168472169167%_
                               _%tl168473169169%_
                               _%e168474169172%_
                               _%hd168475169175%_
                               _%tl168476169177%_
                               _%e168477169180%_
                               _%hd168478169183%_
                               _%tl168479169185%_
                               _%e168480169188%_
                               _%hd168481169191%_
                               _%tl168482169193%_
                               _%__splice174409174410%_
                               _%target168483169196%_
                               _%tl168485169198%_)
                        (letrec ((_%loop168486169201%_
                                  (lambda (_%hd168484169204%_
                                           _%args168490169206%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd168484169204%_))
                                        (let ((_%e168487169209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd168484169204%_))))
                                          (let ((_%lp-tl168489169214%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168487169209%_)))
                                                (_%lp-hd168488169212%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168487169209%_))))
                                            (_%loop168486169201%_
                                             _%lp-tl168489169214%_
                                             (cons _%lp-hd168488169212%_
                                                   _%args168490169206%_))))
                                        (let ((_%args168491169217%_
                                               (reverse _%args168490169206%_)))
                                          (let ((_%L169220%_
                                                 _%args168491169217%_)
                                                (_%L169221%_
                                                 _%hd168481169191%_)
                                                (_%L169222%_
                                                 _%hd168472169167%_)
                                                (_%L169223%_
                                                 _%hd168463169143%_)
                                                (_%L169224%_
                                                 _%hd168454169119%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L169224%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L169223%_
                                                        'call-method))
                                                     (let ((__tmp175062
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self168383%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L169222%_
                                                        __tmp175062)))
                                                (_%__kont174407174408%_
                                                 _%L169220%_
                                                 _%L169221%_
                                                 _%L169222%_
                                                 _%L169223%_
                                                 _%L169224%_)
                                                (_%__kont174419174420%_))))))))
                          (_%loop168486169201%_ _%target168483169196%_ '()))))
                     (_%__match174574174575%_
                      (lambda (_%e168444169092%_
                               _%hd168445169095%_
                               _%tl168446169097%_
                               _%e168447169100%_
                               _%hd168448169103%_
                               _%tl168449169105%_
                               _%e168450169108%_
                               _%hd168451169111%_
                               _%tl168452169113%_
                               _%e168453169116%_
                               _%hd168454169119%_
                               _%tl168455169121%_
                               _%e168456169124%_
                               _%hd168457169127%_
                               _%tl168458169129%_
                               _%e168459169132%_
                               _%hd168460169135%_
                               _%tl168461169137%_
                               _%e168462169140%_
                               _%hd168463169143%_
                               _%tl168464169145%_
                               _%e168465169148%_
                               _%hd168466169151%_
                               _%tl168467169153%_
                               _%e168468169156%_
                               _%hd168469169159%_
                               _%tl168470169161%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd168469169159%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl168470169161%_))
                                (let ((_%e168471169164%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl168470169161%_))))
                                  (let ((_%tl168473169169%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168471169164%_)))
                                        (_%hd168472169167%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168471169164%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl168473169169%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl168467169153%_))
                                            (let ((_%e168474169172%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl168467169153%_))))
                                              (let ((_%tl168476169177%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168474169172%_)))
                                                    (_%hd168475169175%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168474169172%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd168475169175%_))
                                                    (let ((_%e168477169180%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd168475169175%_))))
                                                      (let ((_%tl168479169185%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e168477169180%_)))
                    (_%hd168478169183%_
                     (let () (declare (not safe)) (##car _%e168477169180%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd168478169183%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd168478169183%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl168479169185%_))
                            (let ((_%e168480169188%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl168479169185%_))))
                              (let ((_%tl168482169193%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168480169188%_)))
                                    (_%hd168481169191%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168480169188%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl168482169193%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl168476169177%_))
                                        (let ((_%__splice174409174410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl168476169177%_
                                                  '0))))
                                          (let ((_%tl168485169198%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice174409174410%_
                                                    '1)))
                                                (_%target168483169196%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice174409174410%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl168485169198%_))
                                                (_%__match174616174617%_
                                                 _%e168444169092%_
                                                 _%hd168445169095%_
                                                 _%tl168446169097%_
                                                 _%e168447169100%_
                                                 _%hd168448169103%_
                                                 _%tl168449169105%_
                                                 _%e168450169108%_
                                                 _%hd168451169111%_
                                                 _%tl168452169113%_
                                                 _%e168453169116%_
                                                 _%hd168454169119%_
                                                 _%tl168455169121%_
                                                 _%e168456169124%_
                                                 _%hd168457169127%_
                                                 _%tl168458169129%_
                                                 _%e168459169132%_
                                                 _%hd168460169135%_
                                                 _%tl168461169137%_
                                                 _%e168462169140%_
                                                 _%hd168463169143%_
                                                 _%tl168464169145%_
                                                 _%e168465169148%_
                                                 _%hd168466169151%_
                                                 _%tl168467169153%_
                                                 _%e168468169156%_
                                                 _%hd168469169159%_
                                                 _%tl168470169161%_
                                                 _%e168471169164%_
                                                 _%hd168472169167%_
                                                 _%tl168473169169%_
                                                 _%e168474169172%_
                                                 _%hd168475169175%_
                                                 _%tl168476169177%_
                                                 _%e168477169180%_
                                                 _%hd168478169183%_
                                                 _%tl168479169185%_
                                                 _%e168480169188%_
                                                 _%hd168481169191%_
                                                 _%tl168482169193%_
                                                 _%__splice174409174410%_
                                                 _%target168483169196%_
                                                 _%tl168485169198%_)
                                                (_%__kont174419174420%_))))
                                        (_%__kont174419174420%_))
                                    (_%__kont174419174420%_))))
                            (_%__kont174419174420%_))
                        (_%__kont174419174420%_))
                    (_%__kont174419174420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont174419174420%_))))
                                            (_%__match174898174899%_
                                             _%e168444169092%_
                                             _%hd168445169095%_
                                             _%tl168446169097%_
                                             _%e168447169100%_
                                             _%hd168448169103%_
                                             _%tl168449169105%_
                                             _%e168450169108%_
                                             _%hd168451169111%_
                                             _%tl168452169113%_
                                             _%e168453169116%_
                                             _%hd168454169119%_
                                             _%tl168455169121%_
                                             _%e168456169124%_
                                             _%hd168457169127%_
                                             _%tl168458169129%_
                                             _%e168459169132%_
                                             _%hd168460169135%_
                                             _%tl168461169137%_
                                             _%e168462169140%_
                                             _%hd168463169143%_
                                             _%tl168464169145%_
                                             _%e168465169148%_
                                             _%hd168466169151%_
                                             _%tl168467169153%_))
                                        (_%__match174898174899%_
                                         _%e168444169092%_
                                         _%hd168445169095%_
                                         _%tl168446169097%_
                                         _%e168447169100%_
                                         _%hd168448169103%_
                                         _%tl168449169105%_
                                         _%e168450169108%_
                                         _%hd168451169111%_
                                         _%tl168452169113%_
                                         _%e168453169116%_
                                         _%hd168454169119%_
                                         _%tl168455169121%_
                                         _%e168456169124%_
                                         _%hd168457169127%_
                                         _%tl168458169129%_
                                         _%e168459169132%_
                                         _%hd168460169135%_
                                         _%tl168461169137%_
                                         _%e168462169140%_
                                         _%hd168463169143%_
                                         _%tl168464169145%_
                                         _%e168465169148%_
                                         _%hd168466169151%_
                                         _%tl168467169153%_))))
                                (_%__match174898174899%_
                                 _%e168444169092%_
                                 _%hd168445169095%_
                                 _%tl168446169097%_
                                 _%e168447169100%_
                                 _%hd168448169103%_
                                 _%tl168449169105%_
                                 _%e168450169108%_
                                 _%hd168451169111%_
                                 _%tl168452169113%_
                                 _%e168453169116%_
                                 _%hd168454169119%_
                                 _%tl168455169121%_
                                 _%e168456169124%_
                                 _%hd168457169127%_
                                 _%tl168458169129%_
                                 _%e168459169132%_
                                 _%hd168460169135%_
                                 _%tl168461169137%_
                                 _%e168462169140%_
                                 _%hd168463169143%_
                                 _%tl168464169145%_
                                 _%e168465169148%_
                                 _%hd168466169151%_
                                 _%tl168467169153%_))
                            (_%__match174684174685%_
                             _%e168444169092%_
                             _%hd168445169095%_
                             _%tl168446169097%_
                             _%e168447169100%_
                             _%hd168448169103%_
                             _%tl168449169105%_
                             _%e168450169108%_
                             _%hd168451169111%_
                             _%tl168452169113%_
                             _%e168453169116%_
                             _%hd168454169119%_
                             _%tl168455169121%_
                             _%e168456169124%_
                             _%hd168457169127%_
                             _%tl168458169129%_
                             _%e168459169132%_
                             _%hd168460169135%_
                             _%tl168461169137%_
                             _%e168462169140%_
                             _%hd168463169143%_
                             _%tl168464169145%_
                             _%e168465169148%_
                             _%hd168466169151%_
                             _%tl168467169153%_
                             _%e168468169156%_
                             _%hd168469169159%_
                             _%tl168470169161%_))))
                     (_%__match174506174507%_
                      (lambda (_%e168400169284%_
                               _%hd168401169287%_
                               _%tl168402169289%_
                               _%e168403169292%_
                               _%hd168404169295%_
                               _%tl168405169297%_
                               _%e168406169300%_
                               _%hd168407169303%_
                               _%tl168408169305%_
                               _%e168409169308%_
                               _%hd168410169311%_
                               _%tl168411169313%_
                               _%e168412169316%_
                               _%hd168413169319%_
                               _%tl168414169321%_
                               _%e168415169324%_
                               _%hd168416169327%_
                               _%tl168417169329%_
                               _%e168418169332%_
                               _%hd168419169335%_
                               _%tl168420169337%_
                               _%e168421169340%_
                               _%hd168422169343%_
                               _%tl168423169345%_
                               _%e168424169348%_
                               _%hd168425169351%_
                               _%tl168426169353%_
                               _%e168427169356%_
                               _%hd168428169359%_
                               _%tl168429169361%_
                               _%__splice174405174406%_
                               _%target168430169364%_
                               _%tl168432169366%_)
                        (letrec ((_%loop168433169369%_
                                  (lambda (_%hd168431169372%_
                                           _%args168437169374%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd168431169372%_))
                                        (let ((_%e168434169377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd168431169372%_))))
                                          (let ((_%lp-tl168436169382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168434169377%_)))
                                                (_%lp-hd168435169380%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168434169377%_))))
                                            (_%loop168433169369%_
                                             _%lp-tl168436169382%_
                                             (cons _%lp-hd168435169380%_
                                                   _%args168437169374%_))))
                                        (let ((_%args168438169385%_
                                               (reverse _%args168437169374%_)))
                                          (let ((_%L169388%_
                                                 _%args168438169385%_)
                                                (_%L169389%_
                                                 _%hd168428169359%_)
                                                (_%L169390%_
                                                 _%hd168419169335%_)
                                                (_%L169391%_
                                                 _%hd168410169311%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L169391%_
                                                        'call-method))
                                                     (let ((__tmp175063
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self168383%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L169390%_
                                                        __tmp175063)))
                                                (_%__kont174403174404%_
                                                 _%L169388%_
                                                 _%L169389%_
                                                 _%L169390%_
                                                 _%L169391%_)
                                                (_%__match174694174695%_
                                                 _%e168400169284%_
                                                 _%hd168401169287%_
                                                 _%tl168402169289%_
                                                 _%e168403169292%_
                                                 _%hd168404169295%_
                                                 _%tl168405169297%_
                                                 _%e168406169300%_
                                                 _%hd168407169303%_
                                                 _%tl168408169305%_
                                                 _%e168409169308%_
                                                 _%hd168410169311%_
                                                 _%tl168411169313%_
                                                 _%e168412169316%_
                                                 _%hd168413169319%_
                                                 _%tl168414169321%_
                                                 _%e168415169324%_
                                                 _%hd168416169327%_
                                                 _%tl168417169329%_
                                                 _%e168418169332%_
                                                 _%hd168419169335%_
                                                 _%tl168420169337%_
                                                 _%e168421169340%_
                                                 _%hd168422169343%_
                                                 _%tl168423169345%_
                                                 _%e168424169348%_
                                                 _%hd168425169351%_
                                                 _%tl168426169353%_
                                                 _%e168427169356%_
                                                 _%hd168428169359%_
                                                 _%tl168429169361%_))))))))
                          (_%loop168433169369%_ _%target168430169364%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx174401174402%_))
                    (let ((_%e168400169284%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx174401174402%_))))
                      (let ((_%tl168402169289%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168400169284%_)))
                            (_%hd168401169287%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168400169284%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl168402169289%_))
                            (let ((_%e168403169292%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl168402169289%_))))
                              (let ((_%tl168405169297%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168403169292%_)))
                                    (_%hd168404169295%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168403169292%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd168404169295%_))
                                    (let ((_%e168406169300%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd168404169295%_))))
                                      (let ((_%tl168408169305%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168406169300%_)))
                                            (_%hd168407169303%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168406169300%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd168407169303%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd168407169303%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl168408169305%_))
                                                    (let ((_%e168409169308%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl168408169305%_))))
                                                      (let ((_%tl168411169313%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e168409169308%_)))
                    (_%hd168410169311%_
                     (let () (declare (not safe)) (##car _%e168409169308%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl168411169313%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl168405169297%_))
                        (let ((_%e168412169316%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168405169297%_))))
                          (let ((_%tl168414169321%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168412169316%_)))
                                (_%hd168413169319%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168412169316%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd168413169319%_))
                                (let ((_%e168415169324%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd168413169319%_))))
                                  (let ((_%tl168417169329%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168415169324%_)))
                                        (_%hd168416169327%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168415169324%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd168416169327%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd168416169327%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl168417169329%_))
                                                (let ((_%e168418169332%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl168417169329%_))))
                                                  (let ((_%tl168420169337%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168418169332%_)))
                                                        (_%hd168419169335%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168418169332%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl168420169337%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl168414169321%_))
                                                            (let ((_%e168421169340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl168414169321%_))))
                      (let ((_%tl168423169345%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168421169340%_)))
                            (_%hd168422169343%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168421169340%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd168422169343%_))
                            (let ((_%e168424169348%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd168422169343%_))))
                              (let ((_%tl168426169353%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168424169348%_)))
                                    (_%hd168425169351%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168424169348%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd168425169351%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd168425169351%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl168426169353%_))
                                            (let ((_%e168427169356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl168426169353%_))))
                                              (let ((_%tl168429169361%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168427169356%_)))
                                                    (_%hd168428169359%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168427169356%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl168429169361%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl168423169345%_))
                                                        (let ((_%__splice174405174406%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl168423169345%_ '0))))
                  (let ((_%tl168432169366%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice174405174406%_ '1)))
                        (_%target168430169364%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice174405174406%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl168432169366%_))
                        (_%__match174506174507%_
                         _%e168400169284%_
                         _%hd168401169287%_
                         _%tl168402169289%_
                         _%e168403169292%_
                         _%hd168404169295%_
                         _%tl168405169297%_
                         _%e168406169300%_
                         _%hd168407169303%_
                         _%tl168408169305%_
                         _%e168409169308%_
                         _%hd168410169311%_
                         _%tl168411169313%_
                         _%e168412169316%_
                         _%hd168413169319%_
                         _%tl168414169321%_
                         _%e168415169324%_
                         _%hd168416169327%_
                         _%tl168417169329%_
                         _%e168418169332%_
                         _%hd168419169335%_
                         _%tl168420169337%_
                         _%e168421169340%_
                         _%hd168422169343%_
                         _%tl168423169345%_
                         _%e168424169348%_
                         _%hd168425169351%_
                         _%tl168426169353%_
                         _%e168427169356%_
                         _%hd168428169359%_
                         _%tl168429169361%_
                         _%__splice174405174406%_
                         _%target168430169364%_
                         _%tl168432169366%_)
                        (_%__match174694174695%_
                         _%e168400169284%_
                         _%hd168401169287%_
                         _%tl168402169289%_
                         _%e168403169292%_
                         _%hd168404169295%_
                         _%tl168405169297%_
                         _%e168406169300%_
                         _%hd168407169303%_
                         _%tl168408169305%_
                         _%e168409169308%_
                         _%hd168410169311%_
                         _%tl168411169313%_
                         _%e168412169316%_
                         _%hd168413169319%_
                         _%tl168414169321%_
                         _%e168415169324%_
                         _%hd168416169327%_
                         _%tl168417169329%_
                         _%e168418169332%_
                         _%hd168419169335%_
                         _%tl168420169337%_
                         _%e168421169340%_
                         _%hd168422169343%_
                         _%tl168423169345%_
                         _%e168424169348%_
                         _%hd168425169351%_
                         _%tl168426169353%_
                         _%e168427169356%_
                         _%hd168428169359%_
                         _%tl168429169361%_))))
                (_%__match174694174695%_
                 _%e168400169284%_
                 _%hd168401169287%_
                 _%tl168402169289%_
                 _%e168403169292%_
                 _%hd168404169295%_
                 _%tl168405169297%_
                 _%e168406169300%_
                 _%hd168407169303%_
                 _%tl168408169305%_
                 _%e168409169308%_
                 _%hd168410169311%_
                 _%tl168411169313%_
                 _%e168412169316%_
                 _%hd168413169319%_
                 _%tl168414169321%_
                 _%e168415169324%_
                 _%hd168416169327%_
                 _%tl168417169329%_
                 _%e168418169332%_
                 _%hd168419169335%_
                 _%tl168420169337%_
                 _%e168421169340%_
                 _%hd168422169343%_
                 _%tl168423169345%_
                 _%e168424169348%_
                 _%hd168425169351%_
                 _%tl168426169353%_
                 _%e168427169356%_
                 _%hd168428169359%_
                 _%tl168429169361%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match174898174899%_
                                                     _%e168400169284%_
                                                     _%hd168401169287%_
                                                     _%tl168402169289%_
                                                     _%e168403169292%_
                                                     _%hd168404169295%_
                                                     _%tl168405169297%_
                                                     _%e168406169300%_
                                                     _%hd168407169303%_
                                                     _%tl168408169305%_
                                                     _%e168409169308%_
                                                     _%hd168410169311%_
                                                     _%tl168411169313%_
                                                     _%e168412169316%_
                                                     _%hd168413169319%_
                                                     _%tl168414169321%_
                                                     _%e168415169324%_
                                                     _%hd168416169327%_
                                                     _%tl168417169329%_
                                                     _%e168418169332%_
                                                     _%hd168419169335%_
                                                     _%tl168420169337%_
                                                     _%e168421169340%_
                                                     _%hd168422169343%_
                                                     _%tl168423169345%_))))
                                            (_%__match174898174899%_
                                             _%e168400169284%_
                                             _%hd168401169287%_
                                             _%tl168402169289%_
                                             _%e168403169292%_
                                             _%hd168404169295%_
                                             _%tl168405169297%_
                                             _%e168406169300%_
                                             _%hd168407169303%_
                                             _%tl168408169305%_
                                             _%e168409169308%_
                                             _%hd168410169311%_
                                             _%tl168411169313%_
                                             _%e168412169316%_
                                             _%hd168413169319%_
                                             _%tl168414169321%_
                                             _%e168415169324%_
                                             _%hd168416169327%_
                                             _%tl168417169329%_
                                             _%e168418169332%_
                                             _%hd168419169335%_
                                             _%tl168420169337%_
                                             _%e168421169340%_
                                             _%hd168422169343%_
                                             _%tl168423169345%_))
                                        (_%__match174574174575%_
                                         _%e168400169284%_
                                         _%hd168401169287%_
                                         _%tl168402169289%_
                                         _%e168403169292%_
                                         _%hd168404169295%_
                                         _%tl168405169297%_
                                         _%e168406169300%_
                                         _%hd168407169303%_
                                         _%tl168408169305%_
                                         _%e168409169308%_
                                         _%hd168410169311%_
                                         _%tl168411169313%_
                                         _%e168412169316%_
                                         _%hd168413169319%_
                                         _%tl168414169321%_
                                         _%e168415169324%_
                                         _%hd168416169327%_
                                         _%tl168417169329%_
                                         _%e168418169332%_
                                         _%hd168419169335%_
                                         _%tl168420169337%_
                                         _%e168421169340%_
                                         _%hd168422169343%_
                                         _%tl168423169345%_
                                         _%e168424169348%_
                                         _%hd168425169351%_
                                         _%tl168426169353%_))
                                    (_%__match174898174899%_
                                     _%e168400169284%_
                                     _%hd168401169287%_
                                     _%tl168402169289%_
                                     _%e168403169292%_
                                     _%hd168404169295%_
                                     _%tl168405169297%_
                                     _%e168406169300%_
                                     _%hd168407169303%_
                                     _%tl168408169305%_
                                     _%e168409169308%_
                                     _%hd168410169311%_
                                     _%tl168411169313%_
                                     _%e168412169316%_
                                     _%hd168413169319%_
                                     _%tl168414169321%_
                                     _%e168415169324%_
                                     _%hd168416169327%_
                                     _%tl168417169329%_
                                     _%e168418169332%_
                                     _%hd168419169335%_
                                     _%tl168420169337%_
                                     _%e168421169340%_
                                     _%hd168422169343%_
                                     _%tl168423169345%_))))
                            (_%__match174898174899%_
                             _%e168400169284%_
                             _%hd168401169287%_
                             _%tl168402169289%_
                             _%e168403169292%_
                             _%hd168404169295%_
                             _%tl168405169297%_
                             _%e168406169300%_
                             _%hd168407169303%_
                             _%tl168408169305%_
                             _%e168409169308%_
                             _%hd168410169311%_
                             _%tl168411169313%_
                             _%e168412169316%_
                             _%hd168413169319%_
                             _%tl168414169321%_
                             _%e168415169324%_
                             _%hd168416169327%_
                             _%tl168417169329%_
                             _%e168418169332%_
                             _%hd168419169335%_
                             _%tl168420169337%_
                             _%e168421169340%_
                             _%hd168422169343%_
                             _%tl168423169345%_))))
                    (_%__match174836174837%_
                     _%e168400169284%_
                     _%hd168401169287%_
                     _%tl168402169289%_
                     _%e168403169292%_
                     _%hd168404169295%_
                     _%tl168405169297%_
                     _%e168406169300%_
                     _%hd168407169303%_
                     _%tl168408169305%_
                     _%e168409169308%_
                     _%hd168410169311%_
                     _%tl168411169313%_
                     _%e168412169316%_
                     _%hd168413169319%_
                     _%tl168414169321%_
                     _%e168415169324%_
                     _%hd168416169327%_
                     _%tl168417169329%_
                     _%e168418169332%_
                     _%hd168419169335%_
                     _%tl168420169337%_))
                (_%__kont174419174420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont174419174420%_))
                                            (_%__kont174419174420%_))
                                        (_%__kont174419174420%_))))
                                (_%__kont174419174420%_))))
                        (_%__kont174419174420%_))
                    (_%__kont174419174420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont174419174420%_))
                                                (_%__kont174419174420%_))
                                            (_%__kont174419174420%_))))
                                    (_%__kont174419174420%_))))
                            (_%__kont174419174420%_))))
                    (_%__kont174419174420%_))))))))))
