(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1768865827)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp189988 (list gxc#::identity::t))
            (__tmp189987 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp189988
         '()
         __tmp189987
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args188785%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args188785%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp189989
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
        (__make-atomic-promise __tmp189989)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx188777%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self188780%_
                (let ((__obj189980
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj189980))
               (__tmp189990
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self188780%_ _%stx188777%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp189990
           gxc#current-compile-method
           _%self188780%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp189992 (list gxc#::false::t))
            (__tmp189991 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp189992
         '()
         __tmp189991
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args188774%_
        (apply make-instance gxc#::extract-receiver::t _%$args188774%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp189993
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
        (__make-atomic-promise __tmp189993)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx188766%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self188769%_
                (let ((__obj189982
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj189982))
               (__tmp189994
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self188769%_ _%stx188766%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp189994
           gxc#current-compile-method
           _%self188769%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp189996 (list gxc#::void::t))
            (__tmp189995 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp189996
         '(receiver methods slots)
         __tmp189995
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args188763%_
        (apply make-instance gxc#::collect-object-refs::t _%$args188763%_)))
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
      (let ((__tmp189997
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
        (__make-atomic-promise __tmp189997)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords188729%_
               _%receiver188724188730%_
               _%methods188725188732%_
               _%slots188726188734%_
               _%stx188736%_)
        (let* ((_%receiver188739%_
                (if (eq? _%receiver188724188730%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver188724188730%_))
               (_%methods188741%_
                (if (eq? _%methods188725188732%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods188725188732%_))
               (_%slots188743%_
                (if (eq? _%slots188726188734%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots188726188734%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self188745%_
                  (let ((__obj189984
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
                       __obj189984
                       _%receiver188739%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj189984
                       _%methods188741%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj189984
                       _%slots188743%_
                       '3
                       '#f
                       '#f))
                    __obj189984))
                 (__tmp189998
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self188745%_ _%stx188736%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp189998
             gxc#current-compile-method
             _%self188745%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords188752%_ . _%args188753%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords188752%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188752%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188752%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188752%_
                  'slots:
                  absent-value))
               _%args188753%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args188727188759%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args188727188759%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp190000 (list gxc#::basic-xform-expression::t))
            (__tmp189999 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp190000
         '(receiver klass methods slots)
         __tmp189999
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args188720%_
        (apply make-instance gxc#::subst-object-refs::t _%$args188720%_)))
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
      (let ((__tmp190001
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
        (__make-atomic-promise __tmp190001)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords188682%_
               _%receiver188676188683%_
               _%klass188677188685%_
               _%methods188678188687%_
               _%slots188679188689%_
               _%stx188691%_)
        (let* ((_%receiver188694%_
                (if (eq? _%receiver188676188683%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver188676188683%_))
               (_%klass188696%_
                (if (eq? _%klass188677188685%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass188677188685%_))
               (_%methods188698%_
                (if (eq? _%methods188678188687%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods188678188687%_))
               (_%slots188700%_
                (if (eq? _%slots188679188689%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots188679188689%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self188702%_
                  (let ((__obj189986
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
                       __obj189986
                       _%receiver188694%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj189986
                       _%klass188696%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj189986
                       _%methods188698%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj189986
                       _%slots188700%_
                       '4
                       '#f
                       '#f))
                    __obj189986))
                 (__tmp190002
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self188702%_ _%stx188691%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp190002
             gxc#current-compile-method
             _%self188702%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords188709%_ . _%args188710%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords188709%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188709%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188709%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188709%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188709%_
                  'slots:
                  absent-value))
               _%args188710%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args188680188716%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args188680188716%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self185791%_ _%stx185792%_)
        (letrec ((_%generate-method-bind185794%_
                  (lambda (_%$klass188668%_
                           _%$method-table188669%_
                           _%id188670%_
                           _%$id188671%_)
                    (let ((_%$tmp188673%_
                           (let ((__tmp190003
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190003))))
                      (cons (cons _%$id188671%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp188673%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table188669%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id188670%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp188673%_ '()))
                    (cons (cons '%#ref (cons _%$tmp188673%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id188670%_
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
                 (_%generate-slot-bind185795%_
                  (lambda (_%$klass188662%_ _%id188663%_ _%$id188664%_)
                    (let ((_%$tmp188666%_
                           (let ((__tmp190004
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190004))))
                      (cons (cons _%$id188664%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp188666%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass188662%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id188663%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp188666%_ '()))
                        (cons (cons '%#ref (cons _%$tmp188666%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id188663%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl185796%_
                  (lambda (_%$klass188656%_
                           _%$method-table188657%_
                           _%methods-bind188658%_
                           _%slots-bind188659%_
                           _%specializer-impl188660%_)
                    (let ((__tmp190005
                           (cons '%#lambda
                                 (cons (cons _%$klass188656%_
                                             (cons _%$method-table188657%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind188659%_
                                                            _%methods-bind188658%_))
                                                         (cons _%specializer-impl188660%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp190005 _%stx185792%_))))
                 (_%generate-specializer-def185797%_
                  (lambda (_%id188652%_
                           _%specializer-id188653%_
                           _%specializer-impl188654%_)
                    (let ((__tmp190006
                           (cons '%#begin
                                 (cons _%stx185792%_
                                       (cons (let ((__tmp190007
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id188653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl188654%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp190007
                                                _%stx185792%_))
                                             (cons (let ((__tmp190008
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id188652%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id188653%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp190008
                                                      _%stx185792%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp190006 _%stx185792%_)))))
          (let* ((_%__stx188874188875%_ _%stx185792%_)
                 (_%g185800185820%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx188874188875%_)))))
            (let ((_%__kont188876188877%_
                   (lambda (_%L185864%_ _%L185865%_)
                     (let ((_%method-calls185884%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs185885%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty185886%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?185888%_
                                 (lambda ()
                                   (if (let ((__tmp190009
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls185884%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp190009))
                                       (let ((__tmp190010
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs185885%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp190010))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L185864%_))
                             (let* ((_%__stx188788188789%_ _%L185864%_)
                                    (_%g186276186294%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx188788188789%_)))))
                               (let ((_%__kont188790188791%_
                                      (lambda (_%L186330%_
                                               _%L186331%_
                                               _%L186332%_)
                                        (let ((_%receiver186352%_
                                               (let ((_%$e186349%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L186330%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e186349%_
                                                     _%$e186349%_
                                                     _%L186332%_))))
                                          (for-each
                                           (lambda (_%g186353186355%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver186352%_
                                              _%method-calls185884%_
                                              _%slot-refs185885%_
                                              _%g186353186355%_))
                                           _%L186330%_)
                                          (if (_%no-specializer?185888%_)
                                              _%stx185792%_
                                              (let* ((_%specializer-id186364%_
                                                      (let* ((_%id186358%_
                                                              (let ((__tmp190011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L185865%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp190011 '"::specialize")))
                     (_%specializer-id186361%_
                      (let ((__tmp190012
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx185792%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id186358%_ __tmp190012))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id186361%_))
                _%specializer-id186361%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass186366%_
                                                      (let ((__tmp190013
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp190013)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table186368%_
                                                      (let ((__tmp190014
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp190014)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods186370%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls185884%_)))
                                                     (_%$methods186374%_
                                                      (let ((__tmp190015
                                                             (lambda (_%id186372%_)
                                                               (let ((__tmp190016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id186372%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190016)))))
                (declare (not safe))
                (##map __tmp190015 _%methods186370%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_186383%_
                                                      (let ((__tmp190017
                                                             (lambda (_%g186375186378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186376186380%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls185884%_
                          _%g186375186378%_
                          _%g186376186380%_)))))
                (declare (not safe))
                (##for-each __tmp190017 _%methods186370%_ _%$methods186374%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind186393%_
                                                      (let ((__tmp190018
                                                             (lambda (_%g186385186388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186386186390%_)
                       (_%generate-method-bind185794%_
                        _%$klass186366%_
                        _%$method-table186368%_
                        _%g186385186388%_
                        _%g186386186390%_))))
                (declare (not safe))
                (##map __tmp190018 _%methods186370%_ _%$methods186374%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots186395%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs185885%_)))
                                                     (_%$slots186399%_
                                                      (let ((__tmp190019
                                                             (lambda (_%id186397%_)
                                                               (let ((__tmp190020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id186397%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190020)))))
                (declare (not safe))
                (##map __tmp190019 _%slots186395%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_186408%_
                                                      (let ((__tmp190021
                                                             (lambda (_%g186400186403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186401186405%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs185885%_
                          _%g186400186403%_
                          _%g186401186405%_)))))
                (declare (not safe))
                (##for-each __tmp190021 _%slots186395%_ _%$slots186399%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind186417%_
                                                      (let ((__tmp190022
                                                             (lambda (_%g186409186412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186410186414%_)
                       (_%generate-slot-bind185795%_
                        _%$klass186366%_
                        _%g186409186412%_
                        _%g186410186414%_))))
                (declare (not safe))
                (##map __tmp190022 _%slots186395%_ _%$slots186399%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body186423%_
                                                      (map (lambda (_%g186418186420%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver186352%_
                                                              _%$klass186366%_
                                                              _%method-calls185884%_
                                                              _%slot-refs185885%_
                                                              _%g186418186420%_))
                                                           _%L186330%_))
                                                     (_%specializer-impl186425%_
                                                      (let ((__tmp190023
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L186332%_ _%L186331%_)
                                 _%specializer-body186423%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp190023 _%stx185792%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl186427%_
                                                      (_%generate-specializer-impl185796%_
                                                       _%$klass186366%_
                                                       _%$method-table186368%_
                                                       _%methods-bind186393%_
                                                       _%slots-bind186417%_
                                                       _%specializer-impl186425%_)))
                                                (let ((__tmp190025
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L185865%_)))
                                                      (__tmp190024
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id186364%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp190025
                                                   '" => "
                                                   __tmp190024))
                                                (_%generate-specializer-def185797%_
                                                 _%L185865%_
                                                 _%specializer-id186364%_
                                                 _%specializer-impl186427%_))))))
                                     (_%__kont188792188793%_
                                      (lambda () _%stx185792%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx188788188789%_))
                                     (let ((_%e186281186306%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx188788188789%_))))
                                       (let ((_%tl186283186311%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e186281186306%_)))
                                             (_%hd186282186309%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e186281186306%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl186283186311%_))
                                             (let ((_%e186284186314%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl186283186311%_))))
                                               (let ((_%tl186286186319%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e186284186314%_)))
                                                     (_%hd186285186317%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e186284186314%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd186285186317%_))
                                                     (let ((_%e186287186322%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd186285186317%_))))
                                                       (let ((_%tl186289186327%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e186287186322%_)))
                     (_%hd186288186325%_
                      (let () (declare (not safe)) (##car _%e186287186322%_))))
                 (_%__kont188790188791%_
                  _%tl186286186319%_
                  _%tl186289186327%_
                  _%hd186288186325%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont188792188793%_))))
                                             (_%__kont188792188793%_))))
                                     (_%__kont188792188793%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L185864%_))
                                 (let* ((_%g186434186453%_
                                         (lambda (_%g186435186450%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g186435186450%_))))
                                        (_%g186433186751%_
                                         (lambda (_%g186435186456%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g186435186456%_))
                                               (let ((_%e186437186458%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g186435186456%_))))
                                                 (let ((_%hd186438186461%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e186437186458%_)))
                                                       (_%tl186439186463%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e186437186458%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl186439186463%_))
                                                       (let ((_g190026_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl186439186463%_ '0))))
                 (begin
                   (let ((_g190027_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g190026_)
                                (##values-length _g190026_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g190027_ 2)))
                         (error "Context expects 2 values" _g190027_)))
                   (let ((_%target186440186466%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g190026_ 0)))
                         (_%tl186442186468%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g190026_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl186442186468%_))
                         (letrec ((_%loop186443186471%_
                                   (lambda (_%hd186441186474%_
                                            _%clause186447186476%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd186441186474%_))
                                         (let ((_%e186444186479%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd186441186474%_))))
                                           (let ((_%lp-hd186445186482%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e186444186479%_)))
                                                 (_%lp-tl186446186484%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e186444186479%_))))
                                             (_%loop186443186471%_
                                              _%lp-tl186446186484%_
                                              (cons _%lp-hd186445186482%_
                                                    _%clause186447186476%_))))
                                         (let ((_%clause186448186487%_
                                                (reverse _%clause186447186476%_)))
                                           ((lambda (_%L186490%_)
                                              (for-each
                                               (lambda (_%clause186504%_)
                                                 (let* ((_%__stx188814188815%_
                                                         _%clause186504%_)
                                                        (_%g186507186522%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx188814188815%_)))))
                                                   (let ((_%__kont188816188817%_
                                                          (lambda (_%L186550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L186551%_
                           _%L186552%_)
                    (let ((_%receiver186571%_
                           (let ((_%$e186568%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L186550%_))))
                             (if _%$e186568%_ _%$e186568%_ _%L186552%_))))
                      (for-each
                       (lambda (_%g186572186574%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver186571%_
                          _%method-calls185884%_
                          _%slot-refs185885%_
                          _%g186572186574%_))
                       _%L186550%_))))
                 (_%__kont188818188819%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx188814188815%_))
                                                         (let ((_%e186512186534%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx188814188815%_))))
                   (let ((_%tl186514186539%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e186512186534%_)))
                         (_%hd186513186537%_
                          (let ()
                            (declare (not safe))
                            (##car _%e186512186534%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd186513186537%_))
                         (let ((_%e186515186542%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd186513186537%_))))
                           (let ((_%tl186517186547%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e186515186542%_)))
                                 (_%hd186516186545%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e186515186542%_))))
                             (_%__kont188816188817%_
                              _%tl186514186539%_
                              _%tl186517186547%_
                              _%hd186516186545%_)))
                         (_%__kont188818188819%_))))
                 (_%__kont188818188819%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp190028
                                                      (lambda (_%g186579186582%_
                                                               _%g186580186584%_)
                                                        (cons _%g186579186582%_
                                                              _%g186580186584%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp190028
                                                  '()
                                                  _%L186490%_)))
                                              (if (_%no-specializer?185888%_)
                                                  _%stx185792%_
                                                  (let* ((_%specializer-id186593%_
                                                          (let* ((_%id186587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp190029
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L185865%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp190029 '"::specialize")))
                         (_%specializer-id186590%_
                          (let ((__tmp190030
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx185792%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id186587%_
                             __tmp190030))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id186590%_))
                    _%specializer-id186590%_))
                 (_%$klass186595%_
                  (let ((__tmp190031
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190031)))
                 (_%$method-table186597%_
                  (let ((__tmp190032
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190032)))
                 (_%methods186599%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls185884%_)))
                 (_%$methods186603%_
                  (let ((__tmp190033
                         (lambda (_%id186601%_)
                           (let ((__tmp190034 (gensym _%id186601%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190034)))))
                    (declare (not safe))
                    (##map __tmp190033 _%methods186599%_)))
                 (_%_186612%_
                  (let ((__tmp190035
                         (lambda (_%g186604186607%_ _%g186605186609%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls185884%_
                              _%g186604186607%_
                              _%g186605186609%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp190035
                     _%methods186599%_
                     _%$methods186603%_)))
                 (_%methods-bind186622%_
                  (let ((__tmp190036
                         (lambda (_%g186614186617%_ _%g186615186619%_)
                           (_%generate-method-bind185794%_
                            _%$klass186595%_
                            _%$method-table186597%_
                            _%g186614186617%_
                            _%g186615186619%_))))
                    (declare (not safe))
                    (##map __tmp190036 _%methods186599%_ _%$methods186603%_)))
                 (_%slots186624%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs185885%_)))
                 (_%$slots186628%_
                  (let ((__tmp190037
                         (lambda (_%id186626%_)
                           (let ((__tmp190038 (gensym _%id186626%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190038)))))
                    (declare (not safe))
                    (##map __tmp190037 _%slots186624%_)))
                 (_%_186637%_
                  (let ((__tmp190039
                         (lambda (_%g186629186632%_ _%g186630186634%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs185885%_
                              _%g186629186632%_
                              _%g186630186634%_)))))
                    (declare (not safe))
                    (##for-each __tmp190039 _%slots186624%_ _%$slots186628%_)))
                 (_%slots-bind186646%_
                  (let ((__tmp190040
                         (lambda (_%g186638186641%_ _%g186639186643%_)
                           (_%generate-slot-bind185795%_
                            _%$klass186595%_
                            _%g186638186641%_
                            _%g186639186643%_))))
                    (declare (not safe))
                    (##map __tmp190040 _%slots186624%_ _%$slots186628%_)))
                 (_%specializer-clauses186744%_
                  (map (lambda (_%clause186648%_)
                         (let* ((_%__stx188834188835%_ _%clause186648%_)
                                (_%g186651186666%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx188834188835%_)))))
                           (let ((_%__kont188836188837%_
                                  (lambda (_%L186694%_ _%L186695%_ _%L186696%_)
                                    (let* ((_%receiver186725%_
                                            (let ((_%$e186722%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L186694%_))))
                                              (if _%$e186722%_
                                                  _%$e186722%_
                                                  _%L186696%_)))
                                           (_%body186731%_
                                            (map (lambda (_%g186726186728%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver186725%_
                                                    _%$klass186595%_
                                                    _%method-calls185884%_
                                                    _%slot-refs185885%_
                                                    _%g186726186728%_))
                                                 _%L186694%_)))
                                      (cons (cons _%L186696%_ _%L186695%_)
                                            _%body186731%_))))
                                 (_%__kont188838188839%_
                                  (lambda () _%clause186648%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx188834188835%_))
                                 (let ((_%e186656186678%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx188834188835%_))))
                                   (let ((_%tl186658186683%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e186656186678%_)))
                                         (_%hd186657186681%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e186656186678%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd186657186681%_))
                                         (let ((_%e186659186686%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd186657186681%_))))
                                           (let ((_%tl186661186691%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e186659186686%_)))
                                                 (_%hd186660186689%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e186659186686%_))))
                                             (_%__kont188836188837%_
                                              _%tl186658186683%_
                                              _%tl186661186691%_
                                              _%hd186660186689%_)))
                                         (_%__kont188838188839%_))))
                                 (_%__kont188838188839%_)))))
                       (let ((__tmp190041
                              (lambda (_%g186736186739%_ _%g186737186741%_)
                                (cons _%g186736186739%_ _%g186737186741%_))))
                         (declare (not safe))
                         (__foldr1 __tmp190041 '() _%L186490%_))))
                 (_%specializer-impl186746%_
                  (let ((__tmp190042
                         (cons '%#case-lambda _%specializer-clauses186744%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp190042 _%stx185792%_)))
                 (_%specializer-impl186748%_
                  (_%generate-specializer-impl185796%_
                   _%$klass186595%_
                   _%$method-table186597%_
                   _%methods-bind186622%_
                   _%slots-bind186646%_
                   _%specializer-impl186746%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp190044
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L185865%_)))
                                                          (__tmp190043
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id186593%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp190044
                                                       '" => "
                                                       __tmp190043))
                                                    (_%generate-specializer-def185797%_
                                                     _%L185865%_
                                                     _%specializer-id186593%_
                                                     _%specializer-impl186748%_))))
                                            _%clause186448186487%_))))))
                           (_%loop186443186471%_ _%target186440186466%_ '()))
                         (_%g186434186453%_ _%g186435186456%_)))))
               (_%g186434186453%_ _%g186435186456%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g186434186453%_
                                                _%g186435186456%_)))))
                                   (_%g186433186751%_ _%L185864%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L185864%_))
                                     (let* ((_%g186755186785%_
                                             (lambda (_%g186756186782%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g186756186782%_))))
                                            (_%g186754187416%_
                                             (lambda (_%g186756186788%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g186756186788%_))
                                                   (let ((_%e186760186790%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g186756186788%_))))
                                                     (let ((_%hd186761186793%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e186760186790%_)))
                                                           (_%tl186762186795%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e186760186790%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl186762186795%_))
                                                           (let ((_%e186763186798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl186762186795%_))))
                     (let ((_%hd186764186801%_
                            (let ()
                              (declare (not safe))
                              (##car _%e186763186798%_)))
                           (_%tl186765186803%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e186763186798%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd186764186801%_))
                           (let ((_%e186766186806%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd186764186801%_))))
                             (let ((_%hd186767186809%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e186766186806%_)))
                                   (_%tl186768186811%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e186766186806%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd186767186809%_))
                                   (let ((_%e186769186814%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd186767186809%_))))
                                     (let ((_%hd186770186817%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e186769186814%_)))
                                           (_%tl186771186819%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e186769186814%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd186770186817%_))
                                           (let ((_%e186772186822%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd186770186817%_))))
                                             (let ((_%hd186773186825%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e186772186822%_)))
                                                   (_%tl186774186827%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e186772186822%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl186774186827%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl186771186819%_))
                                                       (let ((_%e186775186830%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl186771186819%_))))
                 (let ((_%hd186776186833%_
                        (let ()
                          (declare (not safe))
                          (##car _%e186775186830%_)))
                       (_%tl186777186835%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e186775186830%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl186777186835%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl186768186811%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl186765186803%_))
                               (let ((_%e186778186838%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl186765186803%_))))
                                 (let ((_%hd186779186841%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e186778186838%_)))
                                       (_%tl186780186843%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e186778186838%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl186780186843%_))
                                       ((lambda (_%L186846%_
                                                 _%L186847%_
                                                 _%L186848%_)
                                          (let* ((_%g186872186890%_
                                                  (lambda (_%g186873186887%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g186873186887%_))))
                                                 (_%g186871186946%_
                                                  (lambda (_%g186873186893%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g186873186893%_))
                                                        (let ((_%e186877186895%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g186873186893%_))))
                  (let ((_%hd186878186898%_
                         (let ()
                           (declare (not safe))
                           (##car _%e186877186895%_)))
                        (_%tl186879186900%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e186877186895%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl186879186900%_))
                        (let ((_%e186880186903%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl186879186900%_))))
                          (let ((_%hd186881186906%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e186880186903%_)))
                                (_%tl186882186908%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e186880186903%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd186881186906%_))
                                (let ((_%e186883186911%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd186881186906%_))))
                                  (let ((_%hd186884186914%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e186883186911%_)))
                                        (_%tl186885186916%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e186883186911%_))))
                                    ((lambda (_%L186919%_
                                              _%L186920%_
                                              _%L186921%_)
                                       (let ((_%receiver186940%_
                                              (let ((_%$e186937%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L186919%_))))
                                                (if _%$e186937%_
                                                    _%$e186937%_
                                                    _%L186921%_))))
                                         (for-each
                                          (lambda (_%g186941186943%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver186940%_
                                             _%method-calls185884%_
                                             _%slot-refs185885%_
                                             _%g186941186943%_))
                                          _%L186919%_)))
                                     _%tl186882186908%_
                                     _%tl186885186916%_
                                     _%hd186884186914%_)))
                                (_%g186872186890%_ _%g186873186893%_))))
                        (_%g186872186890%_ _%g186873186893%_))))
                (_%g186872186890%_ _%g186873186893%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g186871186946%_ _%L186847%_))
                                          (let* ((_%g186949186968%_
                                                  (lambda (_%g186950186965%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g186950186965%_))))
                                                 (_%g186948187092%_
                                                  (lambda (_%g186950186971%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g186950186971%_))
                                                        (let ((_%e186952186973%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g186950186971%_))))
                  (let ((_%hd186953186976%_
                         (let ()
                           (declare (not safe))
                           (##car _%e186952186973%_)))
                        (_%tl186954186978%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e186952186973%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl186954186978%_))
                        (let ((_g190045_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl186954186978%_
                                  '0))))
                          (begin
                            (let ((_g190046_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g190045_)
                                         (##values-length _g190045_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g190046_ 2)))
                                  (error "Context expects 2 values"
                                         _g190046_)))
                            (let ((_%target186955186981%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190045_ 0)))
                                  (_%tl186957186983%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190045_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl186957186983%_))
                                  (letrec ((_%loop186958186986%_
                                            (lambda (_%hd186956186989%_
                                                     _%clause186962186991%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd186956186989%_))
                                                  (let ((_%e186959186994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd186956186989%_))))
                                                    (let ((_%lp-hd186960186997%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e186959186994%_)))
                                                          (_%lp-tl186961186999%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e186959186994%_))))
                                                      (_%loop186958186986%_
                                                       _%lp-tl186961186999%_
                                                       (cons _%lp-hd186960186997%_
                                                             _%clause186962186991%_))))
                                                  (let ((_%clause186963187002%_
                                                         (reverse _%clause186962186991%_)))
                                                    ((lambda (_%L187005%_)
                                                       (for-each
                                                        (lambda (_%clause187018%_)
                                                          (let* ((_%g187020187035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g187021187032%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g187021187032%_))))
                         (_%g187019187082%_
                          (lambda (_%g187021187038%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g187021187038%_))
                                (let ((_%e187025187040%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g187021187038%_))))
                                  (let ((_%hd187026187043%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e187025187040%_)))
                                        (_%tl187027187045%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e187025187040%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd187026187043%_))
                                        (let ((_%e187028187048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd187026187043%_))))
                                          (let ((_%hd187029187051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e187028187048%_)))
                                                (_%tl187030187053%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e187028187048%_))))
                                            ((lambda (_%L187056%_
                                                      _%L187057%_
                                                      _%L187058%_)
                                               (let ((_%receiver187076%_
                                                      (let ((_%$e187073%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L187056%_))))
                (if _%$e187073%_ _%$e187073%_ _%L187058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g187077187079%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver187076%_
                                                     _%method-calls185884%_
                                                     _%slot-refs185885%_
                                                     _%g187077187079%_))
                                                  _%L187056%_)))
                                             _%tl187027187045%_
                                             _%tl187030187053%_
                                             _%hd187029187051%_)))
                                        (_%g187020187035%_
                                         _%g187021187038%_))))
                                (_%g187020187035%_ _%g187021187038%_)))))
                    (_%g187019187082%_ _%clause187018%_)))
                (let ((__tmp190047
                       (lambda (_%g187084187087%_ _%g187085187089%_)
                         (cons _%g187084187087%_ _%g187085187089%_))))
                  (declare (not safe))
                  (__foldr1 __tmp190047 '() _%L187005%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause186963187002%_))))))
                                    (_%loop186958186986%_
                                     _%target186955186981%_
                                     '()))
                                  (_%g186949186968%_ _%g186950186971%_)))))
                        (_%g186949186968%_ _%g186950186971%_))))
                (_%g186949186968%_ _%g186950186971%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g186948187092%_ _%L186846%_))
                                          (if (_%no-specializer?185888%_)
                                              _%stx185792%_
                                              (let* ((_%specializer-id187101%_
                                                      (let* ((_%id187095%_
                                                              (let ((__tmp190048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L185865%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp190048 '"::specialize")))
                     (_%specializer-id187098%_
                      (let ((__tmp190049
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx185792%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id187095%_ __tmp190049))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id187098%_))
                _%specializer-id187098%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass187103%_
                                                      (let ((__tmp190050
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp190050)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table187105%_
                                                      (let ((__tmp190051
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp190051)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods187107%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls185884%_)))
                                                     (_%$methods187111%_
                                                      (let ((__tmp190052
                                                             (lambda (_%id187109%_)
                                                               (let ((__tmp190053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id187109%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190053)))))
                (declare (not safe))
                (##map __tmp190052 _%methods187107%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_187120%_
                                                      (let ((__tmp190054
                                                             (lambda (_%g187112187115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187113187117%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls185884%_
                          _%g187112187115%_
                          _%g187113187117%_)))))
                (declare (not safe))
                (##for-each __tmp190054 _%methods187107%_ _%$methods187111%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind187130%_
                                                      (let ((__tmp190055
                                                             (lambda (_%g187122187125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187123187127%_)
                       (_%generate-method-bind185794%_
                        _%$klass187103%_
                        _%$method-table187105%_
                        _%g187122187125%_
                        _%g187123187127%_))))
                (declare (not safe))
                (##map __tmp190055 _%methods187107%_ _%$methods187111%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots187132%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs185885%_)))
                                                     (_%$slots187136%_
                                                      (let ((__tmp190056
                                                             (lambda (_%id187134%_)
                                                               (let ((__tmp190057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id187134%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190057)))))
                (declare (not safe))
                (##map __tmp190056 _%slots187132%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_187145%_
                                                      (let ((__tmp190058
                                                             (lambda (_%g187137187140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187138187142%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs185885%_
                          _%g187137187140%_
                          _%g187138187142%_)))))
                (declare (not safe))
                (##for-each __tmp190058 _%slots187132%_ _%$slots187136%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind187154%_
                                                      (let ((__tmp190059
                                                             (lambda (_%g187146187149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187147187151%_)
                       (_%generate-slot-bind185795%_
                        _%$klass187103%_
                        _%g187146187149%_
                        _%g187147187151%_))))
                (declare (not safe))
                (##map __tmp190059 _%slots187132%_ _%$slots187136%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr187246%_
                                                      (let* ((_%g187156187174%_
                                                              (lambda (_%g187157187171%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187157187171%_))))
                     (_%g187155187243%_
                      (lambda (_%g187157187177%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187157187177%_))
                            (let ((_%e187161187179%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187157187177%_))))
                              (let ((_%hd187162187182%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187161187179%_)))
                                    (_%tl187163187184%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187161187179%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl187163187184%_))
                                    (let ((_%e187164187187%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl187163187184%_))))
                                      (let ((_%hd187165187190%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187164187187%_)))
                                            (_%tl187166187192%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187164187187%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd187165187190%_))
                                            (let ((_%e187167187195%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd187165187190%_))))
                                              (let ((_%hd187168187198%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187167187195%_)))
                                                    (_%tl187169187200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187167187195%_))))
                                                ((lambda (_%L187203%_
                                                          _%L187204%_
                                                          _%L187205%_)
                                                   (let* ((_%receiver187234%_
                                                           (let ((_%$e187231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L187203%_))))
                     (if _%$e187231%_ _%$e187231%_ _%L187205%_)))
                  (_%body187240%_
                   (map (lambda (_%g187235187237%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver187234%_
                           _%$klass187103%_
                           _%method-calls185884%_
                           _%slot-refs185885%_
                           _%g187235187237%_))
                        _%L187203%_))
                  (__tmp190060
                   (cons '%#lambda
                         (cons (cons _%L187205%_ _%L187204%_)
                               _%body187240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp190060
                                                      _%L186847%_)))
                                                 _%tl187166187192%_
                                                 _%tl187169187200%_
                                                 _%hd187168187198%_)))
                                            (_%g187156187174%_
                                             _%g187157187177%_))))
                                    (_%g187156187174%_ _%g187157187177%_))))
                            (_%g187156187174%_ _%g187157187177%_)))))
                (_%g187155187243%_ _%L186847%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr187409%_
                                                      (let* ((_%g187248187267%_
                                                              (lambda (_%g187249187264%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187249187264%_))))
                     (_%g187247187406%_
                      (lambda (_%g187249187270%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187249187270%_))
                            (let ((_%e187251187272%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187249187270%_))))
                              (let ((_%hd187252187275%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187251187272%_)))
                                    (_%tl187253187277%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187251187272%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl187253187277%_))
                                    (let ((_g190061_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl187253187277%_
                                              '0))))
                                      (begin
                                        (let ((_g190062_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g190061_)
                                                     (##values-length
                                                      _g190061_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g190062_ 2)))
                                              (error "Context expects 2 values"
                                                     _g190062_)))
                                        (let ((_%target187254187280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g190061_ 0)))
                                              (_%tl187256187282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g190061_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187256187282%_))
                                              (letrec ((_%loop187257187285%_
                                                        (lambda (_%hd187255187288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause187261187290%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd187255187288%_))
                      (let ((_%e187258187293%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd187255187288%_))))
                        (let ((_%lp-hd187259187296%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187258187293%_)))
                              (_%lp-tl187260187298%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187258187293%_))))
                          (_%loop187257187285%_
                           _%lp-tl187260187298%_
                           (cons _%lp-hd187259187296%_
                                 _%clause187261187290%_))))
                      (let ((_%clause187262187301%_
                             (reverse _%clause187261187290%_)))
                        ((lambda (_%L187304%_)
                           (let* ((_%clauses187404%_
                                   (map (lambda (_%clause187318%_)
                                          (let* ((_%__stx188854188855%_
                                                  _%clause187318%_)
                                                 (_%g187321187336%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx188854188855%_)))))
                                            (let ((_%__kont188856188857%_
                                                   (lambda (_%L187364%_
                                                            _%L187365%_
                                                            _%L187366%_)
                                                     (let* ((_%receiver187385%_
                                                             (let ((_%$e187382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L187364%_))))
                       (if _%$e187382%_ _%$e187382%_ _%L187366%_)))
                    (_%body187391%_
                     (map (lambda (_%g187386187388%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver187385%_
                             _%$klass187103%_
                             _%method-calls185884%_
                             _%slot-refs185885%_
                             _%g187386187388%_))
                          _%L187364%_)))
               (cons (cons _%L187366%_ _%L187365%_) _%body187391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont188858188859%_
                                                   (lambda ()
                                                     _%clause187318%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx188854188855%_))
                                                  (let ((_%e187326187348%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx188854188855%_))))
                                                    (let ((_%tl187328187353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187326187348%_)))
                                                          (_%hd187327187351%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187326187348%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd187327187351%_))
                                                          (let ((_%e187329187356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd187327187351%_))))
                    (let ((_%tl187331187361%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187329187356%_)))
                          (_%hd187330187359%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187329187356%_))))
                      (_%__kont188856188857%_
                       _%tl187328187353%_
                       _%tl187331187361%_
                       _%hd187330187359%_)))
                  (_%__kont188858188859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont188858188859%_)))))
                                        (let ((__tmp190063
                                               (lambda (_%g187396187399%_
                                                        _%g187397187401%_)
                                                 (cons _%g187396187399%_
                                                       _%g187397187401%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp190063
                                           '()
                                           _%L187304%_))))
                                  (__tmp190064
                                   (cons '%#case-lambda _%clauses187404%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190064 _%L186846%_)))
                         _%clause187262187301%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop187257187285%_
                                                 _%target187254187280%_
                                                 '()))
                                              (_%g187248187267%_
                                               _%g187249187270%_)))))
                                    (_%g187248187267%_ _%g187249187270%_))))
                            (_%g187248187267%_ _%g187249187270%_)))))
                (_%g187247187406%_ _%L186846%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl187411%_
                                                      (let ((__tmp190065
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L186848%_ '())
                                             (cons _%specializer-lambda-expr187246%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr187409%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp190065 _%stx185792%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl187413%_
                                                      (_%generate-specializer-impl185796%_
                                                       _%$klass187103%_
                                                       _%$method-table187105%_
                                                       _%methods-bind187130%_
                                                       _%slots-bind187154%_
                                                       _%specializer-impl187411%_)))
                                                (let ((__tmp190067
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L185865%_)))
                                                      (__tmp190066
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id187101%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp190067
                                                   '" => "
                                                   __tmp190066))
                                                (_%generate-specializer-def185797%_
                                                 _%L185865%_
                                                 _%specializer-id187101%_
                                                 _%specializer-impl187413%_))))
                                        _%hd186779186841%_
                                        _%hd186776186833%_
                                        _%hd186773186825%_)
                                       (_%g186755186785%_ _%g186756186788%_))))
                               (_%g186755186785%_ _%g186756186788%_))
                           (_%g186755186785%_ _%g186756186788%_))
                       (_%g186755186785%_ _%g186756186788%_))))
               (_%g186755186785%_ _%g186756186788%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g186755186785%_
                                                    _%g186756186788%_))))
                                           (_%g186755186785%_
                                            _%g186756186788%_))))
                                   (_%g186755186785%_ _%g186756186788%_))))
                           (_%g186755186785%_ _%g186756186788%_))))
                   (_%g186755186785%_ _%g186756186788%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g186755186785%_
                                                    _%g186756186788%_)))))
                                       (_%g186754187416%_ _%L185864%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L185864%_))
                                         (let* ((_%g187420187473%_
                                                 (lambda (_%g187421187470%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g187421187470%_))))
                                                (_%g187419188644%_
                                                 (lambda (_%g187421187476%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g187421187476%_))
                                                       (let ((_%e187427187478%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g187421187476%_))))
                 (let ((_%hd187428187481%_
                        (let ()
                          (declare (not safe))
                          (##car _%e187427187478%_)))
                       (_%tl187429187483%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e187427187478%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd187428187481%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd187428187481%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl187429187483%_))
                               (let ((_%e187430187486%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl187429187483%_))))
                                 (let ((_%hd187431187489%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e187430187486%_)))
                                       (_%tl187432187491%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e187430187486%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd187431187489%_))
                                       (let ((_%e187433187494%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd187431187489%_))))
                                         (let ((_%hd187434187497%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e187433187494%_)))
                                               (_%tl187435187499%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e187433187494%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd187434187497%_))
                                               (let ((_%e187436187502%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd187434187497%_))))
                                                 (let ((_%hd187437187505%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e187436187502%_)))
                                                       (_%tl187438187507%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e187436187502%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd187437187505%_))
                                                       (let ((_%e187439187510%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd187437187505%_))))
                 (let ((_%hd187440187513%_
                        (let ()
                          (declare (not safe))
                          (##car _%e187439187510%_)))
                       (_%tl187441187515%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e187439187510%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl187441187515%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl187438187507%_))
                           (let ((_%e187442187518%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl187438187507%_))))
                             (let ((_%hd187443187521%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e187442187518%_)))
                                   (_%tl187444187523%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e187442187518%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd187443187521%_))
                                   (let ((_%e187445187526%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd187443187521%_))))
                                     (let ((_%hd187446187529%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e187445187526%_)))
                                           (_%tl187447187531%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e187445187526%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd187446187529%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd187446187529%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl187447187531%_))
                                                   (let ((_%e187448187534%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl187447187531%_))))
                                                     (let ((_%hd187449187537%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e187448187534%_)))
                                                           (_%tl187450187539%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e187448187534%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd187449187537%_))
                                                           (let ((_%e187451187542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd187449187537%_))))
                     (let ((_%hd187452187545%_
                            (let ()
                              (declare (not safe))
                              (##car _%e187451187542%_)))
                           (_%tl187453187547%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e187451187542%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd187452187545%_))
                           (let ((_%e187454187550%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd187452187545%_))))
                             (let ((_%hd187455187553%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e187454187550%_)))
                                   (_%tl187456187555%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e187454187550%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd187455187553%_))
                                   (let ((_%e187457187558%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd187455187553%_))))
                                     (let ((_%hd187458187561%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e187457187558%_)))
                                           (_%tl187459187563%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e187457187558%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl187459187563%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl187456187555%_))
                                               (let ((_%e187460187566%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl187456187555%_))))
                                                 (let ((_%hd187461187569%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e187460187566%_)))
                                                       (_%tl187462187571%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e187460187566%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl187462187571%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl187453187547%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl187450187539%_))
                       (let ((_%e187463187574%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl187450187539%_))))
                         (let ((_%hd187464187577%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e187463187574%_)))
                               (_%tl187465187579%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e187463187574%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl187465187579%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl187444187523%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl187435187499%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl187432187491%_))
                                           (let ((_%e187466187582%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl187432187491%_))))
                                             (let ((_%hd187467187585%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e187466187582%_)))
                                                   (_%tl187468187587%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e187466187582%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl187468187587%_))
                                                   ((lambda (_%L187590%_
                                                             _%L187591%_
                                                             _%L187592%_
                                                             _%L187593%_
                                                             _%L187594%_)
                                                      (let* ((_%g187634187696%_
                                                              (lambda (_%g187635187693%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187635187693%_))))
                     (_%g187633188641%_
                      (lambda (_%g187635187699%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187635187699%_))
                            (let ((_%e187641187701%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187635187699%_))))
                              (let ((_%hd187642187704%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187641187701%_)))
                                    (_%tl187643187706%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187641187701%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd187642187704%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd187642187704%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl187643187706%_))
                                            (let ((_%e187644187709%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl187643187706%_))))
                                              (let ((_%hd187645187712%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187644187709%_)))
                                                    (_%tl187646187714%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187644187709%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl187646187714%_))
                                                    (let ((_%e187647187717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl187646187714%_))))
                                                      (let ((_%hd187648187720%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e187647187717%_)))
                    (_%tl187649187722%_
                     (let () (declare (not safe)) (##cdr _%e187647187717%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd187648187720%_))
                    (let ((_%e187650187725%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd187648187720%_))))
                      (let ((_%hd187651187728%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187650187725%_)))
                            (_%tl187652187730%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187650187725%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd187651187728%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd187651187728%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl187652187730%_))
                                    (let ((_%e187653187733%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl187652187730%_))))
                                      (let ((_%hd187654187736%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187653187733%_)))
                                            (_%tl187655187738%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187653187733%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd187654187736%_))
                                            (let ((_%e187656187741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd187654187736%_))))
                                              (let ((_%hd187657187744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187656187741%_)))
                                                    (_%tl187658187746%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187656187741%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd187657187744%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd187657187744%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl187658187746%_))
                                                            (let ((_%e187659187749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl187658187746%_))))
                      (let ((_%hd187660187752%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187659187749%_)))
                            (_%tl187661187754%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187659187749%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl187661187754%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl187655187738%_))
                                (let ((_%e187662187757%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl187655187738%_))))
                                  (let ((_%hd187663187760%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e187662187757%_)))
                                        (_%tl187664187762%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e187662187757%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd187663187760%_))
                                        (let ((_%e187665187765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd187663187760%_))))
                                          (let ((_%hd187666187768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e187665187765%_)))
                                                (_%tl187667187770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e187665187765%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd187666187768%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd187666187768%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl187667187770%_))
                                                        (let ((_%e187668187773%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl187667187770%_))))
                  (let ((_%hd187669187776%_
                         (let ()
                           (declare (not safe))
                           (##car _%e187668187773%_)))
                        (_%tl187670187778%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e187668187773%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl187670187778%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl187664187762%_))
                            (let ((_%e187671187781%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl187664187762%_))))
                              (let ((_%hd187672187784%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187671187781%_)))
                                    (_%tl187673187786%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187671187781%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd187672187784%_))
                                    (let ((_%e187674187789%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd187672187784%_))))
                                      (let ((_%hd187675187792%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187674187789%_)))
                                            (_%tl187676187794%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187674187789%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd187675187792%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd187675187792%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl187676187794%_))
                                                    (let ((_%e187677187797%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl187676187794%_))))
                                                      (let ((_%hd187678187800%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e187677187797%_)))
                    (_%tl187679187802%_
                     (let () (declare (not safe)) (##cdr _%e187677187797%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl187679187802%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl187673187786%_))
                        (if (let ((__tmp190068
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl187673187786%_))))
                              (declare (not safe))
                              (##fx>= __tmp190068 '1))
                            (let ((_g190069_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl187673187786%_
                                      '1))))
                              (begin
                                (let ((_g190070_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g190069_)
                                             (##values-length _g190069_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g190070_ 2)))
                                      (error "Context expects 2 values"
                                             _g190070_)))
                                (let ((_%target187680187805%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190069_ 0)))
                                      (_%tl187682187807%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190069_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187682187807%_))
                                      (let ((_%e187689187810%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187682187807%_))))
                                        (let ((_%hd187690187813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187689187810%_)))
                                              (_%tl187691187815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187689187810%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187691187815%_))
                                              (letrec ((_%loop187683187818%_
                                                        (lambda (_%hd187681187821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref187687187823%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd187681187821%_))
                      (let ((_%e187684187826%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd187681187821%_))))
                        (let ((_%lp-hd187685187829%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187684187826%_)))
                              (_%lp-tl187686187831%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187684187826%_))))
                          (_%loop187683187818%_
                           _%lp-tl187686187831%_
                           (cons _%lp-hd187685187829%_
                                 _%kw-ref187687187823%_))))
                      (let ((_%kw-ref187688187834%_
                             (reverse _%kw-ref187687187823%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl187649187722%_))
                            ((lambda (_%L187837%_
                                      _%L187838%_
                                      _%L187839%_
                                      _%L187840%_
                                      _%L187841%_)
                               (let* ((_%kw-count187892%_
                                       (length (let ((__tmp190071
                                                      (lambda (_%g187884187887%_
                                                               _%g187885187889%_)
                                                        (cons _%g187884187887%_
                                                              _%g187885187889%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp190071
                                                  '()
                                                  _%L187838%_))))
                                      (_%self-index187894%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count187892%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L187592%_))
                                     (let* ((_%g187898187912%_
                                             (lambda (_%g187899187909%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g187899187909%_))))
                                            (_%g187897188035%_
                                             (lambda (_%g187899187915%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g187899187915%_))
                                                   (let ((_%e187902187917%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g187899187915%_))))
                                                     (let ((_%hd187903187920%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e187902187917%_)))
                                                           (_%tl187904187922%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e187902187917%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl187904187922%_))
                                                           (let ((_%e187905187925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl187904187922%_))))
                     (let ((_%hd187906187928%_
                            (let ()
                              (declare (not safe))
                              (##car _%e187905187925%_)))
                           (_%tl187907187930%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e187905187925%_))))
                       ((lambda (_%L187933%_ _%L187934%_)
                          (let* ((_%self187951%_
                                  (list-ref _%L187934%_ _%self-index187894%_))
                                 (_%receiver187956%_
                                  (let ((_%$e187953%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L187933%_))))
                                    (if _%$e187953%_
                                        _%$e187953%_
                                        _%self187951%_))))
                            (for-each
                             (lambda (_%g187958187960%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver187956%_
                                _%method-calls185884%_
                                _%slot-refs185885%_
                                _%g187958187960%_))
                             _%L187933%_)
                            (if (_%no-specializer?185888%_)
                                _%stx185792%_
                                (let* ((_%specializer-id187969%_
                                        (let* ((_%id187963%_
                                                (let ((__tmp190072
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L185865%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp190072
                                                   '"::specialize")))
                                               (_%specializer-id187966%_
                                                (let ((__tmp190073
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx185792%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id187963%_
                                                   __tmp190073))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id187966%_))
                                          _%specializer-id187966%_))
                                       (_%$klass187971%_
                                        (let ((__tmp190074
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp190074)))
                                       (_%$method-table187973%_
                                        (let ((__tmp190075
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp190075)))
                                       (_%methods187975%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls185884%_)))
                                       (_%$methods187979%_
                                        (let ((__tmp190076
                                               (lambda (_%id187977%_)
                                                 (let ((__tmp190077
                                                        (gensym _%id187977%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp190077)))))
                                          (declare (not safe))
                                          (##map __tmp190076
                                                 _%methods187975%_)))
                                       (_%_187988%_
                                        (let ((__tmp190078
                                               (lambda (_%g187980187983%_
                                                        _%g187981187985%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls185884%_
                                                    _%g187980187983%_
                                                    _%g187981187985%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp190078
                                           _%methods187975%_
                                           _%$methods187979%_)))
                                       (_%methods-bind187998%_
                                        (let ((__tmp190079
                                               (lambda (_%g187990187993%_
                                                        _%g187991187995%_)
                                                 (_%generate-method-bind185794%_
                                                  _%$klass187971%_
                                                  _%$method-table187973%_
                                                  _%g187990187993%_
                                                  _%g187991187995%_))))
                                          (declare (not safe))
                                          (##map __tmp190079
                                                 _%methods187975%_
                                                 _%$methods187979%_)))
                                       (_%slots188000%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs185885%_)))
                                       (_%$slots188004%_
                                        (let ((__tmp190080
                                               (lambda (_%id188002%_)
                                                 (let ((__tmp190081
                                                        (gensym _%id188002%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp190081)))))
                                          (declare (not safe))
                                          (##map __tmp190080 _%slots188000%_)))
                                       (_%_188013%_
                                        (let ((__tmp190082
                                               (lambda (_%g188005188008%_
                                                        _%g188006188010%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs185885%_
                                                    _%g188005188008%_
                                                    _%g188006188010%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp190082
                                           _%slots188000%_
                                           _%$slots188004%_)))
                                       (_%slots-bind188022%_
                                        (let ((__tmp190083
                                               (lambda (_%g188014188017%_
                                                        _%g188015188019%_)
                                                 (_%generate-slot-bind185795%_
                                                  _%$klass187971%_
                                                  _%g188014188017%_
                                                  _%g188015188019%_))))
                                          (declare (not safe))
                                          (##map __tmp190083
                                                 _%slots188000%_
                                                 _%$slots188004%_)))
                                       (_%specializer-impl188030%_
                                        (let* ((_%specializer-body188028%_
                                                (map (lambda (_%g188023188025%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver187956%_
                                                        _%$klass187971%_
                                                        _%method-calls185884%_
                                                        _%slot-refs185885%_
                                                        _%g188023188025%_))
                                                     _%L187933%_))
                                               (__tmp190084
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L187594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L187593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp190085
                                   (cons '%#lambda
                                         (cons _%L187934%_
                                               _%specializer-body188028%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp190085 _%L187592%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L187591%_ '())))
                                      '()))
                          '())
                    (cons _%L187590%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp190084
                                           _%stx185792%_)))
                                       (_%specializer-impl188032%_
                                        (_%generate-specializer-impl185796%_
                                         _%$klass187971%_
                                         _%$method-table187973%_
                                         _%methods-bind187998%_
                                         _%slots-bind188022%_
                                         _%specializer-impl188030%_)))
                                  (let ((__tmp190087
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L185865%_)))
                                        (__tmp190086
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id187969%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp190087
                                     '" => "
                                     __tmp190086))
                                  (_%generate-specializer-def185797%_
                                   _%L185865%_
                                   _%specializer-id187969%_
                                   _%specializer-impl188032%_)))))
                        _%tl187907187930%_
                        _%hd187906187928%_)))
                   (_%g187898187912%_ _%g187899187915%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g187898187912%_
                                                    _%g187899187915%_)))))
                                       (_%g187897188035%_ _%L187592%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L187592%_))
                                         (let* ((_%g188039188069%_
                                                 (lambda (_%g188040188066%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g188040188066%_))))
                                                (_%g188038188637%_
                                                 (lambda (_%g188040188072%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g188040188072%_))
                                                       (let ((_%e188044188074%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g188040188072%_))))
                 (let ((_%hd188045188077%_
                        (let ()
                          (declare (not safe))
                          (##car _%e188044188074%_)))
                       (_%tl188046188079%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e188044188074%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl188046188079%_))
                       (let ((_%e188047188082%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl188046188079%_))))
                         (let ((_%hd188048188085%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e188047188082%_)))
                               (_%tl188049188087%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e188047188082%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd188048188085%_))
                               (let ((_%e188050188090%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd188048188085%_))))
                                 (let ((_%hd188051188093%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e188050188090%_)))
                                       (_%tl188052188095%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e188050188090%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd188051188093%_))
                                       (let ((_%e188053188098%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd188051188093%_))))
                                         (let ((_%hd188054188101%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e188053188098%_)))
                                               (_%tl188055188103%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e188053188098%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd188054188101%_))
                                               (let ((_%e188056188106%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd188054188101%_))))
                                                 (let ((_%hd188057188109%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e188056188106%_)))
                                                       (_%tl188058188111%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e188056188106%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl188058188111%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl188055188103%_))
                                                           (let ((_%e188059188114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl188055188103%_))))
                     (let ((_%hd188060188117%_
                            (let ()
                              (declare (not safe))
                              (##car _%e188059188114%_)))
                           (_%tl188061188119%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e188059188114%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl188061188119%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl188052188095%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl188049188087%_))
                                   (let ((_%e188062188122%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl188049188087%_))))
                                     (let ((_%hd188063188125%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e188062188122%_)))
                                           (_%tl188064188127%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e188062188122%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl188064188127%_))
                                           ((lambda (_%L188130%_
                                                     _%L188131%_
                                                     _%L188132%_)
                                              (let* ((_%g188156188170%_
                                                      (lambda (_%g188157188167%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g188157188167%_))))
                                                     (_%g188155188217%_
                                                      (lambda (_%g188157188173%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g188157188173%_))
                                                            (let ((_%e188160188175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g188157188173%_))))
                      (let ((_%hd188161188178%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188160188175%_)))
                            (_%tl188162188180%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188160188175%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl188162188180%_))
                            (let ((_%e188163188183%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl188162188180%_))))
                              (let ((_%hd188164188186%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e188163188183%_)))
                                    (_%tl188165188188%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e188163188183%_))))
                                ((lambda (_%L188191%_ _%L188192%_)
                                   (let* ((_%self188205%_
                                           (list-ref
                                            _%L188192%_
                                            _%self-index187894%_))
                                          (_%receiver188210%_
                                           (let ((_%$e188207%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L188191%_))))
                                             (if _%$e188207%_
                                                 _%$e188207%_
                                                 _%self188205%_))))
                                     (for-each
                                      (lambda (_%g188212188214%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver188210%_
                                         _%method-calls185884%_
                                         _%slot-refs185885%_
                                         _%g188212188214%_))
                                      _%L188191%_)))
                                 _%tl188165188188%_
                                 _%hd188164188186%_)))
                            (_%g188156188170%_ _%g188157188173%_))))
                    (_%g188156188170%_ _%g188157188173%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g188155188217%_
                                                 _%L188131%_))
                                              (let* ((_%g188220188239%_
                                                      (lambda (_%g188221188236%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g188221188236%_))))
                                                     (_%g188219188350%_
                                                      (lambda (_%g188221188242%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g188221188242%_))
                                                            (let ((_%e188223188244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g188221188242%_))))
                      (let ((_%hd188224188247%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188223188244%_)))
                            (_%tl188225188249%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188223188244%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl188225188249%_))
                            (let ((_g190088_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl188225188249%_
                                      '0))))
                              (begin
                                (let ((_g190089_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g190088_)
                                             (##values-length _g190088_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g190089_ 2)))
                                      (error "Context expects 2 values"
                                             _g190089_)))
                                (let ((_%target188226188252%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190088_ 0)))
                                      (_%tl188228188254%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190088_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl188228188254%_))
                                      (letrec ((_%loop188229188257%_
                                                (lambda (_%hd188227188260%_
                                                         _%clause188233188262%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd188227188260%_))
                                                      (let ((_%e188230188265%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd188227188260%_))))
                (let ((_%lp-hd188231188268%_
                       (let () (declare (not safe)) (##car _%e188230188265%_)))
                      (_%lp-tl188232188270%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e188230188265%_))))
                  (_%loop188229188257%_
                   _%lp-tl188232188270%_
                   (cons _%lp-hd188231188268%_ _%clause188233188262%_))))
              (let ((_%clause188234188273%_ (reverse _%clause188233188262%_)))
                ((lambda (_%L188276%_)
                   (for-each
                    (lambda (_%clause188289%_)
                      (let* ((_%g188291188302%_
                              (lambda (_%g188292188299%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g188292188299%_))))
                             (_%g188290188340%_
                              (lambda (_%g188292188305%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g188292188305%_))
                                    (let ((_%e188295188307%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g188292188305%_))))
                                      (let ((_%hd188296188310%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e188295188307%_)))
                                            (_%tl188297188312%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e188295188307%_))))
                                        ((lambda (_%L188315%_ _%L188316%_)
                                           (let* ((_%self188328%_
                                                   (list-ref
                                                    _%L188316%_
                                                    _%self-index187894%_))
                                                  (_%receiver188333%_
                                                   (let ((_%$e188330%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L188315%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e188330%_
                                                         _%$e188330%_
                                                         _%self188328%_))))
                                             (for-each
                                              (lambda (_%g188335188337%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver188333%_
                                                 _%method-calls185884%_
                                                 _%slot-refs185885%_
                                                 _%g188335188337%_))
                                              _%L188315%_)))
                                         _%tl188297188312%_
                                         _%hd188296188310%_)))
                                    (_%g188291188302%_ _%g188292188305%_)))))
                        (_%g188290188340%_ _%clause188289%_)))
                    (let ((__tmp190090
                           (lambda (_%g188342188345%_ _%g188343188347%_)
                             (cons _%g188342188345%_ _%g188343188347%_))))
                      (declare (not safe))
                      (__foldr1 __tmp190090 '() _%L188276%_))))
                 _%clause188234188273%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop188229188257%_
                                         _%target188226188252%_
                                         '()))
                                      (_%g188220188239%_ _%g188221188242%_)))))
                            (_%g188220188239%_ _%g188221188242%_))))
                    (_%g188220188239%_ _%g188221188242%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g188219188350%_
                                                 _%L188130%_))
                                              (if (_%no-specializer?185888%_)
                                                  _%stx185792%_
                                                  (let* ((_%specializer-id188359%_
                                                          (let* ((_%id188353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp190091
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L185865%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp190091 '"::specialize")))
                         (_%specializer-id188356%_
                          (let ((__tmp190092
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx185792%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id188353%_
                             __tmp190092))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id188356%_))
                    _%specializer-id188356%_))
                 (_%$klass188361%_
                  (let ((__tmp190093
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190093)))
                 (_%$method-table188363%_
                  (let ((__tmp190094
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190094)))
                 (_%methods188365%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls185884%_)))
                 (_%$methods188369%_
                  (let ((__tmp190095
                         (lambda (_%id188367%_)
                           (let ((__tmp190096 (gensym _%id188367%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190096)))))
                    (declare (not safe))
                    (##map __tmp190095 _%methods188365%_)))
                 (_%_188378%_
                  (let ((__tmp190097
                         (lambda (_%g188370188373%_ _%g188371188375%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls185884%_
                              _%g188370188373%_
                              _%g188371188375%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp190097
                     _%methods188365%_
                     _%$methods188369%_)))
                 (_%methods-bind188388%_
                  (let ((__tmp190098
                         (lambda (_%g188380188383%_ _%g188381188385%_)
                           (_%generate-method-bind185794%_
                            _%$klass188361%_
                            _%$method-table188363%_
                            _%g188380188383%_
                            _%g188381188385%_))))
                    (declare (not safe))
                    (##map __tmp190098 _%methods188365%_ _%$methods188369%_)))
                 (_%slots188390%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs185885%_)))
                 (_%$slots188394%_
                  (let ((__tmp190099
                         (lambda (_%id188392%_)
                           (let ((__tmp190100 (gensym _%id188392%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190100)))))
                    (declare (not safe))
                    (##map __tmp190099 _%slots188390%_)))
                 (_%_188403%_
                  (let ((__tmp190101
                         (lambda (_%g188395188398%_ _%g188396188400%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs185885%_
                              _%g188395188398%_
                              _%g188396188400%_)))))
                    (declare (not safe))
                    (##for-each __tmp190101 _%slots188390%_ _%$slots188394%_)))
                 (_%slots-bind188412%_
                  (let ((__tmp190102
                         (lambda (_%g188404188407%_ _%g188405188409%_)
                           (_%generate-slot-bind185795%_
                            _%$klass188361%_
                            _%g188404188407%_
                            _%g188405188409%_))))
                    (declare (not safe))
                    (##map __tmp190102 _%slots188390%_ _%$slots188394%_)))
                 (_%specializer-lambda-expr188490%_
                  (let* ((_%g188414188428%_
                          (lambda (_%g188415188425%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g188415188425%_))))
                         (_%g188413188487%_
                          (lambda (_%g188415188431%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g188415188431%_))
                                (let ((_%e188418188433%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g188415188431%_))))
                                  (let ((_%hd188419188436%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188418188433%_)))
                                        (_%tl188420188438%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188418188433%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl188420188438%_))
                                        (let ((_%e188421188441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl188420188438%_))))
                                          (let ((_%hd188422188444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e188421188441%_)))
                                                (_%tl188423188446%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e188421188441%_))))
                                            ((lambda (_%L188449%_ _%L188450%_)
                                               (let* ((_%self188473%_
                                                       (list-ref
                                                        _%L188450%_
                                                        _%self-index187894%_))
                                                      (_%receiver188478%_
                                                       (let ((_%$e188475%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L188449%_))))
                 (if _%$e188475%_ _%$e188475%_ _%self188473%_)))
              (_%body188484%_
               (map (lambda (_%g188479188481%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver188478%_
                       _%$klass188361%_
                       _%method-calls185884%_
                       _%slot-refs185885%_
                       _%g188479188481%_))
                    _%L188449%_))
              (__tmp190103 (cons '%#lambda (cons _%L188450%_ _%body188484%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190103
                                                  _%L188131%_)))
                                             _%tl188423188446%_
                                             _%hd188422188444%_)))
                                        (_%g188414188428%_
                                         _%g188415188431%_))))
                                (_%g188414188428%_ _%g188415188431%_)))))
                    (_%g188413188487%_ _%L188131%_)))
                 (_%specializer-case-lambda-expr188630%_
                  (let* ((_%g188492188511%_
                          (lambda (_%g188493188508%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g188493188508%_))))
                         (_%g188491188627%_
                          (lambda (_%g188493188514%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g188493188514%_))
                                (let ((_%e188495188516%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g188493188514%_))))
                                  (let ((_%hd188496188519%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188495188516%_)))
                                        (_%tl188497188521%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188495188516%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl188497188521%_))
                                        (let ((_g190104_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl188497188521%_
                                                  '0))))
                                          (begin
                                            (let ((_g190105_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g190104_)
                                                         (##values-length
                                                          _g190104_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g190105_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g190105_)))
                                            (let ((_%target188498188524%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g190104_
                                                      0)))
                                                  (_%tl188500188526%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g190104_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl188500188526%_))
                                                  (letrec ((_%loop188501188529%_
                                                            (lambda (_%hd188499188532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause188505188534%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd188499188532%_))
                          (let ((_%e188502188537%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd188499188532%_))))
                            (let ((_%lp-hd188503188540%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188502188537%_)))
                                  (_%lp-tl188504188542%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188502188537%_))))
                              (_%loop188501188529%_
                               _%lp-tl188504188542%_
                               (cons _%lp-hd188503188540%_
                                     _%clause188505188534%_))))
                          (let ((_%clause188506188545%_
                                 (reverse _%clause188505188534%_)))
                            ((lambda (_%L188548%_)
                               (let* ((_%clauses188625%_
                                       (map (lambda (_%clause188562%_)
                                              (let* ((_%g188564188575%_
                                                      (lambda (_%g188565188572%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g188565188572%_))))
                                                     (_%g188563188615%_
                                                      (lambda (_%g188565188578%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g188565188578%_))
                                                            (let ((_%e188568188580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g188565188578%_))))
                      (let ((_%hd188569188583%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188568188580%_)))
                            (_%tl188570188585%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188568188580%_))))
                        ((lambda (_%L188588%_ _%L188589%_)
                           (let* ((_%self188601%_
                                   (list-ref _%L188589%_ _%self-index187894%_))
                                  (_%receiver188606%_
                                   (let ((_%$e188603%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L188588%_))))
                                     (if _%$e188603%_
                                         _%$e188603%_
                                         _%self188601%_)))
                                  (_%body188612%_
                                   (map (lambda (_%g188607188609%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver188606%_
                                           _%$klass188361%_
                                           _%method-calls185884%_
                                           _%slot-refs185885%_
                                           _%g188607188609%_))
                                        _%L188588%_)))
                             (cons _%L188589%_ _%body188612%_)))
                         _%tl188570188585%_
                         _%hd188569188583%_)))
                    (_%g188564188575%_ _%g188565188578%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g188563188615%_
                                                 _%clause188562%_)))
                                            (let ((__tmp190106
                                                   (lambda (_%g188617188620%_
                                                            _%g188618188622%_)
                                                     (cons _%g188617188620%_
                                                           _%g188618188622%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp190106
                                               '()
                                               _%L188548%_))))
                                      (__tmp190107
                                       (cons '%#case-lambda
                                             _%clauses188625%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp190107
                                  _%L188130%_)))
                             _%clause188506188545%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop188501188529%_
                                                     _%target188498188524%_
                                                     '()))
                                                  (_%g188492188511%_
                                                   _%g188493188514%_)))))
                                        (_%g188492188511%_
                                         _%g188493188514%_))))
                                (_%g188492188511%_ _%g188493188514%_)))))
                    (_%g188491188627%_ _%L188130%_)))
                 (_%specializer-impl188632%_
                  (let ((__tmp190108
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L187594%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L187593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp190109
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L188132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr188490%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr188630%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp190109
                                                _%stx185792%_))
                                             '()))
                                 '())
                           (cons _%L187591%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L187590%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp190108 _%stx185792%_)))
                 (_%specializer-impl188634%_
                  (_%generate-specializer-impl185796%_
                   _%$klass188361%_
                   _%$method-table188363%_
                   _%methods-bind188388%_
                   _%slots-bind188412%_
                   _%specializer-impl188632%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp190111
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L185865%_)))
                                                          (__tmp190110
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id188359%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp190111
                                                       '" => "
                                                       __tmp190110))
                                                    (_%generate-specializer-def185797%_
                                                     _%L185865%_
                                                     _%specializer-id188359%_
                                                     _%specializer-impl188634%_))))
                                            _%hd188063188125%_
                                            _%hd188060188117%_
                                            _%hd188057188109%_)
                                           (_%g188039188069%_
                                            _%g188040188072%_))))
                                   (_%g188039188069%_ _%g188040188072%_))
                               (_%g188039188069%_ _%g188040188072%_))
                           (_%g188039188069%_ _%g188040188072%_))))
                   (_%g188039188069%_ _%g188040188072%_))
               (_%g188039188069%_ _%g188040188072%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g188039188069%_
                                                _%g188040188072%_))))
                                       (_%g188039188069%_ _%g188040188072%_))))
                               (_%g188039188069%_ _%g188040188072%_))))
                       (_%g188039188069%_ _%g188040188072%_))))
               (_%g188039188069%_ _%g188040188072%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g188038188637%_ _%L187592%_))
                                         _%stx185792%_))))
                             _%hd187690187813%_
                             _%kw-ref187688187834%_
                             _%hd187678187800%_
                             _%hd187669187776%_
                             _%hd187660187752%_)
                            (_%g187634187696%_ _%g187635187699%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop187683187818%_
                                                 _%target187680187805%_
                                                 '()))
                                              (_%g187634187696%_
                                               _%g187635187699%_))))
                                      (_%g187634187696%_ _%g187635187699%_)))))
                            (_%g187634187696%_ _%g187635187699%_))
                        (_%g187634187696%_ _%g187635187699%_))
                    (_%g187634187696%_ _%g187635187699%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187634187696%_
                                                     _%g187635187699%_))
                                                (_%g187634187696%_
                                                 _%g187635187699%_))
                                            (_%g187634187696%_
                                             _%g187635187699%_))))
                                    (_%g187634187696%_ _%g187635187699%_))))
                            (_%g187634187696%_ _%g187635187699%_))
                        (_%g187634187696%_ _%g187635187699%_))))
                (_%g187634187696%_ _%g187635187699%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187634187696%_
                                                     _%g187635187699%_))
                                                (_%g187634187696%_
                                                 _%g187635187699%_))))
                                        (_%g187634187696%_
                                         _%g187635187699%_))))
                                (_%g187634187696%_ _%g187635187699%_))
                            (_%g187634187696%_ _%g187635187699%_))))
                    (_%g187634187696%_ _%g187635187699%_))
                (_%g187634187696%_ _%g187635187699%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187634187696%_
                                                     _%g187635187699%_))))
                                            (_%g187634187696%_
                                             _%g187635187699%_))))
                                    (_%g187634187696%_ _%g187635187699%_))
                                (_%g187634187696%_ _%g187635187699%_))
                            (_%g187634187696%_ _%g187635187699%_))))
                    (_%g187634187696%_ _%g187635187699%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187634187696%_
                                                     _%g187635187699%_))))
                                            (_%g187634187696%_
                                             _%g187635187699%_))
                                        (_%g187634187696%_ _%g187635187699%_))
                                    (_%g187634187696%_ _%g187635187699%_))))
                            (_%g187634187696%_ _%g187635187699%_)))))
                (_%g187633188641%_ _%L187591%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd187467187585%_
                                                    _%hd187464187577%_
                                                    _%hd187461187569%_
                                                    _%hd187458187561%_
                                                    _%hd187440187513%_)
                                                   (_%g187420187473%_
                                                    _%g187421187476%_))))
                                           (_%g187420187473%_
                                            _%g187421187476%_))
                                       (_%g187420187473%_ _%g187421187476%_))
                                   (_%g187420187473%_ _%g187421187476%_))
                               (_%g187420187473%_ _%g187421187476%_))))
                       (_%g187420187473%_ _%g187421187476%_))
                   (_%g187420187473%_ _%g187421187476%_))
               (_%g187420187473%_ _%g187421187476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g187420187473%_
                                                _%g187421187476%_))
                                           (_%g187420187473%_
                                            _%g187421187476%_))))
                                   (_%g187420187473%_ _%g187421187476%_))))
                           (_%g187420187473%_ _%g187421187476%_))))
                   (_%g187420187473%_ _%g187421187476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g187420187473%_
                                                    _%g187421187476%_))
                                               (_%g187420187473%_
                                                _%g187421187476%_))
                                           (_%g187420187473%_
                                            _%g187421187476%_))))
                                   (_%g187420187473%_ _%g187421187476%_))))
                           (_%g187420187473%_ _%g187421187476%_))
                       (_%g187420187473%_ _%g187421187476%_))))
               (_%g187420187473%_ _%g187421187476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g187420187473%_
                                                _%g187421187476%_))))
                                       (_%g187420187473%_ _%g187421187476%_))))
                               (_%g187420187473%_ _%g187421187476%_))
                           (_%g187420187473%_ _%g187421187476%_))
                       (_%g187420187473%_ _%g187421187476%_))))
               (_%g187420187473%_ _%g187421187476%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g187419188644%_ _%L185864%_))
                                         _%stx185792%_))))))))
                  (_%__kont188878188879%_ (lambda () _%stx185792%_)))
              (let ((_%__match188907188908%_
                     (lambda (_%e185804185832%_
                              _%hd185805185835%_
                              _%tl185806185837%_
                              _%e185807185840%_
                              _%hd185808185843%_
                              _%tl185809185845%_
                              _%e185810185848%_
                              _%hd185811185851%_
                              _%tl185812185853%_
                              _%e185813185856%_
                              _%hd185814185859%_
                              _%tl185815185861%_)
                       (let ((_%L185864%_ _%hd185814185859%_)
                             (_%L185865%_ _%hd185811185851%_))
                         (if (let ((__tmp190112
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L185865%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp190112))
                             (_%__kont188876188877%_ _%L185864%_ _%L185865%_)
                             (_%__kont188878188879%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx188874188875%_))
                    (let ((_%e185804185832%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx188874188875%_))))
                      (let ((_%tl185806185837%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e185804185832%_)))
                            (_%hd185805185835%_
                             (let ()
                               (declare (not safe))
                               (##car _%e185804185832%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl185806185837%_))
                            (let ((_%e185807185840%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl185806185837%_))))
                              (let ((_%tl185809185845%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e185807185840%_)))
                                    (_%hd185808185843%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e185807185840%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd185808185843%_))
                                    (let ((_%e185810185848%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd185808185843%_))))
                                      (let ((_%tl185812185853%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185810185848%_)))
                                            (_%hd185811185851%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185810185848%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl185812185853%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl185809185845%_))
                                                (let ((_%e185813185856%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl185809185845%_))))
                                                  (let ((_%tl185815185861%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e185813185856%_)))
                                                        (_%hd185814185859%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e185813185856%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185815185861%_))
                                                        (_%__match188907188908%_
                                                         _%e185804185832%_
                                                         _%hd185805185835%_
                                                         _%tl185806185837%_
                                                         _%e185807185840%_
                                                         _%hd185808185843%_
                                                         _%tl185809185845%_
                                                         _%e185810185848%_
                                                         _%hd185811185851%_
                                                         _%tl185812185853%_
                                                         _%e185813185856%_
                                                         _%hd185814185859%_
                                                         _%tl185815185861%_)
                                                        (_%__kont188878188879%_))))
                                                (_%__kont188878188879%_))
                                            (_%__kont188878188879%_))))
                                    (_%__kont188878188879%_))))
                            (_%__kont188878188879%_))))
                    (_%__kont188878188879%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self185644%_ _%stx185645%_)
        (let* ((_%__stx188910188911%_ _%stx185645%_)
               (_%g185648185681%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx188910188911%_)))))
          (let ((_%__kont188912188913%_ (lambda (_%L185771%_) _%L185771%_))
                (_%__kont188914188915%_
                 (lambda (_%L185710%_ _%L185711%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self185644%_ _%L185710%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx188910188911%_))
                (let ((_%e185651185731%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx188910188911%_))))
                  (let ((_%tl185653185736%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e185651185731%_)))
                        (_%hd185652185734%_
                         (let ()
                           (declare (not safe))
                           (##car _%e185651185731%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl185653185736%_))
                        (let ((_%e185654185739%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl185653185736%_))))
                          (let ((_%tl185656185744%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e185654185739%_)))
                                (_%hd185655185742%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e185654185739%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd185655185742%_))
                                (let ((_%e185657185747%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd185655185742%_))))
                                  (let ((_%tl185659185752%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e185657185747%_)))
                                        (_%hd185658185750%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e185657185747%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd185658185750%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd185658185750%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl185659185752%_))
                                                (let ((_%e185660185755%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl185659185752%_))))
                                                  (let ((_%tl185662185760%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e185660185755%_)))
                                                        (_%hd185661185758%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e185660185755%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185662185760%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl185656185744%_))
                                                            (let ((_%e185663185763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl185656185744%_))))
                      (let ((_%tl185665185768%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e185663185763%_)))
                            (_%hd185664185766%_
                             (let ()
                               (declare (not safe))
                               (##car _%e185663185763%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl185665185768%_))
                            (_%__kont188912188913%_ _%hd185661185758%_)
                            (let ()
                              (declare (not safe))
                              (_%g185648185681%_)))))
                    (let () (declare (not safe)) (_%g185648185681%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl185656185744%_))
                    (let ((_%e185674185702%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl185656185744%_))))
                      (let ((_%tl185676185707%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e185674185702%_)))
                            (_%hd185675185705%_
                             (let ()
                               (declare (not safe))
                               (##car _%e185674185702%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl185676185707%_))
                            (_%__kont188914188915%_
                             _%hd185675185705%_
                             _%hd185655185742%_)
                            (let ()
                              (declare (not safe))
                              (_%g185648185681%_)))))
                    (let () (declare (not safe)) (_%g185648185681%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl185656185744%_))
                                                    (let ((_%e185674185702%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl185656185744%_))))
                                                      (let ((_%tl185676185707%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e185674185702%_)))
                    (_%hd185675185705%_
                     (let () (declare (not safe)) (##car _%e185674185702%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl185676185707%_))
                    (_%__kont188914188915%_
                     _%hd185675185705%_
                     _%hd185655185742%_)
                    (let () (declare (not safe)) (_%g185648185681%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g185648185681%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl185656185744%_))
                                                (let ((_%e185674185702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl185656185744%_))))
                                                  (let ((_%tl185676185707%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e185674185702%_)))
                                                        (_%hd185675185705%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e185674185702%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185676185707%_))
                                                        (_%__kont188914188915%_
                                                         _%hd185675185705%_
                                                         _%hd185655185742%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g185648185681%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g185648185681%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl185656185744%_))
                                            (let ((_%e185674185702%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl185656185744%_))))
                                              (let ((_%tl185676185707%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e185674185702%_)))
                                                    (_%hd185675185705%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e185674185702%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl185676185707%_))
                                                    (_%__kont188914188915%_
                                                     _%hd185675185705%_
                                                     _%hd185655185742%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g185648185681%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g185648185681%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl185656185744%_))
                                    (let ((_%e185674185702%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl185656185744%_))))
                                      (let ((_%tl185676185707%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185674185702%_)))
                                            (_%hd185675185705%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185674185702%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl185676185707%_))
                                            (_%__kont188914188915%_
                                             _%hd185675185705%_
                                             _%hd185655185742%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g185648185681%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g185648185681%_))))))
                        (let () (declare (not safe)) (_%g185648185681%_)))))
                (let () (declare (not safe)) (_%g185648185681%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self185560%_ _%stx185561%_)
        (let* ((_%g185563185584%_
                (lambda (_%g185564185581%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g185564185581%_))))
               (_%g185562185641%_
                (lambda (_%g185564185587%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g185564185587%_))
                      (let ((_%e185568185589%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g185564185587%_))))
                        (let ((_%hd185569185592%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e185568185589%_)))
                              (_%tl185570185594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e185568185589%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl185570185594%_))
                              (let ((_%e185571185597%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl185570185594%_))))
                                (let ((_%hd185572185600%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e185571185597%_)))
                                      (_%tl185573185602%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e185571185597%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl185573185602%_))
                                      (let ((_%e185574185605%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl185573185602%_))))
                                        (let ((_%hd185575185608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185574185605%_)))
                                              (_%tl185576185610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185574185605%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl185576185610%_))
                                              (let ((_%e185577185613%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl185576185610%_))))
                                                (let ((_%hd185578185616%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e185577185613%_)))
                                                      (_%tl185579185618%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e185577185613%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl185579185618%_))
                                                      ((lambda (_%L185621%_
                                                                _%L185622%_
                                                                _%L185623%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self185560%_
                                                            _%L185622%_)))
                                                       _%hd185578185616%_
                                                       _%hd185575185608%_
                                                       _%hd185572185600%_)
                                                      (_%g185563185584%_
                                                       _%g185564185587%_))))
                                              (_%g185563185584%_
                                               _%g185564185587%_))))
                                      (_%g185563185584%_ _%g185564185587%_))))
                              (_%g185563185584%_ _%g185564185587%_))))
                      (_%g185563185584%_ _%g185564185587%_)))))
          (_%g185562185641%_ _%stx185561%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self184521%_ _%stx184522%_)
        (let* ((_%__stx188976188977%_ _%stx184522%_)
               (_%g184530184752%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx188976188977%_)))))
          (let ((_%__kont188978188979%_
                 (lambda (_%L185509%_ _%L185510%_ _%L185511%_ _%L185512%_)
                   (let ((__tmp190114
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184521%_ 'methods)))
                         (__tmp190113
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L185510%_))))
                     (declare (not safe))
                     (hash-put! __tmp190114 __tmp190113 '#t))
                   (for-each
                    (lambda (_%g185545185547%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self184521%_ _%g185545185547%_)))
                    (let ((__tmp190115
                           (lambda (_%g185549185552%_ _%g185550185554%_)
                             (cons _%g185549185552%_ _%g185550185554%_))))
                      (declare (not safe))
                      (__foldr1 __tmp190115 '() _%L185509%_)))))
                (_%__kont188982188983%_
                 (lambda (_%L185344%_
                          _%L185345%_
                          _%L185346%_
                          _%L185347%_
                          _%L185348%_)
                   (let ((__tmp190117
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184521%_ 'methods)))
                         (__tmp190116
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L185345%_))))
                     (declare (not safe))
                     (hash-put! __tmp190117 __tmp190116 '#t))
                   (for-each
                    (lambda (_%g185388185390%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self184521%_ _%g185388185390%_)))
                    (let ((__tmp190118
                           (lambda (_%g185392185395%_ _%g185393185397%_)
                             (cons _%g185392185395%_ _%g185393185397%_))))
                      (declare (not safe))
                      (__foldr1 __tmp190118 '() _%L185344%_)))))
                (_%__kont188986188987%_
                 (lambda (_%L185177%_ _%L185178%_ _%L185179%_)
                   (let ((__tmp190120
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184521%_ 'slots)))
                         (__tmp190119
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L185177%_))))
                     (declare (not safe))
                     (hash-put! __tmp190120 __tmp190119 '#t))))
                (_%__kont188988188989%_
                 (lambda (_%L185054%_ _%L185055%_ _%L185056%_ _%L185057%_)
                   (let ((__tmp190122
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184521%_ 'slots)))
                         (__tmp190121
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L185055%_))))
                     (declare (not safe))
                     (hash-put! __tmp190122 __tmp190121 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self184521%_ _%L185054%_))))
                (_%__kont188990188991%_
                 (lambda (_%L184928%_ _%L184929%_)
                   (let* ((_%accessor184951%_
                           (let ((__tmp190123
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L184929%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp190123)))
                          (_%klass184953%_
                           (let ((__tmp190124
                                  (##structure-ref
                                   _%accessor184951%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx184522%_
                              __tmp190124)))
                          (_%slot184955%_
                           (##structure-ref
                            _%accessor184951%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor184951%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass184953%_
                                    _%slot184955%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass184953%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp190126
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self184521%_ 'slots)))
                               (__tmp190125
                                (##structure-ref
                                 _%accessor184951%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp190126 __tmp190125 '#t))))))
                (_%__kont188992188993%_
                 (lambda (_%L184828%_ _%L184829%_ _%L184830%_)
                   (let* ((_%mutator184857%_
                           (let ((__tmp190127
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L184830%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp190127)))
                          (_%klass184859%_
                           (let ((__tmp190128
                                  (##structure-ref
                                   _%mutator184857%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx184522%_
                              __tmp190128)))
                          (_%slot184861%_
                           (##structure-ref
                            _%mutator184857%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator184857%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass184859%_
                                    _%slot184861%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass184859%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp190129
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self184521%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp190129 _%slot184861%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self184521%_ _%L184828%_)))))
                (_%__kont188994188995%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self184521%_ _%stx184522%_)))))
            (let* ((_%__match189475189476%_
                    (lambda (_%e184724184764%_
                             _%hd184725184767%_
                             _%tl184726184769%_
                             _%e184727184772%_
                             _%hd184728184775%_
                             _%tl184729184777%_
                             _%e184730184780%_
                             _%hd184731184783%_
                             _%tl184732184785%_
                             _%e184733184788%_
                             _%hd184734184791%_
                             _%tl184735184793%_
                             _%e184736184796%_
                             _%hd184737184799%_
                             _%tl184738184801%_
                             _%e184739184804%_
                             _%hd184740184807%_
                             _%tl184741184809%_
                             _%e184742184812%_
                             _%hd184743184815%_
                             _%tl184744184817%_
                             _%e184745184820%_
                             _%hd184746184823%_
                             _%tl184747184825%_)
                      (let ((_%L184828%_ _%hd184746184823%_)
                            (_%L184829%_ _%hd184743184815%_)
                            (_%L184830%_ _%hd184734184791%_))
                        (if (and (let ((__tmp190130
                                        (let ((__tmp190131
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L184830%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp190131))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp190130
                                    'gxc#!mutator::t))
                                 (let ((__tmp190132
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184521%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L184829%_
                                    __tmp190132)))
                            (_%__kont188992188993%_
                             _%L184828%_
                             _%L184829%_
                             _%L184830%_)
                            (_%__kont188994188995%_)))))
                   (_%__match189473189474%_
                    (lambda (_%e184724184764%_
                             _%hd184725184767%_
                             _%tl184726184769%_
                             _%e184727184772%_
                             _%hd184728184775%_
                             _%tl184729184777%_
                             _%e184730184780%_
                             _%hd184731184783%_
                             _%tl184732184785%_
                             _%e184733184788%_
                             _%hd184734184791%_
                             _%tl184735184793%_
                             _%e184736184796%_
                             _%hd184737184799%_
                             _%tl184738184801%_
                             _%e184739184804%_
                             _%hd184740184807%_
                             _%tl184741184809%_
                             _%e184742184812%_
                             _%hd184743184815%_
                             _%tl184744184817%_
                             _%e184745184820%_
                             _%hd184746184823%_
                             _%tl184747184825%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl184747184825%_))
                          (_%__match189475189476%_
                           _%e184724184764%_
                           _%hd184725184767%_
                           _%tl184726184769%_
                           _%e184727184772%_
                           _%hd184728184775%_
                           _%tl184729184777%_
                           _%e184730184780%_
                           _%hd184731184783%_
                           _%tl184732184785%_
                           _%e184733184788%_
                           _%hd184734184791%_
                           _%tl184735184793%_
                           _%e184736184796%_
                           _%hd184737184799%_
                           _%tl184738184801%_
                           _%e184739184804%_
                           _%hd184740184807%_
                           _%tl184741184809%_
                           _%e184742184812%_
                           _%hd184743184815%_
                           _%tl184744184817%_
                           _%e184745184820%_
                           _%hd184746184823%_
                           _%tl184747184825%_)
                          (_%__kont188994188995%_))))
                   (_%__match189467189468%_
                    (lambda (_%e184724184764%_
                             _%hd184725184767%_
                             _%tl184726184769%_
                             _%e184727184772%_
                             _%hd184728184775%_
                             _%tl184729184777%_
                             _%e184730184780%_
                             _%hd184731184783%_
                             _%tl184732184785%_
                             _%e184733184788%_
                             _%hd184734184791%_
                             _%tl184735184793%_
                             _%e184736184796%_
                             _%hd184737184799%_
                             _%tl184738184801%_
                             _%e184739184804%_
                             _%hd184740184807%_
                             _%tl184741184809%_
                             _%e184742184812%_
                             _%hd184743184815%_
                             _%tl184744184817%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184738184801%_))
                          (let ((_%e184745184820%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184738184801%_))))
                            (let ((_%tl184747184825%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184745184820%_)))
                                  (_%hd184746184823%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184745184820%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl184747184825%_))
                                  (_%__match189475189476%_
                                   _%e184724184764%_
                                   _%hd184725184767%_
                                   _%tl184726184769%_
                                   _%e184727184772%_
                                   _%hd184728184775%_
                                   _%tl184729184777%_
                                   _%e184730184780%_
                                   _%hd184731184783%_
                                   _%tl184732184785%_
                                   _%e184733184788%_
                                   _%hd184734184791%_
                                   _%tl184735184793%_
                                   _%e184736184796%_
                                   _%hd184737184799%_
                                   _%tl184738184801%_
                                   _%e184739184804%_
                                   _%hd184740184807%_
                                   _%tl184741184809%_
                                   _%e184742184812%_
                                   _%hd184743184815%_
                                   _%tl184744184817%_
                                   _%e184745184820%_
                                   _%hd184746184823%_
                                   _%tl184747184825%_)
                                  (_%__kont188994188995%_))))
                          (_%__kont188994188995%_))))
                   (_%__match189413189414%_
                    (lambda (_%e184700184872%_
                             _%hd184701184875%_
                             _%tl184702184877%_
                             _%e184703184880%_
                             _%hd184704184883%_
                             _%tl184705184885%_
                             _%e184706184888%_
                             _%hd184707184891%_
                             _%tl184708184893%_
                             _%e184709184896%_
                             _%hd184710184899%_
                             _%tl184711184901%_
                             _%e184712184904%_
                             _%hd184713184907%_
                             _%tl184714184909%_
                             _%e184715184912%_
                             _%hd184716184915%_
                             _%tl184717184917%_
                             _%e184718184920%_
                             _%hd184719184923%_
                             _%tl184720184925%_)
                      (let ((_%L184928%_ _%hd184719184923%_)
                            (_%L184929%_ _%hd184710184899%_))
                        (if (and (let ((__tmp190133
                                        (let ((__tmp190134
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L184929%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp190134))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp190133
                                    'gxc#!accessor::t))
                                 (let ((__tmp190135
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184521%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L184928%_
                                    __tmp190135)))
                            (_%__kont188990188991%_ _%L184928%_ _%L184929%_)
                            (_%__kont188994188995%_)))))
                   (_%__match189411189412%_
                    (lambda (_%e184700184872%_
                             _%hd184701184875%_
                             _%tl184702184877%_
                             _%e184703184880%_
                             _%hd184704184883%_
                             _%tl184705184885%_
                             _%e184706184888%_
                             _%hd184707184891%_
                             _%tl184708184893%_
                             _%e184709184896%_
                             _%hd184710184899%_
                             _%tl184711184901%_
                             _%e184712184904%_
                             _%hd184713184907%_
                             _%tl184714184909%_
                             _%e184715184912%_
                             _%hd184716184915%_
                             _%tl184717184917%_
                             _%e184718184920%_
                             _%hd184719184923%_
                             _%tl184720184925%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl184714184909%_))
                          (_%__match189413189414%_
                           _%e184700184872%_
                           _%hd184701184875%_
                           _%tl184702184877%_
                           _%e184703184880%_
                           _%hd184704184883%_
                           _%tl184705184885%_
                           _%e184706184888%_
                           _%hd184707184891%_
                           _%tl184708184893%_
                           _%e184709184896%_
                           _%hd184710184899%_
                           _%tl184711184901%_
                           _%e184712184904%_
                           _%hd184713184907%_
                           _%tl184714184909%_
                           _%e184715184912%_
                           _%hd184716184915%_
                           _%tl184717184917%_
                           _%e184718184920%_
                           _%hd184719184923%_
                           _%tl184720184925%_)
                          (_%__match189467189468%_
                           _%e184700184872%_
                           _%hd184701184875%_
                           _%tl184702184877%_
                           _%e184703184880%_
                           _%hd184704184883%_
                           _%tl184705184885%_
                           _%e184706184888%_
                           _%hd184707184891%_
                           _%tl184708184893%_
                           _%e184709184896%_
                           _%hd184710184899%_
                           _%tl184711184901%_
                           _%e184712184904%_
                           _%hd184713184907%_
                           _%tl184714184909%_
                           _%e184715184912%_
                           _%hd184716184915%_
                           _%tl184717184917%_
                           _%e184718184920%_
                           _%hd184719184923%_
                           _%tl184720184925%_))))
                   (_%__match189357189358%_
                    (lambda (_%e184665184966%_
                             _%hd184666184969%_
                             _%tl184667184971%_
                             _%e184668184974%_
                             _%hd184669184977%_
                             _%tl184670184979%_
                             _%e184671184982%_
                             _%hd184672184985%_
                             _%tl184673184987%_
                             _%e184674184990%_
                             _%hd184675184993%_
                             _%tl184676184995%_
                             _%e184677184998%_
                             _%hd184678185001%_
                             _%tl184679185003%_
                             _%e184680185006%_
                             _%hd184681185009%_
                             _%tl184682185011%_
                             _%e184683185014%_
                             _%hd184684185017%_
                             _%tl184685185019%_
                             _%e184686185022%_
                             _%hd184687185025%_
                             _%tl184688185027%_
                             _%e184689185030%_
                             _%hd184690185033%_
                             _%tl184691185035%_
                             _%e184692185038%_
                             _%hd184693185041%_
                             _%tl184694185043%_
                             _%e184695185046%_
                             _%hd184696185049%_
                             _%tl184697185051%_)
                      (let ((_%L185054%_ _%hd184696185049%_)
                            (_%L185055%_ _%hd184693185041%_)
                            (_%L185056%_ _%hd184684185017%_)
                            (_%L185057%_ _%hd184675184993%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L185057%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L185057%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp190136
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184521%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L185056%_
                                    __tmp190136)))
                            (_%__kont188988188989%_
                             _%L185054%_
                             _%L185055%_
                             _%L185056%_
                             _%L185057%_)
                            (_%__kont188994188995%_)))))
                   (_%__match189349189350%_
                    (lambda (_%e184665184966%_
                             _%hd184666184969%_
                             _%tl184667184971%_
                             _%e184668184974%_
                             _%hd184669184977%_
                             _%tl184670184979%_
                             _%e184671184982%_
                             _%hd184672184985%_
                             _%tl184673184987%_
                             _%e184674184990%_
                             _%hd184675184993%_
                             _%tl184676184995%_
                             _%e184677184998%_
                             _%hd184678185001%_
                             _%tl184679185003%_
                             _%e184680185006%_
                             _%hd184681185009%_
                             _%tl184682185011%_
                             _%e184683185014%_
                             _%hd184684185017%_
                             _%tl184685185019%_
                             _%e184686185022%_
                             _%hd184687185025%_
                             _%tl184688185027%_
                             _%e184689185030%_
                             _%hd184690185033%_
                             _%tl184691185035%_
                             _%e184692185038%_
                             _%hd184693185041%_
                             _%tl184694185043%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184688185027%_))
                          (let ((_%e184695185046%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184688185027%_))))
                            (let ((_%tl184697185051%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184695185046%_)))
                                  (_%hd184696185049%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184695185046%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl184697185051%_))
                                  (_%__match189357189358%_
                                   _%e184665184966%_
                                   _%hd184666184969%_
                                   _%tl184667184971%_
                                   _%e184668184974%_
                                   _%hd184669184977%_
                                   _%tl184670184979%_
                                   _%e184671184982%_
                                   _%hd184672184985%_
                                   _%tl184673184987%_
                                   _%e184674184990%_
                                   _%hd184675184993%_
                                   _%tl184676184995%_
                                   _%e184677184998%_
                                   _%hd184678185001%_
                                   _%tl184679185003%_
                                   _%e184680185006%_
                                   _%hd184681185009%_
                                   _%tl184682185011%_
                                   _%e184683185014%_
                                   _%hd184684185017%_
                                   _%tl184685185019%_
                                   _%e184686185022%_
                                   _%hd184687185025%_
                                   _%tl184688185027%_
                                   _%e184689185030%_
                                   _%hd184690185033%_
                                   _%tl184691185035%_
                                   _%e184692185038%_
                                   _%hd184693185041%_
                                   _%tl184694185043%_
                                   _%e184695185046%_
                                   _%hd184696185049%_
                                   _%tl184697185051%_)
                                  (_%__kont188994188995%_))))
                          (_%__match189473189474%_
                           _%e184665184966%_
                           _%hd184666184969%_
                           _%tl184667184971%_
                           _%e184668184974%_
                           _%hd184669184977%_
                           _%tl184670184979%_
                           _%e184671184982%_
                           _%hd184672184985%_
                           _%tl184673184987%_
                           _%e184674184990%_
                           _%hd184675184993%_
                           _%tl184676184995%_
                           _%e184677184998%_
                           _%hd184678185001%_
                           _%tl184679185003%_
                           _%e184680185006%_
                           _%hd184681185009%_
                           _%tl184682185011%_
                           _%e184683185014%_
                           _%hd184684185017%_
                           _%tl184685185019%_
                           _%e184686185022%_
                           _%hd184687185025%_
                           _%tl184688185027%_))))
                   (_%__match189271189272%_
                    (lambda (_%e184631185097%_
                             _%hd184632185100%_
                             _%tl184633185102%_
                             _%e184634185105%_
                             _%hd184635185108%_
                             _%tl184636185110%_
                             _%e184637185113%_
                             _%hd184638185116%_
                             _%tl184639185118%_
                             _%e184640185121%_
                             _%hd184641185124%_
                             _%tl184642185126%_
                             _%e184643185129%_
                             _%hd184644185132%_
                             _%tl184645185134%_
                             _%e184646185137%_
                             _%hd184647185140%_
                             _%tl184648185142%_
                             _%e184649185145%_
                             _%hd184650185148%_
                             _%tl184651185150%_
                             _%e184652185153%_
                             _%hd184653185156%_
                             _%tl184654185158%_
                             _%e184655185161%_
                             _%hd184656185164%_
                             _%tl184657185166%_
                             _%e184658185169%_
                             _%hd184659185172%_
                             _%tl184660185174%_)
                      (let ((_%L185177%_ _%hd184659185172%_)
                            (_%L185178%_ _%hd184650185148%_)
                            (_%L185179%_ _%hd184641185124%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L185179%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L185179%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp190137
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184521%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L185178%_
                                    __tmp190137)))
                            (_%__kont188986188987%_
                             _%L185177%_
                             _%L185178%_
                             _%L185179%_)
                            (_%__match189475189476%_
                             _%e184631185097%_
                             _%hd184632185100%_
                             _%tl184633185102%_
                             _%e184634185105%_
                             _%hd184635185108%_
                             _%tl184636185110%_
                             _%e184637185113%_
                             _%hd184638185116%_
                             _%tl184639185118%_
                             _%e184640185121%_
                             _%hd184641185124%_
                             _%tl184642185126%_
                             _%e184643185129%_
                             _%hd184644185132%_
                             _%tl184645185134%_
                             _%e184646185137%_
                             _%hd184647185140%_
                             _%tl184648185142%_
                             _%e184649185145%_
                             _%hd184650185148%_
                             _%tl184651185150%_
                             _%e184652185153%_
                             _%hd184653185156%_
                             _%tl184654185158%_)))))
                   (_%__match189269189270%_
                    (lambda (_%e184631185097%_
                             _%hd184632185100%_
                             _%tl184633185102%_
                             _%e184634185105%_
                             _%hd184635185108%_
                             _%tl184636185110%_
                             _%e184637185113%_
                             _%hd184638185116%_
                             _%tl184639185118%_
                             _%e184640185121%_
                             _%hd184641185124%_
                             _%tl184642185126%_
                             _%e184643185129%_
                             _%hd184644185132%_
                             _%tl184645185134%_
                             _%e184646185137%_
                             _%hd184647185140%_
                             _%tl184648185142%_
                             _%e184649185145%_
                             _%hd184650185148%_
                             _%tl184651185150%_
                             _%e184652185153%_
                             _%hd184653185156%_
                             _%tl184654185158%_
                             _%e184655185161%_
                             _%hd184656185164%_
                             _%tl184657185166%_
                             _%e184658185169%_
                             _%hd184659185172%_
                             _%tl184660185174%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl184654185158%_))
                          (_%__match189271189272%_
                           _%e184631185097%_
                           _%hd184632185100%_
                           _%tl184633185102%_
                           _%e184634185105%_
                           _%hd184635185108%_
                           _%tl184636185110%_
                           _%e184637185113%_
                           _%hd184638185116%_
                           _%tl184639185118%_
                           _%e184640185121%_
                           _%hd184641185124%_
                           _%tl184642185126%_
                           _%e184643185129%_
                           _%hd184644185132%_
                           _%tl184645185134%_
                           _%e184646185137%_
                           _%hd184647185140%_
                           _%tl184648185142%_
                           _%e184649185145%_
                           _%hd184650185148%_
                           _%tl184651185150%_
                           _%e184652185153%_
                           _%hd184653185156%_
                           _%tl184654185158%_
                           _%e184655185161%_
                           _%hd184656185164%_
                           _%tl184657185166%_
                           _%e184658185169%_
                           _%hd184659185172%_
                           _%tl184660185174%_)
                          (_%__match189349189350%_
                           _%e184631185097%_
                           _%hd184632185100%_
                           _%tl184633185102%_
                           _%e184634185105%_
                           _%hd184635185108%_
                           _%tl184636185110%_
                           _%e184637185113%_
                           _%hd184638185116%_
                           _%tl184639185118%_
                           _%e184640185121%_
                           _%hd184641185124%_
                           _%tl184642185126%_
                           _%e184643185129%_
                           _%hd184644185132%_
                           _%tl184645185134%_
                           _%e184646185137%_
                           _%hd184647185140%_
                           _%tl184648185142%_
                           _%e184649185145%_
                           _%hd184650185148%_
                           _%tl184651185150%_
                           _%e184652185153%_
                           _%hd184653185156%_
                           _%tl184654185158%_
                           _%e184655185161%_
                           _%hd184656185164%_
                           _%tl184657185166%_
                           _%e184658185169%_
                           _%hd184659185172%_
                           _%tl184660185174%_))))
                   (_%__match189259189260%_
                    (lambda (_%e184631185097%_
                             _%hd184632185100%_
                             _%tl184633185102%_
                             _%e184634185105%_
                             _%hd184635185108%_
                             _%tl184636185110%_
                             _%e184637185113%_
                             _%hd184638185116%_
                             _%tl184639185118%_
                             _%e184640185121%_
                             _%hd184641185124%_
                             _%tl184642185126%_
                             _%e184643185129%_
                             _%hd184644185132%_
                             _%tl184645185134%_
                             _%e184646185137%_
                             _%hd184647185140%_
                             _%tl184648185142%_
                             _%e184649185145%_
                             _%hd184650185148%_
                             _%tl184651185150%_
                             _%e184652185153%_
                             _%hd184653185156%_
                             _%tl184654185158%_
                             _%e184655185161%_
                             _%hd184656185164%_
                             _%tl184657185166%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd184656185164%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl184657185166%_))
                              (let ((_%e184658185169%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl184657185166%_))))
                                (let ((_%tl184660185174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e184658185169%_)))
                                      (_%hd184659185172%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e184658185169%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl184660185174%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl184654185158%_))
                                          (_%__match189271189272%_
                                           _%e184631185097%_
                                           _%hd184632185100%_
                                           _%tl184633185102%_
                                           _%e184634185105%_
                                           _%hd184635185108%_
                                           _%tl184636185110%_
                                           _%e184637185113%_
                                           _%hd184638185116%_
                                           _%tl184639185118%_
                                           _%e184640185121%_
                                           _%hd184641185124%_
                                           _%tl184642185126%_
                                           _%e184643185129%_
                                           _%hd184644185132%_
                                           _%tl184645185134%_
                                           _%e184646185137%_
                                           _%hd184647185140%_
                                           _%tl184648185142%_
                                           _%e184649185145%_
                                           _%hd184650185148%_
                                           _%tl184651185150%_
                                           _%e184652185153%_
                                           _%hd184653185156%_
                                           _%tl184654185158%_
                                           _%e184655185161%_
                                           _%hd184656185164%_
                                           _%tl184657185166%_
                                           _%e184658185169%_
                                           _%hd184659185172%_
                                           _%tl184660185174%_)
                                          (_%__match189349189350%_
                                           _%e184631185097%_
                                           _%hd184632185100%_
                                           _%tl184633185102%_
                                           _%e184634185105%_
                                           _%hd184635185108%_
                                           _%tl184636185110%_
                                           _%e184637185113%_
                                           _%hd184638185116%_
                                           _%tl184639185118%_
                                           _%e184640185121%_
                                           _%hd184641185124%_
                                           _%tl184642185126%_
                                           _%e184643185129%_
                                           _%hd184644185132%_
                                           _%tl184645185134%_
                                           _%e184646185137%_
                                           _%hd184647185140%_
                                           _%tl184648185142%_
                                           _%e184649185145%_
                                           _%hd184650185148%_
                                           _%tl184651185150%_
                                           _%e184652185153%_
                                           _%hd184653185156%_
                                           _%tl184654185158%_
                                           _%e184655185161%_
                                           _%hd184656185164%_
                                           _%tl184657185166%_
                                           _%e184658185169%_
                                           _%hd184659185172%_
                                           _%tl184660185174%_))
                                      (_%__match189473189474%_
                                       _%e184631185097%_
                                       _%hd184632185100%_
                                       _%tl184633185102%_
                                       _%e184634185105%_
                                       _%hd184635185108%_
                                       _%tl184636185110%_
                                       _%e184637185113%_
                                       _%hd184638185116%_
                                       _%tl184639185118%_
                                       _%e184640185121%_
                                       _%hd184641185124%_
                                       _%tl184642185126%_
                                       _%e184643185129%_
                                       _%hd184644185132%_
                                       _%tl184645185134%_
                                       _%e184646185137%_
                                       _%hd184647185140%_
                                       _%tl184648185142%_
                                       _%e184649185145%_
                                       _%hd184650185148%_
                                       _%tl184651185150%_
                                       _%e184652185153%_
                                       _%hd184653185156%_
                                       _%tl184654185158%_))))
                              (_%__match189473189474%_
                               _%e184631185097%_
                               _%hd184632185100%_
                               _%tl184633185102%_
                               _%e184634185105%_
                               _%hd184635185108%_
                               _%tl184636185110%_
                               _%e184637185113%_
                               _%hd184638185116%_
                               _%tl184639185118%_
                               _%e184640185121%_
                               _%hd184641185124%_
                               _%tl184642185126%_
                               _%e184643185129%_
                               _%hd184644185132%_
                               _%tl184645185134%_
                               _%e184646185137%_
                               _%hd184647185140%_
                               _%tl184648185142%_
                               _%e184649185145%_
                               _%hd184650185148%_
                               _%tl184651185150%_
                               _%e184652185153%_
                               _%hd184653185156%_
                               _%tl184654185158%_))
                          (_%__match189473189474%_
                           _%e184631185097%_
                           _%hd184632185100%_
                           _%tl184633185102%_
                           _%e184634185105%_
                           _%hd184635185108%_
                           _%tl184636185110%_
                           _%e184637185113%_
                           _%hd184638185116%_
                           _%tl184639185118%_
                           _%e184640185121%_
                           _%hd184641185124%_
                           _%tl184642185126%_
                           _%e184643185129%_
                           _%hd184644185132%_
                           _%tl184645185134%_
                           _%e184646185137%_
                           _%hd184647185140%_
                           _%tl184648185142%_
                           _%e184649185145%_
                           _%hd184650185148%_
                           _%tl184651185150%_
                           _%e184652185153%_
                           _%hd184653185156%_
                           _%tl184654185158%_))))
                   (_%__match189191189192%_
                    (lambda (_%e184580185216%_
                             _%hd184581185219%_
                             _%tl184582185221%_
                             _%e184583185224%_
                             _%hd184584185227%_
                             _%tl184585185229%_
                             _%e184586185232%_
                             _%hd184587185235%_
                             _%tl184588185237%_
                             _%e184589185240%_
                             _%hd184590185243%_
                             _%tl184591185245%_
                             _%e184592185248%_
                             _%hd184593185251%_
                             _%tl184594185253%_
                             _%e184595185256%_
                             _%hd184596185259%_
                             _%tl184597185261%_
                             _%e184598185264%_
                             _%hd184599185267%_
                             _%tl184600185269%_
                             _%e184601185272%_
                             _%hd184602185275%_
                             _%tl184603185277%_
                             _%e184604185280%_
                             _%hd184605185283%_
                             _%tl184606185285%_
                             _%e184607185288%_
                             _%hd184608185291%_
                             _%tl184609185293%_
                             _%e184610185296%_
                             _%hd184611185299%_
                             _%tl184612185301%_
                             _%e184613185304%_
                             _%hd184614185307%_
                             _%tl184615185309%_
                             _%e184616185312%_
                             _%hd184617185315%_
                             _%tl184618185317%_
                             _%__splice188984188985%_
                             _%target184619185320%_
                             _%tl184621185322%_)
                      (letrec ((_%loop184622185325%_
                                (lambda (_%hd184620185328%_
                                         _%args184626185330%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd184620185328%_))
                                      (let ((_%e184623185333%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd184620185328%_))))
                                        (let ((_%lp-tl184625185338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e184623185333%_)))
                                              (_%lp-hd184624185336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e184623185333%_))))
                                          (_%loop184622185325%_
                                           _%lp-tl184625185338%_
                                           (cons _%lp-hd184624185336%_
                                                 _%args184626185330%_))))
                                      (let ((_%args184627185341%_
                                             (reverse _%args184626185330%_)))
                                        (let ((_%L185344%_
                                               _%args184627185341%_)
                                              (_%L185345%_ _%hd184617185315%_)
                                              (_%L185346%_ _%hd184608185291%_)
                                              (_%L185347%_ _%hd184599185267%_)
                                              (_%L185348%_ _%hd184590185243%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L185348%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L185347%_
                                                      'call-method))
                                                   (let ((__tmp190138
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self184521%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L185346%_
                                                      __tmp190138)))
                                              (_%__kont188982188983%_
                                               _%L185344%_
                                               _%L185345%_
                                               _%L185346%_
                                               _%L185347%_
                                               _%L185348%_)
                                              (_%__kont188994188995%_))))))))
                        (_%loop184622185325%_ _%target184619185320%_ '()))))
                   (_%__match189149189150%_
                    (lambda (_%e184580185216%_
                             _%hd184581185219%_
                             _%tl184582185221%_
                             _%e184583185224%_
                             _%hd184584185227%_
                             _%tl184585185229%_
                             _%e184586185232%_
                             _%hd184587185235%_
                             _%tl184588185237%_
                             _%e184589185240%_
                             _%hd184590185243%_
                             _%tl184591185245%_
                             _%e184592185248%_
                             _%hd184593185251%_
                             _%tl184594185253%_
                             _%e184595185256%_
                             _%hd184596185259%_
                             _%tl184597185261%_
                             _%e184598185264%_
                             _%hd184599185267%_
                             _%tl184600185269%_
                             _%e184601185272%_
                             _%hd184602185275%_
                             _%tl184603185277%_
                             _%e184604185280%_
                             _%hd184605185283%_
                             _%tl184606185285%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd184605185283%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl184606185285%_))
                              (let ((_%e184607185288%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl184606185285%_))))
                                (let ((_%tl184609185293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e184607185288%_)))
                                      (_%hd184608185291%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e184607185288%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl184609185293%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl184603185277%_))
                                          (let ((_%e184610185296%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl184603185277%_))))
                                            (let ((_%tl184612185301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e184610185296%_)))
                                                  (_%hd184611185299%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e184610185296%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd184611185299%_))
                                                  (let ((_%e184613185304%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd184611185299%_))))
                                                    (let ((_%tl184615185309%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e184613185304%_)))
                                                          (_%hd184614185307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e184613185304%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd184614185307%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd184614185307%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184615185309%_))
                          (let ((_%e184616185312%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184615185309%_))))
                            (let ((_%tl184618185317%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184616185312%_)))
                                  (_%hd184617185315%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184616185312%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl184618185317%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl184612185301%_))
                                      (let ((_%__splice188984188985%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl184612185301%_
                                                '0))))
                                        (let ((_%tl184621185322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice188984188985%_
                                                  '1)))
                                              (_%target184619185320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice188984188985%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl184621185322%_))
                                              (_%__match189191189192%_
                                               _%e184580185216%_
                                               _%hd184581185219%_
                                               _%tl184582185221%_
                                               _%e184583185224%_
                                               _%hd184584185227%_
                                               _%tl184585185229%_
                                               _%e184586185232%_
                                               _%hd184587185235%_
                                               _%tl184588185237%_
                                               _%e184589185240%_
                                               _%hd184590185243%_
                                               _%tl184591185245%_
                                               _%e184592185248%_
                                               _%hd184593185251%_
                                               _%tl184594185253%_
                                               _%e184595185256%_
                                               _%hd184596185259%_
                                               _%tl184597185261%_
                                               _%e184598185264%_
                                               _%hd184599185267%_
                                               _%tl184600185269%_
                                               _%e184601185272%_
                                               _%hd184602185275%_
                                               _%tl184603185277%_
                                               _%e184604185280%_
                                               _%hd184605185283%_
                                               _%tl184606185285%_
                                               _%e184607185288%_
                                               _%hd184608185291%_
                                               _%tl184609185293%_
                                               _%e184610185296%_
                                               _%hd184611185299%_
                                               _%tl184612185301%_
                                               _%e184613185304%_
                                               _%hd184614185307%_
                                               _%tl184615185309%_
                                               _%e184616185312%_
                                               _%hd184617185315%_
                                               _%tl184618185317%_
                                               _%__splice188984188985%_
                                               _%target184619185320%_
                                               _%tl184621185322%_)
                                              (_%__kont188994188995%_))))
                                      (_%__kont188994188995%_))
                                  (_%__kont188994188995%_))))
                          (_%__kont188994188995%_))
                      (_%__kont188994188995%_))
                  (_%__kont188994188995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont188994188995%_))))
                                          (_%__match189473189474%_
                                           _%e184580185216%_
                                           _%hd184581185219%_
                                           _%tl184582185221%_
                                           _%e184583185224%_
                                           _%hd184584185227%_
                                           _%tl184585185229%_
                                           _%e184586185232%_
                                           _%hd184587185235%_
                                           _%tl184588185237%_
                                           _%e184589185240%_
                                           _%hd184590185243%_
                                           _%tl184591185245%_
                                           _%e184592185248%_
                                           _%hd184593185251%_
                                           _%tl184594185253%_
                                           _%e184595185256%_
                                           _%hd184596185259%_
                                           _%tl184597185261%_
                                           _%e184598185264%_
                                           _%hd184599185267%_
                                           _%tl184600185269%_
                                           _%e184601185272%_
                                           _%hd184602185275%_
                                           _%tl184603185277%_))
                                      (_%__match189473189474%_
                                       _%e184580185216%_
                                       _%hd184581185219%_
                                       _%tl184582185221%_
                                       _%e184583185224%_
                                       _%hd184584185227%_
                                       _%tl184585185229%_
                                       _%e184586185232%_
                                       _%hd184587185235%_
                                       _%tl184588185237%_
                                       _%e184589185240%_
                                       _%hd184590185243%_
                                       _%tl184591185245%_
                                       _%e184592185248%_
                                       _%hd184593185251%_
                                       _%tl184594185253%_
                                       _%e184595185256%_
                                       _%hd184596185259%_
                                       _%tl184597185261%_
                                       _%e184598185264%_
                                       _%hd184599185267%_
                                       _%tl184600185269%_
                                       _%e184601185272%_
                                       _%hd184602185275%_
                                       _%tl184603185277%_))))
                              (_%__match189473189474%_
                               _%e184580185216%_
                               _%hd184581185219%_
                               _%tl184582185221%_
                               _%e184583185224%_
                               _%hd184584185227%_
                               _%tl184585185229%_
                               _%e184586185232%_
                               _%hd184587185235%_
                               _%tl184588185237%_
                               _%e184589185240%_
                               _%hd184590185243%_
                               _%tl184591185245%_
                               _%e184592185248%_
                               _%hd184593185251%_
                               _%tl184594185253%_
                               _%e184595185256%_
                               _%hd184596185259%_
                               _%tl184597185261%_
                               _%e184598185264%_
                               _%hd184599185267%_
                               _%tl184600185269%_
                               _%e184601185272%_
                               _%hd184602185275%_
                               _%tl184603185277%_))
                          (_%__match189259189260%_
                           _%e184580185216%_
                           _%hd184581185219%_
                           _%tl184582185221%_
                           _%e184583185224%_
                           _%hd184584185227%_
                           _%tl184585185229%_
                           _%e184586185232%_
                           _%hd184587185235%_
                           _%tl184588185237%_
                           _%e184589185240%_
                           _%hd184590185243%_
                           _%tl184591185245%_
                           _%e184592185248%_
                           _%hd184593185251%_
                           _%tl184594185253%_
                           _%e184595185256%_
                           _%hd184596185259%_
                           _%tl184597185261%_
                           _%e184598185264%_
                           _%hd184599185267%_
                           _%tl184600185269%_
                           _%e184601185272%_
                           _%hd184602185275%_
                           _%tl184603185277%_
                           _%e184604185280%_
                           _%hd184605185283%_
                           _%tl184606185285%_))))
                   (_%__match189081189082%_
                    (lambda (_%e184536185405%_
                             _%hd184537185408%_
                             _%tl184538185410%_
                             _%e184539185413%_
                             _%hd184540185416%_
                             _%tl184541185418%_
                             _%e184542185421%_
                             _%hd184543185424%_
                             _%tl184544185426%_
                             _%e184545185429%_
                             _%hd184546185432%_
                             _%tl184547185434%_
                             _%e184548185437%_
                             _%hd184549185440%_
                             _%tl184550185442%_
                             _%e184551185445%_
                             _%hd184552185448%_
                             _%tl184553185450%_
                             _%e184554185453%_
                             _%hd184555185456%_
                             _%tl184556185458%_
                             _%e184557185461%_
                             _%hd184558185464%_
                             _%tl184559185466%_
                             _%e184560185469%_
                             _%hd184561185472%_
                             _%tl184562185474%_
                             _%e184563185477%_
                             _%hd184564185480%_
                             _%tl184565185482%_
                             _%__splice188980188981%_
                             _%target184566185485%_
                             _%tl184568185487%_)
                      (letrec ((_%loop184569185490%_
                                (lambda (_%hd184567185493%_
                                         _%args184573185495%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd184567185493%_))
                                      (let ((_%e184570185498%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd184567185493%_))))
                                        (let ((_%lp-tl184572185503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e184570185498%_)))
                                              (_%lp-hd184571185501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e184570185498%_))))
                                          (_%loop184569185490%_
                                           _%lp-tl184572185503%_
                                           (cons _%lp-hd184571185501%_
                                                 _%args184573185495%_))))
                                      (let ((_%args184574185506%_
                                             (reverse _%args184573185495%_)))
                                        (let ((_%L185509%_
                                               _%args184574185506%_)
                                              (_%L185510%_ _%hd184564185480%_)
                                              (_%L185511%_ _%hd184555185456%_)
                                              (_%L185512%_ _%hd184546185432%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L185512%_
                                                      'call-method))
                                                   (let ((__tmp190139
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self184521%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L185511%_
                                                      __tmp190139)))
                                              (_%__kont188978188979%_
                                               _%L185509%_
                                               _%L185510%_
                                               _%L185511%_
                                               _%L185512%_)
                                              (_%__match189269189270%_
                                               _%e184536185405%_
                                               _%hd184537185408%_
                                               _%tl184538185410%_
                                               _%e184539185413%_
                                               _%hd184540185416%_
                                               _%tl184541185418%_
                                               _%e184542185421%_
                                               _%hd184543185424%_
                                               _%tl184544185426%_
                                               _%e184545185429%_
                                               _%hd184546185432%_
                                               _%tl184547185434%_
                                               _%e184548185437%_
                                               _%hd184549185440%_
                                               _%tl184550185442%_
                                               _%e184551185445%_
                                               _%hd184552185448%_
                                               _%tl184553185450%_
                                               _%e184554185453%_
                                               _%hd184555185456%_
                                               _%tl184556185458%_
                                               _%e184557185461%_
                                               _%hd184558185464%_
                                               _%tl184559185466%_
                                               _%e184560185469%_
                                               _%hd184561185472%_
                                               _%tl184562185474%_
                                               _%e184563185477%_
                                               _%hd184564185480%_
                                               _%tl184565185482%_))))))))
                        (_%loop184569185490%_ _%target184566185485%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx188976188977%_))
                  (let ((_%e184536185405%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx188976188977%_))))
                    (let ((_%tl184538185410%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e184536185405%_)))
                          (_%hd184537185408%_
                           (let ()
                             (declare (not safe))
                             (##car _%e184536185405%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184538185410%_))
                          (let ((_%e184539185413%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184538185410%_))))
                            (let ((_%tl184541185418%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184539185413%_)))
                                  (_%hd184540185416%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184539185413%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd184540185416%_))
                                  (let ((_%e184542185421%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd184540185416%_))))
                                    (let ((_%tl184544185426%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e184542185421%_)))
                                          (_%hd184543185424%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e184542185421%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd184543185424%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd184543185424%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl184544185426%_))
                                                  (let ((_%e184545185429%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl184544185426%_))))
                                                    (let ((_%tl184547185434%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e184545185429%_)))
                                                          (_%hd184546185432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e184545185429%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl184547185434%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl184541185418%_))
                      (let ((_%e184548185437%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl184541185418%_))))
                        (let ((_%tl184550185442%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e184548185437%_)))
                              (_%hd184549185440%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e184548185437%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd184549185440%_))
                              (let ((_%e184551185445%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd184549185440%_))))
                                (let ((_%tl184553185450%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e184551185445%_)))
                                      (_%hd184552185448%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e184551185445%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd184552185448%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd184552185448%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl184553185450%_))
                                              (let ((_%e184554185453%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl184553185450%_))))
                                                (let ((_%tl184556185458%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e184554185453%_)))
                                                      (_%hd184555185456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e184554185453%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl184556185458%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl184550185442%_))
                                                          (let ((_%e184557185461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl184550185442%_))))
                    (let ((_%tl184559185466%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e184557185461%_)))
                          (_%hd184558185464%_
                           (let ()
                             (declare (not safe))
                             (##car _%e184557185461%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd184558185464%_))
                          (let ((_%e184560185469%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd184558185464%_))))
                            (let ((_%tl184562185474%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184560185469%_)))
                                  (_%hd184561185472%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184560185469%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd184561185472%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd184561185472%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl184562185474%_))
                                          (let ((_%e184563185477%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl184562185474%_))))
                                            (let ((_%tl184565185482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e184563185477%_)))
                                                  (_%hd184564185480%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e184563185477%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl184565185482%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl184559185466%_))
                                                      (let ((_%__splice188980188981%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl184559185466%_
                        '0))))
                (let ((_%tl184568185487%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice188980188981%_ '1)))
                      (_%target184566185485%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice188980188981%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl184568185487%_))
                      (_%__match189081189082%_
                       _%e184536185405%_
                       _%hd184537185408%_
                       _%tl184538185410%_
                       _%e184539185413%_
                       _%hd184540185416%_
                       _%tl184541185418%_
                       _%e184542185421%_
                       _%hd184543185424%_
                       _%tl184544185426%_
                       _%e184545185429%_
                       _%hd184546185432%_
                       _%tl184547185434%_
                       _%e184548185437%_
                       _%hd184549185440%_
                       _%tl184550185442%_
                       _%e184551185445%_
                       _%hd184552185448%_
                       _%tl184553185450%_
                       _%e184554185453%_
                       _%hd184555185456%_
                       _%tl184556185458%_
                       _%e184557185461%_
                       _%hd184558185464%_
                       _%tl184559185466%_
                       _%e184560185469%_
                       _%hd184561185472%_
                       _%tl184562185474%_
                       _%e184563185477%_
                       _%hd184564185480%_
                       _%tl184565185482%_
                       _%__splice188980188981%_
                       _%target184566185485%_
                       _%tl184568185487%_)
                      (_%__match189269189270%_
                       _%e184536185405%_
                       _%hd184537185408%_
                       _%tl184538185410%_
                       _%e184539185413%_
                       _%hd184540185416%_
                       _%tl184541185418%_
                       _%e184542185421%_
                       _%hd184543185424%_
                       _%tl184544185426%_
                       _%e184545185429%_
                       _%hd184546185432%_
                       _%tl184547185434%_
                       _%e184548185437%_
                       _%hd184549185440%_
                       _%tl184550185442%_
                       _%e184551185445%_
                       _%hd184552185448%_
                       _%tl184553185450%_
                       _%e184554185453%_
                       _%hd184555185456%_
                       _%tl184556185458%_
                       _%e184557185461%_
                       _%hd184558185464%_
                       _%tl184559185466%_
                       _%e184560185469%_
                       _%hd184561185472%_
                       _%tl184562185474%_
                       _%e184563185477%_
                       _%hd184564185480%_
                       _%tl184565185482%_))))
              (_%__match189269189270%_
               _%e184536185405%_
               _%hd184537185408%_
               _%tl184538185410%_
               _%e184539185413%_
               _%hd184540185416%_
               _%tl184541185418%_
               _%e184542185421%_
               _%hd184543185424%_
               _%tl184544185426%_
               _%e184545185429%_
               _%hd184546185432%_
               _%tl184547185434%_
               _%e184548185437%_
               _%hd184549185440%_
               _%tl184550185442%_
               _%e184551185445%_
               _%hd184552185448%_
               _%tl184553185450%_
               _%e184554185453%_
               _%hd184555185456%_
               _%tl184556185458%_
               _%e184557185461%_
               _%hd184558185464%_
               _%tl184559185466%_
               _%e184560185469%_
               _%hd184561185472%_
               _%tl184562185474%_
               _%e184563185477%_
               _%hd184564185480%_
               _%tl184565185482%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match189473189474%_
                                                   _%e184536185405%_
                                                   _%hd184537185408%_
                                                   _%tl184538185410%_
                                                   _%e184539185413%_
                                                   _%hd184540185416%_
                                                   _%tl184541185418%_
                                                   _%e184542185421%_
                                                   _%hd184543185424%_
                                                   _%tl184544185426%_
                                                   _%e184545185429%_
                                                   _%hd184546185432%_
                                                   _%tl184547185434%_
                                                   _%e184548185437%_
                                                   _%hd184549185440%_
                                                   _%tl184550185442%_
                                                   _%e184551185445%_
                                                   _%hd184552185448%_
                                                   _%tl184553185450%_
                                                   _%e184554185453%_
                                                   _%hd184555185456%_
                                                   _%tl184556185458%_
                                                   _%e184557185461%_
                                                   _%hd184558185464%_
                                                   _%tl184559185466%_))))
                                          (_%__match189473189474%_
                                           _%e184536185405%_
                                           _%hd184537185408%_
                                           _%tl184538185410%_
                                           _%e184539185413%_
                                           _%hd184540185416%_
                                           _%tl184541185418%_
                                           _%e184542185421%_
                                           _%hd184543185424%_
                                           _%tl184544185426%_
                                           _%e184545185429%_
                                           _%hd184546185432%_
                                           _%tl184547185434%_
                                           _%e184548185437%_
                                           _%hd184549185440%_
                                           _%tl184550185442%_
                                           _%e184551185445%_
                                           _%hd184552185448%_
                                           _%tl184553185450%_
                                           _%e184554185453%_
                                           _%hd184555185456%_
                                           _%tl184556185458%_
                                           _%e184557185461%_
                                           _%hd184558185464%_
                                           _%tl184559185466%_))
                                      (_%__match189149189150%_
                                       _%e184536185405%_
                                       _%hd184537185408%_
                                       _%tl184538185410%_
                                       _%e184539185413%_
                                       _%hd184540185416%_
                                       _%tl184541185418%_
                                       _%e184542185421%_
                                       _%hd184543185424%_
                                       _%tl184544185426%_
                                       _%e184545185429%_
                                       _%hd184546185432%_
                                       _%tl184547185434%_
                                       _%e184548185437%_
                                       _%hd184549185440%_
                                       _%tl184550185442%_
                                       _%e184551185445%_
                                       _%hd184552185448%_
                                       _%tl184553185450%_
                                       _%e184554185453%_
                                       _%hd184555185456%_
                                       _%tl184556185458%_
                                       _%e184557185461%_
                                       _%hd184558185464%_
                                       _%tl184559185466%_
                                       _%e184560185469%_
                                       _%hd184561185472%_
                                       _%tl184562185474%_))
                                  (_%__match189473189474%_
                                   _%e184536185405%_
                                   _%hd184537185408%_
                                   _%tl184538185410%_
                                   _%e184539185413%_
                                   _%hd184540185416%_
                                   _%tl184541185418%_
                                   _%e184542185421%_
                                   _%hd184543185424%_
                                   _%tl184544185426%_
                                   _%e184545185429%_
                                   _%hd184546185432%_
                                   _%tl184547185434%_
                                   _%e184548185437%_
                                   _%hd184549185440%_
                                   _%tl184550185442%_
                                   _%e184551185445%_
                                   _%hd184552185448%_
                                   _%tl184553185450%_
                                   _%e184554185453%_
                                   _%hd184555185456%_
                                   _%tl184556185458%_
                                   _%e184557185461%_
                                   _%hd184558185464%_
                                   _%tl184559185466%_))))
                          (_%__match189473189474%_
                           _%e184536185405%_
                           _%hd184537185408%_
                           _%tl184538185410%_
                           _%e184539185413%_
                           _%hd184540185416%_
                           _%tl184541185418%_
                           _%e184542185421%_
                           _%hd184543185424%_
                           _%tl184544185426%_
                           _%e184545185429%_
                           _%hd184546185432%_
                           _%tl184547185434%_
                           _%e184548185437%_
                           _%hd184549185440%_
                           _%tl184550185442%_
                           _%e184551185445%_
                           _%hd184552185448%_
                           _%tl184553185450%_
                           _%e184554185453%_
                           _%hd184555185456%_
                           _%tl184556185458%_
                           _%e184557185461%_
                           _%hd184558185464%_
                           _%tl184559185466%_))))
                  (_%__match189411189412%_
                   _%e184536185405%_
                   _%hd184537185408%_
                   _%tl184538185410%_
                   _%e184539185413%_
                   _%hd184540185416%_
                   _%tl184541185418%_
                   _%e184542185421%_
                   _%hd184543185424%_
                   _%tl184544185426%_
                   _%e184545185429%_
                   _%hd184546185432%_
                   _%tl184547185434%_
                   _%e184548185437%_
                   _%hd184549185440%_
                   _%tl184550185442%_
                   _%e184551185445%_
                   _%hd184552185448%_
                   _%tl184553185450%_
                   _%e184554185453%_
                   _%hd184555185456%_
                   _%tl184556185458%_))
              (_%__kont188994188995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont188994188995%_))
                                          (_%__kont188994188995%_))
                                      (_%__kont188994188995%_))))
                              (_%__kont188994188995%_))))
                      (_%__kont188994188995%_))
                  (_%__kont188994188995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont188994188995%_))
                                              (_%__kont188994188995%_))
                                          (_%__kont188994188995%_))))
                                  (_%__kont188994188995%_))))
                          (_%__kont188994188995%_))))
                  (_%__kont188994188995%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self183460%_ _%stx183461%_)
        (letrec ((_%force-e183463%_
                  (lambda (_%target184519%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target184519%_ '()))
                                      '()))))))
          (let* ((_%__stx189478189479%_ _%stx183461%_)
                 (_%g183471183693%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx189478189479%_)))))
            (let ((_%__kont189480189481%_
                   (lambda (_%L184465%_ _%L184466%_ _%L184467%_ _%L184468%_)
                     (let ((_%$method184513%_
                            (let ((__tmp190141
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self183460%_ 'methods)))
                                  (__tmp190140
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L184466%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp190141 __tmp190140)))
                           (_%args184514%_
                            (map (lambda (_%g184501184503%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self183460%_
                                      _%g184501184503%_)))
                                 (let ((__tmp190142
                                        (lambda (_%g184505184508%_
                                                 _%g184506184510%_)
                                          (cons _%g184505184508%_
                                                _%g184506184510%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp190142 '() _%L184465%_)))))
                       (let ((__tmp190143
                              (cons '%#call
                                    (cons (_%force-e183463%_ _%$method184513%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self183460%_
                                                               'receiver))
                                                            '()))
                                                _%args184514%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190143 _%stx183461%_)))))
                  (_%__kont189484189485%_
                   (lambda (_%L184297%_
                            _%L184298%_
                            _%L184299%_
                            _%L184300%_
                            _%L184301%_)
                     (let ((_%$method184353%_
                            (let ((__tmp190145
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self183460%_ 'methods)))
                                  (__tmp190144
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L184298%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp190145 __tmp190144)))
                           (_%args184354%_
                            (map (lambda (_%g184341184343%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self183460%_
                                      _%g184341184343%_)))
                                 (let ((__tmp190146
                                        (lambda (_%g184345184348%_
                                                 _%g184346184350%_)
                                          (cons _%g184345184348%_
                                                _%g184346184350%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp190146 '() _%L184297%_)))))
                       (let ((__tmp190147
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e183463%_
                                                 _%$method184353%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self183460%_ 'receiver))
                          '()))
              _%args184354%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190147 _%stx183461%_)))))
                  (_%__kont189488189489%_
                   (lambda (_%L184128%_ _%L184129%_ _%L184130%_)
                     (let* ((_%$field184162%_
                             (let ((__tmp190149
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self183460%_ 'slots)))
                                   (__tmp190148
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L184128%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp190149 __tmp190148)))
                            (__tmp190150
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self183460%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field184162%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self183460%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp190150 _%stx183461%_))))
                  (_%__kont189490189491%_
                   (lambda (_%L184002%_ _%L184003%_ _%L184004%_ _%L184005%_)
                     (let ((_%$field184040%_
                            (let ((__tmp190152
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self183460%_ 'slots)))
                                  (__tmp190151
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L184003%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp190152 __tmp190151)))
                           (_%expr184041%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self183460%_ _%L184002%_))))
                       (let ((__tmp190153
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self183460%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field184040%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self183460%_ 'receiver))
                          '()))
              (cons _%expr184041%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190153 _%stx183461%_)))))
                  (_%__kont189492189493%_
                   (lambda (_%L183874%_ _%L183875%_)
                     (let* ((_%accessor183897%_
                             (let ((__tmp190154
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L183875%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp190154)))
                            (_%klass183899%_
                             (let ((__tmp190155
                                    (##structure-ref
                                     _%accessor183897%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx183461%_
                                __tmp190155)))
                            (_%slot183901%_
                             (##structure-ref
                              _%accessor183897%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor183897%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass183899%_
                                      _%slot183901%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass183899%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx183461%_
                           (let* ((_%$field183907%_
                                   (let ((__tmp190156
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183460%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp190156 _%slot183901%_)))
                                  (__tmp190157
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self183460%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field183907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self183460%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp190157
                              _%stx183461%_))))))
                  (_%__kont189494189495%_
                   (lambda (_%L183769%_ _%L183770%_ _%L183771%_)
                     (let* ((_%mutator183799%_
                             (let ((__tmp190158
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L183771%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp190158)))
                            (_%klass183801%_
                             (let ((__tmp190159
                                    (##structure-ref
                                     _%mutator183799%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx183461%_
                                __tmp190159)))
                            (_%slot183803%_
                             (##structure-ref
                              _%mutator183799%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr183805%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self183460%_ _%L183769%_))))
                       (if (if (##structure-ref
                                _%mutator183799%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass183801%_
                                      _%slot183803%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass183801%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp190160
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L183771%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L183770%_
                                                                '()))
                                                    (cons _%expr183805%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190160 _%stx183461%_))
                           (let* ((_%$field183811%_
                                   (let ((__tmp190161
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183460%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp190161 _%slot183803%_)))
                                  (__tmp190162
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self183460%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field183811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self183460%_ 'receiver))
                               '()))
                   (cons _%expr183805%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp190162
                              _%stx183461%_))))))
                  (_%__kont189496189497%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self183460%_ _%stx183461%_)))))
              (let* ((_%__match189977189978%_
                      (lambda (_%e183665183705%_
                               _%hd183666183708%_
                               _%tl183667183710%_
                               _%e183668183713%_
                               _%hd183669183716%_
                               _%tl183670183718%_
                               _%e183671183721%_
                               _%hd183672183724%_
                               _%tl183673183726%_
                               _%e183674183729%_
                               _%hd183675183732%_
                               _%tl183676183734%_
                               _%e183677183737%_
                               _%hd183678183740%_
                               _%tl183679183742%_
                               _%e183680183745%_
                               _%hd183681183748%_
                               _%tl183682183750%_
                               _%e183683183753%_
                               _%hd183684183756%_
                               _%tl183685183758%_
                               _%e183686183761%_
                               _%hd183687183764%_
                               _%tl183688183766%_)
                        (let ((_%L183769%_ _%hd183687183764%_)
                              (_%L183770%_ _%hd183684183756%_)
                              (_%L183771%_ _%hd183675183732%_))
                          (if (and (let ((__tmp190163
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183460%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L183770%_
                                      __tmp190163))
                                   (let ((__tmp190164
                                          (let ((__tmp190165
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L183771%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp190165))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp190164
                                      'gxc#!mutator::t)))
                              (_%__kont189494189495%_
                               _%L183769%_
                               _%L183770%_
                               _%L183771%_)
                              (_%__kont189496189497%_)))))
                     (_%__match189975189976%_
                      (lambda (_%e183665183705%_
                               _%hd183666183708%_
                               _%tl183667183710%_
                               _%e183668183713%_
                               _%hd183669183716%_
                               _%tl183670183718%_
                               _%e183671183721%_
                               _%hd183672183724%_
                               _%tl183673183726%_
                               _%e183674183729%_
                               _%hd183675183732%_
                               _%tl183676183734%_
                               _%e183677183737%_
                               _%hd183678183740%_
                               _%tl183679183742%_
                               _%e183680183745%_
                               _%hd183681183748%_
                               _%tl183682183750%_
                               _%e183683183753%_
                               _%hd183684183756%_
                               _%tl183685183758%_
                               _%e183686183761%_
                               _%hd183687183764%_
                               _%tl183688183766%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183688183766%_))
                            (_%__match189977189978%_
                             _%e183665183705%_
                             _%hd183666183708%_
                             _%tl183667183710%_
                             _%e183668183713%_
                             _%hd183669183716%_
                             _%tl183670183718%_
                             _%e183671183721%_
                             _%hd183672183724%_
                             _%tl183673183726%_
                             _%e183674183729%_
                             _%hd183675183732%_
                             _%tl183676183734%_
                             _%e183677183737%_
                             _%hd183678183740%_
                             _%tl183679183742%_
                             _%e183680183745%_
                             _%hd183681183748%_
                             _%tl183682183750%_
                             _%e183683183753%_
                             _%hd183684183756%_
                             _%tl183685183758%_
                             _%e183686183761%_
                             _%hd183687183764%_
                             _%tl183688183766%_)
                            (_%__kont189496189497%_))))
                     (_%__match189969189970%_
                      (lambda (_%e183665183705%_
                               _%hd183666183708%_
                               _%tl183667183710%_
                               _%e183668183713%_
                               _%hd183669183716%_
                               _%tl183670183718%_
                               _%e183671183721%_
                               _%hd183672183724%_
                               _%tl183673183726%_
                               _%e183674183729%_
                               _%hd183675183732%_
                               _%tl183676183734%_
                               _%e183677183737%_
                               _%hd183678183740%_
                               _%tl183679183742%_
                               _%e183680183745%_
                               _%hd183681183748%_
                               _%tl183682183750%_
                               _%e183683183753%_
                               _%hd183684183756%_
                               _%tl183685183758%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183679183742%_))
                            (let ((_%e183686183761%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183679183742%_))))
                              (let ((_%tl183688183766%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183686183761%_)))
                                    (_%hd183687183764%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183686183761%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl183688183766%_))
                                    (_%__match189977189978%_
                                     _%e183665183705%_
                                     _%hd183666183708%_
                                     _%tl183667183710%_
                                     _%e183668183713%_
                                     _%hd183669183716%_
                                     _%tl183670183718%_
                                     _%e183671183721%_
                                     _%hd183672183724%_
                                     _%tl183673183726%_
                                     _%e183674183729%_
                                     _%hd183675183732%_
                                     _%tl183676183734%_
                                     _%e183677183737%_
                                     _%hd183678183740%_
                                     _%tl183679183742%_
                                     _%e183680183745%_
                                     _%hd183681183748%_
                                     _%tl183682183750%_
                                     _%e183683183753%_
                                     _%hd183684183756%_
                                     _%tl183685183758%_
                                     _%e183686183761%_
                                     _%hd183687183764%_
                                     _%tl183688183766%_)
                                    (_%__kont189496189497%_))))
                            (_%__kont189496189497%_))))
                     (_%__match189915189916%_
                      (lambda (_%e183641183818%_
                               _%hd183642183821%_
                               _%tl183643183823%_
                               _%e183644183826%_
                               _%hd183645183829%_
                               _%tl183646183831%_
                               _%e183647183834%_
                               _%hd183648183837%_
                               _%tl183649183839%_
                               _%e183650183842%_
                               _%hd183651183845%_
                               _%tl183652183847%_
                               _%e183653183850%_
                               _%hd183654183853%_
                               _%tl183655183855%_
                               _%e183656183858%_
                               _%hd183657183861%_
                               _%tl183658183863%_
                               _%e183659183866%_
                               _%hd183660183869%_
                               _%tl183661183871%_)
                        (let ((_%L183874%_ _%hd183660183869%_)
                              (_%L183875%_ _%hd183651183845%_))
                          (if (and (let ((__tmp190166
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183460%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L183874%_
                                      __tmp190166))
                                   (let ((__tmp190167
                                          (let ((__tmp190168
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L183875%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp190168))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp190167
                                      'gxc#!accessor::t)))
                              (_%__kont189492189493%_ _%L183874%_ _%L183875%_)
                              (_%__kont189496189497%_)))))
                     (_%__match189913189914%_
                      (lambda (_%e183641183818%_
                               _%hd183642183821%_
                               _%tl183643183823%_
                               _%e183644183826%_
                               _%hd183645183829%_
                               _%tl183646183831%_
                               _%e183647183834%_
                               _%hd183648183837%_
                               _%tl183649183839%_
                               _%e183650183842%_
                               _%hd183651183845%_
                               _%tl183652183847%_
                               _%e183653183850%_
                               _%hd183654183853%_
                               _%tl183655183855%_
                               _%e183656183858%_
                               _%hd183657183861%_
                               _%tl183658183863%_
                               _%e183659183866%_
                               _%hd183660183869%_
                               _%tl183661183871%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183655183855%_))
                            (_%__match189915189916%_
                             _%e183641183818%_
                             _%hd183642183821%_
                             _%tl183643183823%_
                             _%e183644183826%_
                             _%hd183645183829%_
                             _%tl183646183831%_
                             _%e183647183834%_
                             _%hd183648183837%_
                             _%tl183649183839%_
                             _%e183650183842%_
                             _%hd183651183845%_
                             _%tl183652183847%_
                             _%e183653183850%_
                             _%hd183654183853%_
                             _%tl183655183855%_
                             _%e183656183858%_
                             _%hd183657183861%_
                             _%tl183658183863%_
                             _%e183659183866%_
                             _%hd183660183869%_
                             _%tl183661183871%_)
                            (_%__match189969189970%_
                             _%e183641183818%_
                             _%hd183642183821%_
                             _%tl183643183823%_
                             _%e183644183826%_
                             _%hd183645183829%_
                             _%tl183646183831%_
                             _%e183647183834%_
                             _%hd183648183837%_
                             _%tl183649183839%_
                             _%e183650183842%_
                             _%hd183651183845%_
                             _%tl183652183847%_
                             _%e183653183850%_
                             _%hd183654183853%_
                             _%tl183655183855%_
                             _%e183656183858%_
                             _%hd183657183861%_
                             _%tl183658183863%_
                             _%e183659183866%_
                             _%hd183660183869%_
                             _%tl183661183871%_))))
                     (_%__match189859189860%_
                      (lambda (_%e183606183914%_
                               _%hd183607183917%_
                               _%tl183608183919%_
                               _%e183609183922%_
                               _%hd183610183925%_
                               _%tl183611183927%_
                               _%e183612183930%_
                               _%hd183613183933%_
                               _%tl183614183935%_
                               _%e183615183938%_
                               _%hd183616183941%_
                               _%tl183617183943%_
                               _%e183618183946%_
                               _%hd183619183949%_
                               _%tl183620183951%_
                               _%e183621183954%_
                               _%hd183622183957%_
                               _%tl183623183959%_
                               _%e183624183962%_
                               _%hd183625183965%_
                               _%tl183626183967%_
                               _%e183627183970%_
                               _%hd183628183973%_
                               _%tl183629183975%_
                               _%e183630183978%_
                               _%hd183631183981%_
                               _%tl183632183983%_
                               _%e183633183986%_
                               _%hd183634183989%_
                               _%tl183635183991%_
                               _%e183636183994%_
                               _%hd183637183997%_
                               _%tl183638183999%_)
                        (let ((_%L184002%_ _%hd183637183997%_)
                              (_%L184003%_ _%hd183634183989%_)
                              (_%L184004%_ _%hd183625183965%_)
                              (_%L184005%_ _%hd183616183941%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L184005%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L184005%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp190169
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183460%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L184004%_
                                      __tmp190169)))
                              (_%__kont189490189491%_
                               _%L184002%_
                               _%L184003%_
                               _%L184004%_
                               _%L184005%_)
                              (_%__kont189496189497%_)))))
                     (_%__match189851189852%_
                      (lambda (_%e183606183914%_
                               _%hd183607183917%_
                               _%tl183608183919%_
                               _%e183609183922%_
                               _%hd183610183925%_
                               _%tl183611183927%_
                               _%e183612183930%_
                               _%hd183613183933%_
                               _%tl183614183935%_
                               _%e183615183938%_
                               _%hd183616183941%_
                               _%tl183617183943%_
                               _%e183618183946%_
                               _%hd183619183949%_
                               _%tl183620183951%_
                               _%e183621183954%_
                               _%hd183622183957%_
                               _%tl183623183959%_
                               _%e183624183962%_
                               _%hd183625183965%_
                               _%tl183626183967%_
                               _%e183627183970%_
                               _%hd183628183973%_
                               _%tl183629183975%_
                               _%e183630183978%_
                               _%hd183631183981%_
                               _%tl183632183983%_
                               _%e183633183986%_
                               _%hd183634183989%_
                               _%tl183635183991%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183629183975%_))
                            (let ((_%e183636183994%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183629183975%_))))
                              (let ((_%tl183638183999%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183636183994%_)))
                                    (_%hd183637183997%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183636183994%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl183638183999%_))
                                    (_%__match189859189860%_
                                     _%e183606183914%_
                                     _%hd183607183917%_
                                     _%tl183608183919%_
                                     _%e183609183922%_
                                     _%hd183610183925%_
                                     _%tl183611183927%_
                                     _%e183612183930%_
                                     _%hd183613183933%_
                                     _%tl183614183935%_
                                     _%e183615183938%_
                                     _%hd183616183941%_
                                     _%tl183617183943%_
                                     _%e183618183946%_
                                     _%hd183619183949%_
                                     _%tl183620183951%_
                                     _%e183621183954%_
                                     _%hd183622183957%_
                                     _%tl183623183959%_
                                     _%e183624183962%_
                                     _%hd183625183965%_
                                     _%tl183626183967%_
                                     _%e183627183970%_
                                     _%hd183628183973%_
                                     _%tl183629183975%_
                                     _%e183630183978%_
                                     _%hd183631183981%_
                                     _%tl183632183983%_
                                     _%e183633183986%_
                                     _%hd183634183989%_
                                     _%tl183635183991%_
                                     _%e183636183994%_
                                     _%hd183637183997%_
                                     _%tl183638183999%_)
                                    (_%__kont189496189497%_))))
                            (_%__match189975189976%_
                             _%e183606183914%_
                             _%hd183607183917%_
                             _%tl183608183919%_
                             _%e183609183922%_
                             _%hd183610183925%_
                             _%tl183611183927%_
                             _%e183612183930%_
                             _%hd183613183933%_
                             _%tl183614183935%_
                             _%e183615183938%_
                             _%hd183616183941%_
                             _%tl183617183943%_
                             _%e183618183946%_
                             _%hd183619183949%_
                             _%tl183620183951%_
                             _%e183621183954%_
                             _%hd183622183957%_
                             _%tl183623183959%_
                             _%e183624183962%_
                             _%hd183625183965%_
                             _%tl183626183967%_
                             _%e183627183970%_
                             _%hd183628183973%_
                             _%tl183629183975%_))))
                     (_%__match189773189774%_
                      (lambda (_%e183572184048%_
                               _%hd183573184051%_
                               _%tl183574184053%_
                               _%e183575184056%_
                               _%hd183576184059%_
                               _%tl183577184061%_
                               _%e183578184064%_
                               _%hd183579184067%_
                               _%tl183580184069%_
                               _%e183581184072%_
                               _%hd183582184075%_
                               _%tl183583184077%_
                               _%e183584184080%_
                               _%hd183585184083%_
                               _%tl183586184085%_
                               _%e183587184088%_
                               _%hd183588184091%_
                               _%tl183589184093%_
                               _%e183590184096%_
                               _%hd183591184099%_
                               _%tl183592184101%_
                               _%e183593184104%_
                               _%hd183594184107%_
                               _%tl183595184109%_
                               _%e183596184112%_
                               _%hd183597184115%_
                               _%tl183598184117%_
                               _%e183599184120%_
                               _%hd183600184123%_
                               _%tl183601184125%_)
                        (let ((_%L184128%_ _%hd183600184123%_)
                              (_%L184129%_ _%hd183591184099%_)
                              (_%L184130%_ _%hd183582184075%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L184130%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L184130%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp190170
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183460%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L184129%_
                                      __tmp190170)))
                              (_%__kont189488189489%_
                               _%L184128%_
                               _%L184129%_
                               _%L184130%_)
                              (_%__match189977189978%_
                               _%e183572184048%_
                               _%hd183573184051%_
                               _%tl183574184053%_
                               _%e183575184056%_
                               _%hd183576184059%_
                               _%tl183577184061%_
                               _%e183578184064%_
                               _%hd183579184067%_
                               _%tl183580184069%_
                               _%e183581184072%_
                               _%hd183582184075%_
                               _%tl183583184077%_
                               _%e183584184080%_
                               _%hd183585184083%_
                               _%tl183586184085%_
                               _%e183587184088%_
                               _%hd183588184091%_
                               _%tl183589184093%_
                               _%e183590184096%_
                               _%hd183591184099%_
                               _%tl183592184101%_
                               _%e183593184104%_
                               _%hd183594184107%_
                               _%tl183595184109%_)))))
                     (_%__match189771189772%_
                      (lambda (_%e183572184048%_
                               _%hd183573184051%_
                               _%tl183574184053%_
                               _%e183575184056%_
                               _%hd183576184059%_
                               _%tl183577184061%_
                               _%e183578184064%_
                               _%hd183579184067%_
                               _%tl183580184069%_
                               _%e183581184072%_
                               _%hd183582184075%_
                               _%tl183583184077%_
                               _%e183584184080%_
                               _%hd183585184083%_
                               _%tl183586184085%_
                               _%e183587184088%_
                               _%hd183588184091%_
                               _%tl183589184093%_
                               _%e183590184096%_
                               _%hd183591184099%_
                               _%tl183592184101%_
                               _%e183593184104%_
                               _%hd183594184107%_
                               _%tl183595184109%_
                               _%e183596184112%_
                               _%hd183597184115%_
                               _%tl183598184117%_
                               _%e183599184120%_
                               _%hd183600184123%_
                               _%tl183601184125%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183595184109%_))
                            (_%__match189773189774%_
                             _%e183572184048%_
                             _%hd183573184051%_
                             _%tl183574184053%_
                             _%e183575184056%_
                             _%hd183576184059%_
                             _%tl183577184061%_
                             _%e183578184064%_
                             _%hd183579184067%_
                             _%tl183580184069%_
                             _%e183581184072%_
                             _%hd183582184075%_
                             _%tl183583184077%_
                             _%e183584184080%_
                             _%hd183585184083%_
                             _%tl183586184085%_
                             _%e183587184088%_
                             _%hd183588184091%_
                             _%tl183589184093%_
                             _%e183590184096%_
                             _%hd183591184099%_
                             _%tl183592184101%_
                             _%e183593184104%_
                             _%hd183594184107%_
                             _%tl183595184109%_
                             _%e183596184112%_
                             _%hd183597184115%_
                             _%tl183598184117%_
                             _%e183599184120%_
                             _%hd183600184123%_
                             _%tl183601184125%_)
                            (_%__match189851189852%_
                             _%e183572184048%_
                             _%hd183573184051%_
                             _%tl183574184053%_
                             _%e183575184056%_
                             _%hd183576184059%_
                             _%tl183577184061%_
                             _%e183578184064%_
                             _%hd183579184067%_
                             _%tl183580184069%_
                             _%e183581184072%_
                             _%hd183582184075%_
                             _%tl183583184077%_
                             _%e183584184080%_
                             _%hd183585184083%_
                             _%tl183586184085%_
                             _%e183587184088%_
                             _%hd183588184091%_
                             _%tl183589184093%_
                             _%e183590184096%_
                             _%hd183591184099%_
                             _%tl183592184101%_
                             _%e183593184104%_
                             _%hd183594184107%_
                             _%tl183595184109%_
                             _%e183596184112%_
                             _%hd183597184115%_
                             _%tl183598184117%_
                             _%e183599184120%_
                             _%hd183600184123%_
                             _%tl183601184125%_))))
                     (_%__match189761189762%_
                      (lambda (_%e183572184048%_
                               _%hd183573184051%_
                               _%tl183574184053%_
                               _%e183575184056%_
                               _%hd183576184059%_
                               _%tl183577184061%_
                               _%e183578184064%_
                               _%hd183579184067%_
                               _%tl183580184069%_
                               _%e183581184072%_
                               _%hd183582184075%_
                               _%tl183583184077%_
                               _%e183584184080%_
                               _%hd183585184083%_
                               _%tl183586184085%_
                               _%e183587184088%_
                               _%hd183588184091%_
                               _%tl183589184093%_
                               _%e183590184096%_
                               _%hd183591184099%_
                               _%tl183592184101%_
                               _%e183593184104%_
                               _%hd183594184107%_
                               _%tl183595184109%_
                               _%e183596184112%_
                               _%hd183597184115%_
                               _%tl183598184117%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd183597184115%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl183598184117%_))
                                (let ((_%e183599184120%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl183598184117%_))))
                                  (let ((_%tl183601184125%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183599184120%_)))
                                        (_%hd183600184123%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183599184120%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl183601184125%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl183595184109%_))
                                            (_%__match189773189774%_
                                             _%e183572184048%_
                                             _%hd183573184051%_
                                             _%tl183574184053%_
                                             _%e183575184056%_
                                             _%hd183576184059%_
                                             _%tl183577184061%_
                                             _%e183578184064%_
                                             _%hd183579184067%_
                                             _%tl183580184069%_
                                             _%e183581184072%_
                                             _%hd183582184075%_
                                             _%tl183583184077%_
                                             _%e183584184080%_
                                             _%hd183585184083%_
                                             _%tl183586184085%_
                                             _%e183587184088%_
                                             _%hd183588184091%_
                                             _%tl183589184093%_
                                             _%e183590184096%_
                                             _%hd183591184099%_
                                             _%tl183592184101%_
                                             _%e183593184104%_
                                             _%hd183594184107%_
                                             _%tl183595184109%_
                                             _%e183596184112%_
                                             _%hd183597184115%_
                                             _%tl183598184117%_
                                             _%e183599184120%_
                                             _%hd183600184123%_
                                             _%tl183601184125%_)
                                            (_%__match189851189852%_
                                             _%e183572184048%_
                                             _%hd183573184051%_
                                             _%tl183574184053%_
                                             _%e183575184056%_
                                             _%hd183576184059%_
                                             _%tl183577184061%_
                                             _%e183578184064%_
                                             _%hd183579184067%_
                                             _%tl183580184069%_
                                             _%e183581184072%_
                                             _%hd183582184075%_
                                             _%tl183583184077%_
                                             _%e183584184080%_
                                             _%hd183585184083%_
                                             _%tl183586184085%_
                                             _%e183587184088%_
                                             _%hd183588184091%_
                                             _%tl183589184093%_
                                             _%e183590184096%_
                                             _%hd183591184099%_
                                             _%tl183592184101%_
                                             _%e183593184104%_
                                             _%hd183594184107%_
                                             _%tl183595184109%_
                                             _%e183596184112%_
                                             _%hd183597184115%_
                                             _%tl183598184117%_
                                             _%e183599184120%_
                                             _%hd183600184123%_
                                             _%tl183601184125%_))
                                        (_%__match189975189976%_
                                         _%e183572184048%_
                                         _%hd183573184051%_
                                         _%tl183574184053%_
                                         _%e183575184056%_
                                         _%hd183576184059%_
                                         _%tl183577184061%_
                                         _%e183578184064%_
                                         _%hd183579184067%_
                                         _%tl183580184069%_
                                         _%e183581184072%_
                                         _%hd183582184075%_
                                         _%tl183583184077%_
                                         _%e183584184080%_
                                         _%hd183585184083%_
                                         _%tl183586184085%_
                                         _%e183587184088%_
                                         _%hd183588184091%_
                                         _%tl183589184093%_
                                         _%e183590184096%_
                                         _%hd183591184099%_
                                         _%tl183592184101%_
                                         _%e183593184104%_
                                         _%hd183594184107%_
                                         _%tl183595184109%_))))
                                (_%__match189975189976%_
                                 _%e183572184048%_
                                 _%hd183573184051%_
                                 _%tl183574184053%_
                                 _%e183575184056%_
                                 _%hd183576184059%_
                                 _%tl183577184061%_
                                 _%e183578184064%_
                                 _%hd183579184067%_
                                 _%tl183580184069%_
                                 _%e183581184072%_
                                 _%hd183582184075%_
                                 _%tl183583184077%_
                                 _%e183584184080%_
                                 _%hd183585184083%_
                                 _%tl183586184085%_
                                 _%e183587184088%_
                                 _%hd183588184091%_
                                 _%tl183589184093%_
                                 _%e183590184096%_
                                 _%hd183591184099%_
                                 _%tl183592184101%_
                                 _%e183593184104%_
                                 _%hd183594184107%_
                                 _%tl183595184109%_))
                            (_%__match189975189976%_
                             _%e183572184048%_
                             _%hd183573184051%_
                             _%tl183574184053%_
                             _%e183575184056%_
                             _%hd183576184059%_
                             _%tl183577184061%_
                             _%e183578184064%_
                             _%hd183579184067%_
                             _%tl183580184069%_
                             _%e183581184072%_
                             _%hd183582184075%_
                             _%tl183583184077%_
                             _%e183584184080%_
                             _%hd183585184083%_
                             _%tl183586184085%_
                             _%e183587184088%_
                             _%hd183588184091%_
                             _%tl183589184093%_
                             _%e183590184096%_
                             _%hd183591184099%_
                             _%tl183592184101%_
                             _%e183593184104%_
                             _%hd183594184107%_
                             _%tl183595184109%_))))
                     (_%__match189693189694%_
                      (lambda (_%e183521184169%_
                               _%hd183522184172%_
                               _%tl183523184174%_
                               _%e183524184177%_
                               _%hd183525184180%_
                               _%tl183526184182%_
                               _%e183527184185%_
                               _%hd183528184188%_
                               _%tl183529184190%_
                               _%e183530184193%_
                               _%hd183531184196%_
                               _%tl183532184198%_
                               _%e183533184201%_
                               _%hd183534184204%_
                               _%tl183535184206%_
                               _%e183536184209%_
                               _%hd183537184212%_
                               _%tl183538184214%_
                               _%e183539184217%_
                               _%hd183540184220%_
                               _%tl183541184222%_
                               _%e183542184225%_
                               _%hd183543184228%_
                               _%tl183544184230%_
                               _%e183545184233%_
                               _%hd183546184236%_
                               _%tl183547184238%_
                               _%e183548184241%_
                               _%hd183549184244%_
                               _%tl183550184246%_
                               _%e183551184249%_
                               _%hd183552184252%_
                               _%tl183553184254%_
                               _%e183554184257%_
                               _%hd183555184260%_
                               _%tl183556184262%_
                               _%e183557184265%_
                               _%hd183558184268%_
                               _%tl183559184270%_
                               _%__splice189486189487%_
                               _%target183560184273%_
                               _%tl183562184275%_)
                        (letrec ((_%loop183563184278%_
                                  (lambda (_%hd183561184281%_
                                           _%args183567184283%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd183561184281%_))
                                        (let ((_%e183564184286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd183561184281%_))))
                                          (let ((_%lp-tl183566184291%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183564184286%_)))
                                                (_%lp-hd183565184289%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183564184286%_))))
                                            (_%loop183563184278%_
                                             _%lp-tl183566184291%_
                                             (cons _%lp-hd183565184289%_
                                                   _%args183567184283%_))))
                                        (let ((_%args183568184294%_
                                               (reverse _%args183567184283%_)))
                                          (let ((_%L184297%_
                                                 _%args183568184294%_)
                                                (_%L184298%_
                                                 _%hd183558184268%_)
                                                (_%L184299%_
                                                 _%hd183549184244%_)
                                                (_%L184300%_
                                                 _%hd183540184220%_)
                                                (_%L184301%_
                                                 _%hd183531184196%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L184301%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L184300%_
                                                        'call-method))
                                                     (let ((__tmp190171
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self183460%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L184299%_
                                                        __tmp190171)))
                                                (_%__kont189484189485%_
                                                 _%L184297%_
                                                 _%L184298%_
                                                 _%L184299%_
                                                 _%L184300%_
                                                 _%L184301%_)
                                                (_%__kont189496189497%_))))))))
                          (_%loop183563184278%_ _%target183560184273%_ '()))))
                     (_%__match189651189652%_
                      (lambda (_%e183521184169%_
                               _%hd183522184172%_
                               _%tl183523184174%_
                               _%e183524184177%_
                               _%hd183525184180%_
                               _%tl183526184182%_
                               _%e183527184185%_
                               _%hd183528184188%_
                               _%tl183529184190%_
                               _%e183530184193%_
                               _%hd183531184196%_
                               _%tl183532184198%_
                               _%e183533184201%_
                               _%hd183534184204%_
                               _%tl183535184206%_
                               _%e183536184209%_
                               _%hd183537184212%_
                               _%tl183538184214%_
                               _%e183539184217%_
                               _%hd183540184220%_
                               _%tl183541184222%_
                               _%e183542184225%_
                               _%hd183543184228%_
                               _%tl183544184230%_
                               _%e183545184233%_
                               _%hd183546184236%_
                               _%tl183547184238%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd183546184236%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl183547184238%_))
                                (let ((_%e183548184241%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl183547184238%_))))
                                  (let ((_%tl183550184246%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183548184241%_)))
                                        (_%hd183549184244%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183548184241%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl183550184246%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl183544184230%_))
                                            (let ((_%e183551184249%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl183544184230%_))))
                                              (let ((_%tl183553184254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183551184249%_)))
                                                    (_%hd183552184252%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183551184249%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd183552184252%_))
                                                    (let ((_%e183554184257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd183552184252%_))))
                                                      (let ((_%tl183556184262%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e183554184257%_)))
                    (_%hd183555184260%_
                     (let () (declare (not safe)) (##car _%e183554184257%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd183555184260%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd183555184260%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183556184262%_))
                            (let ((_%e183557184265%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183556184262%_))))
                              (let ((_%tl183559184270%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183557184265%_)))
                                    (_%hd183558184268%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183557184265%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl183559184270%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl183553184254%_))
                                        (let ((_%__splice189486189487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl183553184254%_
                                                  '0))))
                                          (let ((_%tl183562184275%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice189486189487%_
                                                    '1)))
                                                (_%target183560184273%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice189486189487%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl183562184275%_))
                                                (_%__match189693189694%_
                                                 _%e183521184169%_
                                                 _%hd183522184172%_
                                                 _%tl183523184174%_
                                                 _%e183524184177%_
                                                 _%hd183525184180%_
                                                 _%tl183526184182%_
                                                 _%e183527184185%_
                                                 _%hd183528184188%_
                                                 _%tl183529184190%_
                                                 _%e183530184193%_
                                                 _%hd183531184196%_
                                                 _%tl183532184198%_
                                                 _%e183533184201%_
                                                 _%hd183534184204%_
                                                 _%tl183535184206%_
                                                 _%e183536184209%_
                                                 _%hd183537184212%_
                                                 _%tl183538184214%_
                                                 _%e183539184217%_
                                                 _%hd183540184220%_
                                                 _%tl183541184222%_
                                                 _%e183542184225%_
                                                 _%hd183543184228%_
                                                 _%tl183544184230%_
                                                 _%e183545184233%_
                                                 _%hd183546184236%_
                                                 _%tl183547184238%_
                                                 _%e183548184241%_
                                                 _%hd183549184244%_
                                                 _%tl183550184246%_
                                                 _%e183551184249%_
                                                 _%hd183552184252%_
                                                 _%tl183553184254%_
                                                 _%e183554184257%_
                                                 _%hd183555184260%_
                                                 _%tl183556184262%_
                                                 _%e183557184265%_
                                                 _%hd183558184268%_
                                                 _%tl183559184270%_
                                                 _%__splice189486189487%_
                                                 _%target183560184273%_
                                                 _%tl183562184275%_)
                                                (_%__kont189496189497%_))))
                                        (_%__kont189496189497%_))
                                    (_%__kont189496189497%_))))
                            (_%__kont189496189497%_))
                        (_%__kont189496189497%_))
                    (_%__kont189496189497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont189496189497%_))))
                                            (_%__match189975189976%_
                                             _%e183521184169%_
                                             _%hd183522184172%_
                                             _%tl183523184174%_
                                             _%e183524184177%_
                                             _%hd183525184180%_
                                             _%tl183526184182%_
                                             _%e183527184185%_
                                             _%hd183528184188%_
                                             _%tl183529184190%_
                                             _%e183530184193%_
                                             _%hd183531184196%_
                                             _%tl183532184198%_
                                             _%e183533184201%_
                                             _%hd183534184204%_
                                             _%tl183535184206%_
                                             _%e183536184209%_
                                             _%hd183537184212%_
                                             _%tl183538184214%_
                                             _%e183539184217%_
                                             _%hd183540184220%_
                                             _%tl183541184222%_
                                             _%e183542184225%_
                                             _%hd183543184228%_
                                             _%tl183544184230%_))
                                        (_%__match189975189976%_
                                         _%e183521184169%_
                                         _%hd183522184172%_
                                         _%tl183523184174%_
                                         _%e183524184177%_
                                         _%hd183525184180%_
                                         _%tl183526184182%_
                                         _%e183527184185%_
                                         _%hd183528184188%_
                                         _%tl183529184190%_
                                         _%e183530184193%_
                                         _%hd183531184196%_
                                         _%tl183532184198%_
                                         _%e183533184201%_
                                         _%hd183534184204%_
                                         _%tl183535184206%_
                                         _%e183536184209%_
                                         _%hd183537184212%_
                                         _%tl183538184214%_
                                         _%e183539184217%_
                                         _%hd183540184220%_
                                         _%tl183541184222%_
                                         _%e183542184225%_
                                         _%hd183543184228%_
                                         _%tl183544184230%_))))
                                (_%__match189975189976%_
                                 _%e183521184169%_
                                 _%hd183522184172%_
                                 _%tl183523184174%_
                                 _%e183524184177%_
                                 _%hd183525184180%_
                                 _%tl183526184182%_
                                 _%e183527184185%_
                                 _%hd183528184188%_
                                 _%tl183529184190%_
                                 _%e183530184193%_
                                 _%hd183531184196%_
                                 _%tl183532184198%_
                                 _%e183533184201%_
                                 _%hd183534184204%_
                                 _%tl183535184206%_
                                 _%e183536184209%_
                                 _%hd183537184212%_
                                 _%tl183538184214%_
                                 _%e183539184217%_
                                 _%hd183540184220%_
                                 _%tl183541184222%_
                                 _%e183542184225%_
                                 _%hd183543184228%_
                                 _%tl183544184230%_))
                            (_%__match189761189762%_
                             _%e183521184169%_
                             _%hd183522184172%_
                             _%tl183523184174%_
                             _%e183524184177%_
                             _%hd183525184180%_
                             _%tl183526184182%_
                             _%e183527184185%_
                             _%hd183528184188%_
                             _%tl183529184190%_
                             _%e183530184193%_
                             _%hd183531184196%_
                             _%tl183532184198%_
                             _%e183533184201%_
                             _%hd183534184204%_
                             _%tl183535184206%_
                             _%e183536184209%_
                             _%hd183537184212%_
                             _%tl183538184214%_
                             _%e183539184217%_
                             _%hd183540184220%_
                             _%tl183541184222%_
                             _%e183542184225%_
                             _%hd183543184228%_
                             _%tl183544184230%_
                             _%e183545184233%_
                             _%hd183546184236%_
                             _%tl183547184238%_))))
                     (_%__match189583189584%_
                      (lambda (_%e183477184361%_
                               _%hd183478184364%_
                               _%tl183479184366%_
                               _%e183480184369%_
                               _%hd183481184372%_
                               _%tl183482184374%_
                               _%e183483184377%_
                               _%hd183484184380%_
                               _%tl183485184382%_
                               _%e183486184385%_
                               _%hd183487184388%_
                               _%tl183488184390%_
                               _%e183489184393%_
                               _%hd183490184396%_
                               _%tl183491184398%_
                               _%e183492184401%_
                               _%hd183493184404%_
                               _%tl183494184406%_
                               _%e183495184409%_
                               _%hd183496184412%_
                               _%tl183497184414%_
                               _%e183498184417%_
                               _%hd183499184420%_
                               _%tl183500184422%_
                               _%e183501184425%_
                               _%hd183502184428%_
                               _%tl183503184430%_
                               _%e183504184433%_
                               _%hd183505184436%_
                               _%tl183506184438%_
                               _%__splice189482189483%_
                               _%target183507184441%_
                               _%tl183509184443%_)
                        (letrec ((_%loop183510184446%_
                                  (lambda (_%hd183508184449%_
                                           _%args183514184451%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd183508184449%_))
                                        (let ((_%e183511184454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd183508184449%_))))
                                          (let ((_%lp-tl183513184459%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183511184454%_)))
                                                (_%lp-hd183512184457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183511184454%_))))
                                            (_%loop183510184446%_
                                             _%lp-tl183513184459%_
                                             (cons _%lp-hd183512184457%_
                                                   _%args183514184451%_))))
                                        (let ((_%args183515184462%_
                                               (reverse _%args183514184451%_)))
                                          (let ((_%L184465%_
                                                 _%args183515184462%_)
                                                (_%L184466%_
                                                 _%hd183505184436%_)
                                                (_%L184467%_
                                                 _%hd183496184412%_)
                                                (_%L184468%_
                                                 _%hd183487184388%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L184468%_
                                                        'call-method))
                                                     (let ((__tmp190172
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self183460%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L184467%_
                                                        __tmp190172)))
                                                (_%__kont189480189481%_
                                                 _%L184465%_
                                                 _%L184466%_
                                                 _%L184467%_
                                                 _%L184468%_)
                                                (_%__match189771189772%_
                                                 _%e183477184361%_
                                                 _%hd183478184364%_
                                                 _%tl183479184366%_
                                                 _%e183480184369%_
                                                 _%hd183481184372%_
                                                 _%tl183482184374%_
                                                 _%e183483184377%_
                                                 _%hd183484184380%_
                                                 _%tl183485184382%_
                                                 _%e183486184385%_
                                                 _%hd183487184388%_
                                                 _%tl183488184390%_
                                                 _%e183489184393%_
                                                 _%hd183490184396%_
                                                 _%tl183491184398%_
                                                 _%e183492184401%_
                                                 _%hd183493184404%_
                                                 _%tl183494184406%_
                                                 _%e183495184409%_
                                                 _%hd183496184412%_
                                                 _%tl183497184414%_
                                                 _%e183498184417%_
                                                 _%hd183499184420%_
                                                 _%tl183500184422%_
                                                 _%e183501184425%_
                                                 _%hd183502184428%_
                                                 _%tl183503184430%_
                                                 _%e183504184433%_
                                                 _%hd183505184436%_
                                                 _%tl183506184438%_))))))))
                          (_%loop183510184446%_ _%target183507184441%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx189478189479%_))
                    (let ((_%e183477184361%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx189478189479%_))))
                      (let ((_%tl183479184366%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e183477184361%_)))
                            (_%hd183478184364%_
                             (let ()
                               (declare (not safe))
                               (##car _%e183477184361%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183479184366%_))
                            (let ((_%e183480184369%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183479184366%_))))
                              (let ((_%tl183482184374%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183480184369%_)))
                                    (_%hd183481184372%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183480184369%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd183481184372%_))
                                    (let ((_%e183483184377%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd183481184372%_))))
                                      (let ((_%tl183485184382%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e183483184377%_)))
                                            (_%hd183484184380%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e183483184377%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd183484184380%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd183484184380%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl183485184382%_))
                                                    (let ((_%e183486184385%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl183485184382%_))))
                                                      (let ((_%tl183488184390%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e183486184385%_)))
                    (_%hd183487184388%_
                     (let () (declare (not safe)) (##car _%e183486184385%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl183488184390%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl183482184374%_))
                        (let ((_%e183489184393%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl183482184374%_))))
                          (let ((_%tl183491184398%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e183489184393%_)))
                                (_%hd183490184396%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e183489184393%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd183490184396%_))
                                (let ((_%e183492184401%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd183490184396%_))))
                                  (let ((_%tl183494184406%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183492184401%_)))
                                        (_%hd183493184404%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183492184401%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd183493184404%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd183493184404%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl183494184406%_))
                                                (let ((_%e183495184409%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl183494184406%_))))
                                                  (let ((_%tl183497184414%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e183495184409%_)))
                                                        (_%hd183496184412%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e183495184409%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl183497184414%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl183491184398%_))
                                                            (let ((_%e183498184417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl183491184398%_))))
                      (let ((_%tl183500184422%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e183498184417%_)))
                            (_%hd183499184420%_
                             (let ()
                               (declare (not safe))
                               (##car _%e183498184417%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd183499184420%_))
                            (let ((_%e183501184425%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd183499184420%_))))
                              (let ((_%tl183503184430%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183501184425%_)))
                                    (_%hd183502184428%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183501184425%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd183502184428%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd183502184428%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl183503184430%_))
                                            (let ((_%e183504184433%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl183503184430%_))))
                                              (let ((_%tl183506184438%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183504184433%_)))
                                                    (_%hd183505184436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183504184433%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl183506184438%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl183500184422%_))
                                                        (let ((_%__splice189482189483%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl183500184422%_
                          '0))))
                  (let ((_%tl183509184443%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice189482189483%_ '1)))
                        (_%target183507184441%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice189482189483%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl183509184443%_))
                        (_%__match189583189584%_
                         _%e183477184361%_
                         _%hd183478184364%_
                         _%tl183479184366%_
                         _%e183480184369%_
                         _%hd183481184372%_
                         _%tl183482184374%_
                         _%e183483184377%_
                         _%hd183484184380%_
                         _%tl183485184382%_
                         _%e183486184385%_
                         _%hd183487184388%_
                         _%tl183488184390%_
                         _%e183489184393%_
                         _%hd183490184396%_
                         _%tl183491184398%_
                         _%e183492184401%_
                         _%hd183493184404%_
                         _%tl183494184406%_
                         _%e183495184409%_
                         _%hd183496184412%_
                         _%tl183497184414%_
                         _%e183498184417%_
                         _%hd183499184420%_
                         _%tl183500184422%_
                         _%e183501184425%_
                         _%hd183502184428%_
                         _%tl183503184430%_
                         _%e183504184433%_
                         _%hd183505184436%_
                         _%tl183506184438%_
                         _%__splice189482189483%_
                         _%target183507184441%_
                         _%tl183509184443%_)
                        (_%__match189771189772%_
                         _%e183477184361%_
                         _%hd183478184364%_
                         _%tl183479184366%_
                         _%e183480184369%_
                         _%hd183481184372%_
                         _%tl183482184374%_
                         _%e183483184377%_
                         _%hd183484184380%_
                         _%tl183485184382%_
                         _%e183486184385%_
                         _%hd183487184388%_
                         _%tl183488184390%_
                         _%e183489184393%_
                         _%hd183490184396%_
                         _%tl183491184398%_
                         _%e183492184401%_
                         _%hd183493184404%_
                         _%tl183494184406%_
                         _%e183495184409%_
                         _%hd183496184412%_
                         _%tl183497184414%_
                         _%e183498184417%_
                         _%hd183499184420%_
                         _%tl183500184422%_
                         _%e183501184425%_
                         _%hd183502184428%_
                         _%tl183503184430%_
                         _%e183504184433%_
                         _%hd183505184436%_
                         _%tl183506184438%_))))
                (_%__match189771189772%_
                 _%e183477184361%_
                 _%hd183478184364%_
                 _%tl183479184366%_
                 _%e183480184369%_
                 _%hd183481184372%_
                 _%tl183482184374%_
                 _%e183483184377%_
                 _%hd183484184380%_
                 _%tl183485184382%_
                 _%e183486184385%_
                 _%hd183487184388%_
                 _%tl183488184390%_
                 _%e183489184393%_
                 _%hd183490184396%_
                 _%tl183491184398%_
                 _%e183492184401%_
                 _%hd183493184404%_
                 _%tl183494184406%_
                 _%e183495184409%_
                 _%hd183496184412%_
                 _%tl183497184414%_
                 _%e183498184417%_
                 _%hd183499184420%_
                 _%tl183500184422%_
                 _%e183501184425%_
                 _%hd183502184428%_
                 _%tl183503184430%_
                 _%e183504184433%_
                 _%hd183505184436%_
                 _%tl183506184438%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match189975189976%_
                                                     _%e183477184361%_
                                                     _%hd183478184364%_
                                                     _%tl183479184366%_
                                                     _%e183480184369%_
                                                     _%hd183481184372%_
                                                     _%tl183482184374%_
                                                     _%e183483184377%_
                                                     _%hd183484184380%_
                                                     _%tl183485184382%_
                                                     _%e183486184385%_
                                                     _%hd183487184388%_
                                                     _%tl183488184390%_
                                                     _%e183489184393%_
                                                     _%hd183490184396%_
                                                     _%tl183491184398%_
                                                     _%e183492184401%_
                                                     _%hd183493184404%_
                                                     _%tl183494184406%_
                                                     _%e183495184409%_
                                                     _%hd183496184412%_
                                                     _%tl183497184414%_
                                                     _%e183498184417%_
                                                     _%hd183499184420%_
                                                     _%tl183500184422%_))))
                                            (_%__match189975189976%_
                                             _%e183477184361%_
                                             _%hd183478184364%_
                                             _%tl183479184366%_
                                             _%e183480184369%_
                                             _%hd183481184372%_
                                             _%tl183482184374%_
                                             _%e183483184377%_
                                             _%hd183484184380%_
                                             _%tl183485184382%_
                                             _%e183486184385%_
                                             _%hd183487184388%_
                                             _%tl183488184390%_
                                             _%e183489184393%_
                                             _%hd183490184396%_
                                             _%tl183491184398%_
                                             _%e183492184401%_
                                             _%hd183493184404%_
                                             _%tl183494184406%_
                                             _%e183495184409%_
                                             _%hd183496184412%_
                                             _%tl183497184414%_
                                             _%e183498184417%_
                                             _%hd183499184420%_
                                             _%tl183500184422%_))
                                        (_%__match189651189652%_
                                         _%e183477184361%_
                                         _%hd183478184364%_
                                         _%tl183479184366%_
                                         _%e183480184369%_
                                         _%hd183481184372%_
                                         _%tl183482184374%_
                                         _%e183483184377%_
                                         _%hd183484184380%_
                                         _%tl183485184382%_
                                         _%e183486184385%_
                                         _%hd183487184388%_
                                         _%tl183488184390%_
                                         _%e183489184393%_
                                         _%hd183490184396%_
                                         _%tl183491184398%_
                                         _%e183492184401%_
                                         _%hd183493184404%_
                                         _%tl183494184406%_
                                         _%e183495184409%_
                                         _%hd183496184412%_
                                         _%tl183497184414%_
                                         _%e183498184417%_
                                         _%hd183499184420%_
                                         _%tl183500184422%_
                                         _%e183501184425%_
                                         _%hd183502184428%_
                                         _%tl183503184430%_))
                                    (_%__match189975189976%_
                                     _%e183477184361%_
                                     _%hd183478184364%_
                                     _%tl183479184366%_
                                     _%e183480184369%_
                                     _%hd183481184372%_
                                     _%tl183482184374%_
                                     _%e183483184377%_
                                     _%hd183484184380%_
                                     _%tl183485184382%_
                                     _%e183486184385%_
                                     _%hd183487184388%_
                                     _%tl183488184390%_
                                     _%e183489184393%_
                                     _%hd183490184396%_
                                     _%tl183491184398%_
                                     _%e183492184401%_
                                     _%hd183493184404%_
                                     _%tl183494184406%_
                                     _%e183495184409%_
                                     _%hd183496184412%_
                                     _%tl183497184414%_
                                     _%e183498184417%_
                                     _%hd183499184420%_
                                     _%tl183500184422%_))))
                            (_%__match189975189976%_
                             _%e183477184361%_
                             _%hd183478184364%_
                             _%tl183479184366%_
                             _%e183480184369%_
                             _%hd183481184372%_
                             _%tl183482184374%_
                             _%e183483184377%_
                             _%hd183484184380%_
                             _%tl183485184382%_
                             _%e183486184385%_
                             _%hd183487184388%_
                             _%tl183488184390%_
                             _%e183489184393%_
                             _%hd183490184396%_
                             _%tl183491184398%_
                             _%e183492184401%_
                             _%hd183493184404%_
                             _%tl183494184406%_
                             _%e183495184409%_
                             _%hd183496184412%_
                             _%tl183497184414%_
                             _%e183498184417%_
                             _%hd183499184420%_
                             _%tl183500184422%_))))
                    (_%__match189913189914%_
                     _%e183477184361%_
                     _%hd183478184364%_
                     _%tl183479184366%_
                     _%e183480184369%_
                     _%hd183481184372%_
                     _%tl183482184374%_
                     _%e183483184377%_
                     _%hd183484184380%_
                     _%tl183485184382%_
                     _%e183486184385%_
                     _%hd183487184388%_
                     _%tl183488184390%_
                     _%e183489184393%_
                     _%hd183490184396%_
                     _%tl183491184398%_
                     _%e183492184401%_
                     _%hd183493184404%_
                     _%tl183494184406%_
                     _%e183495184409%_
                     _%hd183496184412%_
                     _%tl183497184414%_))
                (_%__kont189496189497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont189496189497%_))
                                            (_%__kont189496189497%_))
                                        (_%__kont189496189497%_))))
                                (_%__kont189496189497%_))))
                        (_%__kont189496189497%_))
                    (_%__kont189496189497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont189496189497%_))
                                                (_%__kont189496189497%_))
                                            (_%__kont189496189497%_))))
                                    (_%__kont189496189497%_))))
                            (_%__kont189496189497%_))))
                    (_%__kont189496189497%_))))))))))
