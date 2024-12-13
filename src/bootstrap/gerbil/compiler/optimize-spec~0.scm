(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1734131750)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp178113 (list gxc#::identity::t))
            (__tmp178112 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp178113
         '()
         __tmp178112
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args176910%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args176910%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp178114
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
        (__make-promise __tmp178114)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx176902%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self176905%_
                (let ((__obj178105
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj178105))
               (__tmp178115
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self176905%_ _%stx176902%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp178115
           gxc#current-compile-method
           _%self176905%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp178117 (list gxc#::false::t))
            (__tmp178116 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp178117
         '()
         __tmp178116
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args176899%_
        (apply make-instance gxc#::extract-receiver::t _%$args176899%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp178118
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
        (__make-promise __tmp178118)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx176891%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self176894%_
                (let ((__obj178107
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj178107))
               (__tmp178119
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self176894%_ _%stx176891%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp178119
           gxc#current-compile-method
           _%self176894%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp178121 (list gxc#::void::t))
            (__tmp178120 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp178121
         '(receiver methods slots)
         __tmp178120
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args176888%_
        (apply make-instance gxc#::collect-object-refs::t _%$args176888%_)))
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
      (let ((__tmp178122
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
        (__make-promise __tmp178122)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords176854%_
               _%receiver176849176855%_
               _%methods176850176857%_
               _%slots176851176859%_
               _%stx176861%_)
        (let* ((_%receiver176864%_
                (if (eq? _%receiver176849176855%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver176849176855%_))
               (_%methods176866%_
                (if (eq? _%methods176850176857%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods176850176857%_))
               (_%slots176868%_
                (if (eq? _%slots176851176859%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots176851176859%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self176870%_
                  (let ((__obj178109
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
                       __obj178109
                       _%receiver176864%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178109
                       _%methods176866%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178109
                       _%slots176868%_
                       '3
                       '#f
                       '#f))
                    __obj178109))
                 (__tmp178123
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self176870%_ _%stx176861%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp178123
             gxc#current-compile-method
             _%self176870%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords176877%_ . _%args176878%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords176877%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176877%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176877%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176877%_
                  'slots:
                  absent-value))
               _%args176878%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args176852176884%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args176852176884%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp178125 (list gxc#::basic-xform-expression::t))
            (__tmp178124 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp178125
         '(receiver klass methods slots)
         __tmp178124
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args176845%_
        (apply make-instance gxc#::subst-object-refs::t _%$args176845%_)))
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
      (let ((__tmp178126
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
        (__make-promise __tmp178126)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords176807%_
               _%receiver176801176808%_
               _%klass176802176810%_
               _%methods176803176812%_
               _%slots176804176814%_
               _%stx176816%_)
        (let* ((_%receiver176819%_
                (if (eq? _%receiver176801176808%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver176801176808%_))
               (_%klass176821%_
                (if (eq? _%klass176802176810%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass176802176810%_))
               (_%methods176823%_
                (if (eq? _%methods176803176812%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods176803176812%_))
               (_%slots176825%_
                (if (eq? _%slots176804176814%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots176804176814%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self176827%_
                  (let ((__obj178111
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
                       __obj178111
                       _%receiver176819%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178111
                       _%klass176821%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178111
                       _%methods176823%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178111
                       _%slots176825%_
                       '4
                       '#f
                       '#f))
                    __obj178111))
                 (__tmp178127
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self176827%_ _%stx176816%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp178127
             gxc#current-compile-method
             _%self176827%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords176834%_ . _%args176835%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords176834%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176834%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176834%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176834%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176834%_
                  'slots:
                  absent-value))
               _%args176835%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args176805176841%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args176805176841%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self173916%_ _%stx173917%_)
        (letrec ((_%generate-method-bind173919%_
                  (lambda (_%$klass176793%_
                           _%$method-table176794%_
                           _%id176795%_
                           _%$id176796%_)
                    (let ((_%$tmp176798%_
                           (let ((__tmp178128
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp178128))))
                      (cons (cons _%$id176796%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp176798%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table176794%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id176795%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp176798%_ '()))
                    (cons (cons '%#ref (cons _%$tmp176798%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id176795%_
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
                 (_%generate-slot-bind173920%_
                  (lambda (_%$klass176787%_ _%id176788%_ _%$id176789%_)
                    (let ((_%$tmp176791%_
                           (let ((__tmp178129
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp178129))))
                      (cons (cons _%$id176789%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp176791%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass176787%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id176788%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp176791%_ '()))
                        (cons (cons '%#ref (cons _%$tmp176791%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id176788%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl173921%_
                  (lambda (_%$klass176781%_
                           _%$method-table176782%_
                           _%methods-bind176783%_
                           _%slots-bind176784%_
                           _%specializer-impl176785%_)
                    (let ((__tmp178130
                           (cons '%#lambda
                                 (cons (cons _%$klass176781%_
                                             (cons _%$method-table176782%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind176784%_
                                                            _%methods-bind176783%_))
                                                         (cons _%specializer-impl176785%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp178130 _%stx173917%_))))
                 (_%generate-specializer-def173922%_
                  (lambda (_%id176777%_
                           _%specializer-id176778%_
                           _%specializer-impl176779%_)
                    (let ((__tmp178131
                           (cons '%#begin
                                 (cons _%stx173917%_
                                       (cons (let ((__tmp178132
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id176778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl176779%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp178132
                                                _%stx173917%_))
                                             (cons (let ((__tmp178133
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id176777%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id176778%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp178133
                                                      _%stx173917%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp178131 _%stx173917%_)))))
          (let* ((_%__stx176999177000%_ _%stx173917%_)
                 (_%g173925173945%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx176999177000%_)))))
            (let ((_%__kont177001177002%_
                   (lambda (_%L173989%_ _%L173990%_)
                     (let ((_%method-calls174009%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs174010%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty174011%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?174013%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls174009%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs174010%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L173989%_))
                             (let* ((_%__stx176913176914%_ _%L173989%_)
                                    (_%g174401174419%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx176913176914%_)))))
                               (let ((_%__kont176915176916%_
                                      (lambda (_%L174455%_
                                               _%L174456%_
                                               _%L174457%_)
                                        (let ((_%receiver174477%_
                                               (let ((_%$e174474%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L174455%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e174474%_
                                                     _%$e174474%_
                                                     _%L174457%_))))
                                          (for-each
                                           (lambda (_%g174478174480%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver174477%_
                                              _%method-calls174009%_
                                              _%slot-refs174010%_
                                              _%g174478174480%_))
                                           _%L174455%_)
                                          (if (_%no-specializer?174013%_)
                                              _%stx173917%_
                                              (let* ((_%specializer-id174489%_
                                                      (let* ((_%id174483%_
                                                              (let ((__tmp178134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L173990%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp178134 '"::specialize")))
                     (_%specializer-id174486%_
                      (let ((__tmp178135
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx173917%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id174483%_ __tmp178135))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id174486%_))
                _%specializer-id174486%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass174491%_
                                                      (let ((__tmp178136
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp178136)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table174493%_
                                                      (let ((__tmp178137
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp178137)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods174495%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls174009%_)))
                                                     (_%$methods174499%_
                                                      (map (lambda (_%id174497%_)
                                                             (let ((__tmp178138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id174497%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp178138)))
                   _%methods174495%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_174508%_
                                                      (for-each
                                                       (lambda (_%g174500174503%_
                                                                _%g174501174505%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls174009%_
                                                            _%g174500174503%_
                                                            _%g174501174505%_)))
                                                       _%methods174495%_
                                                       _%$methods174499%_))
                                                     (_%methods-bind174518%_
                                                      (map (lambda (_%g174510174513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g174511174515%_)
                     (_%generate-method-bind173919%_
                      _%$klass174491%_
                      _%$method-table174493%_
                      _%g174510174513%_
                      _%g174511174515%_))
                   _%methods174495%_
                   _%$methods174499%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots174520%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs174010%_)))
                                                     (_%$slots174524%_
                                                      (map (lambda (_%id174522%_)
                                                             (let ((__tmp178139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id174522%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp178139)))
                   _%slots174520%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_174533%_
                                                      (for-each
                                                       (lambda (_%g174525174528%_
                                                                _%g174526174530%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs174010%_
                                                            _%g174525174528%_
                                                            _%g174526174530%_)))
                                                       _%slots174520%_
                                                       _%$slots174524%_))
                                                     (_%slots-bind174542%_
                                                      (map (lambda (_%g174534174537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g174535174539%_)
                     (_%generate-slot-bind173920%_
                      _%$klass174491%_
                      _%g174534174537%_
                      _%g174535174539%_))
                   _%slots174520%_
                   _%$slots174524%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body174548%_
                                                      (map (lambda (_%g174543174545%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver174477%_
                                                              _%$klass174491%_
                                                              _%method-calls174009%_
                                                              _%slot-refs174010%_
                                                              _%g174543174545%_))
                                                           _%L174455%_))
                                                     (_%specializer-impl174550%_
                                                      (let ((__tmp178140
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L174457%_ _%L174456%_)
                                 _%specializer-body174548%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp178140 _%stx173917%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl174552%_
                                                      (_%generate-specializer-impl173921%_
                                                       _%$klass174491%_
                                                       _%$method-table174493%_
                                                       _%methods-bind174518%_
                                                       _%slots-bind174542%_
                                                       _%specializer-impl174550%_)))
                                                (let ((__tmp178142
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L173990%_)))
                                                      (__tmp178141
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id174489%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp178142
                                                   '" => "
                                                   __tmp178141))
                                                (_%generate-specializer-def173922%_
                                                 _%L173990%_
                                                 _%specializer-id174489%_
                                                 _%specializer-impl174552%_))))))
                                     (_%__kont176917176918%_
                                      (lambda () _%stx173917%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx176913176914%_))
                                     (let ((_%e174406174431%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx176913176914%_))))
                                       (let ((_%tl174408174436%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e174406174431%_)))
                                             (_%hd174407174434%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e174406174431%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl174408174436%_))
                                             (let ((_%e174409174439%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl174408174436%_))))
                                               (let ((_%tl174411174444%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e174409174439%_)))
                                                     (_%hd174410174442%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e174409174439%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd174410174442%_))
                                                     (let ((_%e174412174447%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd174410174442%_))))
                                                       (let ((_%tl174414174452%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e174412174447%_)))
                     (_%hd174413174450%_
                      (let () (declare (not safe)) (##car _%e174412174447%_))))
                 (_%__kont176915176916%_
                  _%tl174411174444%_
                  _%tl174414174452%_
                  _%hd174413174450%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont176917176918%_))))
                                             (_%__kont176917176918%_))))
                                     (_%__kont176917176918%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L173989%_))
                                 (let* ((_%g174559174578%_
                                         (lambda (_%g174560174575%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g174560174575%_))))
                                        (_%g174558174876%_
                                         (lambda (_%g174560174581%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g174560174581%_))
                                               (let ((_%e174562174583%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g174560174581%_))))
                                                 (let ((_%hd174563174586%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e174562174583%_)))
                                                       (_%tl174564174588%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e174562174583%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl174564174588%_))
                                                       (let ((_g178143_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl174564174588%_ '0))))
                 (begin
                   (let ((_g178144_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g178143_)
                                (##values-length _g178143_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g178144_ 2)))
                         (error "Context expects 2 values" _g178144_)))
                   (let ((_%target174565174591%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g178143_ 0)))
                         (_%tl174567174593%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g178143_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl174567174593%_))
                         (letrec ((_%loop174568174596%_
                                   (lambda (_%hd174566174599%_
                                            _%clause174572174601%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd174566174599%_))
                                         (let ((_%e174569174604%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd174566174599%_))))
                                           (let ((_%lp-hd174570174607%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e174569174604%_)))
                                                 (_%lp-tl174571174609%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e174569174604%_))))
                                             (_%loop174568174596%_
                                              _%lp-tl174571174609%_
                                              (cons _%lp-hd174570174607%_
                                                    _%clause174572174601%_))))
                                         (let ((_%clause174573174612%_
                                                (reverse _%clause174572174601%_)))
                                           ((lambda (_%L174615%_)
                                              (for-each
                                               (lambda (_%clause174629%_)
                                                 (let* ((_%__stx176939176940%_
                                                         _%clause174629%_)
                                                        (_%g174632174647%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx176939176940%_)))))
                                                   (let ((_%__kont176941176942%_
                                                          (lambda (_%L174675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L174676%_
                           _%L174677%_)
                    (let ((_%receiver174696%_
                           (let ((_%$e174693%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L174675%_))))
                             (if _%$e174693%_ _%$e174693%_ _%L174677%_))))
                      (for-each
                       (lambda (_%g174697174699%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver174696%_
                          _%method-calls174009%_
                          _%slot-refs174010%_
                          _%g174697174699%_))
                       _%L174675%_))))
                 (_%__kont176943176944%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx176939176940%_))
                                                         (let ((_%e174637174659%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx176939176940%_))))
                   (let ((_%tl174639174664%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e174637174659%_)))
                         (_%hd174638174662%_
                          (let ()
                            (declare (not safe))
                            (##car _%e174637174659%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd174638174662%_))
                         (let ((_%e174640174667%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd174638174662%_))))
                           (let ((_%tl174642174672%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e174640174667%_)))
                                 (_%hd174641174670%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e174640174667%_))))
                             (_%__kont176941176942%_
                              _%tl174639174664%_
                              _%tl174642174672%_
                              _%hd174641174670%_)))
                         (_%__kont176943176944%_))))
                 (_%__kont176943176944%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp178145
                                                      (lambda (_%g174704174707%_
                                                               _%g174705174709%_)
                                                        (cons _%g174704174707%_
                                                              _%g174705174709%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp178145
                                                  '()
                                                  _%L174615%_)))
                                              (if (_%no-specializer?174013%_)
                                                  _%stx173917%_
                                                  (let* ((_%specializer-id174718%_
                                                          (let* ((_%id174712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp178146
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L173990%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp178146 '"::specialize")))
                         (_%specializer-id174715%_
                          (let ((__tmp178147
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx173917%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id174712%_
                             __tmp178147))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id174715%_))
                    _%specializer-id174715%_))
                 (_%$klass174720%_
                  (let ((__tmp178148
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp178148)))
                 (_%$method-table174722%_
                  (let ((__tmp178149
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp178149)))
                 (_%methods174724%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls174009%_)))
                 (_%$methods174728%_
                  (map (lambda (_%id174726%_)
                         (let ((__tmp178150 (gensym _%id174726%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp178150)))
                       _%methods174724%_))
                 (_%_174737%_
                  (for-each
                   (lambda (_%g174729174732%_ _%g174730174734%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls174009%_
                        _%g174729174732%_
                        _%g174730174734%_)))
                   _%methods174724%_
                   _%$methods174728%_))
                 (_%methods-bind174747%_
                  (map (lambda (_%g174739174742%_ _%g174740174744%_)
                         (_%generate-method-bind173919%_
                          _%$klass174720%_
                          _%$method-table174722%_
                          _%g174739174742%_
                          _%g174740174744%_))
                       _%methods174724%_
                       _%$methods174728%_))
                 (_%slots174749%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs174010%_)))
                 (_%$slots174753%_
                  (map (lambda (_%id174751%_)
                         (let ((__tmp178151 (gensym _%id174751%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp178151)))
                       _%slots174749%_))
                 (_%_174762%_
                  (for-each
                   (lambda (_%g174754174757%_ _%g174755174759%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs174010%_
                        _%g174754174757%_
                        _%g174755174759%_)))
                   _%slots174749%_
                   _%$slots174753%_))
                 (_%slots-bind174771%_
                  (map (lambda (_%g174763174766%_ _%g174764174768%_)
                         (_%generate-slot-bind173920%_
                          _%$klass174720%_
                          _%g174763174766%_
                          _%g174764174768%_))
                       _%slots174749%_
                       _%$slots174753%_))
                 (_%specializer-clauses174869%_
                  (map (lambda (_%clause174773%_)
                         (let* ((_%__stx176959176960%_ _%clause174773%_)
                                (_%g174776174791%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx176959176960%_)))))
                           (let ((_%__kont176961176962%_
                                  (lambda (_%L174819%_ _%L174820%_ _%L174821%_)
                                    (let* ((_%receiver174850%_
                                            (let ((_%$e174847%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L174819%_))))
                                              (if _%$e174847%_
                                                  _%$e174847%_
                                                  _%L174821%_)))
                                           (_%body174856%_
                                            (map (lambda (_%g174851174853%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver174850%_
                                                    _%$klass174720%_
                                                    _%method-calls174009%_
                                                    _%slot-refs174010%_
                                                    _%g174851174853%_))
                                                 _%L174819%_)))
                                      (cons (cons _%L174821%_ _%L174820%_)
                                            _%body174856%_))))
                                 (_%__kont176963176964%_
                                  (lambda () _%clause174773%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx176959176960%_))
                                 (let ((_%e174781174803%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx176959176960%_))))
                                   (let ((_%tl174783174808%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e174781174803%_)))
                                         (_%hd174782174806%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e174781174803%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd174782174806%_))
                                         (let ((_%e174784174811%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd174782174806%_))))
                                           (let ((_%tl174786174816%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e174784174811%_)))
                                                 (_%hd174785174814%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e174784174811%_))))
                                             (_%__kont176961176962%_
                                              _%tl174783174808%_
                                              _%tl174786174816%_
                                              _%hd174785174814%_)))
                                         (_%__kont176963176964%_))))
                                 (_%__kont176963176964%_)))))
                       (let ((__tmp178152
                              (lambda (_%g174861174864%_ _%g174862174866%_)
                                (cons _%g174861174864%_ _%g174862174866%_))))
                         (declare (not safe))
                         (__foldr1 __tmp178152 '() _%L174615%_))))
                 (_%specializer-impl174871%_
                  (let ((__tmp178153
                         (cons '%#case-lambda _%specializer-clauses174869%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp178153 _%stx173917%_)))
                 (_%specializer-impl174873%_
                  (_%generate-specializer-impl173921%_
                   _%$klass174720%_
                   _%$method-table174722%_
                   _%methods-bind174747%_
                   _%slots-bind174771%_
                   _%specializer-impl174871%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp178155
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L173990%_)))
                                                          (__tmp178154
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id174718%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp178155
                                                       '" => "
                                                       __tmp178154))
                                                    (_%generate-specializer-def173922%_
                                                     _%L173990%_
                                                     _%specializer-id174718%_
                                                     _%specializer-impl174873%_))))
                                            _%clause174573174612%_))))))
                           (_%loop174568174596%_ _%target174565174591%_ '()))
                         (_%g174559174578%_ _%g174560174581%_)))))
               (_%g174559174578%_ _%g174560174581%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g174559174578%_
                                                _%g174560174581%_)))))
                                   (_%g174558174876%_ _%L173989%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L173989%_))
                                     (let* ((_%g174880174910%_
                                             (lambda (_%g174881174907%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g174881174907%_))))
                                            (_%g174879175541%_
                                             (lambda (_%g174881174913%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g174881174913%_))
                                                   (let ((_%e174885174915%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g174881174913%_))))
                                                     (let ((_%hd174886174918%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e174885174915%_)))
                                                           (_%tl174887174920%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e174885174915%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl174887174920%_))
                                                           (let ((_%e174888174923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl174887174920%_))))
                     (let ((_%hd174889174926%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174888174923%_)))
                           (_%tl174890174928%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174888174923%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd174889174926%_))
                           (let ((_%e174891174931%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd174889174926%_))))
                             (let ((_%hd174892174934%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e174891174931%_)))
                                   (_%tl174893174936%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e174891174931%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd174892174934%_))
                                   (let ((_%e174894174939%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd174892174934%_))))
                                     (let ((_%hd174895174942%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e174894174939%_)))
                                           (_%tl174896174944%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e174894174939%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd174895174942%_))
                                           (let ((_%e174897174947%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd174895174942%_))))
                                             (let ((_%hd174898174950%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e174897174947%_)))
                                                   (_%tl174899174952%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e174897174947%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl174899174952%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl174896174944%_))
                                                       (let ((_%e174900174955%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl174896174944%_))))
                 (let ((_%hd174901174958%_
                        (let ()
                          (declare (not safe))
                          (##car _%e174900174955%_)))
                       (_%tl174902174960%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e174900174955%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl174902174960%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl174893174936%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl174890174928%_))
                               (let ((_%e174903174963%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl174890174928%_))))
                                 (let ((_%hd174904174966%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e174903174963%_)))
                                       (_%tl174905174968%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e174903174963%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl174905174968%_))
                                       ((lambda (_%L174971%_
                                                 _%L174972%_
                                                 _%L174973%_)
                                          (let* ((_%g174997175015%_
                                                  (lambda (_%g174998175012%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g174998175012%_))))
                                                 (_%g174996175071%_
                                                  (lambda (_%g174998175018%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g174998175018%_))
                                                        (let ((_%e175002175020%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g174998175018%_))))
                  (let ((_%hd175003175023%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175002175020%_)))
                        (_%tl175004175025%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175002175020%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl175004175025%_))
                        (let ((_%e175005175028%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl175004175025%_))))
                          (let ((_%hd175006175031%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e175005175028%_)))
                                (_%tl175007175033%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e175005175028%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd175006175031%_))
                                (let ((_%e175008175036%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd175006175031%_))))
                                  (let ((_%hd175009175039%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175008175036%_)))
                                        (_%tl175010175041%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175008175036%_))))
                                    ((lambda (_%L175044%_
                                              _%L175045%_
                                              _%L175046%_)
                                       (let ((_%receiver175065%_
                                              (let ((_%$e175062%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L175044%_))))
                                                (if _%$e175062%_
                                                    _%$e175062%_
                                                    _%L175046%_))))
                                         (for-each
                                          (lambda (_%g175066175068%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver175065%_
                                             _%method-calls174009%_
                                             _%slot-refs174010%_
                                             _%g175066175068%_))
                                          _%L175044%_)))
                                     _%tl175007175033%_
                                     _%tl175010175041%_
                                     _%hd175009175039%_)))
                                (_%g174997175015%_ _%g174998175018%_))))
                        (_%g174997175015%_ _%g174998175018%_))))
                (_%g174997175015%_ _%g174998175018%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g174996175071%_ _%L174972%_))
                                          (let* ((_%g175074175093%_
                                                  (lambda (_%g175075175090%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g175075175090%_))))
                                                 (_%g175073175217%_
                                                  (lambda (_%g175075175096%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g175075175096%_))
                                                        (let ((_%e175077175098%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g175075175096%_))))
                  (let ((_%hd175078175101%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175077175098%_)))
                        (_%tl175079175103%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175077175098%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl175079175103%_))
                        (let ((_g178156_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl175079175103%_
                                  '0))))
                          (begin
                            (let ((_g178157_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g178156_)
                                         (##values-length _g178156_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g178157_ 2)))
                                  (error "Context expects 2 values"
                                         _g178157_)))
                            (let ((_%target175080175106%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g178156_ 0)))
                                  (_%tl175082175108%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g178156_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl175082175108%_))
                                  (letrec ((_%loop175083175111%_
                                            (lambda (_%hd175081175114%_
                                                     _%clause175087175116%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd175081175114%_))
                                                  (let ((_%e175084175119%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd175081175114%_))))
                                                    (let ((_%lp-hd175085175122%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e175084175119%_)))
                                                          (_%lp-tl175086175124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e175084175119%_))))
                                                      (_%loop175083175111%_
                                                       _%lp-tl175086175124%_
                                                       (cons _%lp-hd175085175122%_
                                                             _%clause175087175116%_))))
                                                  (let ((_%clause175088175127%_
                                                         (reverse _%clause175087175116%_)))
                                                    ((lambda (_%L175130%_)
                                                       (for-each
                                                        (lambda (_%clause175143%_)
                                                          (let* ((_%g175145175160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g175146175157%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g175146175157%_))))
                         (_%g175144175207%_
                          (lambda (_%g175146175163%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g175146175163%_))
                                (let ((_%e175150175165%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g175146175163%_))))
                                  (let ((_%hd175151175168%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175150175165%_)))
                                        (_%tl175152175170%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175150175165%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd175151175168%_))
                                        (let ((_%e175153175173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd175151175168%_))))
                                          (let ((_%hd175154175176%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e175153175173%_)))
                                                (_%tl175155175178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e175153175173%_))))
                                            ((lambda (_%L175181%_
                                                      _%L175182%_
                                                      _%L175183%_)
                                               (let ((_%receiver175201%_
                                                      (let ((_%$e175198%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L175181%_))))
                (if _%$e175198%_ _%$e175198%_ _%L175183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g175202175204%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver175201%_
                                                     _%method-calls174009%_
                                                     _%slot-refs174010%_
                                                     _%g175202175204%_))
                                                  _%L175181%_)))
                                             _%tl175152175170%_
                                             _%tl175155175178%_
                                             _%hd175154175176%_)))
                                        (_%g175145175160%_
                                         _%g175146175163%_))))
                                (_%g175145175160%_ _%g175146175163%_)))))
                    (_%g175144175207%_ _%clause175143%_)))
                (let ((__tmp178158
                       (lambda (_%g175209175212%_ _%g175210175214%_)
                         (cons _%g175209175212%_ _%g175210175214%_))))
                  (declare (not safe))
                  (__foldr1 __tmp178158 '() _%L175130%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause175088175127%_))))))
                                    (_%loop175083175111%_
                                     _%target175080175106%_
                                     '()))
                                  (_%g175074175093%_ _%g175075175096%_)))))
                        (_%g175074175093%_ _%g175075175096%_))))
                (_%g175074175093%_ _%g175075175096%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g175073175217%_ _%L174971%_))
                                          (if (_%no-specializer?174013%_)
                                              _%stx173917%_
                                              (let* ((_%specializer-id175226%_
                                                      (let* ((_%id175220%_
                                                              (let ((__tmp178159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L173990%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp178159 '"::specialize")))
                     (_%specializer-id175223%_
                      (let ((__tmp178160
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx173917%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id175220%_ __tmp178160))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id175223%_))
                _%specializer-id175223%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass175228%_
                                                      (let ((__tmp178161
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp178161)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table175230%_
                                                      (let ((__tmp178162
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp178162)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods175232%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls174009%_)))
                                                     (_%$methods175236%_
                                                      (map (lambda (_%id175234%_)
                                                             (let ((__tmp178163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175234%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp178163)))
                   _%methods175232%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175245%_
                                                      (for-each
                                                       (lambda (_%g175237175240%_
                                                                _%g175238175242%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls174009%_
                                                            _%g175237175240%_
                                                            _%g175238175242%_)))
                                                       _%methods175232%_
                                                       _%$methods175236%_))
                                                     (_%methods-bind175255%_
                                                      (map (lambda (_%g175247175250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175248175252%_)
                     (_%generate-method-bind173919%_
                      _%$klass175228%_
                      _%$method-table175230%_
                      _%g175247175250%_
                      _%g175248175252%_))
                   _%methods175232%_
                   _%$methods175236%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots175257%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs174010%_)))
                                                     (_%$slots175261%_
                                                      (map (lambda (_%id175259%_)
                                                             (let ((__tmp178164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175259%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp178164)))
                   _%slots175257%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175270%_
                                                      (for-each
                                                       (lambda (_%g175262175265%_
                                                                _%g175263175267%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs174010%_
                                                            _%g175262175265%_
                                                            _%g175263175267%_)))
                                                       _%slots175257%_
                                                       _%$slots175261%_))
                                                     (_%slots-bind175279%_
                                                      (map (lambda (_%g175271175274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175272175276%_)
                     (_%generate-slot-bind173920%_
                      _%$klass175228%_
                      _%g175271175274%_
                      _%g175272175276%_))
                   _%slots175257%_
                   _%$slots175261%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr175371%_
                                                      (let* ((_%g175281175299%_
                                                              (lambda (_%g175282175296%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g175282175296%_))))
                     (_%g175280175368%_
                      (lambda (_%g175282175302%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g175282175302%_))
                            (let ((_%e175286175304%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g175282175302%_))))
                              (let ((_%hd175287175307%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175286175304%_)))
                                    (_%tl175288175309%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175286175304%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl175288175309%_))
                                    (let ((_%e175289175312%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl175288175309%_))))
                                      (let ((_%hd175290175315%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175289175312%_)))
                                            (_%tl175291175317%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175289175312%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd175290175315%_))
                                            (let ((_%e175292175320%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd175290175315%_))))
                                              (let ((_%hd175293175323%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e175292175320%_)))
                                                    (_%tl175294175325%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e175292175320%_))))
                                                ((lambda (_%L175328%_
                                                          _%L175329%_
                                                          _%L175330%_)
                                                   (let* ((_%receiver175359%_
                                                           (let ((_%$e175356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L175328%_))))
                     (if _%$e175356%_ _%$e175356%_ _%L175330%_)))
                  (_%body175365%_
                   (map (lambda (_%g175360175362%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver175359%_
                           _%$klass175228%_
                           _%method-calls174009%_
                           _%slot-refs174010%_
                           _%g175360175362%_))
                        _%L175328%_))
                  (__tmp178165
                   (cons '%#lambda
                         (cons (cons _%L175330%_ _%L175329%_)
                               _%body175365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp178165
                                                      _%L174972%_)))
                                                 _%tl175291175317%_
                                                 _%tl175294175325%_
                                                 _%hd175293175323%_)))
                                            (_%g175281175299%_
                                             _%g175282175302%_))))
                                    (_%g175281175299%_ _%g175282175302%_))))
                            (_%g175281175299%_ _%g175282175302%_)))))
                (_%g175280175368%_ _%L174972%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr175534%_
                                                      (let* ((_%g175373175392%_
                                                              (lambda (_%g175374175389%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g175374175389%_))))
                     (_%g175372175531%_
                      (lambda (_%g175374175395%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g175374175395%_))
                            (let ((_%e175376175397%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g175374175395%_))))
                              (let ((_%hd175377175400%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175376175397%_)))
                                    (_%tl175378175402%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175376175397%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl175378175402%_))
                                    (let ((_g178166_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl175378175402%_
                                              '0))))
                                      (begin
                                        (let ((_g178167_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g178166_)
                                                     (##values-length
                                                      _g178166_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g178167_ 2)))
                                              (error "Context expects 2 values"
                                                     _g178167_)))
                                        (let ((_%target175379175405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g178166_ 0)))
                                              (_%tl175381175407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g178166_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl175381175407%_))
                                              (letrec ((_%loop175382175410%_
                                                        (lambda (_%hd175380175413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause175386175415%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd175380175413%_))
                      (let ((_%e175383175418%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd175380175413%_))))
                        (let ((_%lp-hd175384175421%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175383175418%_)))
                              (_%lp-tl175385175423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175383175418%_))))
                          (_%loop175382175410%_
                           _%lp-tl175385175423%_
                           (cons _%lp-hd175384175421%_
                                 _%clause175386175415%_))))
                      (let ((_%clause175387175426%_
                             (reverse _%clause175386175415%_)))
                        ((lambda (_%L175429%_)
                           (let* ((_%clauses175529%_
                                   (map (lambda (_%clause175443%_)
                                          (let* ((_%__stx176979176980%_
                                                  _%clause175443%_)
                                                 (_%g175446175461%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx176979176980%_)))))
                                            (let ((_%__kont176981176982%_
                                                   (lambda (_%L175489%_
                                                            _%L175490%_
                                                            _%L175491%_)
                                                     (let* ((_%receiver175510%_
                                                             (let ((_%$e175507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L175489%_))))
                       (if _%$e175507%_ _%$e175507%_ _%L175491%_)))
                    (_%body175516%_
                     (map (lambda (_%g175511175513%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver175510%_
                             _%$klass175228%_
                             _%method-calls174009%_
                             _%slot-refs174010%_
                             _%g175511175513%_))
                          _%L175489%_)))
               (cons (cons _%L175491%_ _%L175490%_) _%body175516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont176983176984%_
                                                   (lambda ()
                                                     _%clause175443%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx176979176980%_))
                                                  (let ((_%e175451175473%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx176979176980%_))))
                                                    (let ((_%tl175453175478%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e175451175473%_)))
                                                          (_%hd175452175476%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e175451175473%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd175452175476%_))
                                                          (let ((_%e175454175481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd175452175476%_))))
                    (let ((_%tl175456175486%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e175454175481%_)))
                          (_%hd175455175484%_
                           (let ()
                             (declare (not safe))
                             (##car _%e175454175481%_))))
                      (_%__kont176981176982%_
                       _%tl175453175478%_
                       _%tl175456175486%_
                       _%hd175455175484%_)))
                  (_%__kont176983176984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont176983176984%_)))))
                                        (let ((__tmp178168
                                               (lambda (_%g175521175524%_
                                                        _%g175522175526%_)
                                                 (cons _%g175521175524%_
                                                       _%g175522175526%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp178168
                                           '()
                                           _%L175429%_))))
                                  (__tmp178169
                                   (cons '%#case-lambda _%clauses175529%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp178169 _%L174971%_)))
                         _%clause175387175426%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop175382175410%_
                                                 _%target175379175405%_
                                                 '()))
                                              (_%g175373175392%_
                                               _%g175374175395%_)))))
                                    (_%g175373175392%_ _%g175374175395%_))))
                            (_%g175373175392%_ _%g175374175395%_)))))
                (_%g175372175531%_ _%L174971%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl175536%_
                                                      (let ((__tmp178170
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L174973%_ '())
                                             (cons _%specializer-lambda-expr175371%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr175534%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp178170 _%stx173917%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl175538%_
                                                      (_%generate-specializer-impl173921%_
                                                       _%$klass175228%_
                                                       _%$method-table175230%_
                                                       _%methods-bind175255%_
                                                       _%slots-bind175279%_
                                                       _%specializer-impl175536%_)))
                                                (let ((__tmp178172
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L173990%_)))
                                                      (__tmp178171
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id175226%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp178172
                                                   '" => "
                                                   __tmp178171))
                                                (_%generate-specializer-def173922%_
                                                 _%L173990%_
                                                 _%specializer-id175226%_
                                                 _%specializer-impl175538%_))))
                                        _%hd174904174966%_
                                        _%hd174901174958%_
                                        _%hd174898174950%_)
                                       (_%g174880174910%_ _%g174881174913%_))))
                               (_%g174880174910%_ _%g174881174913%_))
                           (_%g174880174910%_ _%g174881174913%_))
                       (_%g174880174910%_ _%g174881174913%_))))
               (_%g174880174910%_ _%g174881174913%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174880174910%_
                                                    _%g174881174913%_))))
                                           (_%g174880174910%_
                                            _%g174881174913%_))))
                                   (_%g174880174910%_ _%g174881174913%_))))
                           (_%g174880174910%_ _%g174881174913%_))))
                   (_%g174880174910%_ _%g174881174913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174880174910%_
                                                    _%g174881174913%_)))))
                                       (_%g174879175541%_ _%L173989%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L173989%_))
                                         (let* ((_%g175545175598%_
                                                 (lambda (_%g175546175595%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g175546175595%_))))
                                                (_%g175544176769%_
                                                 (lambda (_%g175546175601%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g175546175601%_))
                                                       (let ((_%e175552175603%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g175546175601%_))))
                 (let ((_%hd175553175606%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175552175603%_)))
                       (_%tl175554175608%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175552175603%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd175553175606%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd175553175606%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl175554175608%_))
                               (let ((_%e175555175611%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl175554175608%_))))
                                 (let ((_%hd175556175614%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e175555175611%_)))
                                       (_%tl175557175616%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e175555175611%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd175556175614%_))
                                       (let ((_%e175558175619%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd175556175614%_))))
                                         (let ((_%hd175559175622%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e175558175619%_)))
                                               (_%tl175560175624%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e175558175619%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd175559175622%_))
                                               (let ((_%e175561175627%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd175559175622%_))))
                                                 (let ((_%hd175562175630%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175561175627%_)))
                                                       (_%tl175563175632%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175561175627%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd175562175630%_))
                                                       (let ((_%e175564175635%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd175562175630%_))))
                 (let ((_%hd175565175638%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175564175635%_)))
                       (_%tl175566175640%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175564175635%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl175566175640%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl175563175632%_))
                           (let ((_%e175567175643%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl175563175632%_))))
                             (let ((_%hd175568175646%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e175567175643%_)))
                                   (_%tl175569175648%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e175567175643%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd175568175646%_))
                                   (let ((_%e175570175651%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd175568175646%_))))
                                     (let ((_%hd175571175654%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175570175651%_)))
                                           (_%tl175572175656%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175570175651%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd175571175654%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd175571175654%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl175572175656%_))
                                                   (let ((_%e175573175659%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl175572175656%_))))
                                                     (let ((_%hd175574175662%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e175573175659%_)))
                                                           (_%tl175575175664%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e175573175659%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd175574175662%_))
                                                           (let ((_%e175576175667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd175574175662%_))))
                     (let ((_%hd175577175670%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175576175667%_)))
                           (_%tl175578175672%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175576175667%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd175577175670%_))
                           (let ((_%e175579175675%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd175577175670%_))))
                             (let ((_%hd175580175678%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e175579175675%_)))
                                   (_%tl175581175680%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e175579175675%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd175580175678%_))
                                   (let ((_%e175582175683%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd175580175678%_))))
                                     (let ((_%hd175583175686%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175582175683%_)))
                                           (_%tl175584175688%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175582175683%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl175584175688%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl175581175680%_))
                                               (let ((_%e175585175691%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl175581175680%_))))
                                                 (let ((_%hd175586175694%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175585175691%_)))
                                                       (_%tl175587175696%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175585175691%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl175587175696%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl175578175672%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl175575175664%_))
                       (let ((_%e175588175699%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl175575175664%_))))
                         (let ((_%hd175589175702%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e175588175699%_)))
                               (_%tl175590175704%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e175588175699%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl175590175704%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl175569175648%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl175560175624%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl175557175616%_))
                                           (let ((_%e175591175707%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl175557175616%_))))
                                             (let ((_%hd175592175710%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e175591175707%_)))
                                                   (_%tl175593175712%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e175591175707%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl175593175712%_))
                                                   ((lambda (_%L175715%_
                                                             _%L175716%_
                                                             _%L175717%_
                                                             _%L175718%_
                                                             _%L175719%_)
                                                      (let* ((_%g175759175821%_
                                                              (lambda (_%g175760175818%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g175760175818%_))))
                     (_%g175758176766%_
                      (lambda (_%g175760175824%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g175760175824%_))
                            (let ((_%e175766175826%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g175760175824%_))))
                              (let ((_%hd175767175829%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175766175826%_)))
                                    (_%tl175768175831%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175766175826%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd175767175829%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd175767175829%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl175768175831%_))
                                            (let ((_%e175769175834%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl175768175831%_))))
                                              (let ((_%hd175770175837%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e175769175834%_)))
                                                    (_%tl175771175839%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e175769175834%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl175771175839%_))
                                                    (let ((_%e175772175842%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl175771175839%_))))
                                                      (let ((_%hd175773175845%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e175772175842%_)))
                    (_%tl175774175847%_
                     (let () (declare (not safe)) (##cdr _%e175772175842%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd175773175845%_))
                    (let ((_%e175775175850%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd175773175845%_))))
                      (let ((_%hd175776175853%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175775175850%_)))
                            (_%tl175777175855%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175775175850%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd175776175853%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd175776175853%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl175777175855%_))
                                    (let ((_%e175778175858%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl175777175855%_))))
                                      (let ((_%hd175779175861%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175778175858%_)))
                                            (_%tl175780175863%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175778175858%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd175779175861%_))
                                            (let ((_%e175781175866%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd175779175861%_))))
                                              (let ((_%hd175782175869%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e175781175866%_)))
                                                    (_%tl175783175871%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e175781175866%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd175782175869%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd175782175869%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl175783175871%_))
                                                            (let ((_%e175784175874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl175783175871%_))))
                      (let ((_%hd175785175877%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175784175874%_)))
                            (_%tl175786175879%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175784175874%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl175786175879%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl175780175863%_))
                                (let ((_%e175787175882%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl175780175863%_))))
                                  (let ((_%hd175788175885%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175787175882%_)))
                                        (_%tl175789175887%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175787175882%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd175788175885%_))
                                        (let ((_%e175790175890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd175788175885%_))))
                                          (let ((_%hd175791175893%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e175790175890%_)))
                                                (_%tl175792175895%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e175790175890%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd175791175893%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd175791175893%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl175792175895%_))
                                                        (let ((_%e175793175898%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl175792175895%_))))
                  (let ((_%hd175794175901%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175793175898%_)))
                        (_%tl175795175903%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175793175898%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl175795175903%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl175789175887%_))
                            (let ((_%e175796175906%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl175789175887%_))))
                              (let ((_%hd175797175909%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175796175906%_)))
                                    (_%tl175798175911%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175796175906%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd175797175909%_))
                                    (let ((_%e175799175914%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd175797175909%_))))
                                      (let ((_%hd175800175917%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175799175914%_)))
                                            (_%tl175801175919%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175799175914%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd175800175917%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd175800175917%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl175801175919%_))
                                                    (let ((_%e175802175922%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl175801175919%_))))
                                                      (let ((_%hd175803175925%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e175802175922%_)))
                    (_%tl175804175927%_
                     (let () (declare (not safe)) (##cdr _%e175802175922%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl175804175927%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl175798175911%_))
                        (if (let ((__tmp178173
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl175798175911%_))))
                              (declare (not safe))
                              (##fx>= __tmp178173 '1))
                            (let ((_g178174_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl175798175911%_
                                      '1))))
                              (begin
                                (let ((_g178175_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g178174_)
                                             (##values-length _g178174_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g178175_ 2)))
                                      (error "Context expects 2 values"
                                             _g178175_)))
                                (let ((_%target175805175930%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g178174_ 0)))
                                      (_%tl175807175932%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g178174_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl175807175932%_))
                                      (let ((_%e175814175935%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl175807175932%_))))
                                        (let ((_%hd175815175938%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e175814175935%_)))
                                              (_%tl175816175940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e175814175935%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl175816175940%_))
                                              (letrec ((_%loop175808175943%_
                                                        (lambda (_%hd175806175946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref175812175948%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd175806175946%_))
                      (let ((_%e175809175951%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd175806175946%_))))
                        (let ((_%lp-hd175810175954%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175809175951%_)))
                              (_%lp-tl175811175956%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175809175951%_))))
                          (_%loop175808175943%_
                           _%lp-tl175811175956%_
                           (cons _%lp-hd175810175954%_
                                 _%kw-ref175812175948%_))))
                      (let ((_%kw-ref175813175959%_
                             (reverse _%kw-ref175812175948%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl175774175847%_))
                            ((lambda (_%L175962%_
                                      _%L175963%_
                                      _%L175964%_
                                      _%L175965%_
                                      _%L175966%_)
                               (let* ((_%kw-count176017%_
                                       (length (let ((__tmp178176
                                                      (lambda (_%g176009176012%_
                                                               _%g176010176014%_)
                                                        (cons _%g176009176012%_
                                                              _%g176010176014%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp178176
                                                  '()
                                                  _%L175963%_))))
                                      (_%self-index176019%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count176017%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L175717%_))
                                     (let* ((_%g176023176037%_
                                             (lambda (_%g176024176034%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g176024176034%_))))
                                            (_%g176022176160%_
                                             (lambda (_%g176024176040%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g176024176040%_))
                                                   (let ((_%e176027176042%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g176024176040%_))))
                                                     (let ((_%hd176028176045%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e176027176042%_)))
                                                           (_%tl176029176047%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e176027176042%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl176029176047%_))
                                                           (let ((_%e176030176050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl176029176047%_))))
                     (let ((_%hd176031176053%_
                            (let ()
                              (declare (not safe))
                              (##car _%e176030176050%_)))
                           (_%tl176032176055%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e176030176050%_))))
                       ((lambda (_%L176058%_ _%L176059%_)
                          (let* ((_%self176076%_
                                  (list-ref _%L176059%_ _%self-index176019%_))
                                 (_%receiver176081%_
                                  (let ((_%$e176078%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L176058%_))))
                                    (if _%$e176078%_
                                        _%$e176078%_
                                        _%self176076%_))))
                            (for-each
                             (lambda (_%g176083176085%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver176081%_
                                _%method-calls174009%_
                                _%slot-refs174010%_
                                _%g176083176085%_))
                             _%L176058%_)
                            (if (_%no-specializer?174013%_)
                                _%stx173917%_
                                (let* ((_%specializer-id176094%_
                                        (let* ((_%id176088%_
                                                (let ((__tmp178177
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L173990%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp178177
                                                   '"::specialize")))
                                               (_%specializer-id176091%_
                                                (let ((__tmp178178
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx173917%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id176088%_
                                                   __tmp178178))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id176091%_))
                                          _%specializer-id176091%_))
                                       (_%$klass176096%_
                                        (let ((__tmp178179
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp178179)))
                                       (_%$method-table176098%_
                                        (let ((__tmp178180
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp178180)))
                                       (_%methods176100%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls174009%_)))
                                       (_%$methods176104%_
                                        (map (lambda (_%id176102%_)
                                               (let ((__tmp178181
                                                      (gensym _%id176102%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp178181)))
                                             _%methods176100%_))
                                       (_%_176113%_
                                        (for-each
                                         (lambda (_%g176105176108%_
                                                  _%g176106176110%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls174009%_
                                              _%g176105176108%_
                                              _%g176106176110%_)))
                                         _%methods176100%_
                                         _%$methods176104%_))
                                       (_%methods-bind176123%_
                                        (map (lambda (_%g176115176118%_
                                                      _%g176116176120%_)
                                               (_%generate-method-bind173919%_
                                                _%$klass176096%_
                                                _%$method-table176098%_
                                                _%g176115176118%_
                                                _%g176116176120%_))
                                             _%methods176100%_
                                             _%$methods176104%_))
                                       (_%slots176125%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs174010%_)))
                                       (_%$slots176129%_
                                        (map (lambda (_%id176127%_)
                                               (let ((__tmp178182
                                                      (gensym _%id176127%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp178182)))
                                             _%slots176125%_))
                                       (_%_176138%_
                                        (for-each
                                         (lambda (_%g176130176133%_
                                                  _%g176131176135%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs174010%_
                                              _%g176130176133%_
                                              _%g176131176135%_)))
                                         _%slots176125%_
                                         _%$slots176129%_))
                                       (_%slots-bind176147%_
                                        (map (lambda (_%g176139176142%_
                                                      _%g176140176144%_)
                                               (_%generate-slot-bind173920%_
                                                _%$klass176096%_
                                                _%g176139176142%_
                                                _%g176140176144%_))
                                             _%slots176125%_
                                             _%$slots176129%_))
                                       (_%specializer-impl176155%_
                                        (let* ((_%specializer-body176153%_
                                                (map (lambda (_%g176148176150%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver176081%_
                                                        _%$klass176096%_
                                                        _%method-calls174009%_
                                                        _%slot-refs174010%_
                                                        _%g176148176150%_))
                                                     _%L176058%_))
                                               (__tmp178183
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L175719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L175718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp178184
                                   (cons '%#lambda
                                         (cons _%L176059%_
                                               _%specializer-body176153%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp178184 _%L175717%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L175716%_ '())))
                                      '()))
                          '())
                    (cons _%L175715%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp178183
                                           _%stx173917%_)))
                                       (_%specializer-impl176157%_
                                        (_%generate-specializer-impl173921%_
                                         _%$klass176096%_
                                         _%$method-table176098%_
                                         _%methods-bind176123%_
                                         _%slots-bind176147%_
                                         _%specializer-impl176155%_)))
                                  (let ((__tmp178186
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L173990%_)))
                                        (__tmp178185
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id176094%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp178186
                                     '" => "
                                     __tmp178185))
                                  (_%generate-specializer-def173922%_
                                   _%L173990%_
                                   _%specializer-id176094%_
                                   _%specializer-impl176157%_)))))
                        _%tl176032176055%_
                        _%hd176031176053%_)))
                   (_%g176023176037%_ _%g176024176040%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g176023176037%_
                                                    _%g176024176040%_)))))
                                       (_%g176022176160%_ _%L175717%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L175717%_))
                                         (let* ((_%g176164176194%_
                                                 (lambda (_%g176165176191%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g176165176191%_))))
                                                (_%g176163176762%_
                                                 (lambda (_%g176165176197%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g176165176197%_))
                                                       (let ((_%e176169176199%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g176165176197%_))))
                 (let ((_%hd176170176202%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176169176199%_)))
                       (_%tl176171176204%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176169176199%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl176171176204%_))
                       (let ((_%e176172176207%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl176171176204%_))))
                         (let ((_%hd176173176210%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e176172176207%_)))
                               (_%tl176174176212%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e176172176207%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd176173176210%_))
                               (let ((_%e176175176215%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd176173176210%_))))
                                 (let ((_%hd176176176218%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e176175176215%_)))
                                       (_%tl176177176220%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e176175176215%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd176176176218%_))
                                       (let ((_%e176178176223%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd176176176218%_))))
                                         (let ((_%hd176179176226%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e176178176223%_)))
                                               (_%tl176180176228%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e176178176223%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd176179176226%_))
                                               (let ((_%e176181176231%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd176179176226%_))))
                                                 (let ((_%hd176182176234%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176181176231%_)))
                                                       (_%tl176183176236%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176181176231%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl176183176236%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl176180176228%_))
                                                           (let ((_%e176184176239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl176180176228%_))))
                     (let ((_%hd176185176242%_
                            (let ()
                              (declare (not safe))
                              (##car _%e176184176239%_)))
                           (_%tl176186176244%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e176184176239%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl176186176244%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl176177176220%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl176174176212%_))
                                   (let ((_%e176187176247%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl176174176212%_))))
                                     (let ((_%hd176188176250%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176187176247%_)))
                                           (_%tl176189176252%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176187176247%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl176189176252%_))
                                           ((lambda (_%L176255%_
                                                     _%L176256%_
                                                     _%L176257%_)
                                              (let* ((_%g176281176295%_
                                                      (lambda (_%g176282176292%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g176282176292%_))))
                                                     (_%g176280176342%_
                                                      (lambda (_%g176282176298%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g176282176298%_))
                                                            (let ((_%e176285176300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g176282176298%_))))
                      (let ((_%hd176286176303%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176285176300%_)))
                            (_%tl176287176305%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176285176300%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl176287176305%_))
                            (let ((_%e176288176308%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl176287176305%_))))
                              (let ((_%hd176289176311%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176288176308%_)))
                                    (_%tl176290176313%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176288176308%_))))
                                ((lambda (_%L176316%_ _%L176317%_)
                                   (let* ((_%self176330%_
                                           (list-ref
                                            _%L176317%_
                                            _%self-index176019%_))
                                          (_%receiver176335%_
                                           (let ((_%$e176332%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L176316%_))))
                                             (if _%$e176332%_
                                                 _%$e176332%_
                                                 _%self176330%_))))
                                     (for-each
                                      (lambda (_%g176337176339%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver176335%_
                                         _%method-calls174009%_
                                         _%slot-refs174010%_
                                         _%g176337176339%_))
                                      _%L176316%_)))
                                 _%tl176290176313%_
                                 _%hd176289176311%_)))
                            (_%g176281176295%_ _%g176282176298%_))))
                    (_%g176281176295%_ _%g176282176298%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g176280176342%_
                                                 _%L176256%_))
                                              (let* ((_%g176345176364%_
                                                      (lambda (_%g176346176361%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g176346176361%_))))
                                                     (_%g176344176475%_
                                                      (lambda (_%g176346176367%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g176346176367%_))
                                                            (let ((_%e176348176369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g176346176367%_))))
                      (let ((_%hd176349176372%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176348176369%_)))
                            (_%tl176350176374%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176348176369%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl176350176374%_))
                            (let ((_g178187_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl176350176374%_
                                      '0))))
                              (begin
                                (let ((_g178188_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g178187_)
                                             (##values-length _g178187_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g178188_ 2)))
                                      (error "Context expects 2 values"
                                             _g178188_)))
                                (let ((_%target176351176377%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g178187_ 0)))
                                      (_%tl176353176379%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g178187_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176353176379%_))
                                      (letrec ((_%loop176354176382%_
                                                (lambda (_%hd176352176385%_
                                                         _%clause176358176387%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd176352176385%_))
                                                      (let ((_%e176355176390%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd176352176385%_))))
                (let ((_%lp-hd176356176393%_
                       (let () (declare (not safe)) (##car _%e176355176390%_)))
                      (_%lp-tl176357176395%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e176355176390%_))))
                  (_%loop176354176382%_
                   _%lp-tl176357176395%_
                   (cons _%lp-hd176356176393%_ _%clause176358176387%_))))
              (let ((_%clause176359176398%_ (reverse _%clause176358176387%_)))
                ((lambda (_%L176401%_)
                   (for-each
                    (lambda (_%clause176414%_)
                      (let* ((_%g176416176427%_
                              (lambda (_%g176417176424%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g176417176424%_))))
                             (_%g176415176465%_
                              (lambda (_%g176417176430%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g176417176430%_))
                                    (let ((_%e176420176432%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g176417176430%_))))
                                      (let ((_%hd176421176435%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176420176432%_)))
                                            (_%tl176422176437%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176420176432%_))))
                                        ((lambda (_%L176440%_ _%L176441%_)
                                           (let* ((_%self176453%_
                                                   (list-ref
                                                    _%L176441%_
                                                    _%self-index176019%_))
                                                  (_%receiver176458%_
                                                   (let ((_%$e176455%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L176440%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e176455%_
                                                         _%$e176455%_
                                                         _%self176453%_))))
                                             (for-each
                                              (lambda (_%g176460176462%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver176458%_
                                                 _%method-calls174009%_
                                                 _%slot-refs174010%_
                                                 _%g176460176462%_))
                                              _%L176440%_)))
                                         _%tl176422176437%_
                                         _%hd176421176435%_)))
                                    (_%g176416176427%_ _%g176417176430%_)))))
                        (_%g176415176465%_ _%clause176414%_)))
                    (let ((__tmp178189
                           (lambda (_%g176467176470%_ _%g176468176472%_)
                             (cons _%g176467176470%_ _%g176468176472%_))))
                      (declare (not safe))
                      (__foldr1 __tmp178189 '() _%L176401%_))))
                 _%clause176359176398%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop176354176382%_
                                         _%target176351176377%_
                                         '()))
                                      (_%g176345176364%_ _%g176346176367%_)))))
                            (_%g176345176364%_ _%g176346176367%_))))
                    (_%g176345176364%_ _%g176346176367%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g176344176475%_
                                                 _%L176255%_))
                                              (if (_%no-specializer?174013%_)
                                                  _%stx173917%_
                                                  (let* ((_%specializer-id176484%_
                                                          (let* ((_%id176478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp178190
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L173990%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp178190 '"::specialize")))
                         (_%specializer-id176481%_
                          (let ((__tmp178191
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx173917%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id176478%_
                             __tmp178191))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id176481%_))
                    _%specializer-id176481%_))
                 (_%$klass176486%_
                  (let ((__tmp178192
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp178192)))
                 (_%$method-table176488%_
                  (let ((__tmp178193
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp178193)))
                 (_%methods176490%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls174009%_)))
                 (_%$methods176494%_
                  (map (lambda (_%id176492%_)
                         (let ((__tmp178194 (gensym _%id176492%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp178194)))
                       _%methods176490%_))
                 (_%_176503%_
                  (for-each
                   (lambda (_%g176495176498%_ _%g176496176500%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls174009%_
                        _%g176495176498%_
                        _%g176496176500%_)))
                   _%methods176490%_
                   _%$methods176494%_))
                 (_%methods-bind176513%_
                  (map (lambda (_%g176505176508%_ _%g176506176510%_)
                         (_%generate-method-bind173919%_
                          _%$klass176486%_
                          _%$method-table176488%_
                          _%g176505176508%_
                          _%g176506176510%_))
                       _%methods176490%_
                       _%$methods176494%_))
                 (_%slots176515%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs174010%_)))
                 (_%$slots176519%_
                  (map (lambda (_%id176517%_)
                         (let ((__tmp178195 (gensym _%id176517%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp178195)))
                       _%slots176515%_))
                 (_%_176528%_
                  (for-each
                   (lambda (_%g176520176523%_ _%g176521176525%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs174010%_
                        _%g176520176523%_
                        _%g176521176525%_)))
                   _%slots176515%_
                   _%$slots176519%_))
                 (_%slots-bind176537%_
                  (map (lambda (_%g176529176532%_ _%g176530176534%_)
                         (_%generate-slot-bind173920%_
                          _%$klass176486%_
                          _%g176529176532%_
                          _%g176530176534%_))
                       _%slots176515%_
                       _%$slots176519%_))
                 (_%specializer-lambda-expr176615%_
                  (let* ((_%g176539176553%_
                          (lambda (_%g176540176550%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g176540176550%_))))
                         (_%g176538176612%_
                          (lambda (_%g176540176556%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g176540176556%_))
                                (let ((_%e176543176558%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g176540176556%_))))
                                  (let ((_%hd176544176561%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176543176558%_)))
                                        (_%tl176545176563%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176543176558%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl176545176563%_))
                                        (let ((_%e176546176566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl176545176563%_))))
                                          (let ((_%hd176547176569%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176546176566%_)))
                                                (_%tl176548176571%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176546176566%_))))
                                            ((lambda (_%L176574%_ _%L176575%_)
                                               (let* ((_%self176598%_
                                                       (list-ref
                                                        _%L176575%_
                                                        _%self-index176019%_))
                                                      (_%receiver176603%_
                                                       (let ((_%$e176600%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L176574%_))))
                 (if _%$e176600%_ _%$e176600%_ _%self176598%_)))
              (_%body176609%_
               (map (lambda (_%g176604176606%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver176603%_
                       _%$klass176486%_
                       _%method-calls174009%_
                       _%slot-refs174010%_
                       _%g176604176606%_))
                    _%L176574%_))
              (__tmp178196 (cons '%#lambda (cons _%L176575%_ _%body176609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp178196
                                                  _%L176256%_)))
                                             _%tl176548176571%_
                                             _%hd176547176569%_)))
                                        (_%g176539176553%_
                                         _%g176540176556%_))))
                                (_%g176539176553%_ _%g176540176556%_)))))
                    (_%g176538176612%_ _%L176256%_)))
                 (_%specializer-case-lambda-expr176755%_
                  (let* ((_%g176617176636%_
                          (lambda (_%g176618176633%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g176618176633%_))))
                         (_%g176616176752%_
                          (lambda (_%g176618176639%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g176618176639%_))
                                (let ((_%e176620176641%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g176618176639%_))))
                                  (let ((_%hd176621176644%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176620176641%_)))
                                        (_%tl176622176646%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176620176641%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl176622176646%_))
                                        (let ((_g178197_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl176622176646%_
                                                  '0))))
                                          (begin
                                            (let ((_g178198_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g178197_)
                                                         (##values-length
                                                          _g178197_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g178198_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g178198_)))
                                            (let ((_%target176623176649%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g178197_
                                                      0)))
                                                  (_%tl176625176651%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g178197_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl176625176651%_))
                                                  (letrec ((_%loop176626176654%_
                                                            (lambda (_%hd176624176657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause176630176659%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd176624176657%_))
                          (let ((_%e176627176662%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd176624176657%_))))
                            (let ((_%lp-hd176628176665%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e176627176662%_)))
                                  (_%lp-tl176629176667%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e176627176662%_))))
                              (_%loop176626176654%_
                               _%lp-tl176629176667%_
                               (cons _%lp-hd176628176665%_
                                     _%clause176630176659%_))))
                          (let ((_%clause176631176670%_
                                 (reverse _%clause176630176659%_)))
                            ((lambda (_%L176673%_)
                               (let* ((_%clauses176750%_
                                       (map (lambda (_%clause176687%_)
                                              (let* ((_%g176689176700%_
                                                      (lambda (_%g176690176697%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g176690176697%_))))
                                                     (_%g176688176740%_
                                                      (lambda (_%g176690176703%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g176690176703%_))
                                                            (let ((_%e176693176705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g176690176703%_))))
                      (let ((_%hd176694176708%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176693176705%_)))
                            (_%tl176695176710%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176693176705%_))))
                        ((lambda (_%L176713%_ _%L176714%_)
                           (let* ((_%self176726%_
                                   (list-ref _%L176714%_ _%self-index176019%_))
                                  (_%receiver176731%_
                                   (let ((_%$e176728%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L176713%_))))
                                     (if _%$e176728%_
                                         _%$e176728%_
                                         _%self176726%_)))
                                  (_%body176737%_
                                   (map (lambda (_%g176732176734%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver176731%_
                                           _%$klass176486%_
                                           _%method-calls174009%_
                                           _%slot-refs174010%_
                                           _%g176732176734%_))
                                        _%L176713%_)))
                             (cons _%L176714%_ _%body176737%_)))
                         _%tl176695176710%_
                         _%hd176694176708%_)))
                    (_%g176689176700%_ _%g176690176703%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g176688176740%_
                                                 _%clause176687%_)))
                                            (let ((__tmp178199
                                                   (lambda (_%g176742176745%_
                                                            _%g176743176747%_)
                                                     (cons _%g176742176745%_
                                                           _%g176743176747%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp178199
                                               '()
                                               _%L176673%_))))
                                      (__tmp178200
                                       (cons '%#case-lambda
                                             _%clauses176750%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp178200
                                  _%L176255%_)))
                             _%clause176631176670%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop176626176654%_
                                                     _%target176623176649%_
                                                     '()))
                                                  (_%g176617176636%_
                                                   _%g176618176639%_)))))
                                        (_%g176617176636%_
                                         _%g176618176639%_))))
                                (_%g176617176636%_ _%g176618176639%_)))))
                    (_%g176616176752%_ _%L176255%_)))
                 (_%specializer-impl176757%_
                  (let ((__tmp178201
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L175719%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L175718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp178202
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L176257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr176615%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr176755%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp178202
                                                _%stx173917%_))
                                             '()))
                                 '())
                           (cons _%L175716%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L175715%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp178201 _%stx173917%_)))
                 (_%specializer-impl176759%_
                  (_%generate-specializer-impl173921%_
                   _%$klass176486%_
                   _%$method-table176488%_
                   _%methods-bind176513%_
                   _%slots-bind176537%_
                   _%specializer-impl176757%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp178204
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L173990%_)))
                                                          (__tmp178203
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id176484%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp178204
                                                       '" => "
                                                       __tmp178203))
                                                    (_%generate-specializer-def173922%_
                                                     _%L173990%_
                                                     _%specializer-id176484%_
                                                     _%specializer-impl176759%_))))
                                            _%hd176188176250%_
                                            _%hd176185176242%_
                                            _%hd176182176234%_)
                                           (_%g176164176194%_
                                            _%g176165176197%_))))
                                   (_%g176164176194%_ _%g176165176197%_))
                               (_%g176164176194%_ _%g176165176197%_))
                           (_%g176164176194%_ _%g176165176197%_))))
                   (_%g176164176194%_ _%g176165176197%_))
               (_%g176164176194%_ _%g176165176197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176164176194%_
                                                _%g176165176197%_))))
                                       (_%g176164176194%_ _%g176165176197%_))))
                               (_%g176164176194%_ _%g176165176197%_))))
                       (_%g176164176194%_ _%g176165176197%_))))
               (_%g176164176194%_ _%g176165176197%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g176163176762%_ _%L175717%_))
                                         _%stx173917%_))))
                             _%hd175815175938%_
                             _%kw-ref175813175959%_
                             _%hd175803175925%_
                             _%hd175794175901%_
                             _%hd175785175877%_)
                            (_%g175759175821%_ _%g175760175824%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop175808175943%_
                                                 _%target175805175930%_
                                                 '()))
                                              (_%g175759175821%_
                                               _%g175760175824%_))))
                                      (_%g175759175821%_ _%g175760175824%_)))))
                            (_%g175759175821%_ _%g175760175824%_))
                        (_%g175759175821%_ _%g175760175824%_))
                    (_%g175759175821%_ _%g175760175824%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175759175821%_
                                                     _%g175760175824%_))
                                                (_%g175759175821%_
                                                 _%g175760175824%_))
                                            (_%g175759175821%_
                                             _%g175760175824%_))))
                                    (_%g175759175821%_ _%g175760175824%_))))
                            (_%g175759175821%_ _%g175760175824%_))
                        (_%g175759175821%_ _%g175760175824%_))))
                (_%g175759175821%_ _%g175760175824%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175759175821%_
                                                     _%g175760175824%_))
                                                (_%g175759175821%_
                                                 _%g175760175824%_))))
                                        (_%g175759175821%_
                                         _%g175760175824%_))))
                                (_%g175759175821%_ _%g175760175824%_))
                            (_%g175759175821%_ _%g175760175824%_))))
                    (_%g175759175821%_ _%g175760175824%_))
                (_%g175759175821%_ _%g175760175824%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175759175821%_
                                                     _%g175760175824%_))))
                                            (_%g175759175821%_
                                             _%g175760175824%_))))
                                    (_%g175759175821%_ _%g175760175824%_))
                                (_%g175759175821%_ _%g175760175824%_))
                            (_%g175759175821%_ _%g175760175824%_))))
                    (_%g175759175821%_ _%g175760175824%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175759175821%_
                                                     _%g175760175824%_))))
                                            (_%g175759175821%_
                                             _%g175760175824%_))
                                        (_%g175759175821%_ _%g175760175824%_))
                                    (_%g175759175821%_ _%g175760175824%_))))
                            (_%g175759175821%_ _%g175760175824%_)))))
                (_%g175758176766%_ _%L175716%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd175592175710%_
                                                    _%hd175589175702%_
                                                    _%hd175586175694%_
                                                    _%hd175583175686%_
                                                    _%hd175565175638%_)
                                                   (_%g175545175598%_
                                                    _%g175546175601%_))))
                                           (_%g175545175598%_
                                            _%g175546175601%_))
                                       (_%g175545175598%_ _%g175546175601%_))
                                   (_%g175545175598%_ _%g175546175601%_))
                               (_%g175545175598%_ _%g175546175601%_))))
                       (_%g175545175598%_ _%g175546175601%_))
                   (_%g175545175598%_ _%g175546175601%_))
               (_%g175545175598%_ _%g175546175601%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175545175598%_
                                                _%g175546175601%_))
                                           (_%g175545175598%_
                                            _%g175546175601%_))))
                                   (_%g175545175598%_ _%g175546175601%_))))
                           (_%g175545175598%_ _%g175546175601%_))))
                   (_%g175545175598%_ _%g175546175601%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175545175598%_
                                                    _%g175546175601%_))
                                               (_%g175545175598%_
                                                _%g175546175601%_))
                                           (_%g175545175598%_
                                            _%g175546175601%_))))
                                   (_%g175545175598%_ _%g175546175601%_))))
                           (_%g175545175598%_ _%g175546175601%_))
                       (_%g175545175598%_ _%g175546175601%_))))
               (_%g175545175598%_ _%g175546175601%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175545175598%_
                                                _%g175546175601%_))))
                                       (_%g175545175598%_ _%g175546175601%_))))
                               (_%g175545175598%_ _%g175546175601%_))
                           (_%g175545175598%_ _%g175546175601%_))
                       (_%g175545175598%_ _%g175546175601%_))))
               (_%g175545175598%_ _%g175546175601%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g175544176769%_ _%L173989%_))
                                         _%stx173917%_))))))))
                  (_%__kont177003177004%_ (lambda () _%stx173917%_)))
              (let ((_%__match177032177033%_
                     (lambda (_%e173929173957%_
                              _%hd173930173960%_
                              _%tl173931173962%_
                              _%e173932173965%_
                              _%hd173933173968%_
                              _%tl173934173970%_
                              _%e173935173973%_
                              _%hd173936173976%_
                              _%tl173937173978%_
                              _%e173938173981%_
                              _%hd173939173984%_
                              _%tl173940173986%_)
                       (let ((_%L173989%_ _%hd173939173984%_)
                             (_%L173990%_ _%hd173936173976%_))
                         (if (let ((__tmp178205
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L173990%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp178205))
                             (_%__kont177001177002%_ _%L173989%_ _%L173990%_)
                             (_%__kont177003177004%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx176999177000%_))
                    (let ((_%e173929173957%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx176999177000%_))))
                      (let ((_%tl173931173962%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173929173957%_)))
                            (_%hd173930173960%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173929173957%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl173931173962%_))
                            (let ((_%e173932173965%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl173931173962%_))))
                              (let ((_%tl173934173970%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173932173965%_)))
                                    (_%hd173933173968%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173932173965%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd173933173968%_))
                                    (let ((_%e173935173973%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd173933173968%_))))
                                      (let ((_%tl173937173978%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173935173973%_)))
                                            (_%hd173936173976%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173935173973%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl173937173978%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl173934173970%_))
                                                (let ((_%e173938173981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl173934173970%_))))
                                                  (let ((_%tl173940173986%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173938173981%_)))
                                                        (_%hd173939173984%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173938173981%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl173940173986%_))
                                                        (_%__match177032177033%_
                                                         _%e173929173957%_
                                                         _%hd173930173960%_
                                                         _%tl173931173962%_
                                                         _%e173932173965%_
                                                         _%hd173933173968%_
                                                         _%tl173934173970%_
                                                         _%e173935173973%_
                                                         _%hd173936173976%_
                                                         _%tl173937173978%_
                                                         _%e173938173981%_
                                                         _%hd173939173984%_
                                                         _%tl173940173986%_)
                                                        (_%__kont177003177004%_))))
                                                (_%__kont177003177004%_))
                                            (_%__kont177003177004%_))))
                                    (_%__kont177003177004%_))))
                            (_%__kont177003177004%_))))
                    (_%__kont177003177004%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self173769%_ _%stx173770%_)
        (let* ((_%__stx177035177036%_ _%stx173770%_)
               (_%g173773173806%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx177035177036%_)))))
          (let ((_%__kont177037177038%_ (lambda (_%L173896%_) _%L173896%_))
                (_%__kont177039177040%_
                 (lambda (_%L173835%_ _%L173836%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self173769%_ _%L173835%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx177035177036%_))
                (let ((_%e173776173856%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx177035177036%_))))
                  (let ((_%tl173778173861%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173776173856%_)))
                        (_%hd173777173859%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173776173856%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl173778173861%_))
                        (let ((_%e173779173864%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl173778173861%_))))
                          (let ((_%tl173781173869%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e173779173864%_)))
                                (_%hd173780173867%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e173779173864%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd173780173867%_))
                                (let ((_%e173782173872%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd173780173867%_))))
                                  (let ((_%tl173784173877%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173782173872%_)))
                                        (_%hd173783173875%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173782173872%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd173783173875%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd173783173875%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl173784173877%_))
                                                (let ((_%e173785173880%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl173784173877%_))))
                                                  (let ((_%tl173787173885%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173785173880%_)))
                                                        (_%hd173786173883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173785173880%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl173787173885%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl173781173869%_))
                                                            (let ((_%e173788173888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl173781173869%_))))
                      (let ((_%tl173790173893%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173788173888%_)))
                            (_%hd173789173891%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173788173888%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173790173893%_))
                            (_%__kont177037177038%_ _%hd173786173883%_)
                            (let ()
                              (declare (not safe))
                              (_%g173773173806%_)))))
                    (let () (declare (not safe)) (_%g173773173806%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl173781173869%_))
                    (let ((_%e173799173827%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl173781173869%_))))
                      (let ((_%tl173801173832%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173799173827%_)))
                            (_%hd173800173830%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173799173827%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173801173832%_))
                            (_%__kont177039177040%_
                             _%hd173800173830%_
                             _%hd173780173867%_)
                            (let ()
                              (declare (not safe))
                              (_%g173773173806%_)))))
                    (let () (declare (not safe)) (_%g173773173806%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl173781173869%_))
                                                    (let ((_%e173799173827%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl173781173869%_))))
                                                      (let ((_%tl173801173832%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e173799173827%_)))
                    (_%hd173800173830%_
                     (let () (declare (not safe)) (##car _%e173799173827%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl173801173832%_))
                    (_%__kont177039177040%_
                     _%hd173800173830%_
                     _%hd173780173867%_)
                    (let () (declare (not safe)) (_%g173773173806%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g173773173806%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl173781173869%_))
                                                (let ((_%e173799173827%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl173781173869%_))))
                                                  (let ((_%tl173801173832%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173799173827%_)))
                                                        (_%hd173800173830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173799173827%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl173801173832%_))
                                                        (_%__kont177039177040%_
                                                         _%hd173800173830%_
                                                         _%hd173780173867%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g173773173806%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g173773173806%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl173781173869%_))
                                            (let ((_%e173799173827%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl173781173869%_))))
                                              (let ((_%tl173801173832%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173799173827%_)))
                                                    (_%hd173800173830%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173799173827%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl173801173832%_))
                                                    (_%__kont177039177040%_
                                                     _%hd173800173830%_
                                                     _%hd173780173867%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g173773173806%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g173773173806%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl173781173869%_))
                                    (let ((_%e173799173827%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl173781173869%_))))
                                      (let ((_%tl173801173832%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173799173827%_)))
                                            (_%hd173800173830%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173799173827%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl173801173832%_))
                                            (_%__kont177039177040%_
                                             _%hd173800173830%_
                                             _%hd173780173867%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g173773173806%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g173773173806%_))))))
                        (let () (declare (not safe)) (_%g173773173806%_)))))
                (let () (declare (not safe)) (_%g173773173806%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self173685%_ _%stx173686%_)
        (let* ((_%g173688173709%_
                (lambda (_%g173689173706%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g173689173706%_))))
               (_%g173687173766%_
                (lambda (_%g173689173712%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g173689173712%_))
                      (let ((_%e173693173714%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g173689173712%_))))
                        (let ((_%hd173694173717%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173693173714%_)))
                              (_%tl173695173719%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173693173714%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173695173719%_))
                              (let ((_%e173696173722%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173695173719%_))))
                                (let ((_%hd173697173725%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173696173722%_)))
                                      (_%tl173698173727%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173696173722%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl173698173727%_))
                                      (let ((_%e173699173730%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl173698173727%_))))
                                        (let ((_%hd173700173733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173699173730%_)))
                                              (_%tl173701173735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173699173730%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl173701173735%_))
                                              (let ((_%e173702173738%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl173701173735%_))))
                                                (let ((_%hd173703173741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e173702173738%_)))
                                                      (_%tl173704173743%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e173702173738%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl173704173743%_))
                                                      ((lambda (_%L173746%_
                                                                _%L173747%_
                                                                _%L173748%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self173685%_
                                                            _%L173747%_)))
                                                       _%hd173703173741%_
                                                       _%hd173700173733%_
                                                       _%hd173697173725%_)
                                                      (_%g173688173709%_
                                                       _%g173689173712%_))))
                                              (_%g173688173709%_
                                               _%g173689173712%_))))
                                      (_%g173688173709%_ _%g173689173712%_))))
                              (_%g173688173709%_ _%g173689173712%_))))
                      (_%g173688173709%_ _%g173689173712%_)))))
          (_%g173687173766%_ _%stx173686%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self172646%_ _%stx172647%_)
        (let* ((_%__stx177101177102%_ _%stx172647%_)
               (_%g172655172877%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx177101177102%_)))))
          (let ((_%__kont177103177104%_
                 (lambda (_%L173634%_ _%L173635%_ _%L173636%_ _%L173637%_)
                   (let ((__tmp178207
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172646%_ 'methods)))
                         (__tmp178206
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173635%_))))
                     (declare (not safe))
                     (hash-put! __tmp178207 __tmp178206 '#t))
                   (for-each
                    (lambda (_%g173670173672%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self172646%_ _%g173670173672%_)))
                    (let ((__tmp178208
                           (lambda (_%g173674173677%_ _%g173675173679%_)
                             (cons _%g173674173677%_ _%g173675173679%_))))
                      (declare (not safe))
                      (__foldr1 __tmp178208 '() _%L173634%_)))))
                (_%__kont177107177108%_
                 (lambda (_%L173469%_
                          _%L173470%_
                          _%L173471%_
                          _%L173472%_
                          _%L173473%_)
                   (let ((__tmp178210
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172646%_ 'methods)))
                         (__tmp178209
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173470%_))))
                     (declare (not safe))
                     (hash-put! __tmp178210 __tmp178209 '#t))
                   (for-each
                    (lambda (_%g173513173515%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self172646%_ _%g173513173515%_)))
                    (let ((__tmp178211
                           (lambda (_%g173517173520%_ _%g173518173522%_)
                             (cons _%g173517173520%_ _%g173518173522%_))))
                      (declare (not safe))
                      (__foldr1 __tmp178211 '() _%L173469%_)))))
                (_%__kont177111177112%_
                 (lambda (_%L173302%_ _%L173303%_ _%L173304%_)
                   (let ((__tmp178213
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172646%_ 'slots)))
                         (__tmp178212
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173302%_))))
                     (declare (not safe))
                     (hash-put! __tmp178213 __tmp178212 '#t))))
                (_%__kont177113177114%_
                 (lambda (_%L173179%_ _%L173180%_ _%L173181%_ _%L173182%_)
                   (let ((__tmp178215
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172646%_ 'slots)))
                         (__tmp178214
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173180%_))))
                     (declare (not safe))
                     (hash-put! __tmp178215 __tmp178214 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self172646%_ _%L173179%_))))
                (_%__kont177115177116%_
                 (lambda (_%L173053%_ _%L173054%_)
                   (let* ((_%accessor173076%_
                           (let ((__tmp178216
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L173054%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp178216)))
                          (_%klass173078%_
                           (let ((__tmp178217
                                  (##structure-ref
                                   _%accessor173076%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx172647%_
                              __tmp178217)))
                          (_%slot173080%_
                           (##structure-ref
                            _%accessor173076%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor173076%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass173078%_
                                    _%slot173080%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass173078%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp178219
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self172646%_ 'slots)))
                               (__tmp178218
                                (##structure-ref
                                 _%accessor173076%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp178219 __tmp178218 '#t))))))
                (_%__kont177117177118%_
                 (lambda (_%L172953%_ _%L172954%_ _%L172955%_)
                   (let* ((_%mutator172982%_
                           (let ((__tmp178220
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L172955%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp178220)))
                          (_%klass172984%_
                           (let ((__tmp178221
                                  (##structure-ref
                                   _%mutator172982%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx172647%_
                              __tmp178221)))
                          (_%slot172986%_
                           (##structure-ref
                            _%mutator172982%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator172982%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass172984%_
                                    _%slot172986%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass172984%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp178222
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self172646%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp178222 _%slot172986%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self172646%_ _%L172953%_)))))
                (_%__kont177119177120%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self172646%_ _%stx172647%_)))))
            (let* ((_%__match177600177601%_
                    (lambda (_%e172849172889%_
                             _%hd172850172892%_
                             _%tl172851172894%_
                             _%e172852172897%_
                             _%hd172853172900%_
                             _%tl172854172902%_
                             _%e172855172905%_
                             _%hd172856172908%_
                             _%tl172857172910%_
                             _%e172858172913%_
                             _%hd172859172916%_
                             _%tl172860172918%_
                             _%e172861172921%_
                             _%hd172862172924%_
                             _%tl172863172926%_
                             _%e172864172929%_
                             _%hd172865172932%_
                             _%tl172866172934%_
                             _%e172867172937%_
                             _%hd172868172940%_
                             _%tl172869172942%_
                             _%e172870172945%_
                             _%hd172871172948%_
                             _%tl172872172950%_)
                      (let ((_%L172953%_ _%hd172871172948%_)
                            (_%L172954%_ _%hd172868172940%_)
                            (_%L172955%_ _%hd172859172916%_))
                        (if (and (let ((__tmp178223
                                        (let ((__tmp178224
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L172955%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp178224))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp178223
                                    'gxc#!mutator::t))
                                 (let ((__tmp178225
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172646%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L172954%_
                                    __tmp178225)))
                            (_%__kont177117177118%_
                             _%L172953%_
                             _%L172954%_
                             _%L172955%_)
                            (_%__kont177119177120%_)))))
                   (_%__match177598177599%_
                    (lambda (_%e172849172889%_
                             _%hd172850172892%_
                             _%tl172851172894%_
                             _%e172852172897%_
                             _%hd172853172900%_
                             _%tl172854172902%_
                             _%e172855172905%_
                             _%hd172856172908%_
                             _%tl172857172910%_
                             _%e172858172913%_
                             _%hd172859172916%_
                             _%tl172860172918%_
                             _%e172861172921%_
                             _%hd172862172924%_
                             _%tl172863172926%_
                             _%e172864172929%_
                             _%hd172865172932%_
                             _%tl172866172934%_
                             _%e172867172937%_
                             _%hd172868172940%_
                             _%tl172869172942%_
                             _%e172870172945%_
                             _%hd172871172948%_
                             _%tl172872172950%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172872172950%_))
                          (_%__match177600177601%_
                           _%e172849172889%_
                           _%hd172850172892%_
                           _%tl172851172894%_
                           _%e172852172897%_
                           _%hd172853172900%_
                           _%tl172854172902%_
                           _%e172855172905%_
                           _%hd172856172908%_
                           _%tl172857172910%_
                           _%e172858172913%_
                           _%hd172859172916%_
                           _%tl172860172918%_
                           _%e172861172921%_
                           _%hd172862172924%_
                           _%tl172863172926%_
                           _%e172864172929%_
                           _%hd172865172932%_
                           _%tl172866172934%_
                           _%e172867172937%_
                           _%hd172868172940%_
                           _%tl172869172942%_
                           _%e172870172945%_
                           _%hd172871172948%_
                           _%tl172872172950%_)
                          (_%__kont177119177120%_))))
                   (_%__match177592177593%_
                    (lambda (_%e172849172889%_
                             _%hd172850172892%_
                             _%tl172851172894%_
                             _%e172852172897%_
                             _%hd172853172900%_
                             _%tl172854172902%_
                             _%e172855172905%_
                             _%hd172856172908%_
                             _%tl172857172910%_
                             _%e172858172913%_
                             _%hd172859172916%_
                             _%tl172860172918%_
                             _%e172861172921%_
                             _%hd172862172924%_
                             _%tl172863172926%_
                             _%e172864172929%_
                             _%hd172865172932%_
                             _%tl172866172934%_
                             _%e172867172937%_
                             _%hd172868172940%_
                             _%tl172869172942%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172863172926%_))
                          (let ((_%e172870172945%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172863172926%_))))
                            (let ((_%tl172872172950%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172870172945%_)))
                                  (_%hd172871172948%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172870172945%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172872172950%_))
                                  (_%__match177600177601%_
                                   _%e172849172889%_
                                   _%hd172850172892%_
                                   _%tl172851172894%_
                                   _%e172852172897%_
                                   _%hd172853172900%_
                                   _%tl172854172902%_
                                   _%e172855172905%_
                                   _%hd172856172908%_
                                   _%tl172857172910%_
                                   _%e172858172913%_
                                   _%hd172859172916%_
                                   _%tl172860172918%_
                                   _%e172861172921%_
                                   _%hd172862172924%_
                                   _%tl172863172926%_
                                   _%e172864172929%_
                                   _%hd172865172932%_
                                   _%tl172866172934%_
                                   _%e172867172937%_
                                   _%hd172868172940%_
                                   _%tl172869172942%_
                                   _%e172870172945%_
                                   _%hd172871172948%_
                                   _%tl172872172950%_)
                                  (_%__kont177119177120%_))))
                          (_%__kont177119177120%_))))
                   (_%__match177538177539%_
                    (lambda (_%e172825172997%_
                             _%hd172826173000%_
                             _%tl172827173002%_
                             _%e172828173005%_
                             _%hd172829173008%_
                             _%tl172830173010%_
                             _%e172831173013%_
                             _%hd172832173016%_
                             _%tl172833173018%_
                             _%e172834173021%_
                             _%hd172835173024%_
                             _%tl172836173026%_
                             _%e172837173029%_
                             _%hd172838173032%_
                             _%tl172839173034%_
                             _%e172840173037%_
                             _%hd172841173040%_
                             _%tl172842173042%_
                             _%e172843173045%_
                             _%hd172844173048%_
                             _%tl172845173050%_)
                      (let ((_%L173053%_ _%hd172844173048%_)
                            (_%L173054%_ _%hd172835173024%_))
                        (if (and (let ((__tmp178226
                                        (let ((__tmp178227
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L173054%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp178227))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp178226
                                    'gxc#!accessor::t))
                                 (let ((__tmp178228
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172646%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173053%_
                                    __tmp178228)))
                            (_%__kont177115177116%_ _%L173053%_ _%L173054%_)
                            (_%__kont177119177120%_)))))
                   (_%__match177536177537%_
                    (lambda (_%e172825172997%_
                             _%hd172826173000%_
                             _%tl172827173002%_
                             _%e172828173005%_
                             _%hd172829173008%_
                             _%tl172830173010%_
                             _%e172831173013%_
                             _%hd172832173016%_
                             _%tl172833173018%_
                             _%e172834173021%_
                             _%hd172835173024%_
                             _%tl172836173026%_
                             _%e172837173029%_
                             _%hd172838173032%_
                             _%tl172839173034%_
                             _%e172840173037%_
                             _%hd172841173040%_
                             _%tl172842173042%_
                             _%e172843173045%_
                             _%hd172844173048%_
                             _%tl172845173050%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172839173034%_))
                          (_%__match177538177539%_
                           _%e172825172997%_
                           _%hd172826173000%_
                           _%tl172827173002%_
                           _%e172828173005%_
                           _%hd172829173008%_
                           _%tl172830173010%_
                           _%e172831173013%_
                           _%hd172832173016%_
                           _%tl172833173018%_
                           _%e172834173021%_
                           _%hd172835173024%_
                           _%tl172836173026%_
                           _%e172837173029%_
                           _%hd172838173032%_
                           _%tl172839173034%_
                           _%e172840173037%_
                           _%hd172841173040%_
                           _%tl172842173042%_
                           _%e172843173045%_
                           _%hd172844173048%_
                           _%tl172845173050%_)
                          (_%__match177592177593%_
                           _%e172825172997%_
                           _%hd172826173000%_
                           _%tl172827173002%_
                           _%e172828173005%_
                           _%hd172829173008%_
                           _%tl172830173010%_
                           _%e172831173013%_
                           _%hd172832173016%_
                           _%tl172833173018%_
                           _%e172834173021%_
                           _%hd172835173024%_
                           _%tl172836173026%_
                           _%e172837173029%_
                           _%hd172838173032%_
                           _%tl172839173034%_
                           _%e172840173037%_
                           _%hd172841173040%_
                           _%tl172842173042%_
                           _%e172843173045%_
                           _%hd172844173048%_
                           _%tl172845173050%_))))
                   (_%__match177482177483%_
                    (lambda (_%e172790173091%_
                             _%hd172791173094%_
                             _%tl172792173096%_
                             _%e172793173099%_
                             _%hd172794173102%_
                             _%tl172795173104%_
                             _%e172796173107%_
                             _%hd172797173110%_
                             _%tl172798173112%_
                             _%e172799173115%_
                             _%hd172800173118%_
                             _%tl172801173120%_
                             _%e172802173123%_
                             _%hd172803173126%_
                             _%tl172804173128%_
                             _%e172805173131%_
                             _%hd172806173134%_
                             _%tl172807173136%_
                             _%e172808173139%_
                             _%hd172809173142%_
                             _%tl172810173144%_
                             _%e172811173147%_
                             _%hd172812173150%_
                             _%tl172813173152%_
                             _%e172814173155%_
                             _%hd172815173158%_
                             _%tl172816173160%_
                             _%e172817173163%_
                             _%hd172818173166%_
                             _%tl172819173168%_
                             _%e172820173171%_
                             _%hd172821173174%_
                             _%tl172822173176%_)
                      (let ((_%L173179%_ _%hd172821173174%_)
                            (_%L173180%_ _%hd172818173166%_)
                            (_%L173181%_ _%hd172809173142%_)
                            (_%L173182%_ _%hd172800173118%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173182%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173182%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp178229
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172646%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173181%_
                                    __tmp178229)))
                            (_%__kont177113177114%_
                             _%L173179%_
                             _%L173180%_
                             _%L173181%_
                             _%L173182%_)
                            (_%__kont177119177120%_)))))
                   (_%__match177474177475%_
                    (lambda (_%e172790173091%_
                             _%hd172791173094%_
                             _%tl172792173096%_
                             _%e172793173099%_
                             _%hd172794173102%_
                             _%tl172795173104%_
                             _%e172796173107%_
                             _%hd172797173110%_
                             _%tl172798173112%_
                             _%e172799173115%_
                             _%hd172800173118%_
                             _%tl172801173120%_
                             _%e172802173123%_
                             _%hd172803173126%_
                             _%tl172804173128%_
                             _%e172805173131%_
                             _%hd172806173134%_
                             _%tl172807173136%_
                             _%e172808173139%_
                             _%hd172809173142%_
                             _%tl172810173144%_
                             _%e172811173147%_
                             _%hd172812173150%_
                             _%tl172813173152%_
                             _%e172814173155%_
                             _%hd172815173158%_
                             _%tl172816173160%_
                             _%e172817173163%_
                             _%hd172818173166%_
                             _%tl172819173168%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172813173152%_))
                          (let ((_%e172820173171%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172813173152%_))))
                            (let ((_%tl172822173176%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172820173171%_)))
                                  (_%hd172821173174%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172820173171%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172822173176%_))
                                  (_%__match177482177483%_
                                   _%e172790173091%_
                                   _%hd172791173094%_
                                   _%tl172792173096%_
                                   _%e172793173099%_
                                   _%hd172794173102%_
                                   _%tl172795173104%_
                                   _%e172796173107%_
                                   _%hd172797173110%_
                                   _%tl172798173112%_
                                   _%e172799173115%_
                                   _%hd172800173118%_
                                   _%tl172801173120%_
                                   _%e172802173123%_
                                   _%hd172803173126%_
                                   _%tl172804173128%_
                                   _%e172805173131%_
                                   _%hd172806173134%_
                                   _%tl172807173136%_
                                   _%e172808173139%_
                                   _%hd172809173142%_
                                   _%tl172810173144%_
                                   _%e172811173147%_
                                   _%hd172812173150%_
                                   _%tl172813173152%_
                                   _%e172814173155%_
                                   _%hd172815173158%_
                                   _%tl172816173160%_
                                   _%e172817173163%_
                                   _%hd172818173166%_
                                   _%tl172819173168%_
                                   _%e172820173171%_
                                   _%hd172821173174%_
                                   _%tl172822173176%_)
                                  (_%__kont177119177120%_))))
                          (_%__match177598177599%_
                           _%e172790173091%_
                           _%hd172791173094%_
                           _%tl172792173096%_
                           _%e172793173099%_
                           _%hd172794173102%_
                           _%tl172795173104%_
                           _%e172796173107%_
                           _%hd172797173110%_
                           _%tl172798173112%_
                           _%e172799173115%_
                           _%hd172800173118%_
                           _%tl172801173120%_
                           _%e172802173123%_
                           _%hd172803173126%_
                           _%tl172804173128%_
                           _%e172805173131%_
                           _%hd172806173134%_
                           _%tl172807173136%_
                           _%e172808173139%_
                           _%hd172809173142%_
                           _%tl172810173144%_
                           _%e172811173147%_
                           _%hd172812173150%_
                           _%tl172813173152%_))))
                   (_%__match177396177397%_
                    (lambda (_%e172756173222%_
                             _%hd172757173225%_
                             _%tl172758173227%_
                             _%e172759173230%_
                             _%hd172760173233%_
                             _%tl172761173235%_
                             _%e172762173238%_
                             _%hd172763173241%_
                             _%tl172764173243%_
                             _%e172765173246%_
                             _%hd172766173249%_
                             _%tl172767173251%_
                             _%e172768173254%_
                             _%hd172769173257%_
                             _%tl172770173259%_
                             _%e172771173262%_
                             _%hd172772173265%_
                             _%tl172773173267%_
                             _%e172774173270%_
                             _%hd172775173273%_
                             _%tl172776173275%_
                             _%e172777173278%_
                             _%hd172778173281%_
                             _%tl172779173283%_
                             _%e172780173286%_
                             _%hd172781173289%_
                             _%tl172782173291%_
                             _%e172783173294%_
                             _%hd172784173297%_
                             _%tl172785173299%_)
                      (let ((_%L173302%_ _%hd172784173297%_)
                            (_%L173303%_ _%hd172775173273%_)
                            (_%L173304%_ _%hd172766173249%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173304%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173304%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp178230
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172646%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173303%_
                                    __tmp178230)))
                            (_%__kont177111177112%_
                             _%L173302%_
                             _%L173303%_
                             _%L173304%_)
                            (_%__match177600177601%_
                             _%e172756173222%_
                             _%hd172757173225%_
                             _%tl172758173227%_
                             _%e172759173230%_
                             _%hd172760173233%_
                             _%tl172761173235%_
                             _%e172762173238%_
                             _%hd172763173241%_
                             _%tl172764173243%_
                             _%e172765173246%_
                             _%hd172766173249%_
                             _%tl172767173251%_
                             _%e172768173254%_
                             _%hd172769173257%_
                             _%tl172770173259%_
                             _%e172771173262%_
                             _%hd172772173265%_
                             _%tl172773173267%_
                             _%e172774173270%_
                             _%hd172775173273%_
                             _%tl172776173275%_
                             _%e172777173278%_
                             _%hd172778173281%_
                             _%tl172779173283%_)))))
                   (_%__match177394177395%_
                    (lambda (_%e172756173222%_
                             _%hd172757173225%_
                             _%tl172758173227%_
                             _%e172759173230%_
                             _%hd172760173233%_
                             _%tl172761173235%_
                             _%e172762173238%_
                             _%hd172763173241%_
                             _%tl172764173243%_
                             _%e172765173246%_
                             _%hd172766173249%_
                             _%tl172767173251%_
                             _%e172768173254%_
                             _%hd172769173257%_
                             _%tl172770173259%_
                             _%e172771173262%_
                             _%hd172772173265%_
                             _%tl172773173267%_
                             _%e172774173270%_
                             _%hd172775173273%_
                             _%tl172776173275%_
                             _%e172777173278%_
                             _%hd172778173281%_
                             _%tl172779173283%_
                             _%e172780173286%_
                             _%hd172781173289%_
                             _%tl172782173291%_
                             _%e172783173294%_
                             _%hd172784173297%_
                             _%tl172785173299%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172779173283%_))
                          (_%__match177396177397%_
                           _%e172756173222%_
                           _%hd172757173225%_
                           _%tl172758173227%_
                           _%e172759173230%_
                           _%hd172760173233%_
                           _%tl172761173235%_
                           _%e172762173238%_
                           _%hd172763173241%_
                           _%tl172764173243%_
                           _%e172765173246%_
                           _%hd172766173249%_
                           _%tl172767173251%_
                           _%e172768173254%_
                           _%hd172769173257%_
                           _%tl172770173259%_
                           _%e172771173262%_
                           _%hd172772173265%_
                           _%tl172773173267%_
                           _%e172774173270%_
                           _%hd172775173273%_
                           _%tl172776173275%_
                           _%e172777173278%_
                           _%hd172778173281%_
                           _%tl172779173283%_
                           _%e172780173286%_
                           _%hd172781173289%_
                           _%tl172782173291%_
                           _%e172783173294%_
                           _%hd172784173297%_
                           _%tl172785173299%_)
                          (_%__match177474177475%_
                           _%e172756173222%_
                           _%hd172757173225%_
                           _%tl172758173227%_
                           _%e172759173230%_
                           _%hd172760173233%_
                           _%tl172761173235%_
                           _%e172762173238%_
                           _%hd172763173241%_
                           _%tl172764173243%_
                           _%e172765173246%_
                           _%hd172766173249%_
                           _%tl172767173251%_
                           _%e172768173254%_
                           _%hd172769173257%_
                           _%tl172770173259%_
                           _%e172771173262%_
                           _%hd172772173265%_
                           _%tl172773173267%_
                           _%e172774173270%_
                           _%hd172775173273%_
                           _%tl172776173275%_
                           _%e172777173278%_
                           _%hd172778173281%_
                           _%tl172779173283%_
                           _%e172780173286%_
                           _%hd172781173289%_
                           _%tl172782173291%_
                           _%e172783173294%_
                           _%hd172784173297%_
                           _%tl172785173299%_))))
                   (_%__match177384177385%_
                    (lambda (_%e172756173222%_
                             _%hd172757173225%_
                             _%tl172758173227%_
                             _%e172759173230%_
                             _%hd172760173233%_
                             _%tl172761173235%_
                             _%e172762173238%_
                             _%hd172763173241%_
                             _%tl172764173243%_
                             _%e172765173246%_
                             _%hd172766173249%_
                             _%tl172767173251%_
                             _%e172768173254%_
                             _%hd172769173257%_
                             _%tl172770173259%_
                             _%e172771173262%_
                             _%hd172772173265%_
                             _%tl172773173267%_
                             _%e172774173270%_
                             _%hd172775173273%_
                             _%tl172776173275%_
                             _%e172777173278%_
                             _%hd172778173281%_
                             _%tl172779173283%_
                             _%e172780173286%_
                             _%hd172781173289%_
                             _%tl172782173291%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd172781173289%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl172782173291%_))
                              (let ((_%e172783173294%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl172782173291%_))))
                                (let ((_%tl172785173299%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172783173294%_)))
                                      (_%hd172784173297%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172783173294%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl172785173299%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl172779173283%_))
                                          (_%__match177396177397%_
                                           _%e172756173222%_
                                           _%hd172757173225%_
                                           _%tl172758173227%_
                                           _%e172759173230%_
                                           _%hd172760173233%_
                                           _%tl172761173235%_
                                           _%e172762173238%_
                                           _%hd172763173241%_
                                           _%tl172764173243%_
                                           _%e172765173246%_
                                           _%hd172766173249%_
                                           _%tl172767173251%_
                                           _%e172768173254%_
                                           _%hd172769173257%_
                                           _%tl172770173259%_
                                           _%e172771173262%_
                                           _%hd172772173265%_
                                           _%tl172773173267%_
                                           _%e172774173270%_
                                           _%hd172775173273%_
                                           _%tl172776173275%_
                                           _%e172777173278%_
                                           _%hd172778173281%_
                                           _%tl172779173283%_
                                           _%e172780173286%_
                                           _%hd172781173289%_
                                           _%tl172782173291%_
                                           _%e172783173294%_
                                           _%hd172784173297%_
                                           _%tl172785173299%_)
                                          (_%__match177474177475%_
                                           _%e172756173222%_
                                           _%hd172757173225%_
                                           _%tl172758173227%_
                                           _%e172759173230%_
                                           _%hd172760173233%_
                                           _%tl172761173235%_
                                           _%e172762173238%_
                                           _%hd172763173241%_
                                           _%tl172764173243%_
                                           _%e172765173246%_
                                           _%hd172766173249%_
                                           _%tl172767173251%_
                                           _%e172768173254%_
                                           _%hd172769173257%_
                                           _%tl172770173259%_
                                           _%e172771173262%_
                                           _%hd172772173265%_
                                           _%tl172773173267%_
                                           _%e172774173270%_
                                           _%hd172775173273%_
                                           _%tl172776173275%_
                                           _%e172777173278%_
                                           _%hd172778173281%_
                                           _%tl172779173283%_
                                           _%e172780173286%_
                                           _%hd172781173289%_
                                           _%tl172782173291%_
                                           _%e172783173294%_
                                           _%hd172784173297%_
                                           _%tl172785173299%_))
                                      (_%__match177598177599%_
                                       _%e172756173222%_
                                       _%hd172757173225%_
                                       _%tl172758173227%_
                                       _%e172759173230%_
                                       _%hd172760173233%_
                                       _%tl172761173235%_
                                       _%e172762173238%_
                                       _%hd172763173241%_
                                       _%tl172764173243%_
                                       _%e172765173246%_
                                       _%hd172766173249%_
                                       _%tl172767173251%_
                                       _%e172768173254%_
                                       _%hd172769173257%_
                                       _%tl172770173259%_
                                       _%e172771173262%_
                                       _%hd172772173265%_
                                       _%tl172773173267%_
                                       _%e172774173270%_
                                       _%hd172775173273%_
                                       _%tl172776173275%_
                                       _%e172777173278%_
                                       _%hd172778173281%_
                                       _%tl172779173283%_))))
                              (_%__match177598177599%_
                               _%e172756173222%_
                               _%hd172757173225%_
                               _%tl172758173227%_
                               _%e172759173230%_
                               _%hd172760173233%_
                               _%tl172761173235%_
                               _%e172762173238%_
                               _%hd172763173241%_
                               _%tl172764173243%_
                               _%e172765173246%_
                               _%hd172766173249%_
                               _%tl172767173251%_
                               _%e172768173254%_
                               _%hd172769173257%_
                               _%tl172770173259%_
                               _%e172771173262%_
                               _%hd172772173265%_
                               _%tl172773173267%_
                               _%e172774173270%_
                               _%hd172775173273%_
                               _%tl172776173275%_
                               _%e172777173278%_
                               _%hd172778173281%_
                               _%tl172779173283%_))
                          (_%__match177598177599%_
                           _%e172756173222%_
                           _%hd172757173225%_
                           _%tl172758173227%_
                           _%e172759173230%_
                           _%hd172760173233%_
                           _%tl172761173235%_
                           _%e172762173238%_
                           _%hd172763173241%_
                           _%tl172764173243%_
                           _%e172765173246%_
                           _%hd172766173249%_
                           _%tl172767173251%_
                           _%e172768173254%_
                           _%hd172769173257%_
                           _%tl172770173259%_
                           _%e172771173262%_
                           _%hd172772173265%_
                           _%tl172773173267%_
                           _%e172774173270%_
                           _%hd172775173273%_
                           _%tl172776173275%_
                           _%e172777173278%_
                           _%hd172778173281%_
                           _%tl172779173283%_))))
                   (_%__match177316177317%_
                    (lambda (_%e172705173341%_
                             _%hd172706173344%_
                             _%tl172707173346%_
                             _%e172708173349%_
                             _%hd172709173352%_
                             _%tl172710173354%_
                             _%e172711173357%_
                             _%hd172712173360%_
                             _%tl172713173362%_
                             _%e172714173365%_
                             _%hd172715173368%_
                             _%tl172716173370%_
                             _%e172717173373%_
                             _%hd172718173376%_
                             _%tl172719173378%_
                             _%e172720173381%_
                             _%hd172721173384%_
                             _%tl172722173386%_
                             _%e172723173389%_
                             _%hd172724173392%_
                             _%tl172725173394%_
                             _%e172726173397%_
                             _%hd172727173400%_
                             _%tl172728173402%_
                             _%e172729173405%_
                             _%hd172730173408%_
                             _%tl172731173410%_
                             _%e172732173413%_
                             _%hd172733173416%_
                             _%tl172734173418%_
                             _%e172735173421%_
                             _%hd172736173424%_
                             _%tl172737173426%_
                             _%e172738173429%_
                             _%hd172739173432%_
                             _%tl172740173434%_
                             _%e172741173437%_
                             _%hd172742173440%_
                             _%tl172743173442%_
                             _%__splice177109177110%_
                             _%target172744173445%_
                             _%tl172746173447%_)
                      (letrec ((_%loop172747173450%_
                                (lambda (_%hd172745173453%_
                                         _%args172751173455%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd172745173453%_))
                                      (let ((_%e172748173458%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd172745173453%_))))
                                        (let ((_%lp-tl172750173463%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e172748173458%_)))
                                              (_%lp-hd172749173461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e172748173458%_))))
                                          (_%loop172747173450%_
                                           _%lp-tl172750173463%_
                                           (cons _%lp-hd172749173461%_
                                                 _%args172751173455%_))))
                                      (let ((_%args172752173466%_
                                             (reverse _%args172751173455%_)))
                                        (let ((_%L173469%_
                                               _%args172752173466%_)
                                              (_%L173470%_ _%hd172742173440%_)
                                              (_%L173471%_ _%hd172733173416%_)
                                              (_%L173472%_ _%hd172724173392%_)
                                              (_%L173473%_ _%hd172715173368%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L173473%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L173472%_
                                                      'call-method))
                                                   (let ((__tmp178231
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self172646%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L173471%_
                                                      __tmp178231)))
                                              (_%__kont177107177108%_
                                               _%L173469%_
                                               _%L173470%_
                                               _%L173471%_
                                               _%L173472%_
                                               _%L173473%_)
                                              (_%__kont177119177120%_))))))))
                        (_%loop172747173450%_ _%target172744173445%_ '()))))
                   (_%__match177274177275%_
                    (lambda (_%e172705173341%_
                             _%hd172706173344%_
                             _%tl172707173346%_
                             _%e172708173349%_
                             _%hd172709173352%_
                             _%tl172710173354%_
                             _%e172711173357%_
                             _%hd172712173360%_
                             _%tl172713173362%_
                             _%e172714173365%_
                             _%hd172715173368%_
                             _%tl172716173370%_
                             _%e172717173373%_
                             _%hd172718173376%_
                             _%tl172719173378%_
                             _%e172720173381%_
                             _%hd172721173384%_
                             _%tl172722173386%_
                             _%e172723173389%_
                             _%hd172724173392%_
                             _%tl172725173394%_
                             _%e172726173397%_
                             _%hd172727173400%_
                             _%tl172728173402%_
                             _%e172729173405%_
                             _%hd172730173408%_
                             _%tl172731173410%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd172730173408%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl172731173410%_))
                              (let ((_%e172732173413%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl172731173410%_))))
                                (let ((_%tl172734173418%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172732173413%_)))
                                      (_%hd172733173416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172732173413%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl172734173418%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl172728173402%_))
                                          (let ((_%e172735173421%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl172728173402%_))))
                                            (let ((_%tl172737173426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e172735173421%_)))
                                                  (_%hd172736173424%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e172735173421%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd172736173424%_))
                                                  (let ((_%e172738173429%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd172736173424%_))))
                                                    (let ((_%tl172740173434%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e172738173429%_)))
                                                          (_%hd172739173432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e172738173429%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd172739173432%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd172739173432%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172740173434%_))
                          (let ((_%e172741173437%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172740173434%_))))
                            (let ((_%tl172743173442%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172741173437%_)))
                                  (_%hd172742173440%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172741173437%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172743173442%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl172737173426%_))
                                      (let ((_%__splice177109177110%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl172737173426%_
                                                '0))))
                                        (let ((_%tl172746173447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice177109177110%_
                                                  '1)))
                                              (_%target172744173445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice177109177110%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl172746173447%_))
                                              (_%__match177316177317%_
                                               _%e172705173341%_
                                               _%hd172706173344%_
                                               _%tl172707173346%_
                                               _%e172708173349%_
                                               _%hd172709173352%_
                                               _%tl172710173354%_
                                               _%e172711173357%_
                                               _%hd172712173360%_
                                               _%tl172713173362%_
                                               _%e172714173365%_
                                               _%hd172715173368%_
                                               _%tl172716173370%_
                                               _%e172717173373%_
                                               _%hd172718173376%_
                                               _%tl172719173378%_
                                               _%e172720173381%_
                                               _%hd172721173384%_
                                               _%tl172722173386%_
                                               _%e172723173389%_
                                               _%hd172724173392%_
                                               _%tl172725173394%_
                                               _%e172726173397%_
                                               _%hd172727173400%_
                                               _%tl172728173402%_
                                               _%e172729173405%_
                                               _%hd172730173408%_
                                               _%tl172731173410%_
                                               _%e172732173413%_
                                               _%hd172733173416%_
                                               _%tl172734173418%_
                                               _%e172735173421%_
                                               _%hd172736173424%_
                                               _%tl172737173426%_
                                               _%e172738173429%_
                                               _%hd172739173432%_
                                               _%tl172740173434%_
                                               _%e172741173437%_
                                               _%hd172742173440%_
                                               _%tl172743173442%_
                                               _%__splice177109177110%_
                                               _%target172744173445%_
                                               _%tl172746173447%_)
                                              (_%__kont177119177120%_))))
                                      (_%__kont177119177120%_))
                                  (_%__kont177119177120%_))))
                          (_%__kont177119177120%_))
                      (_%__kont177119177120%_))
                  (_%__kont177119177120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont177119177120%_))))
                                          (_%__match177598177599%_
                                           _%e172705173341%_
                                           _%hd172706173344%_
                                           _%tl172707173346%_
                                           _%e172708173349%_
                                           _%hd172709173352%_
                                           _%tl172710173354%_
                                           _%e172711173357%_
                                           _%hd172712173360%_
                                           _%tl172713173362%_
                                           _%e172714173365%_
                                           _%hd172715173368%_
                                           _%tl172716173370%_
                                           _%e172717173373%_
                                           _%hd172718173376%_
                                           _%tl172719173378%_
                                           _%e172720173381%_
                                           _%hd172721173384%_
                                           _%tl172722173386%_
                                           _%e172723173389%_
                                           _%hd172724173392%_
                                           _%tl172725173394%_
                                           _%e172726173397%_
                                           _%hd172727173400%_
                                           _%tl172728173402%_))
                                      (_%__match177598177599%_
                                       _%e172705173341%_
                                       _%hd172706173344%_
                                       _%tl172707173346%_
                                       _%e172708173349%_
                                       _%hd172709173352%_
                                       _%tl172710173354%_
                                       _%e172711173357%_
                                       _%hd172712173360%_
                                       _%tl172713173362%_
                                       _%e172714173365%_
                                       _%hd172715173368%_
                                       _%tl172716173370%_
                                       _%e172717173373%_
                                       _%hd172718173376%_
                                       _%tl172719173378%_
                                       _%e172720173381%_
                                       _%hd172721173384%_
                                       _%tl172722173386%_
                                       _%e172723173389%_
                                       _%hd172724173392%_
                                       _%tl172725173394%_
                                       _%e172726173397%_
                                       _%hd172727173400%_
                                       _%tl172728173402%_))))
                              (_%__match177598177599%_
                               _%e172705173341%_
                               _%hd172706173344%_
                               _%tl172707173346%_
                               _%e172708173349%_
                               _%hd172709173352%_
                               _%tl172710173354%_
                               _%e172711173357%_
                               _%hd172712173360%_
                               _%tl172713173362%_
                               _%e172714173365%_
                               _%hd172715173368%_
                               _%tl172716173370%_
                               _%e172717173373%_
                               _%hd172718173376%_
                               _%tl172719173378%_
                               _%e172720173381%_
                               _%hd172721173384%_
                               _%tl172722173386%_
                               _%e172723173389%_
                               _%hd172724173392%_
                               _%tl172725173394%_
                               _%e172726173397%_
                               _%hd172727173400%_
                               _%tl172728173402%_))
                          (_%__match177384177385%_
                           _%e172705173341%_
                           _%hd172706173344%_
                           _%tl172707173346%_
                           _%e172708173349%_
                           _%hd172709173352%_
                           _%tl172710173354%_
                           _%e172711173357%_
                           _%hd172712173360%_
                           _%tl172713173362%_
                           _%e172714173365%_
                           _%hd172715173368%_
                           _%tl172716173370%_
                           _%e172717173373%_
                           _%hd172718173376%_
                           _%tl172719173378%_
                           _%e172720173381%_
                           _%hd172721173384%_
                           _%tl172722173386%_
                           _%e172723173389%_
                           _%hd172724173392%_
                           _%tl172725173394%_
                           _%e172726173397%_
                           _%hd172727173400%_
                           _%tl172728173402%_
                           _%e172729173405%_
                           _%hd172730173408%_
                           _%tl172731173410%_))))
                   (_%__match177206177207%_
                    (lambda (_%e172661173530%_
                             _%hd172662173533%_
                             _%tl172663173535%_
                             _%e172664173538%_
                             _%hd172665173541%_
                             _%tl172666173543%_
                             _%e172667173546%_
                             _%hd172668173549%_
                             _%tl172669173551%_
                             _%e172670173554%_
                             _%hd172671173557%_
                             _%tl172672173559%_
                             _%e172673173562%_
                             _%hd172674173565%_
                             _%tl172675173567%_
                             _%e172676173570%_
                             _%hd172677173573%_
                             _%tl172678173575%_
                             _%e172679173578%_
                             _%hd172680173581%_
                             _%tl172681173583%_
                             _%e172682173586%_
                             _%hd172683173589%_
                             _%tl172684173591%_
                             _%e172685173594%_
                             _%hd172686173597%_
                             _%tl172687173599%_
                             _%e172688173602%_
                             _%hd172689173605%_
                             _%tl172690173607%_
                             _%__splice177105177106%_
                             _%target172691173610%_
                             _%tl172693173612%_)
                      (letrec ((_%loop172694173615%_
                                (lambda (_%hd172692173618%_
                                         _%args172698173620%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd172692173618%_))
                                      (let ((_%e172695173623%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd172692173618%_))))
                                        (let ((_%lp-tl172697173628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e172695173623%_)))
                                              (_%lp-hd172696173626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e172695173623%_))))
                                          (_%loop172694173615%_
                                           _%lp-tl172697173628%_
                                           (cons _%lp-hd172696173626%_
                                                 _%args172698173620%_))))
                                      (let ((_%args172699173631%_
                                             (reverse _%args172698173620%_)))
                                        (let ((_%L173634%_
                                               _%args172699173631%_)
                                              (_%L173635%_ _%hd172689173605%_)
                                              (_%L173636%_ _%hd172680173581%_)
                                              (_%L173637%_ _%hd172671173557%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L173637%_
                                                      'call-method))
                                                   (let ((__tmp178232
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self172646%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L173636%_
                                                      __tmp178232)))
                                              (_%__kont177103177104%_
                                               _%L173634%_
                                               _%L173635%_
                                               _%L173636%_
                                               _%L173637%_)
                                              (_%__match177394177395%_
                                               _%e172661173530%_
                                               _%hd172662173533%_
                                               _%tl172663173535%_
                                               _%e172664173538%_
                                               _%hd172665173541%_
                                               _%tl172666173543%_
                                               _%e172667173546%_
                                               _%hd172668173549%_
                                               _%tl172669173551%_
                                               _%e172670173554%_
                                               _%hd172671173557%_
                                               _%tl172672173559%_
                                               _%e172673173562%_
                                               _%hd172674173565%_
                                               _%tl172675173567%_
                                               _%e172676173570%_
                                               _%hd172677173573%_
                                               _%tl172678173575%_
                                               _%e172679173578%_
                                               _%hd172680173581%_
                                               _%tl172681173583%_
                                               _%e172682173586%_
                                               _%hd172683173589%_
                                               _%tl172684173591%_
                                               _%e172685173594%_
                                               _%hd172686173597%_
                                               _%tl172687173599%_
                                               _%e172688173602%_
                                               _%hd172689173605%_
                                               _%tl172690173607%_))))))))
                        (_%loop172694173615%_ _%target172691173610%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx177101177102%_))
                  (let ((_%e172661173530%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx177101177102%_))))
                    (let ((_%tl172663173535%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e172661173530%_)))
                          (_%hd172662173533%_
                           (let ()
                             (declare (not safe))
                             (##car _%e172661173530%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172663173535%_))
                          (let ((_%e172664173538%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172663173535%_))))
                            (let ((_%tl172666173543%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172664173538%_)))
                                  (_%hd172665173541%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172664173538%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd172665173541%_))
                                  (let ((_%e172667173546%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd172665173541%_))))
                                    (let ((_%tl172669173551%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e172667173546%_)))
                                          (_%hd172668173549%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e172667173546%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd172668173549%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd172668173549%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl172669173551%_))
                                                  (let ((_%e172670173554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl172669173551%_))))
                                                    (let ((_%tl172672173559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e172670173554%_)))
                                                          (_%hd172671173557%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e172670173554%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl172672173559%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl172666173543%_))
                      (let ((_%e172673173562%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl172666173543%_))))
                        (let ((_%tl172675173567%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172673173562%_)))
                              (_%hd172674173565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172673173562%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd172674173565%_))
                              (let ((_%e172676173570%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd172674173565%_))))
                                (let ((_%tl172678173575%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172676173570%_)))
                                      (_%hd172677173573%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172676173570%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd172677173573%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd172677173573%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl172678173575%_))
                                              (let ((_%e172679173578%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl172678173575%_))))
                                                (let ((_%tl172681173583%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e172679173578%_)))
                                                      (_%hd172680173581%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e172679173578%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl172681173583%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl172675173567%_))
                                                          (let ((_%e172682173586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl172675173567%_))))
                    (let ((_%tl172684173591%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e172682173586%_)))
                          (_%hd172683173589%_
                           (let ()
                             (declare (not safe))
                             (##car _%e172682173586%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd172683173589%_))
                          (let ((_%e172685173594%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd172683173589%_))))
                            (let ((_%tl172687173599%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172685173594%_)))
                                  (_%hd172686173597%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172685173594%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd172686173597%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd172686173597%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl172687173599%_))
                                          (let ((_%e172688173602%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl172687173599%_))))
                                            (let ((_%tl172690173607%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e172688173602%_)))
                                                  (_%hd172689173605%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e172688173602%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl172690173607%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl172684173591%_))
                                                      (let ((_%__splice177105177106%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl172684173591%_ '0))))
                (let ((_%tl172693173612%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice177105177106%_ '1)))
                      (_%target172691173610%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice177105177106%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl172693173612%_))
                      (_%__match177206177207%_
                       _%e172661173530%_
                       _%hd172662173533%_
                       _%tl172663173535%_
                       _%e172664173538%_
                       _%hd172665173541%_
                       _%tl172666173543%_
                       _%e172667173546%_
                       _%hd172668173549%_
                       _%tl172669173551%_
                       _%e172670173554%_
                       _%hd172671173557%_
                       _%tl172672173559%_
                       _%e172673173562%_
                       _%hd172674173565%_
                       _%tl172675173567%_
                       _%e172676173570%_
                       _%hd172677173573%_
                       _%tl172678173575%_
                       _%e172679173578%_
                       _%hd172680173581%_
                       _%tl172681173583%_
                       _%e172682173586%_
                       _%hd172683173589%_
                       _%tl172684173591%_
                       _%e172685173594%_
                       _%hd172686173597%_
                       _%tl172687173599%_
                       _%e172688173602%_
                       _%hd172689173605%_
                       _%tl172690173607%_
                       _%__splice177105177106%_
                       _%target172691173610%_
                       _%tl172693173612%_)
                      (_%__match177394177395%_
                       _%e172661173530%_
                       _%hd172662173533%_
                       _%tl172663173535%_
                       _%e172664173538%_
                       _%hd172665173541%_
                       _%tl172666173543%_
                       _%e172667173546%_
                       _%hd172668173549%_
                       _%tl172669173551%_
                       _%e172670173554%_
                       _%hd172671173557%_
                       _%tl172672173559%_
                       _%e172673173562%_
                       _%hd172674173565%_
                       _%tl172675173567%_
                       _%e172676173570%_
                       _%hd172677173573%_
                       _%tl172678173575%_
                       _%e172679173578%_
                       _%hd172680173581%_
                       _%tl172681173583%_
                       _%e172682173586%_
                       _%hd172683173589%_
                       _%tl172684173591%_
                       _%e172685173594%_
                       _%hd172686173597%_
                       _%tl172687173599%_
                       _%e172688173602%_
                       _%hd172689173605%_
                       _%tl172690173607%_))))
              (_%__match177394177395%_
               _%e172661173530%_
               _%hd172662173533%_
               _%tl172663173535%_
               _%e172664173538%_
               _%hd172665173541%_
               _%tl172666173543%_
               _%e172667173546%_
               _%hd172668173549%_
               _%tl172669173551%_
               _%e172670173554%_
               _%hd172671173557%_
               _%tl172672173559%_
               _%e172673173562%_
               _%hd172674173565%_
               _%tl172675173567%_
               _%e172676173570%_
               _%hd172677173573%_
               _%tl172678173575%_
               _%e172679173578%_
               _%hd172680173581%_
               _%tl172681173583%_
               _%e172682173586%_
               _%hd172683173589%_
               _%tl172684173591%_
               _%e172685173594%_
               _%hd172686173597%_
               _%tl172687173599%_
               _%e172688173602%_
               _%hd172689173605%_
               _%tl172690173607%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match177598177599%_
                                                   _%e172661173530%_
                                                   _%hd172662173533%_
                                                   _%tl172663173535%_
                                                   _%e172664173538%_
                                                   _%hd172665173541%_
                                                   _%tl172666173543%_
                                                   _%e172667173546%_
                                                   _%hd172668173549%_
                                                   _%tl172669173551%_
                                                   _%e172670173554%_
                                                   _%hd172671173557%_
                                                   _%tl172672173559%_
                                                   _%e172673173562%_
                                                   _%hd172674173565%_
                                                   _%tl172675173567%_
                                                   _%e172676173570%_
                                                   _%hd172677173573%_
                                                   _%tl172678173575%_
                                                   _%e172679173578%_
                                                   _%hd172680173581%_
                                                   _%tl172681173583%_
                                                   _%e172682173586%_
                                                   _%hd172683173589%_
                                                   _%tl172684173591%_))))
                                          (_%__match177598177599%_
                                           _%e172661173530%_
                                           _%hd172662173533%_
                                           _%tl172663173535%_
                                           _%e172664173538%_
                                           _%hd172665173541%_
                                           _%tl172666173543%_
                                           _%e172667173546%_
                                           _%hd172668173549%_
                                           _%tl172669173551%_
                                           _%e172670173554%_
                                           _%hd172671173557%_
                                           _%tl172672173559%_
                                           _%e172673173562%_
                                           _%hd172674173565%_
                                           _%tl172675173567%_
                                           _%e172676173570%_
                                           _%hd172677173573%_
                                           _%tl172678173575%_
                                           _%e172679173578%_
                                           _%hd172680173581%_
                                           _%tl172681173583%_
                                           _%e172682173586%_
                                           _%hd172683173589%_
                                           _%tl172684173591%_))
                                      (_%__match177274177275%_
                                       _%e172661173530%_
                                       _%hd172662173533%_
                                       _%tl172663173535%_
                                       _%e172664173538%_
                                       _%hd172665173541%_
                                       _%tl172666173543%_
                                       _%e172667173546%_
                                       _%hd172668173549%_
                                       _%tl172669173551%_
                                       _%e172670173554%_
                                       _%hd172671173557%_
                                       _%tl172672173559%_
                                       _%e172673173562%_
                                       _%hd172674173565%_
                                       _%tl172675173567%_
                                       _%e172676173570%_
                                       _%hd172677173573%_
                                       _%tl172678173575%_
                                       _%e172679173578%_
                                       _%hd172680173581%_
                                       _%tl172681173583%_
                                       _%e172682173586%_
                                       _%hd172683173589%_
                                       _%tl172684173591%_
                                       _%e172685173594%_
                                       _%hd172686173597%_
                                       _%tl172687173599%_))
                                  (_%__match177598177599%_
                                   _%e172661173530%_
                                   _%hd172662173533%_
                                   _%tl172663173535%_
                                   _%e172664173538%_
                                   _%hd172665173541%_
                                   _%tl172666173543%_
                                   _%e172667173546%_
                                   _%hd172668173549%_
                                   _%tl172669173551%_
                                   _%e172670173554%_
                                   _%hd172671173557%_
                                   _%tl172672173559%_
                                   _%e172673173562%_
                                   _%hd172674173565%_
                                   _%tl172675173567%_
                                   _%e172676173570%_
                                   _%hd172677173573%_
                                   _%tl172678173575%_
                                   _%e172679173578%_
                                   _%hd172680173581%_
                                   _%tl172681173583%_
                                   _%e172682173586%_
                                   _%hd172683173589%_
                                   _%tl172684173591%_))))
                          (_%__match177598177599%_
                           _%e172661173530%_
                           _%hd172662173533%_
                           _%tl172663173535%_
                           _%e172664173538%_
                           _%hd172665173541%_
                           _%tl172666173543%_
                           _%e172667173546%_
                           _%hd172668173549%_
                           _%tl172669173551%_
                           _%e172670173554%_
                           _%hd172671173557%_
                           _%tl172672173559%_
                           _%e172673173562%_
                           _%hd172674173565%_
                           _%tl172675173567%_
                           _%e172676173570%_
                           _%hd172677173573%_
                           _%tl172678173575%_
                           _%e172679173578%_
                           _%hd172680173581%_
                           _%tl172681173583%_
                           _%e172682173586%_
                           _%hd172683173589%_
                           _%tl172684173591%_))))
                  (_%__match177536177537%_
                   _%e172661173530%_
                   _%hd172662173533%_
                   _%tl172663173535%_
                   _%e172664173538%_
                   _%hd172665173541%_
                   _%tl172666173543%_
                   _%e172667173546%_
                   _%hd172668173549%_
                   _%tl172669173551%_
                   _%e172670173554%_
                   _%hd172671173557%_
                   _%tl172672173559%_
                   _%e172673173562%_
                   _%hd172674173565%_
                   _%tl172675173567%_
                   _%e172676173570%_
                   _%hd172677173573%_
                   _%tl172678173575%_
                   _%e172679173578%_
                   _%hd172680173581%_
                   _%tl172681173583%_))
              (_%__kont177119177120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont177119177120%_))
                                          (_%__kont177119177120%_))
                                      (_%__kont177119177120%_))))
                              (_%__kont177119177120%_))))
                      (_%__kont177119177120%_))
                  (_%__kont177119177120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont177119177120%_))
                                              (_%__kont177119177120%_))
                                          (_%__kont177119177120%_))))
                                  (_%__kont177119177120%_))))
                          (_%__kont177119177120%_))))
                  (_%__kont177119177120%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self171585%_ _%stx171586%_)
        (letrec ((_%force-e171588%_
                  (lambda (_%target172644%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target172644%_ '()))
                                      '()))))))
          (let* ((_%__stx177603177604%_ _%stx171586%_)
                 (_%g171596171818%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx177603177604%_)))))
            (let ((_%__kont177605177606%_
                   (lambda (_%L172590%_ _%L172591%_ _%L172592%_ _%L172593%_)
                     (let ((_%$method172638%_
                            (let ((__tmp178234
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self171585%_ 'methods)))
                                  (__tmp178233
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L172591%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp178234 __tmp178233)))
                           (_%args172639%_
                            (map (lambda (_%g172626172628%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self171585%_
                                      _%g172626172628%_)))
                                 (let ((__tmp178235
                                        (lambda (_%g172630172633%_
                                                 _%g172631172635%_)
                                          (cons _%g172630172633%_
                                                _%g172631172635%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp178235 '() _%L172590%_)))))
                       (let ((__tmp178236
                              (cons '%#call
                                    (cons (_%force-e171588%_ _%$method172638%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self171585%_
                                                               'receiver))
                                                            '()))
                                                _%args172639%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp178236 _%stx171586%_)))))
                  (_%__kont177609177610%_
                   (lambda (_%L172422%_
                            _%L172423%_
                            _%L172424%_
                            _%L172425%_
                            _%L172426%_)
                     (let ((_%$method172478%_
                            (let ((__tmp178238
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self171585%_ 'methods)))
                                  (__tmp178237
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L172423%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp178238 __tmp178237)))
                           (_%args172479%_
                            (map (lambda (_%g172466172468%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self171585%_
                                      _%g172466172468%_)))
                                 (let ((__tmp178239
                                        (lambda (_%g172470172473%_
                                                 _%g172471172475%_)
                                          (cons _%g172470172473%_
                                                _%g172471172475%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp178239 '() _%L172422%_)))))
                       (let ((__tmp178240
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e171588%_
                                                 _%$method172478%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self171585%_ 'receiver))
                          '()))
              _%args172479%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp178240 _%stx171586%_)))))
                  (_%__kont177613177614%_
                   (lambda (_%L172253%_ _%L172254%_ _%L172255%_)
                     (let* ((_%$field172287%_
                             (let ((__tmp178242
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self171585%_ 'slots)))
                                   (__tmp178241
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L172253%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp178242 __tmp178241)))
                            (__tmp178243
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self171585%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field172287%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self171585%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp178243 _%stx171586%_))))
                  (_%__kont177615177616%_
                   (lambda (_%L172127%_ _%L172128%_ _%L172129%_ _%L172130%_)
                     (let ((_%$field172165%_
                            (let ((__tmp178245
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self171585%_ 'slots)))
                                  (__tmp178244
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L172128%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp178245 __tmp178244)))
                           (_%expr172166%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self171585%_ _%L172127%_))))
                       (let ((__tmp178246
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self171585%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field172165%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self171585%_ 'receiver))
                          '()))
              (cons _%expr172166%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp178246 _%stx171586%_)))))
                  (_%__kont177617177618%_
                   (lambda (_%L171999%_ _%L172000%_)
                     (let* ((_%accessor172022%_
                             (let ((__tmp178247
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L172000%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp178247)))
                            (_%klass172024%_
                             (let ((__tmp178248
                                    (##structure-ref
                                     _%accessor172022%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx171586%_
                                __tmp178248)))
                            (_%slot172026%_
                             (##structure-ref
                              _%accessor172022%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor172022%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass172024%_
                                      _%slot172026%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass172024%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx171586%_
                           (let* ((_%$field172032%_
                                   (let ((__tmp178249
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171585%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp178249 _%slot172026%_)))
                                  (__tmp178250
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self171585%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field172032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self171585%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp178250
                              _%stx171586%_))))))
                  (_%__kont177619177620%_
                   (lambda (_%L171894%_ _%L171895%_ _%L171896%_)
                     (let* ((_%mutator171924%_
                             (let ((__tmp178251
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L171896%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp178251)))
                            (_%klass171926%_
                             (let ((__tmp178252
                                    (##structure-ref
                                     _%mutator171924%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx171586%_
                                __tmp178252)))
                            (_%slot171928%_
                             (##structure-ref
                              _%mutator171924%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr171930%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self171585%_ _%L171894%_))))
                       (if (if (##structure-ref
                                _%mutator171924%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass171926%_
                                      _%slot171928%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass171926%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp178253
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L171896%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L171895%_
                                                                '()))
                                                    (cons _%expr171930%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp178253 _%stx171586%_))
                           (let* ((_%$field171936%_
                                   (let ((__tmp178254
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171585%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp178254 _%slot171928%_)))
                                  (__tmp178255
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self171585%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field171936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self171585%_ 'receiver))
                               '()))
                   (cons _%expr171930%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp178255
                              _%stx171586%_))))))
                  (_%__kont177621177622%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self171585%_ _%stx171586%_)))))
              (let* ((_%__match178102178103%_
                      (lambda (_%e171790171830%_
                               _%hd171791171833%_
                               _%tl171792171835%_
                               _%e171793171838%_
                               _%hd171794171841%_
                               _%tl171795171843%_
                               _%e171796171846%_
                               _%hd171797171849%_
                               _%tl171798171851%_
                               _%e171799171854%_
                               _%hd171800171857%_
                               _%tl171801171859%_
                               _%e171802171862%_
                               _%hd171803171865%_
                               _%tl171804171867%_
                               _%e171805171870%_
                               _%hd171806171873%_
                               _%tl171807171875%_
                               _%e171808171878%_
                               _%hd171809171881%_
                               _%tl171810171883%_
                               _%e171811171886%_
                               _%hd171812171889%_
                               _%tl171813171891%_)
                        (let ((_%L171894%_ _%hd171812171889%_)
                              (_%L171895%_ _%hd171809171881%_)
                              (_%L171896%_ _%hd171800171857%_))
                          (if (and (let ((__tmp178256
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171585%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L171895%_
                                      __tmp178256))
                                   (let ((__tmp178257
                                          (let ((__tmp178258
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L171896%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp178258))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp178257
                                      'gxc#!mutator::t)))
                              (_%__kont177619177620%_
                               _%L171894%_
                               _%L171895%_
                               _%L171896%_)
                              (_%__kont177621177622%_)))))
                     (_%__match178100178101%_
                      (lambda (_%e171790171830%_
                               _%hd171791171833%_
                               _%tl171792171835%_
                               _%e171793171838%_
                               _%hd171794171841%_
                               _%tl171795171843%_
                               _%e171796171846%_
                               _%hd171797171849%_
                               _%tl171798171851%_
                               _%e171799171854%_
                               _%hd171800171857%_
                               _%tl171801171859%_
                               _%e171802171862%_
                               _%hd171803171865%_
                               _%tl171804171867%_
                               _%e171805171870%_
                               _%hd171806171873%_
                               _%tl171807171875%_
                               _%e171808171878%_
                               _%hd171809171881%_
                               _%tl171810171883%_
                               _%e171811171886%_
                               _%hd171812171889%_
                               _%tl171813171891%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171813171891%_))
                            (_%__match178102178103%_
                             _%e171790171830%_
                             _%hd171791171833%_
                             _%tl171792171835%_
                             _%e171793171838%_
                             _%hd171794171841%_
                             _%tl171795171843%_
                             _%e171796171846%_
                             _%hd171797171849%_
                             _%tl171798171851%_
                             _%e171799171854%_
                             _%hd171800171857%_
                             _%tl171801171859%_
                             _%e171802171862%_
                             _%hd171803171865%_
                             _%tl171804171867%_
                             _%e171805171870%_
                             _%hd171806171873%_
                             _%tl171807171875%_
                             _%e171808171878%_
                             _%hd171809171881%_
                             _%tl171810171883%_
                             _%e171811171886%_
                             _%hd171812171889%_
                             _%tl171813171891%_)
                            (_%__kont177621177622%_))))
                     (_%__match178094178095%_
                      (lambda (_%e171790171830%_
                               _%hd171791171833%_
                               _%tl171792171835%_
                               _%e171793171838%_
                               _%hd171794171841%_
                               _%tl171795171843%_
                               _%e171796171846%_
                               _%hd171797171849%_
                               _%tl171798171851%_
                               _%e171799171854%_
                               _%hd171800171857%_
                               _%tl171801171859%_
                               _%e171802171862%_
                               _%hd171803171865%_
                               _%tl171804171867%_
                               _%e171805171870%_
                               _%hd171806171873%_
                               _%tl171807171875%_
                               _%e171808171878%_
                               _%hd171809171881%_
                               _%tl171810171883%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171804171867%_))
                            (let ((_%e171811171886%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171804171867%_))))
                              (let ((_%tl171813171891%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171811171886%_)))
                                    (_%hd171812171889%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171811171886%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl171813171891%_))
                                    (_%__match178102178103%_
                                     _%e171790171830%_
                                     _%hd171791171833%_
                                     _%tl171792171835%_
                                     _%e171793171838%_
                                     _%hd171794171841%_
                                     _%tl171795171843%_
                                     _%e171796171846%_
                                     _%hd171797171849%_
                                     _%tl171798171851%_
                                     _%e171799171854%_
                                     _%hd171800171857%_
                                     _%tl171801171859%_
                                     _%e171802171862%_
                                     _%hd171803171865%_
                                     _%tl171804171867%_
                                     _%e171805171870%_
                                     _%hd171806171873%_
                                     _%tl171807171875%_
                                     _%e171808171878%_
                                     _%hd171809171881%_
                                     _%tl171810171883%_
                                     _%e171811171886%_
                                     _%hd171812171889%_
                                     _%tl171813171891%_)
                                    (_%__kont177621177622%_))))
                            (_%__kont177621177622%_))))
                     (_%__match178040178041%_
                      (lambda (_%e171766171943%_
                               _%hd171767171946%_
                               _%tl171768171948%_
                               _%e171769171951%_
                               _%hd171770171954%_
                               _%tl171771171956%_
                               _%e171772171959%_
                               _%hd171773171962%_
                               _%tl171774171964%_
                               _%e171775171967%_
                               _%hd171776171970%_
                               _%tl171777171972%_
                               _%e171778171975%_
                               _%hd171779171978%_
                               _%tl171780171980%_
                               _%e171781171983%_
                               _%hd171782171986%_
                               _%tl171783171988%_
                               _%e171784171991%_
                               _%hd171785171994%_
                               _%tl171786171996%_)
                        (let ((_%L171999%_ _%hd171785171994%_)
                              (_%L172000%_ _%hd171776171970%_))
                          (if (and (let ((__tmp178259
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171585%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L171999%_
                                      __tmp178259))
                                   (let ((__tmp178260
                                          (let ((__tmp178261
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L172000%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp178261))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp178260
                                      'gxc#!accessor::t)))
                              (_%__kont177617177618%_ _%L171999%_ _%L172000%_)
                              (_%__kont177621177622%_)))))
                     (_%__match178038178039%_
                      (lambda (_%e171766171943%_
                               _%hd171767171946%_
                               _%tl171768171948%_
                               _%e171769171951%_
                               _%hd171770171954%_
                               _%tl171771171956%_
                               _%e171772171959%_
                               _%hd171773171962%_
                               _%tl171774171964%_
                               _%e171775171967%_
                               _%hd171776171970%_
                               _%tl171777171972%_
                               _%e171778171975%_
                               _%hd171779171978%_
                               _%tl171780171980%_
                               _%e171781171983%_
                               _%hd171782171986%_
                               _%tl171783171988%_
                               _%e171784171991%_
                               _%hd171785171994%_
                               _%tl171786171996%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171780171980%_))
                            (_%__match178040178041%_
                             _%e171766171943%_
                             _%hd171767171946%_
                             _%tl171768171948%_
                             _%e171769171951%_
                             _%hd171770171954%_
                             _%tl171771171956%_
                             _%e171772171959%_
                             _%hd171773171962%_
                             _%tl171774171964%_
                             _%e171775171967%_
                             _%hd171776171970%_
                             _%tl171777171972%_
                             _%e171778171975%_
                             _%hd171779171978%_
                             _%tl171780171980%_
                             _%e171781171983%_
                             _%hd171782171986%_
                             _%tl171783171988%_
                             _%e171784171991%_
                             _%hd171785171994%_
                             _%tl171786171996%_)
                            (_%__match178094178095%_
                             _%e171766171943%_
                             _%hd171767171946%_
                             _%tl171768171948%_
                             _%e171769171951%_
                             _%hd171770171954%_
                             _%tl171771171956%_
                             _%e171772171959%_
                             _%hd171773171962%_
                             _%tl171774171964%_
                             _%e171775171967%_
                             _%hd171776171970%_
                             _%tl171777171972%_
                             _%e171778171975%_
                             _%hd171779171978%_
                             _%tl171780171980%_
                             _%e171781171983%_
                             _%hd171782171986%_
                             _%tl171783171988%_
                             _%e171784171991%_
                             _%hd171785171994%_
                             _%tl171786171996%_))))
                     (_%__match177984177985%_
                      (lambda (_%e171731172039%_
                               _%hd171732172042%_
                               _%tl171733172044%_
                               _%e171734172047%_
                               _%hd171735172050%_
                               _%tl171736172052%_
                               _%e171737172055%_
                               _%hd171738172058%_
                               _%tl171739172060%_
                               _%e171740172063%_
                               _%hd171741172066%_
                               _%tl171742172068%_
                               _%e171743172071%_
                               _%hd171744172074%_
                               _%tl171745172076%_
                               _%e171746172079%_
                               _%hd171747172082%_
                               _%tl171748172084%_
                               _%e171749172087%_
                               _%hd171750172090%_
                               _%tl171751172092%_
                               _%e171752172095%_
                               _%hd171753172098%_
                               _%tl171754172100%_
                               _%e171755172103%_
                               _%hd171756172106%_
                               _%tl171757172108%_
                               _%e171758172111%_
                               _%hd171759172114%_
                               _%tl171760172116%_
                               _%e171761172119%_
                               _%hd171762172122%_
                               _%tl171763172124%_)
                        (let ((_%L172127%_ _%hd171762172122%_)
                              (_%L172128%_ _%hd171759172114%_)
                              (_%L172129%_ _%hd171750172090%_)
                              (_%L172130%_ _%hd171741172066%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L172130%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L172130%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp178262
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171585%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172129%_
                                      __tmp178262)))
                              (_%__kont177615177616%_
                               _%L172127%_
                               _%L172128%_
                               _%L172129%_
                               _%L172130%_)
                              (_%__kont177621177622%_)))))
                     (_%__match177976177977%_
                      (lambda (_%e171731172039%_
                               _%hd171732172042%_
                               _%tl171733172044%_
                               _%e171734172047%_
                               _%hd171735172050%_
                               _%tl171736172052%_
                               _%e171737172055%_
                               _%hd171738172058%_
                               _%tl171739172060%_
                               _%e171740172063%_
                               _%hd171741172066%_
                               _%tl171742172068%_
                               _%e171743172071%_
                               _%hd171744172074%_
                               _%tl171745172076%_
                               _%e171746172079%_
                               _%hd171747172082%_
                               _%tl171748172084%_
                               _%e171749172087%_
                               _%hd171750172090%_
                               _%tl171751172092%_
                               _%e171752172095%_
                               _%hd171753172098%_
                               _%tl171754172100%_
                               _%e171755172103%_
                               _%hd171756172106%_
                               _%tl171757172108%_
                               _%e171758172111%_
                               _%hd171759172114%_
                               _%tl171760172116%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171754172100%_))
                            (let ((_%e171761172119%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171754172100%_))))
                              (let ((_%tl171763172124%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171761172119%_)))
                                    (_%hd171762172122%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171761172119%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl171763172124%_))
                                    (_%__match177984177985%_
                                     _%e171731172039%_
                                     _%hd171732172042%_
                                     _%tl171733172044%_
                                     _%e171734172047%_
                                     _%hd171735172050%_
                                     _%tl171736172052%_
                                     _%e171737172055%_
                                     _%hd171738172058%_
                                     _%tl171739172060%_
                                     _%e171740172063%_
                                     _%hd171741172066%_
                                     _%tl171742172068%_
                                     _%e171743172071%_
                                     _%hd171744172074%_
                                     _%tl171745172076%_
                                     _%e171746172079%_
                                     _%hd171747172082%_
                                     _%tl171748172084%_
                                     _%e171749172087%_
                                     _%hd171750172090%_
                                     _%tl171751172092%_
                                     _%e171752172095%_
                                     _%hd171753172098%_
                                     _%tl171754172100%_
                                     _%e171755172103%_
                                     _%hd171756172106%_
                                     _%tl171757172108%_
                                     _%e171758172111%_
                                     _%hd171759172114%_
                                     _%tl171760172116%_
                                     _%e171761172119%_
                                     _%hd171762172122%_
                                     _%tl171763172124%_)
                                    (_%__kont177621177622%_))))
                            (_%__match178100178101%_
                             _%e171731172039%_
                             _%hd171732172042%_
                             _%tl171733172044%_
                             _%e171734172047%_
                             _%hd171735172050%_
                             _%tl171736172052%_
                             _%e171737172055%_
                             _%hd171738172058%_
                             _%tl171739172060%_
                             _%e171740172063%_
                             _%hd171741172066%_
                             _%tl171742172068%_
                             _%e171743172071%_
                             _%hd171744172074%_
                             _%tl171745172076%_
                             _%e171746172079%_
                             _%hd171747172082%_
                             _%tl171748172084%_
                             _%e171749172087%_
                             _%hd171750172090%_
                             _%tl171751172092%_
                             _%e171752172095%_
                             _%hd171753172098%_
                             _%tl171754172100%_))))
                     (_%__match177898177899%_
                      (lambda (_%e171697172173%_
                               _%hd171698172176%_
                               _%tl171699172178%_
                               _%e171700172181%_
                               _%hd171701172184%_
                               _%tl171702172186%_
                               _%e171703172189%_
                               _%hd171704172192%_
                               _%tl171705172194%_
                               _%e171706172197%_
                               _%hd171707172200%_
                               _%tl171708172202%_
                               _%e171709172205%_
                               _%hd171710172208%_
                               _%tl171711172210%_
                               _%e171712172213%_
                               _%hd171713172216%_
                               _%tl171714172218%_
                               _%e171715172221%_
                               _%hd171716172224%_
                               _%tl171717172226%_
                               _%e171718172229%_
                               _%hd171719172232%_
                               _%tl171720172234%_
                               _%e171721172237%_
                               _%hd171722172240%_
                               _%tl171723172242%_
                               _%e171724172245%_
                               _%hd171725172248%_
                               _%tl171726172250%_)
                        (let ((_%L172253%_ _%hd171725172248%_)
                              (_%L172254%_ _%hd171716172224%_)
                              (_%L172255%_ _%hd171707172200%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L172255%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L172255%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp178263
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171585%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172254%_
                                      __tmp178263)))
                              (_%__kont177613177614%_
                               _%L172253%_
                               _%L172254%_
                               _%L172255%_)
                              (_%__match178102178103%_
                               _%e171697172173%_
                               _%hd171698172176%_
                               _%tl171699172178%_
                               _%e171700172181%_
                               _%hd171701172184%_
                               _%tl171702172186%_
                               _%e171703172189%_
                               _%hd171704172192%_
                               _%tl171705172194%_
                               _%e171706172197%_
                               _%hd171707172200%_
                               _%tl171708172202%_
                               _%e171709172205%_
                               _%hd171710172208%_
                               _%tl171711172210%_
                               _%e171712172213%_
                               _%hd171713172216%_
                               _%tl171714172218%_
                               _%e171715172221%_
                               _%hd171716172224%_
                               _%tl171717172226%_
                               _%e171718172229%_
                               _%hd171719172232%_
                               _%tl171720172234%_)))))
                     (_%__match177896177897%_
                      (lambda (_%e171697172173%_
                               _%hd171698172176%_
                               _%tl171699172178%_
                               _%e171700172181%_
                               _%hd171701172184%_
                               _%tl171702172186%_
                               _%e171703172189%_
                               _%hd171704172192%_
                               _%tl171705172194%_
                               _%e171706172197%_
                               _%hd171707172200%_
                               _%tl171708172202%_
                               _%e171709172205%_
                               _%hd171710172208%_
                               _%tl171711172210%_
                               _%e171712172213%_
                               _%hd171713172216%_
                               _%tl171714172218%_
                               _%e171715172221%_
                               _%hd171716172224%_
                               _%tl171717172226%_
                               _%e171718172229%_
                               _%hd171719172232%_
                               _%tl171720172234%_
                               _%e171721172237%_
                               _%hd171722172240%_
                               _%tl171723172242%_
                               _%e171724172245%_
                               _%hd171725172248%_
                               _%tl171726172250%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171720172234%_))
                            (_%__match177898177899%_
                             _%e171697172173%_
                             _%hd171698172176%_
                             _%tl171699172178%_
                             _%e171700172181%_
                             _%hd171701172184%_
                             _%tl171702172186%_
                             _%e171703172189%_
                             _%hd171704172192%_
                             _%tl171705172194%_
                             _%e171706172197%_
                             _%hd171707172200%_
                             _%tl171708172202%_
                             _%e171709172205%_
                             _%hd171710172208%_
                             _%tl171711172210%_
                             _%e171712172213%_
                             _%hd171713172216%_
                             _%tl171714172218%_
                             _%e171715172221%_
                             _%hd171716172224%_
                             _%tl171717172226%_
                             _%e171718172229%_
                             _%hd171719172232%_
                             _%tl171720172234%_
                             _%e171721172237%_
                             _%hd171722172240%_
                             _%tl171723172242%_
                             _%e171724172245%_
                             _%hd171725172248%_
                             _%tl171726172250%_)
                            (_%__match177976177977%_
                             _%e171697172173%_
                             _%hd171698172176%_
                             _%tl171699172178%_
                             _%e171700172181%_
                             _%hd171701172184%_
                             _%tl171702172186%_
                             _%e171703172189%_
                             _%hd171704172192%_
                             _%tl171705172194%_
                             _%e171706172197%_
                             _%hd171707172200%_
                             _%tl171708172202%_
                             _%e171709172205%_
                             _%hd171710172208%_
                             _%tl171711172210%_
                             _%e171712172213%_
                             _%hd171713172216%_
                             _%tl171714172218%_
                             _%e171715172221%_
                             _%hd171716172224%_
                             _%tl171717172226%_
                             _%e171718172229%_
                             _%hd171719172232%_
                             _%tl171720172234%_
                             _%e171721172237%_
                             _%hd171722172240%_
                             _%tl171723172242%_
                             _%e171724172245%_
                             _%hd171725172248%_
                             _%tl171726172250%_))))
                     (_%__match177886177887%_
                      (lambda (_%e171697172173%_
                               _%hd171698172176%_
                               _%tl171699172178%_
                               _%e171700172181%_
                               _%hd171701172184%_
                               _%tl171702172186%_
                               _%e171703172189%_
                               _%hd171704172192%_
                               _%tl171705172194%_
                               _%e171706172197%_
                               _%hd171707172200%_
                               _%tl171708172202%_
                               _%e171709172205%_
                               _%hd171710172208%_
                               _%tl171711172210%_
                               _%e171712172213%_
                               _%hd171713172216%_
                               _%tl171714172218%_
                               _%e171715172221%_
                               _%hd171716172224%_
                               _%tl171717172226%_
                               _%e171718172229%_
                               _%hd171719172232%_
                               _%tl171720172234%_
                               _%e171721172237%_
                               _%hd171722172240%_
                               _%tl171723172242%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd171722172240%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl171723172242%_))
                                (let ((_%e171724172245%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl171723172242%_))))
                                  (let ((_%tl171726172250%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171724172245%_)))
                                        (_%hd171725172248%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171724172245%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl171726172250%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl171720172234%_))
                                            (_%__match177898177899%_
                                             _%e171697172173%_
                                             _%hd171698172176%_
                                             _%tl171699172178%_
                                             _%e171700172181%_
                                             _%hd171701172184%_
                                             _%tl171702172186%_
                                             _%e171703172189%_
                                             _%hd171704172192%_
                                             _%tl171705172194%_
                                             _%e171706172197%_
                                             _%hd171707172200%_
                                             _%tl171708172202%_
                                             _%e171709172205%_
                                             _%hd171710172208%_
                                             _%tl171711172210%_
                                             _%e171712172213%_
                                             _%hd171713172216%_
                                             _%tl171714172218%_
                                             _%e171715172221%_
                                             _%hd171716172224%_
                                             _%tl171717172226%_
                                             _%e171718172229%_
                                             _%hd171719172232%_
                                             _%tl171720172234%_
                                             _%e171721172237%_
                                             _%hd171722172240%_
                                             _%tl171723172242%_
                                             _%e171724172245%_
                                             _%hd171725172248%_
                                             _%tl171726172250%_)
                                            (_%__match177976177977%_
                                             _%e171697172173%_
                                             _%hd171698172176%_
                                             _%tl171699172178%_
                                             _%e171700172181%_
                                             _%hd171701172184%_
                                             _%tl171702172186%_
                                             _%e171703172189%_
                                             _%hd171704172192%_
                                             _%tl171705172194%_
                                             _%e171706172197%_
                                             _%hd171707172200%_
                                             _%tl171708172202%_
                                             _%e171709172205%_
                                             _%hd171710172208%_
                                             _%tl171711172210%_
                                             _%e171712172213%_
                                             _%hd171713172216%_
                                             _%tl171714172218%_
                                             _%e171715172221%_
                                             _%hd171716172224%_
                                             _%tl171717172226%_
                                             _%e171718172229%_
                                             _%hd171719172232%_
                                             _%tl171720172234%_
                                             _%e171721172237%_
                                             _%hd171722172240%_
                                             _%tl171723172242%_
                                             _%e171724172245%_
                                             _%hd171725172248%_
                                             _%tl171726172250%_))
                                        (_%__match178100178101%_
                                         _%e171697172173%_
                                         _%hd171698172176%_
                                         _%tl171699172178%_
                                         _%e171700172181%_
                                         _%hd171701172184%_
                                         _%tl171702172186%_
                                         _%e171703172189%_
                                         _%hd171704172192%_
                                         _%tl171705172194%_
                                         _%e171706172197%_
                                         _%hd171707172200%_
                                         _%tl171708172202%_
                                         _%e171709172205%_
                                         _%hd171710172208%_
                                         _%tl171711172210%_
                                         _%e171712172213%_
                                         _%hd171713172216%_
                                         _%tl171714172218%_
                                         _%e171715172221%_
                                         _%hd171716172224%_
                                         _%tl171717172226%_
                                         _%e171718172229%_
                                         _%hd171719172232%_
                                         _%tl171720172234%_))))
                                (_%__match178100178101%_
                                 _%e171697172173%_
                                 _%hd171698172176%_
                                 _%tl171699172178%_
                                 _%e171700172181%_
                                 _%hd171701172184%_
                                 _%tl171702172186%_
                                 _%e171703172189%_
                                 _%hd171704172192%_
                                 _%tl171705172194%_
                                 _%e171706172197%_
                                 _%hd171707172200%_
                                 _%tl171708172202%_
                                 _%e171709172205%_
                                 _%hd171710172208%_
                                 _%tl171711172210%_
                                 _%e171712172213%_
                                 _%hd171713172216%_
                                 _%tl171714172218%_
                                 _%e171715172221%_
                                 _%hd171716172224%_
                                 _%tl171717172226%_
                                 _%e171718172229%_
                                 _%hd171719172232%_
                                 _%tl171720172234%_))
                            (_%__match178100178101%_
                             _%e171697172173%_
                             _%hd171698172176%_
                             _%tl171699172178%_
                             _%e171700172181%_
                             _%hd171701172184%_
                             _%tl171702172186%_
                             _%e171703172189%_
                             _%hd171704172192%_
                             _%tl171705172194%_
                             _%e171706172197%_
                             _%hd171707172200%_
                             _%tl171708172202%_
                             _%e171709172205%_
                             _%hd171710172208%_
                             _%tl171711172210%_
                             _%e171712172213%_
                             _%hd171713172216%_
                             _%tl171714172218%_
                             _%e171715172221%_
                             _%hd171716172224%_
                             _%tl171717172226%_
                             _%e171718172229%_
                             _%hd171719172232%_
                             _%tl171720172234%_))))
                     (_%__match177818177819%_
                      (lambda (_%e171646172294%_
                               _%hd171647172297%_
                               _%tl171648172299%_
                               _%e171649172302%_
                               _%hd171650172305%_
                               _%tl171651172307%_
                               _%e171652172310%_
                               _%hd171653172313%_
                               _%tl171654172315%_
                               _%e171655172318%_
                               _%hd171656172321%_
                               _%tl171657172323%_
                               _%e171658172326%_
                               _%hd171659172329%_
                               _%tl171660172331%_
                               _%e171661172334%_
                               _%hd171662172337%_
                               _%tl171663172339%_
                               _%e171664172342%_
                               _%hd171665172345%_
                               _%tl171666172347%_
                               _%e171667172350%_
                               _%hd171668172353%_
                               _%tl171669172355%_
                               _%e171670172358%_
                               _%hd171671172361%_
                               _%tl171672172363%_
                               _%e171673172366%_
                               _%hd171674172369%_
                               _%tl171675172371%_
                               _%e171676172374%_
                               _%hd171677172377%_
                               _%tl171678172379%_
                               _%e171679172382%_
                               _%hd171680172385%_
                               _%tl171681172387%_
                               _%e171682172390%_
                               _%hd171683172393%_
                               _%tl171684172395%_
                               _%__splice177611177612%_
                               _%target171685172398%_
                               _%tl171687172400%_)
                        (letrec ((_%loop171688172403%_
                                  (lambda (_%hd171686172406%_
                                           _%args171692172408%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd171686172406%_))
                                        (let ((_%e171689172411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd171686172406%_))))
                                          (let ((_%lp-tl171691172416%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171689172411%_)))
                                                (_%lp-hd171690172414%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171689172411%_))))
                                            (_%loop171688172403%_
                                             _%lp-tl171691172416%_
                                             (cons _%lp-hd171690172414%_
                                                   _%args171692172408%_))))
                                        (let ((_%args171693172419%_
                                               (reverse _%args171692172408%_)))
                                          (let ((_%L172422%_
                                                 _%args171693172419%_)
                                                (_%L172423%_
                                                 _%hd171683172393%_)
                                                (_%L172424%_
                                                 _%hd171674172369%_)
                                                (_%L172425%_
                                                 _%hd171665172345%_)
                                                (_%L172426%_
                                                 _%hd171656172321%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L172426%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L172425%_
                                                        'call-method))
                                                     (let ((__tmp178264
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self171585%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L172424%_
                                                        __tmp178264)))
                                                (_%__kont177609177610%_
                                                 _%L172422%_
                                                 _%L172423%_
                                                 _%L172424%_
                                                 _%L172425%_
                                                 _%L172426%_)
                                                (_%__kont177621177622%_))))))))
                          (_%loop171688172403%_ _%target171685172398%_ '()))))
                     (_%__match177776177777%_
                      (lambda (_%e171646172294%_
                               _%hd171647172297%_
                               _%tl171648172299%_
                               _%e171649172302%_
                               _%hd171650172305%_
                               _%tl171651172307%_
                               _%e171652172310%_
                               _%hd171653172313%_
                               _%tl171654172315%_
                               _%e171655172318%_
                               _%hd171656172321%_
                               _%tl171657172323%_
                               _%e171658172326%_
                               _%hd171659172329%_
                               _%tl171660172331%_
                               _%e171661172334%_
                               _%hd171662172337%_
                               _%tl171663172339%_
                               _%e171664172342%_
                               _%hd171665172345%_
                               _%tl171666172347%_
                               _%e171667172350%_
                               _%hd171668172353%_
                               _%tl171669172355%_
                               _%e171670172358%_
                               _%hd171671172361%_
                               _%tl171672172363%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd171671172361%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl171672172363%_))
                                (let ((_%e171673172366%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl171672172363%_))))
                                  (let ((_%tl171675172371%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171673172366%_)))
                                        (_%hd171674172369%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171673172366%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl171675172371%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171669172355%_))
                                            (let ((_%e171676172374%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171669172355%_))))
                                              (let ((_%tl171678172379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171676172374%_)))
                                                    (_%hd171677172377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171676172374%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd171677172377%_))
                                                    (let ((_%e171679172382%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd171677172377%_))))
                                                      (let ((_%tl171681172387%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171679172382%_)))
                    (_%hd171680172385%_
                     (let () (declare (not safe)) (##car _%e171679172382%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd171680172385%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd171680172385%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171681172387%_))
                            (let ((_%e171682172390%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171681172387%_))))
                              (let ((_%tl171684172395%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171682172390%_)))
                                    (_%hd171683172393%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171682172390%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl171684172395%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl171678172379%_))
                                        (let ((_%__splice177611177612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl171678172379%_
                                                  '0))))
                                          (let ((_%tl171687172400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice177611177612%_
                                                    '1)))
                                                (_%target171685172398%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice177611177612%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl171687172400%_))
                                                (_%__match177818177819%_
                                                 _%e171646172294%_
                                                 _%hd171647172297%_
                                                 _%tl171648172299%_
                                                 _%e171649172302%_
                                                 _%hd171650172305%_
                                                 _%tl171651172307%_
                                                 _%e171652172310%_
                                                 _%hd171653172313%_
                                                 _%tl171654172315%_
                                                 _%e171655172318%_
                                                 _%hd171656172321%_
                                                 _%tl171657172323%_
                                                 _%e171658172326%_
                                                 _%hd171659172329%_
                                                 _%tl171660172331%_
                                                 _%e171661172334%_
                                                 _%hd171662172337%_
                                                 _%tl171663172339%_
                                                 _%e171664172342%_
                                                 _%hd171665172345%_
                                                 _%tl171666172347%_
                                                 _%e171667172350%_
                                                 _%hd171668172353%_
                                                 _%tl171669172355%_
                                                 _%e171670172358%_
                                                 _%hd171671172361%_
                                                 _%tl171672172363%_
                                                 _%e171673172366%_
                                                 _%hd171674172369%_
                                                 _%tl171675172371%_
                                                 _%e171676172374%_
                                                 _%hd171677172377%_
                                                 _%tl171678172379%_
                                                 _%e171679172382%_
                                                 _%hd171680172385%_
                                                 _%tl171681172387%_
                                                 _%e171682172390%_
                                                 _%hd171683172393%_
                                                 _%tl171684172395%_
                                                 _%__splice177611177612%_
                                                 _%target171685172398%_
                                                 _%tl171687172400%_)
                                                (_%__kont177621177622%_))))
                                        (_%__kont177621177622%_))
                                    (_%__kont177621177622%_))))
                            (_%__kont177621177622%_))
                        (_%__kont177621177622%_))
                    (_%__kont177621177622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont177621177622%_))))
                                            (_%__match178100178101%_
                                             _%e171646172294%_
                                             _%hd171647172297%_
                                             _%tl171648172299%_
                                             _%e171649172302%_
                                             _%hd171650172305%_
                                             _%tl171651172307%_
                                             _%e171652172310%_
                                             _%hd171653172313%_
                                             _%tl171654172315%_
                                             _%e171655172318%_
                                             _%hd171656172321%_
                                             _%tl171657172323%_
                                             _%e171658172326%_
                                             _%hd171659172329%_
                                             _%tl171660172331%_
                                             _%e171661172334%_
                                             _%hd171662172337%_
                                             _%tl171663172339%_
                                             _%e171664172342%_
                                             _%hd171665172345%_
                                             _%tl171666172347%_
                                             _%e171667172350%_
                                             _%hd171668172353%_
                                             _%tl171669172355%_))
                                        (_%__match178100178101%_
                                         _%e171646172294%_
                                         _%hd171647172297%_
                                         _%tl171648172299%_
                                         _%e171649172302%_
                                         _%hd171650172305%_
                                         _%tl171651172307%_
                                         _%e171652172310%_
                                         _%hd171653172313%_
                                         _%tl171654172315%_
                                         _%e171655172318%_
                                         _%hd171656172321%_
                                         _%tl171657172323%_
                                         _%e171658172326%_
                                         _%hd171659172329%_
                                         _%tl171660172331%_
                                         _%e171661172334%_
                                         _%hd171662172337%_
                                         _%tl171663172339%_
                                         _%e171664172342%_
                                         _%hd171665172345%_
                                         _%tl171666172347%_
                                         _%e171667172350%_
                                         _%hd171668172353%_
                                         _%tl171669172355%_))))
                                (_%__match178100178101%_
                                 _%e171646172294%_
                                 _%hd171647172297%_
                                 _%tl171648172299%_
                                 _%e171649172302%_
                                 _%hd171650172305%_
                                 _%tl171651172307%_
                                 _%e171652172310%_
                                 _%hd171653172313%_
                                 _%tl171654172315%_
                                 _%e171655172318%_
                                 _%hd171656172321%_
                                 _%tl171657172323%_
                                 _%e171658172326%_
                                 _%hd171659172329%_
                                 _%tl171660172331%_
                                 _%e171661172334%_
                                 _%hd171662172337%_
                                 _%tl171663172339%_
                                 _%e171664172342%_
                                 _%hd171665172345%_
                                 _%tl171666172347%_
                                 _%e171667172350%_
                                 _%hd171668172353%_
                                 _%tl171669172355%_))
                            (_%__match177886177887%_
                             _%e171646172294%_
                             _%hd171647172297%_
                             _%tl171648172299%_
                             _%e171649172302%_
                             _%hd171650172305%_
                             _%tl171651172307%_
                             _%e171652172310%_
                             _%hd171653172313%_
                             _%tl171654172315%_
                             _%e171655172318%_
                             _%hd171656172321%_
                             _%tl171657172323%_
                             _%e171658172326%_
                             _%hd171659172329%_
                             _%tl171660172331%_
                             _%e171661172334%_
                             _%hd171662172337%_
                             _%tl171663172339%_
                             _%e171664172342%_
                             _%hd171665172345%_
                             _%tl171666172347%_
                             _%e171667172350%_
                             _%hd171668172353%_
                             _%tl171669172355%_
                             _%e171670172358%_
                             _%hd171671172361%_
                             _%tl171672172363%_))))
                     (_%__match177708177709%_
                      (lambda (_%e171602172486%_
                               _%hd171603172489%_
                               _%tl171604172491%_
                               _%e171605172494%_
                               _%hd171606172497%_
                               _%tl171607172499%_
                               _%e171608172502%_
                               _%hd171609172505%_
                               _%tl171610172507%_
                               _%e171611172510%_
                               _%hd171612172513%_
                               _%tl171613172515%_
                               _%e171614172518%_
                               _%hd171615172521%_
                               _%tl171616172523%_
                               _%e171617172526%_
                               _%hd171618172529%_
                               _%tl171619172531%_
                               _%e171620172534%_
                               _%hd171621172537%_
                               _%tl171622172539%_
                               _%e171623172542%_
                               _%hd171624172545%_
                               _%tl171625172547%_
                               _%e171626172550%_
                               _%hd171627172553%_
                               _%tl171628172555%_
                               _%e171629172558%_
                               _%hd171630172561%_
                               _%tl171631172563%_
                               _%__splice177607177608%_
                               _%target171632172566%_
                               _%tl171634172568%_)
                        (letrec ((_%loop171635172571%_
                                  (lambda (_%hd171633172574%_
                                           _%args171639172576%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd171633172574%_))
                                        (let ((_%e171636172579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd171633172574%_))))
                                          (let ((_%lp-tl171638172584%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171636172579%_)))
                                                (_%lp-hd171637172582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171636172579%_))))
                                            (_%loop171635172571%_
                                             _%lp-tl171638172584%_
                                             (cons _%lp-hd171637172582%_
                                                   _%args171639172576%_))))
                                        (let ((_%args171640172587%_
                                               (reverse _%args171639172576%_)))
                                          (let ((_%L172590%_
                                                 _%args171640172587%_)
                                                (_%L172591%_
                                                 _%hd171630172561%_)
                                                (_%L172592%_
                                                 _%hd171621172537%_)
                                                (_%L172593%_
                                                 _%hd171612172513%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L172593%_
                                                        'call-method))
                                                     (let ((__tmp178265
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self171585%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L172592%_
                                                        __tmp178265)))
                                                (_%__kont177605177606%_
                                                 _%L172590%_
                                                 _%L172591%_
                                                 _%L172592%_
                                                 _%L172593%_)
                                                (_%__match177896177897%_
                                                 _%e171602172486%_
                                                 _%hd171603172489%_
                                                 _%tl171604172491%_
                                                 _%e171605172494%_
                                                 _%hd171606172497%_
                                                 _%tl171607172499%_
                                                 _%e171608172502%_
                                                 _%hd171609172505%_
                                                 _%tl171610172507%_
                                                 _%e171611172510%_
                                                 _%hd171612172513%_
                                                 _%tl171613172515%_
                                                 _%e171614172518%_
                                                 _%hd171615172521%_
                                                 _%tl171616172523%_
                                                 _%e171617172526%_
                                                 _%hd171618172529%_
                                                 _%tl171619172531%_
                                                 _%e171620172534%_
                                                 _%hd171621172537%_
                                                 _%tl171622172539%_
                                                 _%e171623172542%_
                                                 _%hd171624172545%_
                                                 _%tl171625172547%_
                                                 _%e171626172550%_
                                                 _%hd171627172553%_
                                                 _%tl171628172555%_
                                                 _%e171629172558%_
                                                 _%hd171630172561%_
                                                 _%tl171631172563%_))))))))
                          (_%loop171635172571%_ _%target171632172566%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx177603177604%_))
                    (let ((_%e171602172486%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx177603177604%_))))
                      (let ((_%tl171604172491%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171602172486%_)))
                            (_%hd171603172489%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171602172486%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171604172491%_))
                            (let ((_%e171605172494%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171604172491%_))))
                              (let ((_%tl171607172499%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171605172494%_)))
                                    (_%hd171606172497%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171605172494%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd171606172497%_))
                                    (let ((_%e171608172502%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd171606172497%_))))
                                      (let ((_%tl171610172507%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171608172502%_)))
                                            (_%hd171609172505%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171608172502%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd171609172505%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd171609172505%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl171610172507%_))
                                                    (let ((_%e171611172510%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl171610172507%_))))
                                                      (let ((_%tl171613172515%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171611172510%_)))
                    (_%hd171612172513%_
                     (let () (declare (not safe)) (##car _%e171611172510%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl171613172515%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl171607172499%_))
                        (let ((_%e171614172518%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl171607172499%_))))
                          (let ((_%tl171616172523%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171614172518%_)))
                                (_%hd171615172521%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171614172518%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd171615172521%_))
                                (let ((_%e171617172526%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd171615172521%_))))
                                  (let ((_%tl171619172531%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171617172526%_)))
                                        (_%hd171618172529%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171617172526%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd171618172529%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd171618172529%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl171619172531%_))
                                                (let ((_%e171620172534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl171619172531%_))))
                                                  (let ((_%tl171622172539%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e171620172534%_)))
                                                        (_%hd171621172537%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e171620172534%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl171622172539%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl171616172523%_))
                                                            (let ((_%e171623172542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl171616172523%_))))
                      (let ((_%tl171625172547%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171623172542%_)))
                            (_%hd171624172545%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171623172542%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd171624172545%_))
                            (let ((_%e171626172550%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd171624172545%_))))
                              (let ((_%tl171628172555%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171626172550%_)))
                                    (_%hd171627172553%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171626172550%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd171627172553%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd171627172553%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171628172555%_))
                                            (let ((_%e171629172558%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171628172555%_))))
                                              (let ((_%tl171631172563%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171629172558%_)))
                                                    (_%hd171630172561%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171629172558%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl171631172563%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl171625172547%_))
                                                        (let ((_%__splice177607177608%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl171625172547%_ '0))))
                  (let ((_%tl171634172568%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice177607177608%_ '1)))
                        (_%target171632172566%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice177607177608%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl171634172568%_))
                        (_%__match177708177709%_
                         _%e171602172486%_
                         _%hd171603172489%_
                         _%tl171604172491%_
                         _%e171605172494%_
                         _%hd171606172497%_
                         _%tl171607172499%_
                         _%e171608172502%_
                         _%hd171609172505%_
                         _%tl171610172507%_
                         _%e171611172510%_
                         _%hd171612172513%_
                         _%tl171613172515%_
                         _%e171614172518%_
                         _%hd171615172521%_
                         _%tl171616172523%_
                         _%e171617172526%_
                         _%hd171618172529%_
                         _%tl171619172531%_
                         _%e171620172534%_
                         _%hd171621172537%_
                         _%tl171622172539%_
                         _%e171623172542%_
                         _%hd171624172545%_
                         _%tl171625172547%_
                         _%e171626172550%_
                         _%hd171627172553%_
                         _%tl171628172555%_
                         _%e171629172558%_
                         _%hd171630172561%_
                         _%tl171631172563%_
                         _%__splice177607177608%_
                         _%target171632172566%_
                         _%tl171634172568%_)
                        (_%__match177896177897%_
                         _%e171602172486%_
                         _%hd171603172489%_
                         _%tl171604172491%_
                         _%e171605172494%_
                         _%hd171606172497%_
                         _%tl171607172499%_
                         _%e171608172502%_
                         _%hd171609172505%_
                         _%tl171610172507%_
                         _%e171611172510%_
                         _%hd171612172513%_
                         _%tl171613172515%_
                         _%e171614172518%_
                         _%hd171615172521%_
                         _%tl171616172523%_
                         _%e171617172526%_
                         _%hd171618172529%_
                         _%tl171619172531%_
                         _%e171620172534%_
                         _%hd171621172537%_
                         _%tl171622172539%_
                         _%e171623172542%_
                         _%hd171624172545%_
                         _%tl171625172547%_
                         _%e171626172550%_
                         _%hd171627172553%_
                         _%tl171628172555%_
                         _%e171629172558%_
                         _%hd171630172561%_
                         _%tl171631172563%_))))
                (_%__match177896177897%_
                 _%e171602172486%_
                 _%hd171603172489%_
                 _%tl171604172491%_
                 _%e171605172494%_
                 _%hd171606172497%_
                 _%tl171607172499%_
                 _%e171608172502%_
                 _%hd171609172505%_
                 _%tl171610172507%_
                 _%e171611172510%_
                 _%hd171612172513%_
                 _%tl171613172515%_
                 _%e171614172518%_
                 _%hd171615172521%_
                 _%tl171616172523%_
                 _%e171617172526%_
                 _%hd171618172529%_
                 _%tl171619172531%_
                 _%e171620172534%_
                 _%hd171621172537%_
                 _%tl171622172539%_
                 _%e171623172542%_
                 _%hd171624172545%_
                 _%tl171625172547%_
                 _%e171626172550%_
                 _%hd171627172553%_
                 _%tl171628172555%_
                 _%e171629172558%_
                 _%hd171630172561%_
                 _%tl171631172563%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match178100178101%_
                                                     _%e171602172486%_
                                                     _%hd171603172489%_
                                                     _%tl171604172491%_
                                                     _%e171605172494%_
                                                     _%hd171606172497%_
                                                     _%tl171607172499%_
                                                     _%e171608172502%_
                                                     _%hd171609172505%_
                                                     _%tl171610172507%_
                                                     _%e171611172510%_
                                                     _%hd171612172513%_
                                                     _%tl171613172515%_
                                                     _%e171614172518%_
                                                     _%hd171615172521%_
                                                     _%tl171616172523%_
                                                     _%e171617172526%_
                                                     _%hd171618172529%_
                                                     _%tl171619172531%_
                                                     _%e171620172534%_
                                                     _%hd171621172537%_
                                                     _%tl171622172539%_
                                                     _%e171623172542%_
                                                     _%hd171624172545%_
                                                     _%tl171625172547%_))))
                                            (_%__match178100178101%_
                                             _%e171602172486%_
                                             _%hd171603172489%_
                                             _%tl171604172491%_
                                             _%e171605172494%_
                                             _%hd171606172497%_
                                             _%tl171607172499%_
                                             _%e171608172502%_
                                             _%hd171609172505%_
                                             _%tl171610172507%_
                                             _%e171611172510%_
                                             _%hd171612172513%_
                                             _%tl171613172515%_
                                             _%e171614172518%_
                                             _%hd171615172521%_
                                             _%tl171616172523%_
                                             _%e171617172526%_
                                             _%hd171618172529%_
                                             _%tl171619172531%_
                                             _%e171620172534%_
                                             _%hd171621172537%_
                                             _%tl171622172539%_
                                             _%e171623172542%_
                                             _%hd171624172545%_
                                             _%tl171625172547%_))
                                        (_%__match177776177777%_
                                         _%e171602172486%_
                                         _%hd171603172489%_
                                         _%tl171604172491%_
                                         _%e171605172494%_
                                         _%hd171606172497%_
                                         _%tl171607172499%_
                                         _%e171608172502%_
                                         _%hd171609172505%_
                                         _%tl171610172507%_
                                         _%e171611172510%_
                                         _%hd171612172513%_
                                         _%tl171613172515%_
                                         _%e171614172518%_
                                         _%hd171615172521%_
                                         _%tl171616172523%_
                                         _%e171617172526%_
                                         _%hd171618172529%_
                                         _%tl171619172531%_
                                         _%e171620172534%_
                                         _%hd171621172537%_
                                         _%tl171622172539%_
                                         _%e171623172542%_
                                         _%hd171624172545%_
                                         _%tl171625172547%_
                                         _%e171626172550%_
                                         _%hd171627172553%_
                                         _%tl171628172555%_))
                                    (_%__match178100178101%_
                                     _%e171602172486%_
                                     _%hd171603172489%_
                                     _%tl171604172491%_
                                     _%e171605172494%_
                                     _%hd171606172497%_
                                     _%tl171607172499%_
                                     _%e171608172502%_
                                     _%hd171609172505%_
                                     _%tl171610172507%_
                                     _%e171611172510%_
                                     _%hd171612172513%_
                                     _%tl171613172515%_
                                     _%e171614172518%_
                                     _%hd171615172521%_
                                     _%tl171616172523%_
                                     _%e171617172526%_
                                     _%hd171618172529%_
                                     _%tl171619172531%_
                                     _%e171620172534%_
                                     _%hd171621172537%_
                                     _%tl171622172539%_
                                     _%e171623172542%_
                                     _%hd171624172545%_
                                     _%tl171625172547%_))))
                            (_%__match178100178101%_
                             _%e171602172486%_
                             _%hd171603172489%_
                             _%tl171604172491%_
                             _%e171605172494%_
                             _%hd171606172497%_
                             _%tl171607172499%_
                             _%e171608172502%_
                             _%hd171609172505%_
                             _%tl171610172507%_
                             _%e171611172510%_
                             _%hd171612172513%_
                             _%tl171613172515%_
                             _%e171614172518%_
                             _%hd171615172521%_
                             _%tl171616172523%_
                             _%e171617172526%_
                             _%hd171618172529%_
                             _%tl171619172531%_
                             _%e171620172534%_
                             _%hd171621172537%_
                             _%tl171622172539%_
                             _%e171623172542%_
                             _%hd171624172545%_
                             _%tl171625172547%_))))
                    (_%__match178038178039%_
                     _%e171602172486%_
                     _%hd171603172489%_
                     _%tl171604172491%_
                     _%e171605172494%_
                     _%hd171606172497%_
                     _%tl171607172499%_
                     _%e171608172502%_
                     _%hd171609172505%_
                     _%tl171610172507%_
                     _%e171611172510%_
                     _%hd171612172513%_
                     _%tl171613172515%_
                     _%e171614172518%_
                     _%hd171615172521%_
                     _%tl171616172523%_
                     _%e171617172526%_
                     _%hd171618172529%_
                     _%tl171619172531%_
                     _%e171620172534%_
                     _%hd171621172537%_
                     _%tl171622172539%_))
                (_%__kont177621177622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont177621177622%_))
                                            (_%__kont177621177622%_))
                                        (_%__kont177621177622%_))))
                                (_%__kont177621177622%_))))
                        (_%__kont177621177622%_))
                    (_%__kont177621177622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont177621177622%_))
                                                (_%__kont177621177622%_))
                                            (_%__kont177621177622%_))))
                                    (_%__kont177621177622%_))))
                            (_%__kont177621177622%_))))
                    (_%__kont177621177622%_))))))))))
