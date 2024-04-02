(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712084999)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp170948 (list gxc#::identity::t))
            (__tmp170947 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp170948
         '()
         __tmp170947
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args169813%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args169813%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp170949
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
        (__make-promise __tmp170949)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx169805%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self169808%_
                (let ((__obj170942
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj170942))
               (__tmp170950
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self169808%_ _%stx169805%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp170950
           gxc#current-compile-method
           _%self169808%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp170952 (list gxc#::void::t))
            (__tmp170951 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp170952
         '(receiver methods slots)
         __tmp170951
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args169802%_
        (apply make-instance gxc#::collect-object-refs::t _%$args169802%_)))
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
      (let ((__tmp170953
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
        (__make-promise __tmp170953)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%_169767%_
               _%receiver169762169769%_
               _%methods169763169771%_
               _%slots169764169773%_
               _%stx169775%_)
        (let* ((_%receiver169778%_
                (if (eq? _%receiver169762169769%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver169762169769%_))
               (_%methods169780%_
                (if (eq? _%methods169763169771%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods169763169771%_))
               (_%slots169782%_
                (if (eq? _%slots169764169773%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots169764169773%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self169784%_
                  (let ((__obj170944
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
                       __obj170944
                       _%receiver169778%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj170944
                       _%methods169780%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj170944
                       _%slots169782%_
                       '3
                       '#f
                       '#f))
                    __obj170944))
                 (__tmp170954
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self169784%_ _%stx169775%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp170954
             gxc#current-compile-method
             _%self169784%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords169791%_ . _%args169792%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords169791%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169791%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169791%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169791%_
                  'slots:
                  absent-value))
               _%args169792%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args169765169798%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args169765169798%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp170956 (list gxc#::basic-xform-expression::t))
            (__tmp170955 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp170956
         '(receiver klass methods slots)
         __tmp170955
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args169758%_
        (apply make-instance gxc#::subst-object-refs::t _%$args169758%_)))
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
      (let ((__tmp170957
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
        (__make-promise __tmp170957)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%_169719%_
               _%receiver169713169721%_
               _%klass169714169723%_
               _%methods169715169725%_
               _%slots169716169727%_
               _%stx169729%_)
        (let* ((_%receiver169732%_
                (if (eq? _%receiver169713169721%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver169713169721%_))
               (_%klass169734%_
                (if (eq? _%klass169714169723%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass169714169723%_))
               (_%methods169736%_
                (if (eq? _%methods169715169725%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods169715169725%_))
               (_%slots169738%_
                (if (eq? _%slots169716169727%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots169716169727%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self169740%_
                  (let ((__obj170946
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
                       __obj170946
                       _%receiver169732%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj170946
                       _%klass169734%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj170946
                       _%methods169736%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj170946
                       _%slots169738%_
                       '4
                       '#f
                       '#f))
                    __obj170946))
                 (__tmp170958
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self169740%_ _%stx169729%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp170958
             gxc#current-compile-method
             _%self169740%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords169747%_ . _%args169748%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords169747%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169747%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169747%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169747%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169747%_
                  'slots:
                  absent-value))
               _%args169748%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args169717169754%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args169717169754%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self166894%_ _%stx166895%_)
        (letrec ((_%generate-method-bind166897%_
                  (lambda (_%$klass169705%_
                           _%$method-table169706%_
                           _%id169707%_
                           _%$id169708%_)
                    (let ((_%$tmp169710%_
                           (let ((__tmp170959
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp170959))))
                      (cons (cons _%$id169708%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp169710%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table169706%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id169707%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp169710%_ '()))
                    (cons (cons '%#ref (cons _%$tmp169710%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id169707%_
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
                 (_%generate-slot-bind166898%_
                  (lambda (_%$klass169699%_ _%id169700%_ _%$id169701%_)
                    (let ((_%$tmp169703%_
                           (let ((__tmp170960
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp170960))))
                      (cons (cons _%$id169701%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp169703%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass169699%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id169700%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp169703%_ '()))
                        (cons (cons '%#ref (cons _%$tmp169703%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id169700%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl166899%_
                  (lambda (_%$klass169693%_
                           _%$method-table169694%_
                           _%methods-bind169695%_
                           _%slots-bind169696%_
                           _%specializer-impl169697%_)
                    (let ((__tmp170961
                           (cons '%#lambda
                                 (cons (cons _%$klass169693%_
                                             (cons _%$method-table169694%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind169696%_
                                                            _%methods-bind169695%_))
                                                         (cons _%specializer-impl169697%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp170961 _%stx166895%_))))
                 (_%generate-specializer-def166900%_
                  (lambda (_%id169689%_
                           _%specializer-id169690%_
                           _%specializer-impl169691%_)
                    (let ((__tmp170962
                           (cons '%#begin
                                 (cons _%stx166895%_
                                       (cons (let ((__tmp170963
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id169690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl169691%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp170963
                                                _%stx166895%_))
                                             (cons (let ((__tmp170964
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id169689%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id169690%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp170964
                                                      _%stx166895%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp170962 _%stx166895%_)))))
          (let* ((_%__stx169902169903%_ _%stx166895%_)
                 (_%g166903166923%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx169902169903%_)))))
            (let ((_%__kont169904169905%_
                   (lambda (_%L166967%_ _%L166968%_)
                     (let ((_%method-calls166987%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs166988%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty166989%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?166991%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls166987%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs166988%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L166967%_))
                             (let ()
                               (let* ((_%__stx169816169817%_ _%L166967%_)
                                      (_%g167379167397%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx169816169817%_)))))
                                 (let ((_%__kont169818169819%_
                                        (lambda (_%L167433%_
                                                 _%L167434%_
                                                 _%L167435%_)
                                          (for-each
                                           (lambda (_%g167451167453%_)
                                             (let ()
                                               (declare (not safe))
                                               (gxc#apply-collect-object-refs
                                                _%g167451167453%_
                                                'receiver:
                                                _%L167435%_
                                                'methods:
                                                _%method-calls166987%_
                                                'slots:
                                                _%slot-refs166988%_)))
                                           _%L167433%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_%no-specializer?166991%_))
                                              _%stx166895%_
                                              (let* ((_%specializer-id167462%_
                                                      (let* ((_%id167456%_
                                                              (let ((__tmp170965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L166968%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp170965 '"::specialize")))
                     (_%specializer-id167459%_
                      (let ((__tmp170966
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx166895%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id167456%_ __tmp170966))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id167459%_))
                _%specializer-id167459%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass167464%_
                                                      (let ((__tmp170967
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp170967)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table167466%_
                                                      (let ((__tmp170968
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp170968)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods167468%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls166987%_)))
                                                     (_%$methods167472%_
                                                      (map (lambda (_%id167470%_)
                                                             (let ((__tmp170969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id167470%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp170969)))
                   _%methods167468%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_167481%_
                                                      (for-each
                                                       (lambda (_%g167473167476%_
                                                                _%g167474167478%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls166987%_
                                                            _%g167473167476%_
                                                            _%g167474167478%_)))
                                                       _%methods167468%_
                                                       _%$methods167472%_))
                                                     (_%methods-bind167491%_
                                                      (map (lambda (_%g167483167486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g167484167488%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-method-bind166897%_
                        _%$klass167464%_
                        _%$method-table167466%_
                        _%g167483167486%_
                        _%g167484167488%_)))
                   _%methods167468%_
                   _%$methods167472%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots167493%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs166988%_)))
                                                     (_%$slots167497%_
                                                      (map (lambda (_%id167495%_)
                                                             (let ((__tmp170970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id167495%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp170970)))
                   _%slots167493%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_167506%_
                                                      (for-each
                                                       (lambda (_%g167498167501%_
                                                                _%g167499167503%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs166988%_
                                                            _%g167498167501%_
                                                            _%g167499167503%_)))
                                                       _%slots167493%_
                                                       _%$slots167497%_))
                                                     (_%slots-bind167515%_
                                                      (map (lambda (_%g167507167510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g167508167512%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-slot-bind166898%_
                        _%$klass167464%_
                        _%g167507167510%_
                        _%g167508167512%_)))
                   _%slots167493%_
                   _%$slots167497%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body167521%_
                                                      (map (lambda (_%g167516167518%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _%g167516167518%_
                        'receiver:
                        _%L167435%_
                        'klass:
                        _%$klass167464%_
                        'methods:
                        _%method-calls166987%_
                        'slots:
                        _%slot-refs166988%_)))
                   _%L167433%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl167523%_
                                                      (let ((__tmp170971
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L167435%_ _%L167434%_)
                                 _%specializer-body167521%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp170971 _%stx166895%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl167525%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%generate-specializer-impl166899%_
                                                         _%$klass167464%_
                                                         _%$method-table167466%_
                                                         _%methods-bind167491%_
                                                         _%slots-bind167515%_
                                                         _%specializer-impl167523%_))))
                                                (let ((__tmp170973
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L166968%_)))
                                                      (__tmp170972
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id167462%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp170973
                                                   '" => "
                                                   __tmp170972))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%generate-specializer-def166900%_
                                                   _%L166968%_
                                                   _%specializer-id167462%_
                                                   _%specializer-impl167525%_))))))
                                       (_%__kont169820169821%_
                                        (lambda () _%stx166895%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%__stx169816169817%_))
                                       (let ((_%e167386167409%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%__stx169816169817%_))))
                                         (let ((_%tl167384167414%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e167386167409%_)))
                                               (_%hd167385167412%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e167386167409%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl167384167414%_))
                                               (let ((_%e167389167417%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl167384167414%_))))
                                                 (let ((_%tl167387167422%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e167389167417%_)))
                                                       (_%hd167388167420%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e167389167417%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd167388167420%_))
                                                       (let ((_%e167392167425%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd167388167420%_))))
                 (let ((_%tl167390167430%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e167392167425%_)))
                       (_%hd167391167428%_
                        (let ()
                          (declare (not safe))
                          (##car _%e167392167425%_))))
                   (_%__kont169818169819%_
                    _%tl167387167422%_
                    _%tl167390167430%_
                    _%hd167391167428%_)))
               (_%__kont169820169821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont169820169821%_))))
                                       (_%__kont169820169821%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L166967%_))
                                 (let ()
                                   (let* ((_%g167532167551%_
                                           (lambda (_%g167533167548%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g167533167548%_))))
                                          (_%g167531167838%_
                                           (lambda (_%g167533167554%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%g167533167554%_))
                                                 (let ((_%e167537167556%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g167533167554%_))))
                                                   (let ((_%hd167536167559%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e167537167556%_)))
                                                         (_%tl167535167561%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e167537167556%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl167535167561%_))
                                                         (let ((_g170974_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl167535167561%_ '0))))
                   (begin
                     (let ((_g170975_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g170974_)
                                  (##vector-length _g170974_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g170975_ 2)))
                           (error "Context expects 2 values" _g170975_)))
                     (let ((_%target167538167564%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g170974_ 0)))
                           (_%tl167540167566%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g170974_ 1))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl167540167566%_))
                           (letrec ((_%loop167541167569%_
                                     (lambda (_%hd167539167572%_
                                              _%clause167545167574%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd167539167572%_))
                                           (let ((_%e167542167577%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd167539167572%_))))
                                             (let ((_%lp-hd167543167580%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e167542167577%_)))
                                                   (_%lp-tl167544167582%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e167542167577%_))))
                                               (let ((__tmp170976
                                                      (cons _%lp-hd167543167580%_
                                                            _%clause167545167574%_)))
                                                 (declare (not safe))
                                                 (_%loop167541167569%_
                                                  _%lp-tl167544167582%_
                                                  __tmp170976))))
                                           (let ((_%clause167546167585%_
                                                  (reverse _%clause167545167574%_)))
                                             ((lambda (_%L167588%_)
                                                (for-each
                                                 (lambda (_%clause167602%_)
                                                   (let* ((_%__stx169842169843%_
                                                           _%clause167602%_)
                                                          (_%g167605167620%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%__stx169842169843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%__kont169844169845%_
                                                            (lambda (_%L167648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%L167649%_
                             _%L167650%_)
                      (for-each
                       (lambda (_%g167665167667%_)
                         (let ()
                           (declare (not safe))
                           (gxc#apply-collect-object-refs
                            _%g167665167667%_
                            'receiver:
                            _%L167650%_
                            'methods:
                            _%method-calls166987%_
                            'slots:
                            _%slot-refs166988%_)))
                       _%L167648%_)))
                   (_%__kont169846169847%_ (lambda () '#!void)))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx169842169843%_))
                   (let ((_%e167612167632%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx169842169843%_))))
                     (let ((_%tl167610167637%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e167612167632%_)))
                           (_%hd167611167635%_
                            (let ()
                              (declare (not safe))
                              (##car _%e167612167632%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd167611167635%_))
                           (let ((_%e167615167640%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd167611167635%_))))
                             (let ((_%tl167613167645%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e167615167640%_)))
                                   (_%hd167614167643%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e167615167640%_))))
                               (_%__kont169844169845%_
                                _%tl167610167637%_
                                _%tl167613167645%_
                                _%hd167614167643%_)))
                           (_%__kont169846169847%_))))
                   (_%__kont169846169847%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp170977
                                                        (lambda (_%g167672167675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g167673167677%_)
                  (cons _%g167672167675%_ _%g167673167677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp170977
                                                    '()
                                                    _%L167588%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (_%no-specializer?166991%_))
                                                    _%stx166895%_
                                                    (let* ((_%specializer-id167686%_
                                                            (let* ((_%id167680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp170978
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166968%_))))
                              (declare (not safe))
                              (make-symbol__1 __tmp170978 '"::specialize")))
                           (_%specializer-id167683%_
                            (let ((__tmp170979
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-source _%stx166895%_))))
                              (declare (not safe))
                              (gx#core-quote-syntax__1
                               _%id167680%_
                               __tmp170979))))
                      (let ()
                        (declare (not safe))
                        (gx#core-bind-runtime!__0 _%specializer-id167683%_))
                      _%specializer-id167683%_))
                   (_%$klass167688%_
                    (let ((__tmp170980
                           (let () (declare (not safe)) (##gensym '__klass))))
                      (declare (not safe))
                      (make-symbol__0 __tmp170980)))
                   (_%$method-table167690%_
                    (let ((__tmp170981
                           (let ()
                             (declare (not safe))
                             (##gensym '__method-table))))
                      (declare (not safe))
                      (make-symbol__0 __tmp170981)))
                   (_%methods167692%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%method-calls166987%_)))
                   (_%$methods167696%_
                    (map (lambda (_%id167694%_)
                           (let ((__tmp170982 (gensym _%id167694%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp170982)))
                         _%methods167692%_))
                   (_%_167705%_
                    (for-each
                     (lambda (_%g167697167700%_ _%g167698167702%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%method-calls166987%_
                          _%g167697167700%_
                          _%g167698167702%_)))
                     _%methods167692%_
                     _%$methods167696%_))
                   (_%methods-bind167715%_
                    (map (lambda (_%g167707167710%_ _%g167708167712%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-method-bind166897%_
                              _%$klass167688%_
                              _%$method-table167690%_
                              _%g167707167710%_
                              _%g167708167712%_)))
                         _%methods167692%_
                         _%$methods167696%_))
                   (_%slots167717%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%slot-refs166988%_)))
                   (_%$slots167721%_
                    (map (lambda (_%id167719%_)
                           (let ((__tmp170983 (gensym _%id167719%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp170983)))
                         _%slots167717%_))
                   (_%_167730%_
                    (for-each
                     (lambda (_%g167722167725%_ _%g167723167727%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%slot-refs166988%_
                          _%g167722167725%_
                          _%g167723167727%_)))
                     _%slots167717%_
                     _%$slots167721%_))
                   (_%slots-bind167739%_
                    (map (lambda (_%g167731167734%_ _%g167732167736%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-slot-bind166898%_
                              _%$klass167688%_
                              _%g167731167734%_
                              _%g167732167736%_)))
                         _%slots167717%_
                         _%$slots167721%_))
                   (_%specializer-clauses167831%_
                    (map (lambda (_%clause167741%_)
                           (let* ((_%__stx169862169863%_ _%clause167741%_)
                                  (_%g167744167759%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx169862169863%_)))))
                             (let ((_%__kont169864169865%_
                                    (lambda (_%L167787%_
                                             _%L167788%_
                                             _%L167789%_)
                                      (let ((_%body167819%_
                                             (map (lambda (_%g167814167816%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-subst-object-refs
                                                       _%g167814167816%_
                                                       'receiver:
                                                       _%L167789%_
                                                       'klass:
                                                       _%$klass167688%_
                                                       'methods:
                                                       _%method-calls166987%_
                                                       'slots:
                                                       _%slot-refs166988%_)))
                                                  _%L167787%_)))
                                        (cons (cons _%L167789%_ _%L167788%_)
                                              _%body167819%_))))
                                   (_%__kont169866169867%_
                                    (lambda () _%clause167741%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%__stx169862169863%_))
                                   (let ((_%e167751167771%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%__stx169862169863%_))))
                                     (let ((_%tl167749167776%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e167751167771%_)))
                                           (_%hd167750167774%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e167751167771%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd167750167774%_))
                                           (let ((_%e167754167779%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd167750167774%_))))
                                             (let ((_%tl167752167784%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e167754167779%_)))
                                                   (_%hd167753167782%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e167754167779%_))))
                                               (_%__kont169864169865%_
                                                _%tl167749167776%_
                                                _%tl167752167784%_
                                                _%hd167753167782%_)))
                                           (_%__kont169866169867%_))))
                                   (_%__kont169866169867%_)))))
                         (let ((__tmp170984
                                (lambda (_%g167823167826%_ _%g167824167828%_)
                                  (cons _%g167823167826%_ _%g167824167828%_))))
                           (declare (not safe))
                           (__foldr1 __tmp170984 '() _%L167588%_))))
                   (_%specializer-impl167833%_
                    (let ((__tmp170985
                           (cons '%#case-lambda
                                 _%specializer-clauses167831%_)))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp170985 _%stx166895%_)))
                   (_%specializer-impl167835%_
                    (let ()
                      (declare (not safe))
                      (_%generate-specializer-impl166899%_
                       _%$klass167688%_
                       _%$method-table167690%_
                       _%methods-bind167715%_
                       _%slots-bind167739%_
                       _%specializer-impl167833%_))))
              (let ((__tmp170987
                     (let () (declare (not safe)) (gx#stx-e _%L166968%_)))
                    (__tmp170986
                     (let ()
                       (declare (not safe))
                       (gx#stx-e _%specializer-id167686%_))))
                (declare (not safe))
                (gxc#verbose
                 '"generate method specializer "
                 __tmp170987
                 '" => "
                 __tmp170986))
              (let ()
                (declare (not safe))
                (_%generate-specializer-def166900%_
                 _%L166968%_
                 _%specializer-id167686%_
                 _%specializer-impl167835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%clause167546167585%_))))))
                             (let ()
                               (declare (not safe))
                               (_%loop167541167569%_
                                _%target167538167564%_
                                '())))
                           (let ()
                             (declare (not safe))
                             (_%g167532167551%_ _%g167533167554%_))))))
                 (let ()
                   (declare (not safe))
                   (_%g167532167551%_ _%g167533167554%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g167532167551%_
                                                    _%g167533167554%_))))))
                                     (declare (not safe))
                                     (_%g167531167838%_ _%L166967%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L166967%_))
                                     (let ()
                                       (let* ((_%g167842167872%_
                                               (lambda (_%g167843167869%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g167843167869%_))))
                                              (_%g167841168481%_
                                               (lambda (_%g167843167875%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%g167843167875%_))
                                                     (let ((_%e167849167877%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%g167843167875%_))))
                                                       (let ((_%hd167848167880%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e167849167877%_)))
                     (_%tl167847167882%_
                      (let () (declare (not safe)) (##cdr _%e167849167877%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl167847167882%_))
                     (let ((_%e167852167885%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167847167882%_))))
                       (let ((_%hd167851167888%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167852167885%_)))
                             (_%tl167850167890%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167852167885%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd167851167888%_))
                             (let ((_%e167855167893%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd167851167888%_))))
                               (let ((_%hd167854167896%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e167855167893%_)))
                                     (_%tl167853167898%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e167855167893%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd167854167896%_))
                                     (let ((_%e167858167901%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd167854167896%_))))
                                       (let ((_%hd167857167904%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e167858167901%_)))
                                             (_%tl167856167906%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e167858167901%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd167857167904%_))
                                             (let ((_%e167861167909%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd167857167904%_))))
                                               (let ((_%hd167860167912%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e167861167909%_)))
                                                     (_%tl167859167914%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e167861167909%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl167859167914%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl167856167906%_))
                                                         (let ((_%e167864167917%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl167856167906%_))))
                   (let ((_%hd167863167920%_
                          (let ()
                            (declare (not safe))
                            (##car _%e167864167917%_)))
                         (_%tl167862167922%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e167864167917%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl167862167922%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167853167898%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl167850167890%_))
                                 (let ((_%e167867167925%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl167850167890%_))))
                                   (let ((_%hd167866167928%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e167867167925%_)))
                                         (_%tl167865167930%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e167867167925%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl167865167930%_))
                                         ((lambda (_%L167933%_
                                                   _%L167934%_
                                                   _%L167935%_)
                                            (let* ((_%g167959167977%_
                                                    (lambda (_%g167960167974%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g167960167974%_))))
                                                   (_%g167958168028%_
                                                    (lambda (_%g167960167980%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g167960167980%_))
                                                          (let ((_%e167966167982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g167960167980%_))))
                    (let ((_%hd167965167985%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167966167982%_)))
                          (_%tl167964167987%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167966167982%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167964167987%_))
                          (let ((_%e167969167990%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167964167987%_))))
                            (let ((_%hd167968167993%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167969167990%_)))
                                  (_%tl167967167995%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167969167990%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd167968167993%_))
                                  (let ((_%e167972167998%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd167968167993%_))))
                                    (let ((_%hd167971168001%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e167972167998%_)))
                                          (_%tl167970168003%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e167972167998%_))))
                                      ((lambda (_%L168006%_
                                                _%L168007%_
                                                _%L168008%_)
                                         (for-each
                                          (lambda (_%g168023168025%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs
                                               _%g168023168025%_
                                               'receiver:
                                               _%L168008%_
                                               'methods:
                                               _%method-calls166987%_
                                               'slots:
                                               _%slot-refs166988%_)))
                                          _%L168006%_))
                                       _%tl167967167995%_
                                       _%tl167970168003%_
                                       _%hd167971168001%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g167959167977%_ _%g167960167980%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g167959167977%_ _%g167960167980%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g167959167977%_ _%g167960167980%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g167958168028%_ _%L167934%_))
                                            (let* ((_%g168031168050%_
                                                    (lambda (_%g168032168047%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g168032168047%_))))
                                                   (_%g168030168169%_
                                                    (lambda (_%g168032168053%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g168032168053%_))
                                                          (let ((_%e168036168055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g168032168053%_))))
                    (let ((_%hd168035168058%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168036168055%_)))
                          (_%tl168034168060%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168036168055%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl168034168060%_))
                          (let ((_g170988_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl168034168060%_
                                    '0))))
                            (begin
                              (let ((_g170989_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g170988_)
                                           (##vector-length _g170988_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g170989_ 2)))
                                    (error "Context expects 2 values"
                                           _g170989_)))
                              (let ((_%target168037168063%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g170988_ 0)))
                                    (_%tl168039168065%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g170988_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl168039168065%_))
                                    (letrec ((_%loop168040168068%_
                                              (lambda (_%hd168038168071%_
                                                       _%clause168044168073%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd168038168071%_))
                                                    (let ((_%e168041168076%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd168038168071%_))))
                                                      (let ((_%lp-hd168042168079%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e168041168076%_)))
                    (_%lp-tl168043168081%_
                     (let () (declare (not safe)) (##cdr _%e168041168076%_))))
                (let ((__tmp170990
                       (cons _%lp-hd168042168079%_ _%clause168044168073%_)))
                  (declare (not safe))
                  (_%loop168040168068%_ _%lp-tl168043168081%_ __tmp170990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%clause168045168084%_
                                                           (reverse _%clause168044168073%_)))
                                                      ((lambda (_%L168087%_)
                                                         (for-each
                                                          (lambda (_%clause168100%_)
                                                            (let* ((_%g168102168117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g168103168114%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g168103168114%_))))
                           (_%g168101168159%_
                            (lambda (_%g168103168120%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g168103168120%_))
                                  (let ((_%e168109168122%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g168103168120%_))))
                                    (let ((_%hd168108168125%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168109168122%_)))
                                          (_%tl168107168127%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168109168122%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd168108168125%_))
                                          (let ((_%e168112168130%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd168108168125%_))))
                                            (let ((_%hd168111168133%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168112168130%_)))
                                                  (_%tl168110168135%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168112168130%_))))
                                              ((lambda (_%L168138%_
                                                        _%L168139%_
                                                        _%L168140%_)
                                                 (for-each
                                                  (lambda (_%g168154168156%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs
                                                       _%g168154168156%_
                                                       'receiver:
                                                       _%L168140%_
                                                       'methods:
                                                       _%method-calls166987%_
                                                       'slots:
                                                       _%slot-refs166988%_)))
                                                  _%L168138%_))
                                               _%tl168107168127%_
                                               _%tl168110168135%_
                                               _%hd168111168133%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168102168117%_
                                             _%g168103168120%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168102168117%_ _%g168103168120%_))))))
                      (declare (not safe))
                      (_%g168101168159%_ _%clause168100%_)))
                  (let ((__tmp170991
                         (lambda (_%g168161168164%_ _%g168162168166%_)
                           (cons _%g168161168164%_ _%g168162168166%_))))
                    (declare (not safe))
                    (__foldr1 __tmp170991 '() _%L168087%_))))
               _%clause168045168084%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%loop168040168068%_
                                         _%target168037168063%_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168031168050%_
                                       _%g168032168053%_))))))
                          (let ()
                            (declare (not safe))
                            (_%g168031168050%_ _%g168032168053%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168031168050%_ _%g168032168053%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g168030168169%_ _%L167933%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (_%no-specializer?166991%_))
                                                _%stx166895%_
                                                (let* ((_%specializer-id168178%_
                                                        (let* ((_%id168172%_
                                                                (let ((__tmp170992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%L166968%_))))
                          (declare (not safe))
                          (make-symbol__1 __tmp170992 '"::specialize")))
                       (_%specializer-id168175%_
                        (let ((__tmp170993
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx166895%_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _%id168172%_ __tmp170993))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _%specializer-id168175%_))
                  _%specializer-id168175%_))
               (_%$klass168180%_
                (let ((__tmp170994
                       (let () (declare (not safe)) (##gensym '__klass))))
                  (declare (not safe))
                  (make-symbol__0 __tmp170994)))
               (_%$method-table168182%_
                (let ((__tmp170995
                       (let ()
                         (declare (not safe))
                         (##gensym '__method-table))))
                  (declare (not safe))
                  (make-symbol__0 __tmp170995)))
               (_%methods168184%_
                (let ()
                  (declare (not safe))
                  (hash-keys _%method-calls166987%_)))
               (_%$methods168188%_
                (map (lambda (_%id168186%_)
                       (let ((__tmp170996 (gensym _%id168186%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp170996)))
                     _%methods168184%_))
               (_%_168197%_
                (for-each
                 (lambda (_%g168189168192%_ _%g168190168194%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%method-calls166987%_
                      _%g168189168192%_
                      _%g168190168194%_)))
                 _%methods168184%_
                 _%$methods168188%_))
               (_%methods-bind168207%_
                (map (lambda (_%g168199168202%_ _%g168200168204%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-method-bind166897%_
                          _%$klass168180%_
                          _%$method-table168182%_
                          _%g168199168202%_
                          _%g168200168204%_)))
                     _%methods168184%_
                     _%$methods168188%_))
               (_%slots168209%_
                (let () (declare (not safe)) (hash-keys _%slot-refs166988%_)))
               (_%$slots168213%_
                (map (lambda (_%id168211%_)
                       (let ((__tmp170997 (gensym _%id168211%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp170997)))
                     _%slots168209%_))
               (_%_168222%_
                (for-each
                 (lambda (_%g168214168217%_ _%g168215168219%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%slot-refs166988%_
                      _%g168214168217%_
                      _%g168215168219%_)))
                 _%slots168209%_
                 _%$slots168213%_))
               (_%slots-bind168231%_
                (map (lambda (_%g168223168226%_ _%g168224168228%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-slot-bind166898%_
                          _%$klass168180%_
                          _%g168223168226%_
                          _%g168224168228%_)))
                     _%slots168209%_
                     _%$slots168213%_))
               (_%specializer-lambda-expr168317%_
                (let* ((_%g168233168251%_
                        (lambda (_%g168234168248%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g168234168248%_))))
                       (_%g168232168314%_
                        (lambda (_%g168234168254%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g168234168254%_))
                              (let ((_%e168240168256%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g168234168254%_))))
                                (let ((_%hd168239168259%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168240168256%_)))
                                      (_%tl168238168261%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168240168256%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168238168261%_))
                                      (let ((_%e168243168264%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168238168261%_))))
                                        (let ((_%hd168242168267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168243168264%_)))
                                              (_%tl168241168269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168243168264%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd168242168267%_))
                                              (let ((_%e168246168272%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd168242168267%_))))
                                                (let ((_%hd168245168275%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168246168272%_)))
                                                      (_%tl168244168277%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168246168272%_))))
                                                  ((lambda (_%L168280%_
                                                            _%L168281%_
                                                            _%L168282%_)
                                                     (let* ((_%body168312%_
                                                             (map (lambda (_%g168307168309%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _%g168307168309%_
                               'receiver:
                               _%L168282%_
                               'klass:
                               _%$klass168180%_
                               'methods:
                               _%method-calls166987%_
                               'slots:
                               _%slot-refs166988%_)))
                          _%L168280%_))
                    (__tmp170998
                     (cons '%#lambda
                           (cons (cons _%L168282%_ _%L168281%_)
                                 _%body168312%_))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp170998 _%L167934%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl168241168269%_
                                                   _%tl168244168277%_
                                                   _%hd168245168275%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168233168251%_
                                                 _%g168234168254%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168233168251%_
                                         _%g168234168254%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168233168251%_ _%g168234168254%_))))))
                  (declare (not safe))
                  (_%g168232168314%_ _%L167934%_)))
               (_%specializer-case-lambda-expr168474%_
                (let* ((_%g168319168338%_
                        (lambda (_%g168320168335%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g168320168335%_))))
                       (_%g168318168471%_
                        (lambda (_%g168320168341%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g168320168341%_))
                              (let ((_%e168324168343%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g168320168341%_))))
                                (let ((_%hd168323168346%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168324168343%_)))
                                      (_%tl168322168348%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168324168343%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl168322168348%_))
                                      (let ((_g170999_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl168322168348%_
                                                '0))))
                                        (begin
                                          (let ((_g171000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g170999_)
                                                       (##vector-length
                                                        _g170999_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g171000_ 2)))
                                                (error "Context expects 2 values"
                                                       _g171000_)))
                                          (let ((_%target168325168351%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g170999_ 0)))
                                                (_%tl168327168353%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g170999_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl168327168353%_))
                                                (letrec ((_%loop168328168356%_
                                                          (lambda (_%hd168326168359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause168332168361%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168326168359%_))
                        (let ((_%e168329168364%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168326168359%_))))
                          (let ((_%lp-hd168330168367%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168329168364%_)))
                                (_%lp-tl168331168369%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168329168364%_))))
                            (let ((__tmp171001
                                   (cons _%lp-hd168330168367%_
                                         _%clause168332168361%_)))
                              (declare (not safe))
                              (_%loop168328168356%_
                               _%lp-tl168331168369%_
                               __tmp171001))))
                        (let ((_%clause168333168372%_
                               (reverse _%clause168332168361%_)))
                          ((lambda (_%L168375%_)
                             (let* ((_%clauses168469%_
                                     (map (lambda (_%clause168389%_)
                                            (let* ((_%__stx169882169883%_
                                                    _%clause168389%_)
                                                   (_%g168392168407%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx169882169883%_)))))
                                              (let ((_%__kont169884169885%_
                                                     (lambda (_%L168435%_
                                                              _%L168436%_
                                                              _%L168437%_)
                                                       (let ((_%body168457%_
                                                              (map (lambda (_%g168452168454%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _%g168452168454%_
                                'receiver:
                                _%L168437%_
                                'klass:
                                _%$klass168180%_
                                'methods:
                                _%method-calls166987%_
                                'slots:
                                _%slot-refs166988%_)))
                           _%L168435%_)))
                 (cons (cons _%L168437%_ _%L168436%_) _%body168457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont169886169887%_
                                                     (lambda ()
                                                       _%clause168389%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%__stx169882169883%_))
                                                    (let ((_%e168399168419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%__stx169882169883%_))))
                                                      (let ((_%tl168397168424%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e168399168419%_)))
                    (_%hd168398168422%_
                     (let () (declare (not safe)) (##car _%e168399168419%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd168398168422%_))
                    (let ((_%e168402168427%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd168398168422%_))))
                      (let ((_%tl168400168432%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168402168427%_)))
                            (_%hd168401168430%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168402168427%_))))
                        (_%__kont169884169885%_
                         _%tl168397168424%_
                         _%tl168400168432%_
                         _%hd168401168430%_)))
                    (_%__kont169886169887%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont169886169887%_)))))
                                          (let ((__tmp171002
                                                 (lambda (_%g168461168464%_
                                                          _%g168462168466%_)
                                                   (cons _%g168461168464%_
                                                         _%g168462168466%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp171002
                                             '()
                                             _%L168375%_))))
                                    (__tmp171003
                                     (cons '%#case-lambda _%clauses168469%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp171003
                                _%L167933%_)))
                           _%clause168333168372%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop168328168356%_
                                                     _%target168325168351%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168319168338%_
                                                   _%g168320168341%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168319168338%_
                                         _%g168320168341%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168319168338%_ _%g168320168341%_))))))
                  (declare (not safe))
                  (_%g168318168471%_ _%L167933%_)))
               (_%specializer-impl168476%_
                (let ((__tmp171004
                       (cons '%#let-values
                             (cons (cons (cons (cons _%L167935%_ '())
                                               (cons _%specializer-lambda-expr168317%_
                                                     '()))
                                         '())
                                   (cons _%specializer-case-lambda-expr168474%_
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp171004 _%stx166895%_)))
               (_%specializer-impl168478%_
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-impl166899%_
                   _%$klass168180%_
                   _%$method-table168182%_
                   _%methods-bind168207%_
                   _%slots-bind168231%_
                   _%specializer-impl168476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp171006
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%L166968%_)))
                                                        (__tmp171005
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%specializer-id168178%_))))
                                                    (declare (not safe))
                                                    (gxc#verbose
                                                     '"generate method specializer "
                                                     __tmp171006
                                                     '" => "
                                                     __tmp171005))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%generate-specializer-def166900%_
                                                     _%L166968%_
                                                     _%specializer-id168178%_
                                                     _%specializer-impl168478%_)))))
                                          _%hd167866167928%_
                                          _%hd167863167920%_
                                          _%hd167860167912%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g167842167872%_
                                            _%g167843167875%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g167842167872%_ _%g167843167875%_)))
                             (let ()
                               (declare (not safe))
                               (_%g167842167872%_ _%g167843167875%_)))
                         (let ()
                           (declare (not safe))
                           (_%g167842167872%_ _%g167843167875%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g167842167872%_ _%g167843167875%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g167842167872%_
                                                        _%g167843167875%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g167842167872%_
                                                _%g167843167875%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g167842167872%_
                                        _%g167843167875%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g167842167872%_ _%g167843167875%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g167842167872%_ _%g167843167875%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g167842167872%_
                                                        _%g167843167875%_))))))
                                         (declare (not safe))
                                         (_%g167841168481%_ _%L166967%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L166967%_))
                                         (let ()
                                           (let* ((_%g168485168538%_
                                                   (lambda (_%g168486168535%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g168486168535%_))))
                                                  (_%g168484169681%_
                                                   (lambda (_%g168486168541%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%g168486168541%_))
                                                         (let ((_%e168494168543%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%g168486168541%_))))
                   (let ((_%hd168493168546%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168494168543%_)))
                         (_%tl168492168548%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168494168543%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd168493168546%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#let-values _%hd168493168546%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl168492168548%_))
                                 (let ((_%e168497168551%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl168492168548%_))))
                                   (let ((_%hd168496168554%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e168497168551%_)))
                                         (_%tl168495168556%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e168497168551%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd168496168554%_))
                                         (let ((_%e168500168559%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd168496168554%_))))
                                           (let ((_%hd168499168562%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168500168559%_)))
                                                 (_%tl168498168564%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168500168559%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd168499168562%_))
                                                 (let ((_%e168503168567%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd168499168562%_))))
                                                   (let ((_%hd168502168570%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168503168567%_)))
                                                         (_%tl168501168572%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168503168567%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd168502168570%_))
                                                         (let ((_%e168506168575%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd168502168570%_))))
                   (let ((_%hd168505168578%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168506168575%_)))
                         (_%tl168504168580%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168506168575%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl168504168580%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl168501168572%_))
                             (let ((_%e168509168583%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl168501168572%_))))
                               (let ((_%hd168508168586%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e168509168583%_)))
                                     (_%tl168507168588%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e168509168583%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd168508168586%_))
                                     (let ((_%e168512168591%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd168508168586%_))))
                                       (let ((_%hd168511168594%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168512168591%_)))
                                             (_%tl168510168596%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168512168591%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%hd168511168594%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#let-values
                                                    _%hd168511168594%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl168510168596%_))
                                                     (let ((_%e168515168599%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl168510168596%_))))
                                                       (let ((_%hd168514168602%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e168515168599%_)))
                     (_%tl168513168604%_
                      (let () (declare (not safe)) (##cdr _%e168515168599%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd168514168602%_))
                     (let ((_%e168518168607%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%hd168514168602%_))))
                       (let ((_%hd168517168610%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168518168607%_)))
                             (_%tl168516168612%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168518168607%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd168517168610%_))
                             (let ((_%e168521168615%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd168517168610%_))))
                               (let ((_%hd168520168618%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e168521168615%_)))
                                     (_%tl168519168620%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e168521168615%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd168520168618%_))
                                     (let ((_%e168524168623%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd168520168618%_))))
                                       (let ((_%hd168523168626%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168524168623%_)))
                                             (_%tl168522168628%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168524168623%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl168522168628%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl168519168620%_))
                                                 (let ((_%e168527168631%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl168519168620%_))))
                                                   (let ((_%hd168526168634%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168527168631%_)))
                                                         (_%tl168525168636%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168527168631%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl168525168636%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl168516168612%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl168513168604%_))
                         (let ((_%e168530168639%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl168513168604%_))))
                           (let ((_%hd168529168642%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e168530168639%_)))
                                 (_%tl168528168644%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e168530168639%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl168528168644%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl168507168588%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl168498168564%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl168495168556%_))
                                             (let ((_%e168533168647%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl168495168556%_))))
                                               (let ((_%hd168532168650%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e168533168647%_)))
                                                     (_%tl168531168652%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e168533168647%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl168531168652%_))
                                                     ((lambda (_%L168655%_
                                                               _%L168656%_
                                                               _%L168657%_
                                                               _%L168658%_
                                                               _%L168659%_)
                                                        (let* ((_%g168699168761%_
                                                                (lambda (_%g168700168758%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g168700168758%_))))
                       (_%g168698169678%_
                        (lambda (_%g168700168764%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g168700168764%_))
                              (let ((_%e168708168766%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g168700168764%_))))
                                (let ((_%hd168707168769%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168708168766%_)))
                                      (_%tl168706168771%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168708168766%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd168707168769%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#lambda
                                             _%hd168707168769%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl168706168771%_))
                                              (let ((_%e168711168774%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl168706168771%_))))
                                                (let ((_%hd168710168777%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168711168774%_)))
                                                      (_%tl168709168779%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168711168774%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl168709168779%_))
                                                      (let ((_%e168714168782%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl168709168779%_))))
                (let ((_%hd168713168785%_
                       (let () (declare (not safe)) (##car _%e168714168782%_)))
                      (_%tl168712168787%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e168714168782%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd168713168785%_))
                      (let ((_%e168717168790%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd168713168785%_))))
                        (let ((_%hd168716168793%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168717168790%_)))
                              (_%tl168715168795%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168717168790%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd168716168793%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#call _%hd168716168793%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168715168795%_))
                                      (let ((_%e168720168798%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168715168795%_))))
                                        (let ((_%hd168719168801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168720168798%_)))
                                              (_%tl168718168803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168720168798%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd168719168801%_))
                                              (let ((_%e168723168806%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd168719168801%_))))
                                                (let ((_%hd168722168809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168723168806%_)))
                                                      (_%tl168721168811%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168723168806%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd168722168809%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd168722168809%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl168721168811%_))
                      (let ((_%e168726168814%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl168721168811%_))))
                        (let ((_%hd168725168817%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168726168814%_)))
                              (_%tl168724168819%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168726168814%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl168724168819%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl168718168803%_))
                                  (let ((_%e168729168822%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl168718168803%_))))
                                    (let ((_%hd168728168825%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168729168822%_)))
                                          (_%tl168727168827%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168729168822%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd168728168825%_))
                                          (let ((_%e168732168830%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd168728168825%_))))
                                            (let ((_%hd168731168833%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168732168830%_)))
                                                  (_%tl168730168835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168732168830%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd168731168833%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#ref
                                                         _%hd168731168833%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl168730168835%_))
                                                          (let ((_%e168735168838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl168730168835%_))))
                    (let ((_%hd168734168841%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168735168838%_)))
                          (_%tl168733168843%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168735168838%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168733168843%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl168727168827%_))
                              (let ((_%e168738168846%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl168727168827%_))))
                                (let ((_%hd168737168849%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168738168846%_)))
                                      (_%tl168736168851%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168738168846%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd168737168849%_))
                                      (let ((_%e168741168854%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd168737168849%_))))
                                        (let ((_%hd168740168857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168741168854%_)))
                                              (_%tl168739168859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168741168854%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%hd168740168857%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%hd168740168857%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl168739168859%_))
                                                      (let ((_%e168744168862%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl168739168859%_))))
                (let ((_%hd168743168865%_
                       (let () (declare (not safe)) (##car _%e168744168862%_)))
                      (_%tl168742168867%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e168744168862%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl168742168867%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl168736168851%_))
                          (if (let ((__tmp171007
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-length _%tl168736168851%_))))
                                (declare (not safe))
                                (##fx>= __tmp171007 '1))
                              (let ((_g171008_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl168736168851%_
                                        '1))))
                                (begin
                                  (let ((_g171009_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g171008_)
                                               (##vector-length _g171008_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g171009_ 2)))
                                        (error "Context expects 2 values"
                                               _g171009_)))
                                  (let ((_%target168745168870%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g171008_ 0)))
                                        (_%tl168747168872%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g171008_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168747168872%_))
                                        (let ((_%e168756168875%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168747168872%_))))
                                          (let ((_%hd168755168878%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168756168875%_)))
                                                (_%tl168754168880%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168756168875%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl168754168880%_))
                                                (letrec ((_%loop168748168883%_
                                                          (lambda (_%hd168746168886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%kw-ref168752168888%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168746168886%_))
                        (let ((_%e168749168891%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168746168886%_))))
                          (let ((_%lp-hd168750168894%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168749168891%_)))
                                (_%lp-tl168751168896%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168749168891%_))))
                            (let ((__tmp171010
                                   (cons _%lp-hd168750168894%_
                                         _%kw-ref168752168888%_)))
                              (declare (not safe))
                              (_%loop168748168883%_
                               _%lp-tl168751168896%_
                               __tmp171010))))
                        (let ((_%kw-ref168753168899%_
                               (reverse _%kw-ref168752168888%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl168712168787%_))
                              ((lambda (_%L168902%_
                                        _%L168903%_
                                        _%L168904%_
                                        _%L168905%_
                                        _%L168906%_)
                                 (let* ((_%kw-count168957%_
                                         (length (let ((__tmp171011
                                                        (lambda (_%g168949168952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g168950168954%_)
                  (cons _%g168949168952%_ _%g168950168954%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp171011
                                                    '()
                                                    _%L168903%_))))
                                        (_%self-index168959%_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _%kw-count168957%_ '1))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gxc#lambda-expr? _%L168657%_))
                                       (let ()
                                         (let* ((_%g168963168977%_
                                                 (lambda (_%g168964168974%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g168964168974%_))))
                                                (_%g168962169094%_
                                                 (lambda (_%g168964168980%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g168964168980%_))
                                                       (let ((_%e168969168982%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g168964168980%_))))
                 (let ((_%hd168968168985%_
                        (let ()
                          (declare (not safe))
                          (##car _%e168969168982%_)))
                       (_%tl168967168987%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e168969168982%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl168967168987%_))
                       (let ((_%e168972168990%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl168967168987%_))))
                         (let ((_%hd168971168993%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e168972168990%_)))
                               (_%tl168970168995%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e168972168990%_))))
                           ((lambda (_%L168998%_ _%L168999%_)
                              (let ((_%self169016%_
                                     (list-ref
                                      _%L168999%_
                                      _%self-index168959%_)))
                                (for-each
                                 (lambda (_%g169017169019%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#apply-collect-object-refs
                                      _%g169017169019%_
                                      'receiver:
                                      _%self169016%_
                                      'methods:
                                      _%method-calls166987%_
                                      'slots:
                                      _%slot-refs166988%_)))
                                 _%L168998%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%no-specializer?166991%_))
                                    _%stx166895%_
                                    (let* ((_%specializer-id169028%_
                                            (let* ((_%id169022%_
                                                    (let ((__tmp171012
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L166968%_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp171012
                                                       '"::specialize")))
                                                   (_%specializer-id169025%_
                                                    (let ((__tmp171013
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _%stx166895%_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _%id169022%_
                                                       __tmp171013))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _%specializer-id169025%_))
                                              _%specializer-id169025%_))
                                           (_%$klass169030%_
                                            (let ((__tmp171014
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym '__klass))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp171014)))
                                           (_%$method-table169032%_
                                            (let ((__tmp171015
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym
                                                      '__method-table))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp171015)))
                                           (_%methods169034%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys
                                               _%method-calls166987%_)))
                                           (_%$methods169038%_
                                            (map (lambda (_%id169036%_)
                                                   (let ((__tmp171016
                                                          (gensym _%id169036%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp171016)))
                                                 _%methods169034%_))
                                           (_%_169047%_
                                            (for-each
                                             (lambda (_%g169039169042%_
                                                      _%g169040169044%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%method-calls166987%_
                                                  _%g169039169042%_
                                                  _%g169040169044%_)))
                                             _%methods169034%_
                                             _%$methods169038%_))
                                           (_%methods-bind169057%_
                                            (map (lambda (_%g169049169052%_
                                                          _%g169050169054%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-method-bind166897%_
                                                      _%$klass169030%_
                                                      _%$method-table169032%_
                                                      _%g169049169052%_
                                                      _%g169050169054%_)))
                                                 _%methods169034%_
                                                 _%$methods169038%_))
                                           (_%slots169059%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys _%slot-refs166988%_)))
                                           (_%$slots169063%_
                                            (map (lambda (_%id169061%_)
                                                   (let ((__tmp171017
                                                          (gensym _%id169061%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp171017)))
                                                 _%slots169059%_))
                                           (_%_169072%_
                                            (for-each
                                             (lambda (_%g169064169067%_
                                                      _%g169065169069%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%slot-refs166988%_
                                                  _%g169064169067%_
                                                  _%g169065169069%_)))
                                             _%slots169059%_
                                             _%$slots169063%_))
                                           (_%slots-bind169081%_
                                            (map (lambda (_%g169073169076%_
                                                          _%g169074169078%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-slot-bind166898%_
                                                      _%$klass169030%_
                                                      _%g169073169076%_
                                                      _%g169074169078%_)))
                                                 _%slots169059%_
                                                 _%$slots169063%_))
                                           (_%specializer-impl169089%_
                                            (let* ((_%specializer-body169087%_
                                                    (map (lambda (_%g169082169084%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _%g169082169084%_
                                                              'receiver:
                                                              _%self169016%_
                                                              'klass:
                                                              _%$klass169030%_
                                                              'methods:
                                                              _%method-calls166987%_
                                                              'slots:
                                                              _%slot-refs166988%_)))
                                                         _%L168998%_))
                                                   (__tmp171018
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L168659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#let-values
                                                (cons (cons (cons (cons _%L168658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ((__tmp171019
                                       (cons '%#lambda
                                             (cons _%L168999%_
                                                   _%specializer-body169087%_))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp171019
                                   _%L168657%_))
                                '()))
                    '())
              (cons _%L168656%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons _%L168655%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp171018
                                               _%stx166895%_)))
                                           (_%specializer-impl169091%_
                                            (let ()
                                              (declare (not safe))
                                              (_%generate-specializer-impl166899%_
                                               _%$klass169030%_
                                               _%$method-table169032%_
                                               _%methods-bind169057%_
                                               _%slots-bind169081%_
                                               _%specializer-impl169089%_))))
                                      (let ((__tmp171021
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%L166968%_)))
                                            (__tmp171020
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%specializer-id169028%_))))
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"generate method specializer "
                                         __tmp171021
                                         '" => "
                                         __tmp171020))
                                      (let ()
                                        (declare (not safe))
                                        (_%generate-specializer-def166900%_
                                         _%L166968%_
                                         _%specializer-id169028%_
                                         _%specializer-impl169091%_))))))
                            _%tl168970168995%_
                            _%hd168971168993%_)))
                       (let ()
                         (declare (not safe))
                         (_%g168963168977%_ _%g168964168980%_)))))
               (let ()
                 (declare (not safe))
                 (_%g168963168977%_ _%g168964168980%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%g168962169094%_ _%L168657%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#opt-lambda-expr?
                                              _%L168657%_))
                                           (let ()
                                             (let* ((_%g169098169128%_
                                                     (lambda (_%g169099169125%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g169099169125%_))))
                                                    (_%g169097169674%_
                                                     (lambda (_%g169099169131%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%g169099169131%_))
                                                           (let ((_%e169105169133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g169099169131%_))))
                     (let ((_%hd169104169136%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169105169133%_)))
                           (_%tl169103169138%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169105169133%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl169103169138%_))
                           (let ((_%e169108169141%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl169103169138%_))))
                             (let ((_%hd169107169144%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169108169141%_)))
                                   (_%tl169106169146%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169108169141%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169107169144%_))
                                   (let ((_%e169111169149%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169107169144%_))))
                                     (let ((_%hd169110169152%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169111169149%_)))
                                           (_%tl169109169154%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169111169149%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169110169152%_))
                                           (let ((_%e169114169157%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169110169152%_))))
                                             (let ((_%hd169113169160%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169114169157%_)))
                                                   (_%tl169112169162%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169114169157%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd169113169160%_))
                                                   (let ((_%e169117169165%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd169113169160%_))))
                                                     (let ((_%hd169116169168%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169117169165%_)))
                                                           (_%tl169115169170%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169117169165%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl169115169170%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl169112169162%_))
                       (let ((_%e169120169173%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169112169162%_))))
                         (let ((_%hd169119169176%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169120169173%_)))
                               (_%tl169118169178%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169120169173%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169118169178%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl169109169154%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl169106169146%_))
                                       (let ((_%e169123169181%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl169106169146%_))))
                                         (let ((_%hd169122169184%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169123169181%_)))
                                               (_%tl169121169186%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169123169181%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl169121169186%_))
                                               ((lambda (_%L169189%_
                                                         _%L169190%_
                                                         _%L169191%_)
                                                  (let* ((_%g169215169229%_
                                                          (lambda (_%g169216169226%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g169216169226%_))))
                                                         (_%g169214169270%_
                                                          (lambda (_%g169216169232%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g169216169232%_))
                        (let ((_%e169221169234%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169216169232%_))))
                          (let ((_%hd169220169237%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169221169234%_)))
                                (_%tl169219169239%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169221169234%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169219169239%_))
                                (let ((_%e169224169242%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169219169239%_))))
                                  (let ((_%hd169223169245%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169224169242%_)))
                                        (_%tl169222169247%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169224169242%_))))
                                    ((lambda (_%L169250%_ _%L169251%_)
                                       (let ((_%self169264%_
                                              (list-ref
                                               _%L169251%_
                                               _%self-index168959%_)))
                                         (for-each
                                          (lambda (_%g169265169267%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs
                                               _%g169265169267%_
                                               'receiver:
                                               _%self169264%_
                                               'methods:
                                               _%method-calls166987%_
                                               'slots:
                                               _%slot-refs166988%_)))
                                          _%L169250%_)))
                                     _%tl169222169247%_
                                     _%hd169223169245%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g169215169229%_ _%g169216169232%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g169215169229%_ _%g169216169232%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g169214169270%_
                                                     _%L169190%_))
                                                  (let* ((_%g169273169292%_
                                                          (lambda (_%g169274169289%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g169274169289%_))))
                                                         (_%g169272169397%_
                                                          (lambda (_%g169274169295%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g169274169295%_))
                        (let ((_%e169278169297%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169274169295%_))))
                          (let ((_%hd169277169300%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169278169297%_)))
                                (_%tl169276169302%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169278169297%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl169276169302%_))
                                (let ((_g171022_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl169276169302%_
                                          '0))))
                                  (begin
                                    (let ((_g171023_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g171022_)
                                                 (##vector-length _g171022_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g171023_ 2)))
                                          (error "Context expects 2 values"
                                                 _g171023_)))
                                    (let ((_%target169279169305%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g171022_ 0)))
                                          (_%tl169281169307%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g171022_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl169281169307%_))
                                          (letrec ((_%loop169282169310%_
                                                    (lambda (_%hd169280169313%_
                                                             _%clause169286169315%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd169280169313%_))
                                                          (let ((_%e169283169318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd169280169313%_))))
                    (let ((_%lp-hd169284169321%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169283169318%_)))
                          (_%lp-tl169285169323%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169283169318%_))))
                      (let ((__tmp171024
                             (cons _%lp-hd169284169321%_
                                   _%clause169286169315%_)))
                        (declare (not safe))
                        (_%loop169282169310%_
                         _%lp-tl169285169323%_
                         __tmp171024))))
                  (let ((_%clause169287169326%_
                         (reverse _%clause169286169315%_)))
                    ((lambda (_%L169329%_)
                       (for-each
                        (lambda (_%clause169342%_)
                          (let* ((_%g169344169355%_
                                  (lambda (_%g169345169352%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g169345169352%_))))
                                 (_%g169343169387%_
                                  (lambda (_%g169345169358%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%g169345169358%_))
                                        (let ((_%e169350169360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g169345169358%_))))
                                          (let ((_%hd169349169363%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169350169360%_)))
                                                (_%tl169348169365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169350169360%_))))
                                            ((lambda (_%L169368%_ _%L169369%_)
                                               (let ((_%self169381%_
                                                      (list-ref
                                                       _%L169369%_
                                                       _%self-index168959%_)))
                                                 (for-each
                                                  (lambda (_%g169382169384%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs
                                                       _%g169382169384%_
                                                       'receiver:
                                                       _%self169381%_
                                                       'methods:
                                                       _%method-calls166987%_
                                                       'slots:
                                                       _%slot-refs166988%_)))
                                                  _%L169368%_)))
                                             _%tl169348169365%_
                                             _%hd169349169363%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g169344169355%_
                                           _%g169345169358%_))))))
                            (declare (not safe))
                            (_%g169343169387%_ _%clause169342%_)))
                        (let ((__tmp171025
                               (lambda (_%g169389169392%_ _%g169390169394%_)
                                 (cons _%g169389169392%_ _%g169390169394%_))))
                          (declare (not safe))
                          (__foldr1 __tmp171025 '() _%L169329%_))))
                     _%clause169287169326%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop169282169310%_
                                               _%target169279169305%_
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g169273169292%_
                                             _%g169274169295%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g169273169292%_ _%g169274169295%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g169273169292%_ _%g169274169295%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g169272169397%_
                                                     _%L169189%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (_%no-specializer?166991%_))
                                                      _%stx166895%_
                                                      (let* ((_%specializer-id169406%_
                                                              (let* ((_%id169400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp171026
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L166968%_))))
                                (declare (not safe))
                                (make-symbol__1 __tmp171026 '"::specialize")))
                             (_%specializer-id169403%_
                              (let ((__tmp171027
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _%stx166895%_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _%id169400%_
                                 __tmp171027))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0 _%specializer-id169403%_))
                        _%specializer-id169403%_))
                     (_%$klass169408%_
                      (let ((__tmp171028
                             (let ()
                               (declare (not safe))
                               (##gensym '__klass))))
                        (declare (not safe))
                        (make-symbol__0 __tmp171028)))
                     (_%$method-table169410%_
                      (let ((__tmp171029
                             (let ()
                               (declare (not safe))
                               (##gensym '__method-table))))
                        (declare (not safe))
                        (make-symbol__0 __tmp171029)))
                     (_%methods169412%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%method-calls166987%_)))
                     (_%$methods169416%_
                      (map (lambda (_%id169414%_)
                             (let ((__tmp171030 (gensym _%id169414%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp171030)))
                           _%methods169412%_))
                     (_%_169425%_
                      (for-each
                       (lambda (_%g169417169420%_ _%g169418169422%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%method-calls166987%_
                            _%g169417169420%_
                            _%g169418169422%_)))
                       _%methods169412%_
                       _%$methods169416%_))
                     (_%methods-bind169435%_
                      (map (lambda (_%g169427169430%_ _%g169428169432%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-method-bind166897%_
                                _%$klass169408%_
                                _%$method-table169410%_
                                _%g169427169430%_
                                _%g169428169432%_)))
                           _%methods169412%_
                           _%$methods169416%_))
                     (_%slots169437%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%slot-refs166988%_)))
                     (_%$slots169441%_
                      (map (lambda (_%id169439%_)
                             (let ((__tmp171031 (gensym _%id169439%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp171031)))
                           _%slots169437%_))
                     (_%_169450%_
                      (for-each
                       (lambda (_%g169442169445%_ _%g169443169447%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%slot-refs166988%_
                            _%g169442169445%_
                            _%g169443169447%_)))
                       _%slots169437%_
                       _%$slots169441%_))
                     (_%slots-bind169459%_
                      (map (lambda (_%g169451169454%_ _%g169452169456%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-slot-bind166898%_
                                _%$klass169408%_
                                _%g169451169454%_
                                _%g169452169456%_)))
                           _%slots169437%_
                           _%$slots169441%_))
                     (_%specializer-lambda-expr169532%_
                      (let* ((_%g169461169475%_
                              (lambda (_%g169462169472%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g169462169472%_))))
                             (_%g169460169529%_
                              (lambda (_%g169462169478%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g169462169478%_))
                                    (let ((_%e169467169480%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g169462169478%_))))
                                      (let ((_%hd169466169483%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169467169480%_)))
                                            (_%tl169465169485%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169467169480%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169465169485%_))
                                            (let ((_%e169470169488%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169465169485%_))))
                                              (let ((_%hd169469169491%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169470169488%_)))
                                                    (_%tl169468169493%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169470169488%_))))
                                                ((lambda (_%L169496%_
                                                          _%L169497%_)
                                                   (let* ((_%self169520%_
                                                           (list-ref
                                                            _%L169497%_
                                                            _%self-index168959%_))
                                                          (_%body169526%_
                                                           (map (lambda (_%g169521169523%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _%g169521169523%_
                             'receiver:
                             _%self169520%_
                             'klass:
                             _%$klass169408%_
                             'methods:
                             _%method-calls166987%_
                             'slots:
                             _%slot-refs166988%_)))
                        _%L169496%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp171032
                                                            (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L169497%_ _%body169526%_))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp171032 _%L169190%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%tl169468169493%_
                                                 _%hd169469169491%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g169461169475%_
                                               _%g169462169478%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169461169475%_
                                       _%g169462169478%_))))))
                        (declare (not safe))
                        (_%g169460169529%_ _%L169190%_)))
                     (_%specializer-case-lambda-expr169667%_
                      (let* ((_%g169534169553%_
                              (lambda (_%g169535169550%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g169535169550%_))))
                             (_%g169533169664%_
                              (lambda (_%g169535169556%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g169535169556%_))
                                    (let ((_%e169539169558%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g169535169556%_))))
                                      (let ((_%hd169538169561%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169539169558%_)))
                                            (_%tl169537169563%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169539169558%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl169537169563%_))
                                            (let ((_g171033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%tl169537169563%_
                                                      '0))))
                                              (begin
                                                (let ((_g171034_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g171033_)
                                                             (##vector-length
                                                              _g171033_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g171034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g171034_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target169540169566%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g171033_
                                                          0)))
                                                      (_%tl169542169568%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g171033_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169542169568%_))
                                                      (letrec ((_%loop169543169571%_
                                                                (lambda (_%hd169541169574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%clause169547169576%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169541169574%_))
                              (let ((_%e169544169579%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169541169574%_))))
                                (let ((_%lp-hd169545169582%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169544169579%_)))
                                      (_%lp-tl169546169584%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169544169579%_))))
                                  (let ((__tmp171035
                                         (cons _%lp-hd169545169582%_
                                               _%clause169547169576%_)))
                                    (declare (not safe))
                                    (_%loop169543169571%_
                                     _%lp-tl169546169584%_
                                     __tmp171035))))
                              (let ((_%clause169548169587%_
                                     (reverse _%clause169547169576%_)))
                                ((lambda (_%L169590%_)
                                   (let* ((_%clauses169662%_
                                           (map (lambda (_%clause169604%_)
                                                  (let* ((_%g169606169617%_
                                                          (lambda (_%g169607169614%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g169607169614%_))))
                                                         (_%g169605169652%_
                                                          (lambda (_%g169607169620%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g169607169620%_))
                        (let ((_%e169612169622%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169607169620%_))))
                          (let ((_%hd169611169625%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169612169622%_)))
                                (_%tl169610169627%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169612169622%_))))
                            ((lambda (_%L169630%_ _%L169631%_)
                               (let* ((_%self169643%_
                                       (list-ref
                                        _%L169631%_
                                        _%self-index168959%_))
                                      (_%body169649%_
                                       (map (lambda (_%g169644169646%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#apply-subst-object-refs
                                                 _%g169644169646%_
                                                 'receiver:
                                                 _%self169643%_
                                                 'klass:
                                                 _%$klass169408%_
                                                 'methods:
                                                 _%method-calls166987%_
                                                 'slots:
                                                 _%slot-refs166988%_)))
                                            _%L169630%_)))
                                 (cons _%L169631%_ _%body169649%_)))
                             _%tl169610169627%_
                             _%hd169611169625%_)))
                        (let ()
                          (declare (not safe))
                          (_%g169606169617%_ _%g169607169620%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g169605169652%_
                                                     _%clause169604%_)))
                                                (let ((__tmp171036
                                                       (lambda (_%g169654169657%_
                                                                _%g169655169659%_)
                                                         (cons _%g169654169657%_
                                                               _%g169655169659%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp171036
                                                   '()
                                                   _%L169590%_))))
                                          (__tmp171037
                                           (cons '%#case-lambda
                                                 _%clauses169662%_)))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp171037
                                      _%L169189%_)))
                                 _%clause169548169587%_))))))
                (let ()
                  (declare (not safe))
                  (_%loop169543169571%_ _%target169540169566%_ '())))
              (let ()
                (declare (not safe))
                (_%g169534169553%_ _%g169535169556%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g169534169553%_
                                               _%g169535169556%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169534169553%_
                                       _%g169535169556%_))))))
                        (declare (not safe))
                        (_%g169533169664%_ _%L169189%_)))
                     (_%specializer-impl169669%_
                      (let ((__tmp171038
                             (cons '%#let-values
                                   (cons (cons (cons (cons _%L168659%_ '())
                                                     (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (cons _%L168658%_ '())
                                           (cons (let ((__tmp171039
                                                        (cons '%#let-values
                                                              (cons (cons (cons (cons _%L169191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _%specializer-lambda-expr169532%_
                                              '()))
                                  '())
                            (cons _%specializer-case-lambda-expr169667%_
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp171039
                                                    _%stx166895%_))
                                                 '()))
                                     '())
                               (cons _%L168656%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L168655%_ '())))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp171038 _%stx166895%_)))
                     (_%specializer-impl169671%_
                      (let ()
                        (declare (not safe))
                        (_%generate-specializer-impl166899%_
                         _%$klass169408%_
                         _%$method-table169410%_
                         _%methods-bind169435%_
                         _%slots-bind169459%_
                         _%specializer-impl169669%_))))
                (let ((__tmp171041
                       (let () (declare (not safe)) (gx#stx-e _%L166968%_)))
                      (__tmp171040
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%specializer-id169406%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"generate method specializer "
                   __tmp171041
                   '" => "
                   __tmp171040))
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-def166900%_
                   _%L166968%_
                   _%specializer-id169406%_
                   _%specializer-impl169671%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%hd169122169184%_
                                                _%hd169119169176%_
                                                _%hd169116169168%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g169098169128%_
                                                  _%g169099169131%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g169098169128%_
                                          _%g169099169131%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g169098169128%_ _%g169099169131%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%g169098169128%_ _%g169099169131%_)))))
                       (let ()
                         (declare (not safe))
                         (_%g169098169128%_ _%g169099169131%_)))
                   (let ()
                     (declare (not safe))
                     (_%g169098169128%_ _%g169099169131%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g169098169128%_
                                                      _%g169099169131%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g169098169128%_
                                              _%g169099169131%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g169098169128%_ _%g169099169131%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g169098169128%_ _%g169099169131%_)))))
                   (let ()
                     (declare (not safe))
                     (_%g169098169128%_ _%g169099169131%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%g169097169674%_
                                                _%L168657%_)))
                                           (let () _%stx166895%_)))))
                               _%hd168755168878%_
                               _%kw-ref168753168899%_
                               _%hd168743168865%_
                               _%hd168734168841%_
                               _%hd168725168817%_)
                              (let ()
                                (declare (not safe))
                                (_%g168699168761%_ _%g168700168764%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop168748168883%_
                                                     _%target168745168870%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168699168761%_
                                                   _%g168700168764%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g168699168761%_
                                           _%g168700168764%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g168699168761%_ _%g168700168764%_)))
                          (let ()
                            (declare (not safe))
                            (_%g168699168761%_ _%g168700168764%_)))
                      (let ()
                        (declare (not safe))
                        (_%g168699168761%_ _%g168700168764%_)))))
              (let ()
                (declare (not safe))
                (_%g168699168761%_ _%g168700168764%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168699168761%_
                                                     _%g168700168764%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168699168761%_
                                                 _%g168700168764%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168699168761%_
                                         _%g168700168764%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168699168761%_ _%g168700168764%_)))
                          (let ()
                            (declare (not safe))
                            (_%g168699168761%_ _%g168700168764%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168699168761%_ _%g168700168764%_)))
              (let ()
                (declare (not safe))
                (_%g168699168761%_ _%g168700168764%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168699168761%_
                                                     _%g168700168764%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168699168761%_
                                             _%g168700168764%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168699168761%_ _%g168700168764%_)))
                              (let ()
                                (declare (not safe))
                                (_%g168699168761%_ _%g168700168764%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g168699168761%_ _%g168700168764%_)))
                  (let ()
                    (declare (not safe))
                    (_%g168699168761%_ _%g168700168764%_)))
              (let ()
                (declare (not safe))
                (_%g168699168761%_ _%g168700168764%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g168699168761%_
                                                 _%g168700168764%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168699168761%_ _%g168700168764%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168699168761%_ _%g168700168764%_)))
                              (let ()
                                (declare (not safe))
                                (_%g168699168761%_ _%g168700168764%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g168699168761%_ _%g168700168764%_)))))
              (let ()
                (declare (not safe))
                (_%g168699168761%_ _%g168700168764%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g168699168761%_
                                                 _%g168700168764%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168699168761%_
                                             _%g168700168764%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168699168761%_
                                         _%g168700168764%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168699168761%_ _%g168700168764%_))))))
                  (declare (not safe))
                  (_%g168698169678%_ _%L168656%_)))
              _%hd168532168650%_
              _%hd168529168642%_
              _%hd168526168634%_
              _%hd168523168626%_
              _%hd168505168578%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168485168538%_
                                                        _%g168486168541%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168485168538%_
                                                _%g168486168541%_)))
                                         (let ()
                                           (declare (not safe))
                                           (_%g168485168538%_
                                            _%g168486168541%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168485168538%_ _%g168486168541%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%g168485168538%_ _%g168486168541%_)))))
                         (let ()
                           (declare (not safe))
                           (_%g168485168538%_ _%g168486168541%_)))
                     (let ()
                       (declare (not safe))
                       (_%g168485168538%_ _%g168486168541%_)))
                 (let ()
                   (declare (not safe))
                   (_%g168485168538%_ _%g168486168541%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g168485168538%_
                                                    _%g168486168541%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168485168538%_
                                                _%g168486168541%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168485168538%_
                                        _%g168486168541%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g168485168538%_ _%g168486168541%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g168485168538%_ _%g168486168541%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168485168538%_
                                                        _%g168486168541%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g168485168538%_
                                                    _%g168486168541%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168485168538%_
                                                _%g168486168541%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168485168538%_
                                        _%g168486168541%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g168485168538%_ _%g168486168541%_)))
                         (let ()
                           (declare (not safe))
                           (_%g168485168538%_ _%g168486168541%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g168485168538%_ _%g168486168541%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g168485168538%_
                                                    _%g168486168541%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g168485168538%_
                                            _%g168486168541%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g168485168538%_ _%g168486168541%_)))
                             (let ()
                               (declare (not safe))
                               (_%g168485168538%_ _%g168486168541%_)))
                         (let ()
                           (declare (not safe))
                           (_%g168485168538%_ _%g168486168541%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g168485168538%_ _%g168486168541%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%g168484169681%_ _%L166967%_)))
                                         (let () _%stx166895%_)))))))))
                  (_%__kont169906169907%_ (lambda () _%stx166895%_)))
              (let ((_%__match169935169936%_
                     (lambda (_%e166909166935%_
                              _%hd166908166938%_
                              _%tl166907166940%_
                              _%e166912166943%_
                              _%hd166911166946%_
                              _%tl166910166948%_
                              _%e166915166951%_
                              _%hd166914166954%_
                              _%tl166913166956%_
                              _%e166918166959%_
                              _%hd166917166962%_
                              _%tl166916166964%_)
                       (let ((_%L166967%_ _%hd166917166962%_)
                             (_%L166968%_ _%hd166914166954%_))
                         (if (let ((__tmp171042
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166968%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp171042))
                             (_%__kont169904169905%_ _%L166967%_ _%L166968%_)
                             (_%__kont169906169907%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx169902169903%_))
                    (let ((_%e166909166935%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx169902169903%_))))
                      (let ((_%tl166907166940%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166909166935%_)))
                            (_%hd166908166938%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166909166935%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166907166940%_))
                            (let ((_%e166912166943%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166907166940%_))))
                              (let ((_%tl166910166948%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166912166943%_)))
                                    (_%hd166911166946%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166912166943%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd166911166946%_))
                                    (let ((_%e166915166951%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd166911166946%_))))
                                      (let ((_%tl166913166956%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e166915166951%_)))
                                            (_%hd166914166954%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e166915166951%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl166913166956%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166910166948%_))
                                                (let ((_%e166918166959%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166910166948%_))))
                                                  (let ((_%tl166916166964%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166918166959%_)))
                                                        (_%hd166917166962%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166918166959%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl166916166964%_))
                                                        (_%__match169935169936%_
                                                         _%e166909166935%_
                                                         _%hd166908166938%_
                                                         _%tl166907166940%_
                                                         _%e166912166943%_
                                                         _%hd166911166946%_
                                                         _%tl166910166948%_
                                                         _%e166915166951%_
                                                         _%hd166914166954%_
                                                         _%tl166913166956%_
                                                         _%e166918166959%_
                                                         _%hd166917166962%_
                                                         _%tl166916166964%_)
                                                        (_%__kont169906169907%_))))
                                                (_%__kont169906169907%_))
                                            (_%__kont169906169907%_))))
                                    (_%__kont169906169907%_))))
                            (_%__kont169906169907%_))))
                    (_%__kont169906169907%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self165855%_ _%stx165856%_)
        (let* ((_%__stx169938169939%_ _%stx165856%_)
               (_%g165864166086%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx169938169939%_)))))
          (let ((_%__kont169940169941%_
                 (lambda (_%L166843%_ _%L166844%_ _%L166845%_ _%L166846%_)
                   (let ((__tmp171044
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self165855%_ 'methods)))
                         (__tmp171043
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166844%_))))
                     (declare (not safe))
                     (hash-put! __tmp171044 __tmp171043 '#t))
                   (for-each
                    (lambda (_%g166879166881%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self165855%_ _%g166879166881%_)))
                    (let ((__tmp171045
                           (lambda (_%g166883166886%_ _%g166884166888%_)
                             (cons _%g166883166886%_ _%g166884166888%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171045 '() _%L166843%_)))))
                (_%__kont169944169945%_
                 (lambda (_%L166678%_
                          _%L166679%_
                          _%L166680%_
                          _%L166681%_
                          _%L166682%_)
                   (let ((__tmp171047
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self165855%_ 'methods)))
                         (__tmp171046
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166679%_))))
                     (declare (not safe))
                     (hash-put! __tmp171047 __tmp171046 '#t))
                   (for-each
                    (lambda (_%g166722166724%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self165855%_ _%g166722166724%_)))
                    (let ((__tmp171048
                           (lambda (_%g166726166729%_ _%g166727166731%_)
                             (cons _%g166726166729%_ _%g166727166731%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171048 '() _%L166678%_)))))
                (_%__kont169948169949%_
                 (lambda (_%L166511%_ _%L166512%_ _%L166513%_)
                   (let ((__tmp171050
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self165855%_ 'slots)))
                         (__tmp171049
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166511%_))))
                     (declare (not safe))
                     (hash-put! __tmp171050 __tmp171049 '#t))))
                (_%__kont169950169951%_
                 (lambda (_%L166388%_ _%L166389%_ _%L166390%_ _%L166391%_)
                   (let ((__tmp171052
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self165855%_ 'slots)))
                         (__tmp171051
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166389%_))))
                     (declare (not safe))
                     (hash-put! __tmp171052 __tmp171051 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self165855%_ _%L166388%_))))
                (_%__kont169952169953%_
                 (lambda (_%L166262%_ _%L166263%_)
                   (let* ((_%accessor166285%_
                           (let ((__tmp171053
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166263%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171053)))
                          (_%klass166287%_
                           (let ((__tmp171054
                                  (##structure-ref
                                   _%accessor166285%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx165856%_
                              __tmp171054)))
                          (_%slot166289%_
                           (##structure-ref
                            _%accessor166285%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp171055
                                     (##structure-ref
                                      _%accessor166285%_
                                      '4
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp171055))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass166287%_
                                     _%slot166289%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass166287%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171057
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self165855%_ 'slots)))
                               (__tmp171056
                                (##structure-ref
                                 _%accessor166285%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp171057 __tmp171056 '#t))))))
                (_%__kont169954169955%_
                 (lambda (_%L166162%_ _%L166163%_ _%L166164%_)
                   (let* ((_%mutator166191%_
                           (let ((__tmp171058
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166164%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171058)))
                          (_%klass166193%_
                           (let ((__tmp171059
                                  (##structure-ref
                                   _%mutator166191%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx165856%_
                              __tmp171059)))
                          (_%slot166195%_
                           (##structure-ref
                            _%mutator166191%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp171060
                                     (##structure-ref
                                      _%mutator166191%_
                                      '4
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp171060))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass166193%_
                                     _%slot166195%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass166193%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171061
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self165855%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp171061 _%slot166195%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self165855%_ _%L166162%_)))))
                (_%__kont169956169957%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self165855%_ _%stx165856%_)))))
            (let* ((_%__match170437170438%_
                    (lambda (_%e166060166098%_
                             _%hd166059166101%_
                             _%tl166058166103%_
                             _%e166063166106%_
                             _%hd166062166109%_
                             _%tl166061166111%_
                             _%e166066166114%_
                             _%hd166065166117%_
                             _%tl166064166119%_
                             _%e166069166122%_
                             _%hd166068166125%_
                             _%tl166067166127%_
                             _%e166072166130%_
                             _%hd166071166133%_
                             _%tl166070166135%_
                             _%e166075166138%_
                             _%hd166074166141%_
                             _%tl166073166143%_
                             _%e166078166146%_
                             _%hd166077166149%_
                             _%tl166076166151%_
                             _%e166081166154%_
                             _%hd166080166157%_
                             _%tl166079166159%_)
                      (let ((_%L166162%_ _%hd166080166157%_)
                            (_%L166163%_ _%hd166077166149%_)
                            (_%L166164%_ _%hd166068166125%_))
                        (if (and (let ((__tmp171062
                                        (let ((__tmp171063
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166164%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171063))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171062
                                    'gxc#!mutator::t))
                                 (let ((__tmp171064
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self165855%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166163%_
                                    __tmp171064)))
                            (_%__kont169954169955%_
                             _%L166162%_
                             _%L166163%_
                             _%L166164%_)
                            (_%__kont169956169957%_)))))
                   (_%__match170435170436%_
                    (lambda (_%e166060166098%_
                             _%hd166059166101%_
                             _%tl166058166103%_
                             _%e166063166106%_
                             _%hd166062166109%_
                             _%tl166061166111%_
                             _%e166066166114%_
                             _%hd166065166117%_
                             _%tl166064166119%_
                             _%e166069166122%_
                             _%hd166068166125%_
                             _%tl166067166127%_
                             _%e166072166130%_
                             _%hd166071166133%_
                             _%tl166070166135%_
                             _%e166075166138%_
                             _%hd166074166141%_
                             _%tl166073166143%_
                             _%e166078166146%_
                             _%hd166077166149%_
                             _%tl166076166151%_
                             _%e166081166154%_
                             _%hd166080166157%_
                             _%tl166079166159%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166079166159%_))
                          (_%__match170437170438%_
                           _%e166060166098%_
                           _%hd166059166101%_
                           _%tl166058166103%_
                           _%e166063166106%_
                           _%hd166062166109%_
                           _%tl166061166111%_
                           _%e166066166114%_
                           _%hd166065166117%_
                           _%tl166064166119%_
                           _%e166069166122%_
                           _%hd166068166125%_
                           _%tl166067166127%_
                           _%e166072166130%_
                           _%hd166071166133%_
                           _%tl166070166135%_
                           _%e166075166138%_
                           _%hd166074166141%_
                           _%tl166073166143%_
                           _%e166078166146%_
                           _%hd166077166149%_
                           _%tl166076166151%_
                           _%e166081166154%_
                           _%hd166080166157%_
                           _%tl166079166159%_)
                          (_%__kont169956169957%_))))
                   (_%__match170429170430%_
                    (lambda (_%e166060166098%_
                             _%hd166059166101%_
                             _%tl166058166103%_
                             _%e166063166106%_
                             _%hd166062166109%_
                             _%tl166061166111%_
                             _%e166066166114%_
                             _%hd166065166117%_
                             _%tl166064166119%_
                             _%e166069166122%_
                             _%hd166068166125%_
                             _%tl166067166127%_
                             _%e166072166130%_
                             _%hd166071166133%_
                             _%tl166070166135%_
                             _%e166075166138%_
                             _%hd166074166141%_
                             _%tl166073166143%_
                             _%e166078166146%_
                             _%hd166077166149%_
                             _%tl166076166151%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166070166135%_))
                          (let ((_%e166081166154%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166070166135%_))))
                            (let ((_%tl166079166159%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166081166154%_)))
                                  (_%hd166080166157%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166081166154%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166079166159%_))
                                  (_%__match170437170438%_
                                   _%e166060166098%_
                                   _%hd166059166101%_
                                   _%tl166058166103%_
                                   _%e166063166106%_
                                   _%hd166062166109%_
                                   _%tl166061166111%_
                                   _%e166066166114%_
                                   _%hd166065166117%_
                                   _%tl166064166119%_
                                   _%e166069166122%_
                                   _%hd166068166125%_
                                   _%tl166067166127%_
                                   _%e166072166130%_
                                   _%hd166071166133%_
                                   _%tl166070166135%_
                                   _%e166075166138%_
                                   _%hd166074166141%_
                                   _%tl166073166143%_
                                   _%e166078166146%_
                                   _%hd166077166149%_
                                   _%tl166076166151%_
                                   _%e166081166154%_
                                   _%hd166080166157%_
                                   _%tl166079166159%_)
                                  (_%__kont169956169957%_))))
                          (_%__kont169956169957%_))))
                   (_%__match170375170376%_
                    (lambda (_%e166036166206%_
                             _%hd166035166209%_
                             _%tl166034166211%_
                             _%e166039166214%_
                             _%hd166038166217%_
                             _%tl166037166219%_
                             _%e166042166222%_
                             _%hd166041166225%_
                             _%tl166040166227%_
                             _%e166045166230%_
                             _%hd166044166233%_
                             _%tl166043166235%_
                             _%e166048166238%_
                             _%hd166047166241%_
                             _%tl166046166243%_
                             _%e166051166246%_
                             _%hd166050166249%_
                             _%tl166049166251%_
                             _%e166054166254%_
                             _%hd166053166257%_
                             _%tl166052166259%_)
                      (let ((_%L166262%_ _%hd166053166257%_)
                            (_%L166263%_ _%hd166044166233%_))
                        (if (and (let ((__tmp171065
                                        (let ((__tmp171066
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166263%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171066))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171065
                                    'gxc#!accessor::t))
                                 (let ((__tmp171067
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self165855%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166262%_
                                    __tmp171067)))
                            (_%__kont169952169953%_ _%L166262%_ _%L166263%_)
                            (_%__kont169956169957%_)))))
                   (_%__match170373170374%_
                    (lambda (_%e166036166206%_
                             _%hd166035166209%_
                             _%tl166034166211%_
                             _%e166039166214%_
                             _%hd166038166217%_
                             _%tl166037166219%_
                             _%e166042166222%_
                             _%hd166041166225%_
                             _%tl166040166227%_
                             _%e166045166230%_
                             _%hd166044166233%_
                             _%tl166043166235%_
                             _%e166048166238%_
                             _%hd166047166241%_
                             _%tl166046166243%_
                             _%e166051166246%_
                             _%hd166050166249%_
                             _%tl166049166251%_
                             _%e166054166254%_
                             _%hd166053166257%_
                             _%tl166052166259%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166046166243%_))
                          (_%__match170375170376%_
                           _%e166036166206%_
                           _%hd166035166209%_
                           _%tl166034166211%_
                           _%e166039166214%_
                           _%hd166038166217%_
                           _%tl166037166219%_
                           _%e166042166222%_
                           _%hd166041166225%_
                           _%tl166040166227%_
                           _%e166045166230%_
                           _%hd166044166233%_
                           _%tl166043166235%_
                           _%e166048166238%_
                           _%hd166047166241%_
                           _%tl166046166243%_
                           _%e166051166246%_
                           _%hd166050166249%_
                           _%tl166049166251%_
                           _%e166054166254%_
                           _%hd166053166257%_
                           _%tl166052166259%_)
                          (_%__match170429170430%_
                           _%e166036166206%_
                           _%hd166035166209%_
                           _%tl166034166211%_
                           _%e166039166214%_
                           _%hd166038166217%_
                           _%tl166037166219%_
                           _%e166042166222%_
                           _%hd166041166225%_
                           _%tl166040166227%_
                           _%e166045166230%_
                           _%hd166044166233%_
                           _%tl166043166235%_
                           _%e166048166238%_
                           _%hd166047166241%_
                           _%tl166046166243%_
                           _%e166051166246%_
                           _%hd166050166249%_
                           _%tl166049166251%_
                           _%e166054166254%_
                           _%hd166053166257%_
                           _%tl166052166259%_))))
                   (_%__match170319170320%_
                    (lambda (_%e166001166300%_
                             _%hd166000166303%_
                             _%tl165999166305%_
                             _%e166004166308%_
                             _%hd166003166311%_
                             _%tl166002166313%_
                             _%e166007166316%_
                             _%hd166006166319%_
                             _%tl166005166321%_
                             _%e166010166324%_
                             _%hd166009166327%_
                             _%tl166008166329%_
                             _%e166013166332%_
                             _%hd166012166335%_
                             _%tl166011166337%_
                             _%e166016166340%_
                             _%hd166015166343%_
                             _%tl166014166345%_
                             _%e166019166348%_
                             _%hd166018166351%_
                             _%tl166017166353%_
                             _%e166022166356%_
                             _%hd166021166359%_
                             _%tl166020166361%_
                             _%e166025166364%_
                             _%hd166024166367%_
                             _%tl166023166369%_
                             _%e166028166372%_
                             _%hd166027166375%_
                             _%tl166026166377%_
                             _%e166031166380%_
                             _%hd166030166383%_
                             _%tl166029166385%_)
                      (let ((_%L166388%_ _%hd166030166383%_)
                            (_%L166389%_ _%hd166027166375%_)
                            (_%L166390%_ _%hd166018166351%_)
                            (_%L166391%_ _%hd166009166327%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166391%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166391%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp171068
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self165855%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166390%_
                                    __tmp171068)))
                            (_%__kont169950169951%_
                             _%L166388%_
                             _%L166389%_
                             _%L166390%_
                             _%L166391%_)
                            (_%__kont169956169957%_)))))
                   (_%__match170311170312%_
                    (lambda (_%e166001166300%_
                             _%hd166000166303%_
                             _%tl165999166305%_
                             _%e166004166308%_
                             _%hd166003166311%_
                             _%tl166002166313%_
                             _%e166007166316%_
                             _%hd166006166319%_
                             _%tl166005166321%_
                             _%e166010166324%_
                             _%hd166009166327%_
                             _%tl166008166329%_
                             _%e166013166332%_
                             _%hd166012166335%_
                             _%tl166011166337%_
                             _%e166016166340%_
                             _%hd166015166343%_
                             _%tl166014166345%_
                             _%e166019166348%_
                             _%hd166018166351%_
                             _%tl166017166353%_
                             _%e166022166356%_
                             _%hd166021166359%_
                             _%tl166020166361%_
                             _%e166025166364%_
                             _%hd166024166367%_
                             _%tl166023166369%_
                             _%e166028166372%_
                             _%hd166027166375%_
                             _%tl166026166377%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166020166361%_))
                          (let ((_%e166031166380%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166020166361%_))))
                            (let ((_%tl166029166385%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166031166380%_)))
                                  (_%hd166030166383%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166031166380%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166029166385%_))
                                  (_%__match170319170320%_
                                   _%e166001166300%_
                                   _%hd166000166303%_
                                   _%tl165999166305%_
                                   _%e166004166308%_
                                   _%hd166003166311%_
                                   _%tl166002166313%_
                                   _%e166007166316%_
                                   _%hd166006166319%_
                                   _%tl166005166321%_
                                   _%e166010166324%_
                                   _%hd166009166327%_
                                   _%tl166008166329%_
                                   _%e166013166332%_
                                   _%hd166012166335%_
                                   _%tl166011166337%_
                                   _%e166016166340%_
                                   _%hd166015166343%_
                                   _%tl166014166345%_
                                   _%e166019166348%_
                                   _%hd166018166351%_
                                   _%tl166017166353%_
                                   _%e166022166356%_
                                   _%hd166021166359%_
                                   _%tl166020166361%_
                                   _%e166025166364%_
                                   _%hd166024166367%_
                                   _%tl166023166369%_
                                   _%e166028166372%_
                                   _%hd166027166375%_
                                   _%tl166026166377%_
                                   _%e166031166380%_
                                   _%hd166030166383%_
                                   _%tl166029166385%_)
                                  (_%__kont169956169957%_))))
                          (_%__match170435170436%_
                           _%e166001166300%_
                           _%hd166000166303%_
                           _%tl165999166305%_
                           _%e166004166308%_
                           _%hd166003166311%_
                           _%tl166002166313%_
                           _%e166007166316%_
                           _%hd166006166319%_
                           _%tl166005166321%_
                           _%e166010166324%_
                           _%hd166009166327%_
                           _%tl166008166329%_
                           _%e166013166332%_
                           _%hd166012166335%_
                           _%tl166011166337%_
                           _%e166016166340%_
                           _%hd166015166343%_
                           _%tl166014166345%_
                           _%e166019166348%_
                           _%hd166018166351%_
                           _%tl166017166353%_
                           _%e166022166356%_
                           _%hd166021166359%_
                           _%tl166020166361%_))))
                   (_%__match170233170234%_
                    (lambda (_%e165967166431%_
                             _%hd165966166434%_
                             _%tl165965166436%_
                             _%e165970166439%_
                             _%hd165969166442%_
                             _%tl165968166444%_
                             _%e165973166447%_
                             _%hd165972166450%_
                             _%tl165971166452%_
                             _%e165976166455%_
                             _%hd165975166458%_
                             _%tl165974166460%_
                             _%e165979166463%_
                             _%hd165978166466%_
                             _%tl165977166468%_
                             _%e165982166471%_
                             _%hd165981166474%_
                             _%tl165980166476%_
                             _%e165985166479%_
                             _%hd165984166482%_
                             _%tl165983166484%_
                             _%e165988166487%_
                             _%hd165987166490%_
                             _%tl165986166492%_
                             _%e165991166495%_
                             _%hd165990166498%_
                             _%tl165989166500%_
                             _%e165994166503%_
                             _%hd165993166506%_
                             _%tl165992166508%_)
                      (let ((_%L166511%_ _%hd165993166506%_)
                            (_%L166512%_ _%hd165984166482%_)
                            (_%L166513%_ _%hd165975166458%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166513%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166513%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp171069
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self165855%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166512%_
                                    __tmp171069)))
                            (_%__kont169948169949%_
                             _%L166511%_
                             _%L166512%_
                             _%L166513%_)
                            (_%__match170437170438%_
                             _%e165967166431%_
                             _%hd165966166434%_
                             _%tl165965166436%_
                             _%e165970166439%_
                             _%hd165969166442%_
                             _%tl165968166444%_
                             _%e165973166447%_
                             _%hd165972166450%_
                             _%tl165971166452%_
                             _%e165976166455%_
                             _%hd165975166458%_
                             _%tl165974166460%_
                             _%e165979166463%_
                             _%hd165978166466%_
                             _%tl165977166468%_
                             _%e165982166471%_
                             _%hd165981166474%_
                             _%tl165980166476%_
                             _%e165985166479%_
                             _%hd165984166482%_
                             _%tl165983166484%_
                             _%e165988166487%_
                             _%hd165987166490%_
                             _%tl165986166492%_)))))
                   (_%__match170231170232%_
                    (lambda (_%e165967166431%_
                             _%hd165966166434%_
                             _%tl165965166436%_
                             _%e165970166439%_
                             _%hd165969166442%_
                             _%tl165968166444%_
                             _%e165973166447%_
                             _%hd165972166450%_
                             _%tl165971166452%_
                             _%e165976166455%_
                             _%hd165975166458%_
                             _%tl165974166460%_
                             _%e165979166463%_
                             _%hd165978166466%_
                             _%tl165977166468%_
                             _%e165982166471%_
                             _%hd165981166474%_
                             _%tl165980166476%_
                             _%e165985166479%_
                             _%hd165984166482%_
                             _%tl165983166484%_
                             _%e165988166487%_
                             _%hd165987166490%_
                             _%tl165986166492%_
                             _%e165991166495%_
                             _%hd165990166498%_
                             _%tl165989166500%_
                             _%e165994166503%_
                             _%hd165993166506%_
                             _%tl165992166508%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl165986166492%_))
                          (_%__match170233170234%_
                           _%e165967166431%_
                           _%hd165966166434%_
                           _%tl165965166436%_
                           _%e165970166439%_
                           _%hd165969166442%_
                           _%tl165968166444%_
                           _%e165973166447%_
                           _%hd165972166450%_
                           _%tl165971166452%_
                           _%e165976166455%_
                           _%hd165975166458%_
                           _%tl165974166460%_
                           _%e165979166463%_
                           _%hd165978166466%_
                           _%tl165977166468%_
                           _%e165982166471%_
                           _%hd165981166474%_
                           _%tl165980166476%_
                           _%e165985166479%_
                           _%hd165984166482%_
                           _%tl165983166484%_
                           _%e165988166487%_
                           _%hd165987166490%_
                           _%tl165986166492%_
                           _%e165991166495%_
                           _%hd165990166498%_
                           _%tl165989166500%_
                           _%e165994166503%_
                           _%hd165993166506%_
                           _%tl165992166508%_)
                          (_%__match170311170312%_
                           _%e165967166431%_
                           _%hd165966166434%_
                           _%tl165965166436%_
                           _%e165970166439%_
                           _%hd165969166442%_
                           _%tl165968166444%_
                           _%e165973166447%_
                           _%hd165972166450%_
                           _%tl165971166452%_
                           _%e165976166455%_
                           _%hd165975166458%_
                           _%tl165974166460%_
                           _%e165979166463%_
                           _%hd165978166466%_
                           _%tl165977166468%_
                           _%e165982166471%_
                           _%hd165981166474%_
                           _%tl165980166476%_
                           _%e165985166479%_
                           _%hd165984166482%_
                           _%tl165983166484%_
                           _%e165988166487%_
                           _%hd165987166490%_
                           _%tl165986166492%_
                           _%e165991166495%_
                           _%hd165990166498%_
                           _%tl165989166500%_
                           _%e165994166503%_
                           _%hd165993166506%_
                           _%tl165992166508%_))))
                   (_%__match170221170222%_
                    (lambda (_%e165967166431%_
                             _%hd165966166434%_
                             _%tl165965166436%_
                             _%e165970166439%_
                             _%hd165969166442%_
                             _%tl165968166444%_
                             _%e165973166447%_
                             _%hd165972166450%_
                             _%tl165971166452%_
                             _%e165976166455%_
                             _%hd165975166458%_
                             _%tl165974166460%_
                             _%e165979166463%_
                             _%hd165978166466%_
                             _%tl165977166468%_
                             _%e165982166471%_
                             _%hd165981166474%_
                             _%tl165980166476%_
                             _%e165985166479%_
                             _%hd165984166482%_
                             _%tl165983166484%_
                             _%e165988166487%_
                             _%hd165987166490%_
                             _%tl165986166492%_
                             _%e165991166495%_
                             _%hd165990166498%_
                             _%tl165989166500%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd165990166498%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165989166500%_))
                              (let ((_%e165994166503%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165989166500%_))))
                                (let ((_%tl165992166508%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165994166503%_)))
                                      (_%hd165993166506%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165994166503%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165992166508%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl165986166492%_))
                                          (_%__match170233170234%_
                                           _%e165967166431%_
                                           _%hd165966166434%_
                                           _%tl165965166436%_
                                           _%e165970166439%_
                                           _%hd165969166442%_
                                           _%tl165968166444%_
                                           _%e165973166447%_
                                           _%hd165972166450%_
                                           _%tl165971166452%_
                                           _%e165976166455%_
                                           _%hd165975166458%_
                                           _%tl165974166460%_
                                           _%e165979166463%_
                                           _%hd165978166466%_
                                           _%tl165977166468%_
                                           _%e165982166471%_
                                           _%hd165981166474%_
                                           _%tl165980166476%_
                                           _%e165985166479%_
                                           _%hd165984166482%_
                                           _%tl165983166484%_
                                           _%e165988166487%_
                                           _%hd165987166490%_
                                           _%tl165986166492%_
                                           _%e165991166495%_
                                           _%hd165990166498%_
                                           _%tl165989166500%_
                                           _%e165994166503%_
                                           _%hd165993166506%_
                                           _%tl165992166508%_)
                                          (_%__match170311170312%_
                                           _%e165967166431%_
                                           _%hd165966166434%_
                                           _%tl165965166436%_
                                           _%e165970166439%_
                                           _%hd165969166442%_
                                           _%tl165968166444%_
                                           _%e165973166447%_
                                           _%hd165972166450%_
                                           _%tl165971166452%_
                                           _%e165976166455%_
                                           _%hd165975166458%_
                                           _%tl165974166460%_
                                           _%e165979166463%_
                                           _%hd165978166466%_
                                           _%tl165977166468%_
                                           _%e165982166471%_
                                           _%hd165981166474%_
                                           _%tl165980166476%_
                                           _%e165985166479%_
                                           _%hd165984166482%_
                                           _%tl165983166484%_
                                           _%e165988166487%_
                                           _%hd165987166490%_
                                           _%tl165986166492%_
                                           _%e165991166495%_
                                           _%hd165990166498%_
                                           _%tl165989166500%_
                                           _%e165994166503%_
                                           _%hd165993166506%_
                                           _%tl165992166508%_))
                                      (_%__match170435170436%_
                                       _%e165967166431%_
                                       _%hd165966166434%_
                                       _%tl165965166436%_
                                       _%e165970166439%_
                                       _%hd165969166442%_
                                       _%tl165968166444%_
                                       _%e165973166447%_
                                       _%hd165972166450%_
                                       _%tl165971166452%_
                                       _%e165976166455%_
                                       _%hd165975166458%_
                                       _%tl165974166460%_
                                       _%e165979166463%_
                                       _%hd165978166466%_
                                       _%tl165977166468%_
                                       _%e165982166471%_
                                       _%hd165981166474%_
                                       _%tl165980166476%_
                                       _%e165985166479%_
                                       _%hd165984166482%_
                                       _%tl165983166484%_
                                       _%e165988166487%_
                                       _%hd165987166490%_
                                       _%tl165986166492%_))))
                              (_%__match170435170436%_
                               _%e165967166431%_
                               _%hd165966166434%_
                               _%tl165965166436%_
                               _%e165970166439%_
                               _%hd165969166442%_
                               _%tl165968166444%_
                               _%e165973166447%_
                               _%hd165972166450%_
                               _%tl165971166452%_
                               _%e165976166455%_
                               _%hd165975166458%_
                               _%tl165974166460%_
                               _%e165979166463%_
                               _%hd165978166466%_
                               _%tl165977166468%_
                               _%e165982166471%_
                               _%hd165981166474%_
                               _%tl165980166476%_
                               _%e165985166479%_
                               _%hd165984166482%_
                               _%tl165983166484%_
                               _%e165988166487%_
                               _%hd165987166490%_
                               _%tl165986166492%_))
                          (_%__match170435170436%_
                           _%e165967166431%_
                           _%hd165966166434%_
                           _%tl165965166436%_
                           _%e165970166439%_
                           _%hd165969166442%_
                           _%tl165968166444%_
                           _%e165973166447%_
                           _%hd165972166450%_
                           _%tl165971166452%_
                           _%e165976166455%_
                           _%hd165975166458%_
                           _%tl165974166460%_
                           _%e165979166463%_
                           _%hd165978166466%_
                           _%tl165977166468%_
                           _%e165982166471%_
                           _%hd165981166474%_
                           _%tl165980166476%_
                           _%e165985166479%_
                           _%hd165984166482%_
                           _%tl165983166484%_
                           _%e165988166487%_
                           _%hd165987166490%_
                           _%tl165986166492%_))))
                   (_%__match170153170154%_
                    (lambda (_%e165916166550%_
                             _%hd165915166553%_
                             _%tl165914166555%_
                             _%e165919166558%_
                             _%hd165918166561%_
                             _%tl165917166563%_
                             _%e165922166566%_
                             _%hd165921166569%_
                             _%tl165920166571%_
                             _%e165925166574%_
                             _%hd165924166577%_
                             _%tl165923166579%_
                             _%e165928166582%_
                             _%hd165927166585%_
                             _%tl165926166587%_
                             _%e165931166590%_
                             _%hd165930166593%_
                             _%tl165929166595%_
                             _%e165934166598%_
                             _%hd165933166601%_
                             _%tl165932166603%_
                             _%e165937166606%_
                             _%hd165936166609%_
                             _%tl165935166611%_
                             _%e165940166614%_
                             _%hd165939166617%_
                             _%tl165938166619%_
                             _%e165943166622%_
                             _%hd165942166625%_
                             _%tl165941166627%_
                             _%e165946166630%_
                             _%hd165945166633%_
                             _%tl165944166635%_
                             _%e165949166638%_
                             _%hd165948166641%_
                             _%tl165947166643%_
                             _%e165952166646%_
                             _%hd165951166649%_
                             _%tl165950166651%_
                             _%__splice169946169947%_
                             _%target165953166654%_
                             _%tl165955166656%_)
                      (letrec ((_%loop165956166659%_
                                (lambda (_%hd165954166662%_
                                         _%args165960166664%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd165954166662%_))
                                      (let ((_%e165957166667%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd165954166662%_))))
                                        (let ((_%lp-tl165959166672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165957166667%_)))
                                              (_%lp-hd165958166670%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165957166667%_))))
                                          (let ((__tmp171070
                                                 (cons _%lp-hd165958166670%_
                                                       _%args165960166664%_)))
                                            (declare (not safe))
                                            (_%loop165956166659%_
                                             _%lp-tl165959166672%_
                                             __tmp171070))))
                                      (let ((_%args165961166675%_
                                             (reverse _%args165960166664%_)))
                                        (let ((_%L166678%_
                                               _%args165961166675%_)
                                              (_%L166679%_ _%hd165951166649%_)
                                              (_%L166680%_ _%hd165942166625%_)
                                              (_%L166681%_ _%hd165933166601%_)
                                              (_%L166682%_ _%hd165924166577%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L166682%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L166681%_
                                                      'call-method))
                                                   (let ((__tmp171071
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self165855%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L166680%_
                                                      __tmp171071)))
                                              (_%__kont169944169945%_
                                               _%L166678%_
                                               _%L166679%_
                                               _%L166680%_
                                               _%L166681%_
                                               _%L166682%_)
                                              (_%__kont169956169957%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop165956166659%_ _%target165953166654%_ '())))))
                   (_%__match170111170112%_
                    (lambda (_%e165916166550%_
                             _%hd165915166553%_
                             _%tl165914166555%_
                             _%e165919166558%_
                             _%hd165918166561%_
                             _%tl165917166563%_
                             _%e165922166566%_
                             _%hd165921166569%_
                             _%tl165920166571%_
                             _%e165925166574%_
                             _%hd165924166577%_
                             _%tl165923166579%_
                             _%e165928166582%_
                             _%hd165927166585%_
                             _%tl165926166587%_
                             _%e165931166590%_
                             _%hd165930166593%_
                             _%tl165929166595%_
                             _%e165934166598%_
                             _%hd165933166601%_
                             _%tl165932166603%_
                             _%e165937166606%_
                             _%hd165936166609%_
                             _%tl165935166611%_
                             _%e165940166614%_
                             _%hd165939166617%_
                             _%tl165938166619%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd165939166617%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165938166619%_))
                              (let ((_%e165943166622%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165938166619%_))))
                                (let ((_%tl165941166627%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165943166622%_)))
                                      (_%hd165942166625%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165943166622%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165941166627%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl165935166611%_))
                                          (let ((_%e165946166630%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl165935166611%_))))
                                            (let ((_%tl165944166635%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e165946166630%_)))
                                                  (_%hd165945166633%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e165946166630%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd165945166633%_))
                                                  (let ((_%e165949166638%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd165945166633%_))))
                                                    (let ((_%tl165947166643%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e165949166638%_)))
                                                          (_%hd165948166641%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e165949166638%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd165948166641%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd165948166641%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl165947166643%_))
                          (let ((_%e165952166646%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl165947166643%_))))
                            (let ((_%tl165950166651%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e165952166646%_)))
                                  (_%hd165951166649%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e165952166646%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl165950166651%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl165944166635%_))
                                      (let ((_%__splice169946169947%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl165944166635%_
                                                '0))))
                                        (let ((_%tl165955166656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice169946169947%_
                                                  '1)))
                                              (_%target165953166654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice169946169947%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165955166656%_))
                                              (_%__match170153170154%_
                                               _%e165916166550%_
                                               _%hd165915166553%_
                                               _%tl165914166555%_
                                               _%e165919166558%_
                                               _%hd165918166561%_
                                               _%tl165917166563%_
                                               _%e165922166566%_
                                               _%hd165921166569%_
                                               _%tl165920166571%_
                                               _%e165925166574%_
                                               _%hd165924166577%_
                                               _%tl165923166579%_
                                               _%e165928166582%_
                                               _%hd165927166585%_
                                               _%tl165926166587%_
                                               _%e165931166590%_
                                               _%hd165930166593%_
                                               _%tl165929166595%_
                                               _%e165934166598%_
                                               _%hd165933166601%_
                                               _%tl165932166603%_
                                               _%e165937166606%_
                                               _%hd165936166609%_
                                               _%tl165935166611%_
                                               _%e165940166614%_
                                               _%hd165939166617%_
                                               _%tl165938166619%_
                                               _%e165943166622%_
                                               _%hd165942166625%_
                                               _%tl165941166627%_
                                               _%e165946166630%_
                                               _%hd165945166633%_
                                               _%tl165944166635%_
                                               _%e165949166638%_
                                               _%hd165948166641%_
                                               _%tl165947166643%_
                                               _%e165952166646%_
                                               _%hd165951166649%_
                                               _%tl165950166651%_
                                               _%__splice169946169947%_
                                               _%target165953166654%_
                                               _%tl165955166656%_)
                                              (_%__kont169956169957%_))))
                                      (_%__kont169956169957%_))
                                  (_%__kont169956169957%_))))
                          (_%__kont169956169957%_))
                      (_%__kont169956169957%_))
                  (_%__kont169956169957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont169956169957%_))))
                                          (_%__match170435170436%_
                                           _%e165916166550%_
                                           _%hd165915166553%_
                                           _%tl165914166555%_
                                           _%e165919166558%_
                                           _%hd165918166561%_
                                           _%tl165917166563%_
                                           _%e165922166566%_
                                           _%hd165921166569%_
                                           _%tl165920166571%_
                                           _%e165925166574%_
                                           _%hd165924166577%_
                                           _%tl165923166579%_
                                           _%e165928166582%_
                                           _%hd165927166585%_
                                           _%tl165926166587%_
                                           _%e165931166590%_
                                           _%hd165930166593%_
                                           _%tl165929166595%_
                                           _%e165934166598%_
                                           _%hd165933166601%_
                                           _%tl165932166603%_
                                           _%e165937166606%_
                                           _%hd165936166609%_
                                           _%tl165935166611%_))
                                      (_%__match170435170436%_
                                       _%e165916166550%_
                                       _%hd165915166553%_
                                       _%tl165914166555%_
                                       _%e165919166558%_
                                       _%hd165918166561%_
                                       _%tl165917166563%_
                                       _%e165922166566%_
                                       _%hd165921166569%_
                                       _%tl165920166571%_
                                       _%e165925166574%_
                                       _%hd165924166577%_
                                       _%tl165923166579%_
                                       _%e165928166582%_
                                       _%hd165927166585%_
                                       _%tl165926166587%_
                                       _%e165931166590%_
                                       _%hd165930166593%_
                                       _%tl165929166595%_
                                       _%e165934166598%_
                                       _%hd165933166601%_
                                       _%tl165932166603%_
                                       _%e165937166606%_
                                       _%hd165936166609%_
                                       _%tl165935166611%_))))
                              (_%__match170435170436%_
                               _%e165916166550%_
                               _%hd165915166553%_
                               _%tl165914166555%_
                               _%e165919166558%_
                               _%hd165918166561%_
                               _%tl165917166563%_
                               _%e165922166566%_
                               _%hd165921166569%_
                               _%tl165920166571%_
                               _%e165925166574%_
                               _%hd165924166577%_
                               _%tl165923166579%_
                               _%e165928166582%_
                               _%hd165927166585%_
                               _%tl165926166587%_
                               _%e165931166590%_
                               _%hd165930166593%_
                               _%tl165929166595%_
                               _%e165934166598%_
                               _%hd165933166601%_
                               _%tl165932166603%_
                               _%e165937166606%_
                               _%hd165936166609%_
                               _%tl165935166611%_))
                          (_%__match170221170222%_
                           _%e165916166550%_
                           _%hd165915166553%_
                           _%tl165914166555%_
                           _%e165919166558%_
                           _%hd165918166561%_
                           _%tl165917166563%_
                           _%e165922166566%_
                           _%hd165921166569%_
                           _%tl165920166571%_
                           _%e165925166574%_
                           _%hd165924166577%_
                           _%tl165923166579%_
                           _%e165928166582%_
                           _%hd165927166585%_
                           _%tl165926166587%_
                           _%e165931166590%_
                           _%hd165930166593%_
                           _%tl165929166595%_
                           _%e165934166598%_
                           _%hd165933166601%_
                           _%tl165932166603%_
                           _%e165937166606%_
                           _%hd165936166609%_
                           _%tl165935166611%_
                           _%e165940166614%_
                           _%hd165939166617%_
                           _%tl165938166619%_))))
                   (_%__match170043170044%_
                    (lambda (_%e165872166739%_
                             _%hd165871166742%_
                             _%tl165870166744%_
                             _%e165875166747%_
                             _%hd165874166750%_
                             _%tl165873166752%_
                             _%e165878166755%_
                             _%hd165877166758%_
                             _%tl165876166760%_
                             _%e165881166763%_
                             _%hd165880166766%_
                             _%tl165879166768%_
                             _%e165884166771%_
                             _%hd165883166774%_
                             _%tl165882166776%_
                             _%e165887166779%_
                             _%hd165886166782%_
                             _%tl165885166784%_
                             _%e165890166787%_
                             _%hd165889166790%_
                             _%tl165888166792%_
                             _%e165893166795%_
                             _%hd165892166798%_
                             _%tl165891166800%_
                             _%e165896166803%_
                             _%hd165895166806%_
                             _%tl165894166808%_
                             _%e165899166811%_
                             _%hd165898166814%_
                             _%tl165897166816%_
                             _%__splice169942169943%_
                             _%target165900166819%_
                             _%tl165902166821%_)
                      (letrec ((_%loop165903166824%_
                                (lambda (_%hd165901166827%_
                                         _%args165907166829%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd165901166827%_))
                                      (let ((_%e165904166832%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd165901166827%_))))
                                        (let ((_%lp-tl165906166837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165904166832%_)))
                                              (_%lp-hd165905166835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165904166832%_))))
                                          (let ((__tmp171072
                                                 (cons _%lp-hd165905166835%_
                                                       _%args165907166829%_)))
                                            (declare (not safe))
                                            (_%loop165903166824%_
                                             _%lp-tl165906166837%_
                                             __tmp171072))))
                                      (let ((_%args165908166840%_
                                             (reverse _%args165907166829%_)))
                                        (let ((_%L166843%_
                                               _%args165908166840%_)
                                              (_%L166844%_ _%hd165898166814%_)
                                              (_%L166845%_ _%hd165889166790%_)
                                              (_%L166846%_ _%hd165880166766%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L166846%_
                                                      'call-method))
                                                   (let ((__tmp171073
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self165855%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L166845%_
                                                      __tmp171073)))
                                              (_%__kont169940169941%_
                                               _%L166843%_
                                               _%L166844%_
                                               _%L166845%_
                                               _%L166846%_)
                                              (_%__match170231170232%_
                                               _%e165872166739%_
                                               _%hd165871166742%_
                                               _%tl165870166744%_
                                               _%e165875166747%_
                                               _%hd165874166750%_
                                               _%tl165873166752%_
                                               _%e165878166755%_
                                               _%hd165877166758%_
                                               _%tl165876166760%_
                                               _%e165881166763%_
                                               _%hd165880166766%_
                                               _%tl165879166768%_
                                               _%e165884166771%_
                                               _%hd165883166774%_
                                               _%tl165882166776%_
                                               _%e165887166779%_
                                               _%hd165886166782%_
                                               _%tl165885166784%_
                                               _%e165890166787%_
                                               _%hd165889166790%_
                                               _%tl165888166792%_
                                               _%e165893166795%_
                                               _%hd165892166798%_
                                               _%tl165891166800%_
                                               _%e165896166803%_
                                               _%hd165895166806%_
                                               _%tl165894166808%_
                                               _%e165899166811%_
                                               _%hd165898166814%_
                                               _%tl165897166816%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop165903166824%_
                           _%target165900166819%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx169938169939%_))
                  (let ((_%e165872166739%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx169938169939%_))))
                    (let ((_%tl165870166744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e165872166739%_)))
                          (_%hd165871166742%_
                           (let ()
                             (declare (not safe))
                             (##car _%e165872166739%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl165870166744%_))
                          (let ((_%e165875166747%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl165870166744%_))))
                            (let ((_%tl165873166752%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e165875166747%_)))
                                  (_%hd165874166750%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e165875166747%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd165874166750%_))
                                  (let ((_%e165878166755%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd165874166750%_))))
                                    (let ((_%tl165876166760%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e165878166755%_)))
                                          (_%hd165877166758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e165878166755%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd165877166758%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd165877166758%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl165876166760%_))
                                                  (let ((_%e165881166763%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl165876166760%_))))
                                                    (let ((_%tl165879166768%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e165881166763%_)))
                                                          (_%hd165880166766%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e165881166763%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl165879166768%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl165873166752%_))
                      (let ((_%e165884166771%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl165873166752%_))))
                        (let ((_%tl165882166776%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165884166771%_)))
                              (_%hd165883166774%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165884166771%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd165883166774%_))
                              (let ((_%e165887166779%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd165883166774%_))))
                                (let ((_%tl165885166784%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165887166779%_)))
                                      (_%hd165886166782%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165887166779%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd165886166782%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd165886166782%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165885166784%_))
                                              (let ((_%e165890166787%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165885166784%_))))
                                                (let ((_%tl165888166792%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165890166787%_)))
                                                      (_%hd165889166790%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165890166787%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl165888166792%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl165882166776%_))
                                                          (let ((_%e165893166795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl165882166776%_))))
                    (let ((_%tl165891166800%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e165893166795%_)))
                          (_%hd165892166798%_
                           (let ()
                             (declare (not safe))
                             (##car _%e165893166795%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd165892166798%_))
                          (let ((_%e165896166803%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd165892166798%_))))
                            (let ((_%tl165894166808%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e165896166803%_)))
                                  (_%hd165895166806%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e165896166803%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd165895166806%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd165895166806%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl165894166808%_))
                                          (let ((_%e165899166811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl165894166808%_))))
                                            (let ((_%tl165897166816%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e165899166811%_)))
                                                  (_%hd165898166814%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e165899166811%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl165897166816%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl165891166800%_))
                                                      (let ((_%__splice169942169943%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl165891166800%_ '0))))
                (let ((_%tl165902166821%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice169942169943%_ '1)))
                      (_%target165900166819%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice169942169943%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl165902166821%_))
                      (_%__match170043170044%_
                       _%e165872166739%_
                       _%hd165871166742%_
                       _%tl165870166744%_
                       _%e165875166747%_
                       _%hd165874166750%_
                       _%tl165873166752%_
                       _%e165878166755%_
                       _%hd165877166758%_
                       _%tl165876166760%_
                       _%e165881166763%_
                       _%hd165880166766%_
                       _%tl165879166768%_
                       _%e165884166771%_
                       _%hd165883166774%_
                       _%tl165882166776%_
                       _%e165887166779%_
                       _%hd165886166782%_
                       _%tl165885166784%_
                       _%e165890166787%_
                       _%hd165889166790%_
                       _%tl165888166792%_
                       _%e165893166795%_
                       _%hd165892166798%_
                       _%tl165891166800%_
                       _%e165896166803%_
                       _%hd165895166806%_
                       _%tl165894166808%_
                       _%e165899166811%_
                       _%hd165898166814%_
                       _%tl165897166816%_
                       _%__splice169942169943%_
                       _%target165900166819%_
                       _%tl165902166821%_)
                      (_%__match170231170232%_
                       _%e165872166739%_
                       _%hd165871166742%_
                       _%tl165870166744%_
                       _%e165875166747%_
                       _%hd165874166750%_
                       _%tl165873166752%_
                       _%e165878166755%_
                       _%hd165877166758%_
                       _%tl165876166760%_
                       _%e165881166763%_
                       _%hd165880166766%_
                       _%tl165879166768%_
                       _%e165884166771%_
                       _%hd165883166774%_
                       _%tl165882166776%_
                       _%e165887166779%_
                       _%hd165886166782%_
                       _%tl165885166784%_
                       _%e165890166787%_
                       _%hd165889166790%_
                       _%tl165888166792%_
                       _%e165893166795%_
                       _%hd165892166798%_
                       _%tl165891166800%_
                       _%e165896166803%_
                       _%hd165895166806%_
                       _%tl165894166808%_
                       _%e165899166811%_
                       _%hd165898166814%_
                       _%tl165897166816%_))))
              (_%__match170231170232%_
               _%e165872166739%_
               _%hd165871166742%_
               _%tl165870166744%_
               _%e165875166747%_
               _%hd165874166750%_
               _%tl165873166752%_
               _%e165878166755%_
               _%hd165877166758%_
               _%tl165876166760%_
               _%e165881166763%_
               _%hd165880166766%_
               _%tl165879166768%_
               _%e165884166771%_
               _%hd165883166774%_
               _%tl165882166776%_
               _%e165887166779%_
               _%hd165886166782%_
               _%tl165885166784%_
               _%e165890166787%_
               _%hd165889166790%_
               _%tl165888166792%_
               _%e165893166795%_
               _%hd165892166798%_
               _%tl165891166800%_
               _%e165896166803%_
               _%hd165895166806%_
               _%tl165894166808%_
               _%e165899166811%_
               _%hd165898166814%_
               _%tl165897166816%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match170435170436%_
                                                   _%e165872166739%_
                                                   _%hd165871166742%_
                                                   _%tl165870166744%_
                                                   _%e165875166747%_
                                                   _%hd165874166750%_
                                                   _%tl165873166752%_
                                                   _%e165878166755%_
                                                   _%hd165877166758%_
                                                   _%tl165876166760%_
                                                   _%e165881166763%_
                                                   _%hd165880166766%_
                                                   _%tl165879166768%_
                                                   _%e165884166771%_
                                                   _%hd165883166774%_
                                                   _%tl165882166776%_
                                                   _%e165887166779%_
                                                   _%hd165886166782%_
                                                   _%tl165885166784%_
                                                   _%e165890166787%_
                                                   _%hd165889166790%_
                                                   _%tl165888166792%_
                                                   _%e165893166795%_
                                                   _%hd165892166798%_
                                                   _%tl165891166800%_))))
                                          (_%__match170435170436%_
                                           _%e165872166739%_
                                           _%hd165871166742%_
                                           _%tl165870166744%_
                                           _%e165875166747%_
                                           _%hd165874166750%_
                                           _%tl165873166752%_
                                           _%e165878166755%_
                                           _%hd165877166758%_
                                           _%tl165876166760%_
                                           _%e165881166763%_
                                           _%hd165880166766%_
                                           _%tl165879166768%_
                                           _%e165884166771%_
                                           _%hd165883166774%_
                                           _%tl165882166776%_
                                           _%e165887166779%_
                                           _%hd165886166782%_
                                           _%tl165885166784%_
                                           _%e165890166787%_
                                           _%hd165889166790%_
                                           _%tl165888166792%_
                                           _%e165893166795%_
                                           _%hd165892166798%_
                                           _%tl165891166800%_))
                                      (_%__match170111170112%_
                                       _%e165872166739%_
                                       _%hd165871166742%_
                                       _%tl165870166744%_
                                       _%e165875166747%_
                                       _%hd165874166750%_
                                       _%tl165873166752%_
                                       _%e165878166755%_
                                       _%hd165877166758%_
                                       _%tl165876166760%_
                                       _%e165881166763%_
                                       _%hd165880166766%_
                                       _%tl165879166768%_
                                       _%e165884166771%_
                                       _%hd165883166774%_
                                       _%tl165882166776%_
                                       _%e165887166779%_
                                       _%hd165886166782%_
                                       _%tl165885166784%_
                                       _%e165890166787%_
                                       _%hd165889166790%_
                                       _%tl165888166792%_
                                       _%e165893166795%_
                                       _%hd165892166798%_
                                       _%tl165891166800%_
                                       _%e165896166803%_
                                       _%hd165895166806%_
                                       _%tl165894166808%_))
                                  (_%__match170435170436%_
                                   _%e165872166739%_
                                   _%hd165871166742%_
                                   _%tl165870166744%_
                                   _%e165875166747%_
                                   _%hd165874166750%_
                                   _%tl165873166752%_
                                   _%e165878166755%_
                                   _%hd165877166758%_
                                   _%tl165876166760%_
                                   _%e165881166763%_
                                   _%hd165880166766%_
                                   _%tl165879166768%_
                                   _%e165884166771%_
                                   _%hd165883166774%_
                                   _%tl165882166776%_
                                   _%e165887166779%_
                                   _%hd165886166782%_
                                   _%tl165885166784%_
                                   _%e165890166787%_
                                   _%hd165889166790%_
                                   _%tl165888166792%_
                                   _%e165893166795%_
                                   _%hd165892166798%_
                                   _%tl165891166800%_))))
                          (_%__match170435170436%_
                           _%e165872166739%_
                           _%hd165871166742%_
                           _%tl165870166744%_
                           _%e165875166747%_
                           _%hd165874166750%_
                           _%tl165873166752%_
                           _%e165878166755%_
                           _%hd165877166758%_
                           _%tl165876166760%_
                           _%e165881166763%_
                           _%hd165880166766%_
                           _%tl165879166768%_
                           _%e165884166771%_
                           _%hd165883166774%_
                           _%tl165882166776%_
                           _%e165887166779%_
                           _%hd165886166782%_
                           _%tl165885166784%_
                           _%e165890166787%_
                           _%hd165889166790%_
                           _%tl165888166792%_
                           _%e165893166795%_
                           _%hd165892166798%_
                           _%tl165891166800%_))))
                  (_%__match170373170374%_
                   _%e165872166739%_
                   _%hd165871166742%_
                   _%tl165870166744%_
                   _%e165875166747%_
                   _%hd165874166750%_
                   _%tl165873166752%_
                   _%e165878166755%_
                   _%hd165877166758%_
                   _%tl165876166760%_
                   _%e165881166763%_
                   _%hd165880166766%_
                   _%tl165879166768%_
                   _%e165884166771%_
                   _%hd165883166774%_
                   _%tl165882166776%_
                   _%e165887166779%_
                   _%hd165886166782%_
                   _%tl165885166784%_
                   _%e165890166787%_
                   _%hd165889166790%_
                   _%tl165888166792%_))
              (_%__kont169956169957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont169956169957%_))
                                          (_%__kont169956169957%_))
                                      (_%__kont169956169957%_))))
                              (_%__kont169956169957%_))))
                      (_%__kont169956169957%_))
                  (_%__kont169956169957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont169956169957%_))
                                              (_%__kont169956169957%_))
                                          (_%__kont169956169957%_))))
                                  (_%__kont169956169957%_))))
                          (_%__kont169956169957%_))))
                  (_%__kont169956169957%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self164794%_ _%stx164795%_)
        (letrec ((_%force-e164797%_
                  (lambda (_%target165853%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target165853%_ '()))
                                      '()))))))
          (let* ((_%__stx170440170441%_ _%stx164795%_)
                 (_%g164805165027%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170440170441%_)))))
            (let ((_%__kont170442170443%_
                   (lambda (_%L165799%_ _%L165800%_ _%L165801%_ _%L165802%_)
                     (let ((_%$method165847%_
                            (let ((__tmp171075
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self164794%_ 'methods)))
                                  (__tmp171074
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L165800%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171075 __tmp171074)))
                           (_%args165848%_
                            (map (lambda (_%g165835165837%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self164794%_
                                      _%g165835165837%_)))
                                 (let ((__tmp171076
                                        (lambda (_%g165839165842%_
                                                 _%g165840165844%_)
                                          (cons _%g165839165842%_
                                                _%g165840165844%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171076 '() _%L165799%_)))))
                       (let ((__tmp171077
                              (cons '%#call
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%force-e164797%_
                                             _%$method165847%_))
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self164794%_
                                                               'receiver))
                                                            '()))
                                                _%args165848%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171077 _%stx164795%_)))))
                  (_%__kont170446170447%_
                   (lambda (_%L165631%_
                            _%L165632%_
                            _%L165633%_
                            _%L165634%_
                            _%L165635%_)
                     (let ((_%$method165687%_
                            (let ((__tmp171079
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self164794%_ 'methods)))
                                  (__tmp171078
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L165632%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171079 __tmp171078)))
                           (_%args165688%_
                            (map (lambda (_%g165675165677%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self164794%_
                                      _%g165675165677%_)))
                                 (let ((__tmp171080
                                        (lambda (_%g165679165682%_
                                                 _%g165680165684%_)
                                          (cons _%g165679165682%_
                                                _%g165680165684%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171080 '() _%L165631%_)))))
                       (let ((__tmp171081
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (_%force-e164797%_
                                                   _%$method165687%_))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self164794%_ 'receiver))
                          '()))
              _%args165688%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171081 _%stx164795%_)))))
                  (_%__kont170450170451%_
                   (lambda (_%L165462%_ _%L165463%_ _%L165464%_)
                     (let* ((_%$field165496%_
                             (let ((__tmp171083
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self164794%_ 'slots)))
                                   (__tmp171082
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L165462%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp171083 __tmp171082)))
                            (__tmp171084
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self164794%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field165496%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self164794%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp171084 _%stx164795%_))))
                  (_%__kont170452170453%_
                   (lambda (_%L165336%_ _%L165337%_ _%L165338%_ _%L165339%_)
                     (let ((_%$field165374%_
                            (let ((__tmp171086
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self164794%_ 'slots)))
                                  (__tmp171085
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L165337%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171086 __tmp171085)))
                           (_%expr165375%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self164794%_ _%L165336%_))))
                       (let ((__tmp171087
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self164794%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field165374%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self164794%_ 'receiver))
                          '()))
              (cons _%expr165375%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171087 _%stx164795%_)))))
                  (_%__kont170454170455%_
                   (lambda (_%L165208%_ _%L165209%_)
                     (let* ((_%accessor165231%_
                             (let ((__tmp171088
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165209%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171088)))
                            (_%klass165233%_
                             (let ((__tmp171089
                                    (##structure-ref
                                     _%accessor165231%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx164795%_
                                __tmp171089)))
                            (_%slot165235%_
                             (##structure-ref
                              _%accessor165231%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp171090
                                       (##structure-ref
                                        _%accessor165231%_
                                        '4
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp171090))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165233%_
                                       _%slot165235%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165233%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx164795%_
                           (let* ((_%$field165241%_
                                   (let ((__tmp171091
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164794%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171091 _%slot165235%_)))
                                  (__tmp171092
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self164794%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self164794%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171092
                              _%stx164795%_))))))
                  (_%__kont170456170457%_
                   (lambda (_%L165103%_ _%L165104%_ _%L165105%_)
                     (let* ((_%mutator165133%_
                             (let ((__tmp171093
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165105%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171093)))
                            (_%klass165135%_
                             (let ((__tmp171094
                                    (##structure-ref
                                     _%mutator165133%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx164795%_
                                __tmp171094)))
                            (_%slot165137%_
                             (##structure-ref
                              _%mutator165133%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr165139%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self164794%_ _%L165103%_))))
                       (if (and (let ((__tmp171095
                                       (##structure-ref
                                        _%mutator165133%_
                                        '4
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp171095))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165135%_
                                       _%slot165137%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165135%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp171096
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L165105%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L165104%_
                                                                '()))
                                                    (cons _%expr165139%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171096 _%stx164795%_))
                           (let* ((_%$field165145%_
                                   (let ((__tmp171097
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164794%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171097 _%slot165137%_)))
                                  (__tmp171098
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self164794%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self164794%_ 'receiver))
                               '()))
                   (cons _%expr165139%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171098
                              _%stx164795%_))))))
                  (_%__kont170458170459%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self164794%_ _%stx164795%_)))))
              (let* ((_%__match170939170940%_
                      (lambda (_%e165001165039%_
                               _%hd165000165042%_
                               _%tl164999165044%_
                               _%e165004165047%_
                               _%hd165003165050%_
                               _%tl165002165052%_
                               _%e165007165055%_
                               _%hd165006165058%_
                               _%tl165005165060%_
                               _%e165010165063%_
                               _%hd165009165066%_
                               _%tl165008165068%_
                               _%e165013165071%_
                               _%hd165012165074%_
                               _%tl165011165076%_
                               _%e165016165079%_
                               _%hd165015165082%_
                               _%tl165014165084%_
                               _%e165019165087%_
                               _%hd165018165090%_
                               _%tl165017165092%_
                               _%e165022165095%_
                               _%hd165021165098%_
                               _%tl165020165100%_)
                        (let ((_%L165103%_ _%hd165021165098%_)
                              (_%L165104%_ _%hd165018165090%_)
                              (_%L165105%_ _%hd165009165066%_))
                          (if (and (let ((__tmp171099
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164794%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165104%_
                                      __tmp171099))
                                   (let ((__tmp171100
                                          (let ((__tmp171101
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165105%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171101))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171100
                                      'gxc#!mutator::t)))
                              (_%__kont170456170457%_
                               _%L165103%_
                               _%L165104%_
                               _%L165105%_)
                              (_%__kont170458170459%_)))))
                     (_%__match170937170938%_
                      (lambda (_%e165001165039%_
                               _%hd165000165042%_
                               _%tl164999165044%_
                               _%e165004165047%_
                               _%hd165003165050%_
                               _%tl165002165052%_
                               _%e165007165055%_
                               _%hd165006165058%_
                               _%tl165005165060%_
                               _%e165010165063%_
                               _%hd165009165066%_
                               _%tl165008165068%_
                               _%e165013165071%_
                               _%hd165012165074%_
                               _%tl165011165076%_
                               _%e165016165079%_
                               _%hd165015165082%_
                               _%tl165014165084%_
                               _%e165019165087%_
                               _%hd165018165090%_
                               _%tl165017165092%_
                               _%e165022165095%_
                               _%hd165021165098%_
                               _%tl165020165100%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165020165100%_))
                            (_%__match170939170940%_
                             _%e165001165039%_
                             _%hd165000165042%_
                             _%tl164999165044%_
                             _%e165004165047%_
                             _%hd165003165050%_
                             _%tl165002165052%_
                             _%e165007165055%_
                             _%hd165006165058%_
                             _%tl165005165060%_
                             _%e165010165063%_
                             _%hd165009165066%_
                             _%tl165008165068%_
                             _%e165013165071%_
                             _%hd165012165074%_
                             _%tl165011165076%_
                             _%e165016165079%_
                             _%hd165015165082%_
                             _%tl165014165084%_
                             _%e165019165087%_
                             _%hd165018165090%_
                             _%tl165017165092%_
                             _%e165022165095%_
                             _%hd165021165098%_
                             _%tl165020165100%_)
                            (_%__kont170458170459%_))))
                     (_%__match170931170932%_
                      (lambda (_%e165001165039%_
                               _%hd165000165042%_
                               _%tl164999165044%_
                               _%e165004165047%_
                               _%hd165003165050%_
                               _%tl165002165052%_
                               _%e165007165055%_
                               _%hd165006165058%_
                               _%tl165005165060%_
                               _%e165010165063%_
                               _%hd165009165066%_
                               _%tl165008165068%_
                               _%e165013165071%_
                               _%hd165012165074%_
                               _%tl165011165076%_
                               _%e165016165079%_
                               _%hd165015165082%_
                               _%tl165014165084%_
                               _%e165019165087%_
                               _%hd165018165090%_
                               _%tl165017165092%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165011165076%_))
                            (let ((_%e165022165095%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165011165076%_))))
                              (let ((_%tl165020165100%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165022165095%_)))
                                    (_%hd165021165098%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165022165095%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165020165100%_))
                                    (_%__match170939170940%_
                                     _%e165001165039%_
                                     _%hd165000165042%_
                                     _%tl164999165044%_
                                     _%e165004165047%_
                                     _%hd165003165050%_
                                     _%tl165002165052%_
                                     _%e165007165055%_
                                     _%hd165006165058%_
                                     _%tl165005165060%_
                                     _%e165010165063%_
                                     _%hd165009165066%_
                                     _%tl165008165068%_
                                     _%e165013165071%_
                                     _%hd165012165074%_
                                     _%tl165011165076%_
                                     _%e165016165079%_
                                     _%hd165015165082%_
                                     _%tl165014165084%_
                                     _%e165019165087%_
                                     _%hd165018165090%_
                                     _%tl165017165092%_
                                     _%e165022165095%_
                                     _%hd165021165098%_
                                     _%tl165020165100%_)
                                    (_%__kont170458170459%_))))
                            (_%__kont170458170459%_))))
                     (_%__match170877170878%_
                      (lambda (_%e164977165152%_
                               _%hd164976165155%_
                               _%tl164975165157%_
                               _%e164980165160%_
                               _%hd164979165163%_
                               _%tl164978165165%_
                               _%e164983165168%_
                               _%hd164982165171%_
                               _%tl164981165173%_
                               _%e164986165176%_
                               _%hd164985165179%_
                               _%tl164984165181%_
                               _%e164989165184%_
                               _%hd164988165187%_
                               _%tl164987165189%_
                               _%e164992165192%_
                               _%hd164991165195%_
                               _%tl164990165197%_
                               _%e164995165200%_
                               _%hd164994165203%_
                               _%tl164993165205%_)
                        (let ((_%L165208%_ _%hd164994165203%_)
                              (_%L165209%_ _%hd164985165179%_))
                          (if (and (let ((__tmp171102
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164794%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165208%_
                                      __tmp171102))
                                   (let ((__tmp171103
                                          (let ((__tmp171104
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165209%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171104))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171103
                                      'gxc#!accessor::t)))
                              (_%__kont170454170455%_ _%L165208%_ _%L165209%_)
                              (_%__kont170458170459%_)))))
                     (_%__match170875170876%_
                      (lambda (_%e164977165152%_
                               _%hd164976165155%_
                               _%tl164975165157%_
                               _%e164980165160%_
                               _%hd164979165163%_
                               _%tl164978165165%_
                               _%e164983165168%_
                               _%hd164982165171%_
                               _%tl164981165173%_
                               _%e164986165176%_
                               _%hd164985165179%_
                               _%tl164984165181%_
                               _%e164989165184%_
                               _%hd164988165187%_
                               _%tl164987165189%_
                               _%e164992165192%_
                               _%hd164991165195%_
                               _%tl164990165197%_
                               _%e164995165200%_
                               _%hd164994165203%_
                               _%tl164993165205%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl164987165189%_))
                            (_%__match170877170878%_
                             _%e164977165152%_
                             _%hd164976165155%_
                             _%tl164975165157%_
                             _%e164980165160%_
                             _%hd164979165163%_
                             _%tl164978165165%_
                             _%e164983165168%_
                             _%hd164982165171%_
                             _%tl164981165173%_
                             _%e164986165176%_
                             _%hd164985165179%_
                             _%tl164984165181%_
                             _%e164989165184%_
                             _%hd164988165187%_
                             _%tl164987165189%_
                             _%e164992165192%_
                             _%hd164991165195%_
                             _%tl164990165197%_
                             _%e164995165200%_
                             _%hd164994165203%_
                             _%tl164993165205%_)
                            (_%__match170931170932%_
                             _%e164977165152%_
                             _%hd164976165155%_
                             _%tl164975165157%_
                             _%e164980165160%_
                             _%hd164979165163%_
                             _%tl164978165165%_
                             _%e164983165168%_
                             _%hd164982165171%_
                             _%tl164981165173%_
                             _%e164986165176%_
                             _%hd164985165179%_
                             _%tl164984165181%_
                             _%e164989165184%_
                             _%hd164988165187%_
                             _%tl164987165189%_
                             _%e164992165192%_
                             _%hd164991165195%_
                             _%tl164990165197%_
                             _%e164995165200%_
                             _%hd164994165203%_
                             _%tl164993165205%_))))
                     (_%__match170821170822%_
                      (lambda (_%e164942165248%_
                               _%hd164941165251%_
                               _%tl164940165253%_
                               _%e164945165256%_
                               _%hd164944165259%_
                               _%tl164943165261%_
                               _%e164948165264%_
                               _%hd164947165267%_
                               _%tl164946165269%_
                               _%e164951165272%_
                               _%hd164950165275%_
                               _%tl164949165277%_
                               _%e164954165280%_
                               _%hd164953165283%_
                               _%tl164952165285%_
                               _%e164957165288%_
                               _%hd164956165291%_
                               _%tl164955165293%_
                               _%e164960165296%_
                               _%hd164959165299%_
                               _%tl164958165301%_
                               _%e164963165304%_
                               _%hd164962165307%_
                               _%tl164961165309%_
                               _%e164966165312%_
                               _%hd164965165315%_
                               _%tl164964165317%_
                               _%e164969165320%_
                               _%hd164968165323%_
                               _%tl164967165325%_
                               _%e164972165328%_
                               _%hd164971165331%_
                               _%tl164970165333%_)
                        (let ((_%L165336%_ _%hd164971165331%_)
                              (_%L165337%_ _%hd164968165323%_)
                              (_%L165338%_ _%hd164959165299%_)
                              (_%L165339%_ _%hd164950165275%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165339%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165339%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp171105
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164794%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165338%_
                                      __tmp171105)))
                              (_%__kont170452170453%_
                               _%L165336%_
                               _%L165337%_
                               _%L165338%_
                               _%L165339%_)
                              (_%__kont170458170459%_)))))
                     (_%__match170813170814%_
                      (lambda (_%e164942165248%_
                               _%hd164941165251%_
                               _%tl164940165253%_
                               _%e164945165256%_
                               _%hd164944165259%_
                               _%tl164943165261%_
                               _%e164948165264%_
                               _%hd164947165267%_
                               _%tl164946165269%_
                               _%e164951165272%_
                               _%hd164950165275%_
                               _%tl164949165277%_
                               _%e164954165280%_
                               _%hd164953165283%_
                               _%tl164952165285%_
                               _%e164957165288%_
                               _%hd164956165291%_
                               _%tl164955165293%_
                               _%e164960165296%_
                               _%hd164959165299%_
                               _%tl164958165301%_
                               _%e164963165304%_
                               _%hd164962165307%_
                               _%tl164961165309%_
                               _%e164966165312%_
                               _%hd164965165315%_
                               _%tl164964165317%_
                               _%e164969165320%_
                               _%hd164968165323%_
                               _%tl164967165325%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl164961165309%_))
                            (let ((_%e164972165328%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl164961165309%_))))
                              (let ((_%tl164970165333%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e164972165328%_)))
                                    (_%hd164971165331%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e164972165328%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl164970165333%_))
                                    (_%__match170821170822%_
                                     _%e164942165248%_
                                     _%hd164941165251%_
                                     _%tl164940165253%_
                                     _%e164945165256%_
                                     _%hd164944165259%_
                                     _%tl164943165261%_
                                     _%e164948165264%_
                                     _%hd164947165267%_
                                     _%tl164946165269%_
                                     _%e164951165272%_
                                     _%hd164950165275%_
                                     _%tl164949165277%_
                                     _%e164954165280%_
                                     _%hd164953165283%_
                                     _%tl164952165285%_
                                     _%e164957165288%_
                                     _%hd164956165291%_
                                     _%tl164955165293%_
                                     _%e164960165296%_
                                     _%hd164959165299%_
                                     _%tl164958165301%_
                                     _%e164963165304%_
                                     _%hd164962165307%_
                                     _%tl164961165309%_
                                     _%e164966165312%_
                                     _%hd164965165315%_
                                     _%tl164964165317%_
                                     _%e164969165320%_
                                     _%hd164968165323%_
                                     _%tl164967165325%_
                                     _%e164972165328%_
                                     _%hd164971165331%_
                                     _%tl164970165333%_)
                                    (_%__kont170458170459%_))))
                            (_%__match170937170938%_
                             _%e164942165248%_
                             _%hd164941165251%_
                             _%tl164940165253%_
                             _%e164945165256%_
                             _%hd164944165259%_
                             _%tl164943165261%_
                             _%e164948165264%_
                             _%hd164947165267%_
                             _%tl164946165269%_
                             _%e164951165272%_
                             _%hd164950165275%_
                             _%tl164949165277%_
                             _%e164954165280%_
                             _%hd164953165283%_
                             _%tl164952165285%_
                             _%e164957165288%_
                             _%hd164956165291%_
                             _%tl164955165293%_
                             _%e164960165296%_
                             _%hd164959165299%_
                             _%tl164958165301%_
                             _%e164963165304%_
                             _%hd164962165307%_
                             _%tl164961165309%_))))
                     (_%__match170735170736%_
                      (lambda (_%e164908165382%_
                               _%hd164907165385%_
                               _%tl164906165387%_
                               _%e164911165390%_
                               _%hd164910165393%_
                               _%tl164909165395%_
                               _%e164914165398%_
                               _%hd164913165401%_
                               _%tl164912165403%_
                               _%e164917165406%_
                               _%hd164916165409%_
                               _%tl164915165411%_
                               _%e164920165414%_
                               _%hd164919165417%_
                               _%tl164918165419%_
                               _%e164923165422%_
                               _%hd164922165425%_
                               _%tl164921165427%_
                               _%e164926165430%_
                               _%hd164925165433%_
                               _%tl164924165435%_
                               _%e164929165438%_
                               _%hd164928165441%_
                               _%tl164927165443%_
                               _%e164932165446%_
                               _%hd164931165449%_
                               _%tl164930165451%_
                               _%e164935165454%_
                               _%hd164934165457%_
                               _%tl164933165459%_)
                        (let ((_%L165462%_ _%hd164934165457%_)
                              (_%L165463%_ _%hd164925165433%_)
                              (_%L165464%_ _%hd164916165409%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165464%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165464%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp171106
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164794%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165463%_
                                      __tmp171106)))
                              (_%__kont170450170451%_
                               _%L165462%_
                               _%L165463%_
                               _%L165464%_)
                              (_%__match170939170940%_
                               _%e164908165382%_
                               _%hd164907165385%_
                               _%tl164906165387%_
                               _%e164911165390%_
                               _%hd164910165393%_
                               _%tl164909165395%_
                               _%e164914165398%_
                               _%hd164913165401%_
                               _%tl164912165403%_
                               _%e164917165406%_
                               _%hd164916165409%_
                               _%tl164915165411%_
                               _%e164920165414%_
                               _%hd164919165417%_
                               _%tl164918165419%_
                               _%e164923165422%_
                               _%hd164922165425%_
                               _%tl164921165427%_
                               _%e164926165430%_
                               _%hd164925165433%_
                               _%tl164924165435%_
                               _%e164929165438%_
                               _%hd164928165441%_
                               _%tl164927165443%_)))))
                     (_%__match170733170734%_
                      (lambda (_%e164908165382%_
                               _%hd164907165385%_
                               _%tl164906165387%_
                               _%e164911165390%_
                               _%hd164910165393%_
                               _%tl164909165395%_
                               _%e164914165398%_
                               _%hd164913165401%_
                               _%tl164912165403%_
                               _%e164917165406%_
                               _%hd164916165409%_
                               _%tl164915165411%_
                               _%e164920165414%_
                               _%hd164919165417%_
                               _%tl164918165419%_
                               _%e164923165422%_
                               _%hd164922165425%_
                               _%tl164921165427%_
                               _%e164926165430%_
                               _%hd164925165433%_
                               _%tl164924165435%_
                               _%e164929165438%_
                               _%hd164928165441%_
                               _%tl164927165443%_
                               _%e164932165446%_
                               _%hd164931165449%_
                               _%tl164930165451%_
                               _%e164935165454%_
                               _%hd164934165457%_
                               _%tl164933165459%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl164927165443%_))
                            (_%__match170735170736%_
                             _%e164908165382%_
                             _%hd164907165385%_
                             _%tl164906165387%_
                             _%e164911165390%_
                             _%hd164910165393%_
                             _%tl164909165395%_
                             _%e164914165398%_
                             _%hd164913165401%_
                             _%tl164912165403%_
                             _%e164917165406%_
                             _%hd164916165409%_
                             _%tl164915165411%_
                             _%e164920165414%_
                             _%hd164919165417%_
                             _%tl164918165419%_
                             _%e164923165422%_
                             _%hd164922165425%_
                             _%tl164921165427%_
                             _%e164926165430%_
                             _%hd164925165433%_
                             _%tl164924165435%_
                             _%e164929165438%_
                             _%hd164928165441%_
                             _%tl164927165443%_
                             _%e164932165446%_
                             _%hd164931165449%_
                             _%tl164930165451%_
                             _%e164935165454%_
                             _%hd164934165457%_
                             _%tl164933165459%_)
                            (_%__match170813170814%_
                             _%e164908165382%_
                             _%hd164907165385%_
                             _%tl164906165387%_
                             _%e164911165390%_
                             _%hd164910165393%_
                             _%tl164909165395%_
                             _%e164914165398%_
                             _%hd164913165401%_
                             _%tl164912165403%_
                             _%e164917165406%_
                             _%hd164916165409%_
                             _%tl164915165411%_
                             _%e164920165414%_
                             _%hd164919165417%_
                             _%tl164918165419%_
                             _%e164923165422%_
                             _%hd164922165425%_
                             _%tl164921165427%_
                             _%e164926165430%_
                             _%hd164925165433%_
                             _%tl164924165435%_
                             _%e164929165438%_
                             _%hd164928165441%_
                             _%tl164927165443%_
                             _%e164932165446%_
                             _%hd164931165449%_
                             _%tl164930165451%_
                             _%e164935165454%_
                             _%hd164934165457%_
                             _%tl164933165459%_))))
                     (_%__match170723170724%_
                      (lambda (_%e164908165382%_
                               _%hd164907165385%_
                               _%tl164906165387%_
                               _%e164911165390%_
                               _%hd164910165393%_
                               _%tl164909165395%_
                               _%e164914165398%_
                               _%hd164913165401%_
                               _%tl164912165403%_
                               _%e164917165406%_
                               _%hd164916165409%_
                               _%tl164915165411%_
                               _%e164920165414%_
                               _%hd164919165417%_
                               _%tl164918165419%_
                               _%e164923165422%_
                               _%hd164922165425%_
                               _%tl164921165427%_
                               _%e164926165430%_
                               _%hd164925165433%_
                               _%tl164924165435%_
                               _%e164929165438%_
                               _%hd164928165441%_
                               _%tl164927165443%_
                               _%e164932165446%_
                               _%hd164931165449%_
                               _%tl164930165451%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd164931165449%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl164930165451%_))
                                (let ((_%e164935165454%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl164930165451%_))))
                                  (let ((_%tl164933165459%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e164935165454%_)))
                                        (_%hd164934165457%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e164935165454%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl164933165459%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl164927165443%_))
                                            (_%__match170735170736%_
                                             _%e164908165382%_
                                             _%hd164907165385%_
                                             _%tl164906165387%_
                                             _%e164911165390%_
                                             _%hd164910165393%_
                                             _%tl164909165395%_
                                             _%e164914165398%_
                                             _%hd164913165401%_
                                             _%tl164912165403%_
                                             _%e164917165406%_
                                             _%hd164916165409%_
                                             _%tl164915165411%_
                                             _%e164920165414%_
                                             _%hd164919165417%_
                                             _%tl164918165419%_
                                             _%e164923165422%_
                                             _%hd164922165425%_
                                             _%tl164921165427%_
                                             _%e164926165430%_
                                             _%hd164925165433%_
                                             _%tl164924165435%_
                                             _%e164929165438%_
                                             _%hd164928165441%_
                                             _%tl164927165443%_
                                             _%e164932165446%_
                                             _%hd164931165449%_
                                             _%tl164930165451%_
                                             _%e164935165454%_
                                             _%hd164934165457%_
                                             _%tl164933165459%_)
                                            (_%__match170813170814%_
                                             _%e164908165382%_
                                             _%hd164907165385%_
                                             _%tl164906165387%_
                                             _%e164911165390%_
                                             _%hd164910165393%_
                                             _%tl164909165395%_
                                             _%e164914165398%_
                                             _%hd164913165401%_
                                             _%tl164912165403%_
                                             _%e164917165406%_
                                             _%hd164916165409%_
                                             _%tl164915165411%_
                                             _%e164920165414%_
                                             _%hd164919165417%_
                                             _%tl164918165419%_
                                             _%e164923165422%_
                                             _%hd164922165425%_
                                             _%tl164921165427%_
                                             _%e164926165430%_
                                             _%hd164925165433%_
                                             _%tl164924165435%_
                                             _%e164929165438%_
                                             _%hd164928165441%_
                                             _%tl164927165443%_
                                             _%e164932165446%_
                                             _%hd164931165449%_
                                             _%tl164930165451%_
                                             _%e164935165454%_
                                             _%hd164934165457%_
                                             _%tl164933165459%_))
                                        (_%__match170937170938%_
                                         _%e164908165382%_
                                         _%hd164907165385%_
                                         _%tl164906165387%_
                                         _%e164911165390%_
                                         _%hd164910165393%_
                                         _%tl164909165395%_
                                         _%e164914165398%_
                                         _%hd164913165401%_
                                         _%tl164912165403%_
                                         _%e164917165406%_
                                         _%hd164916165409%_
                                         _%tl164915165411%_
                                         _%e164920165414%_
                                         _%hd164919165417%_
                                         _%tl164918165419%_
                                         _%e164923165422%_
                                         _%hd164922165425%_
                                         _%tl164921165427%_
                                         _%e164926165430%_
                                         _%hd164925165433%_
                                         _%tl164924165435%_
                                         _%e164929165438%_
                                         _%hd164928165441%_
                                         _%tl164927165443%_))))
                                (_%__match170937170938%_
                                 _%e164908165382%_
                                 _%hd164907165385%_
                                 _%tl164906165387%_
                                 _%e164911165390%_
                                 _%hd164910165393%_
                                 _%tl164909165395%_
                                 _%e164914165398%_
                                 _%hd164913165401%_
                                 _%tl164912165403%_
                                 _%e164917165406%_
                                 _%hd164916165409%_
                                 _%tl164915165411%_
                                 _%e164920165414%_
                                 _%hd164919165417%_
                                 _%tl164918165419%_
                                 _%e164923165422%_
                                 _%hd164922165425%_
                                 _%tl164921165427%_
                                 _%e164926165430%_
                                 _%hd164925165433%_
                                 _%tl164924165435%_
                                 _%e164929165438%_
                                 _%hd164928165441%_
                                 _%tl164927165443%_))
                            (_%__match170937170938%_
                             _%e164908165382%_
                             _%hd164907165385%_
                             _%tl164906165387%_
                             _%e164911165390%_
                             _%hd164910165393%_
                             _%tl164909165395%_
                             _%e164914165398%_
                             _%hd164913165401%_
                             _%tl164912165403%_
                             _%e164917165406%_
                             _%hd164916165409%_
                             _%tl164915165411%_
                             _%e164920165414%_
                             _%hd164919165417%_
                             _%tl164918165419%_
                             _%e164923165422%_
                             _%hd164922165425%_
                             _%tl164921165427%_
                             _%e164926165430%_
                             _%hd164925165433%_
                             _%tl164924165435%_
                             _%e164929165438%_
                             _%hd164928165441%_
                             _%tl164927165443%_))))
                     (_%__match170655170656%_
                      (lambda (_%e164857165503%_
                               _%hd164856165506%_
                               _%tl164855165508%_
                               _%e164860165511%_
                               _%hd164859165514%_
                               _%tl164858165516%_
                               _%e164863165519%_
                               _%hd164862165522%_
                               _%tl164861165524%_
                               _%e164866165527%_
                               _%hd164865165530%_
                               _%tl164864165532%_
                               _%e164869165535%_
                               _%hd164868165538%_
                               _%tl164867165540%_
                               _%e164872165543%_
                               _%hd164871165546%_
                               _%tl164870165548%_
                               _%e164875165551%_
                               _%hd164874165554%_
                               _%tl164873165556%_
                               _%e164878165559%_
                               _%hd164877165562%_
                               _%tl164876165564%_
                               _%e164881165567%_
                               _%hd164880165570%_
                               _%tl164879165572%_
                               _%e164884165575%_
                               _%hd164883165578%_
                               _%tl164882165580%_
                               _%e164887165583%_
                               _%hd164886165586%_
                               _%tl164885165588%_
                               _%e164890165591%_
                               _%hd164889165594%_
                               _%tl164888165596%_
                               _%e164893165599%_
                               _%hd164892165602%_
                               _%tl164891165604%_
                               _%__splice170448170449%_
                               _%target164894165607%_
                               _%tl164896165609%_)
                        (letrec ((_%loop164897165612%_
                                  (lambda (_%hd164895165615%_
                                           _%args164901165617%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd164895165615%_))
                                        (let ((_%e164898165620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd164895165615%_))))
                                          (let ((_%lp-tl164900165625%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e164898165620%_)))
                                                (_%lp-hd164899165623%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e164898165620%_))))
                                            (let ((__tmp171107
                                                   (cons _%lp-hd164899165623%_
                                                         _%args164901165617%_)))
                                              (declare (not safe))
                                              (_%loop164897165612%_
                                               _%lp-tl164900165625%_
                                               __tmp171107))))
                                        (let ((_%args164902165628%_
                                               (reverse _%args164901165617%_)))
                                          (let ((_%L165631%_
                                                 _%args164902165628%_)
                                                (_%L165632%_
                                                 _%hd164892165602%_)
                                                (_%L165633%_
                                                 _%hd164883165578%_)
                                                (_%L165634%_
                                                 _%hd164874165554%_)
                                                (_%L165635%_
                                                 _%hd164865165530%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L165635%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L165634%_
                                                        'call-method))
                                                     (let ((__tmp171108
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self164794%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L165633%_
                                                        __tmp171108)))
                                                (_%__kont170446170447%_
                                                 _%L165631%_
                                                 _%L165632%_
                                                 _%L165633%_
                                                 _%L165634%_
                                                 _%L165635%_)
                                                (_%__kont170458170459%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop164897165612%_
                             _%target164894165607%_
                             '())))))
                     (_%__match170613170614%_
                      (lambda (_%e164857165503%_
                               _%hd164856165506%_
                               _%tl164855165508%_
                               _%e164860165511%_
                               _%hd164859165514%_
                               _%tl164858165516%_
                               _%e164863165519%_
                               _%hd164862165522%_
                               _%tl164861165524%_
                               _%e164866165527%_
                               _%hd164865165530%_
                               _%tl164864165532%_
                               _%e164869165535%_
                               _%hd164868165538%_
                               _%tl164867165540%_
                               _%e164872165543%_
                               _%hd164871165546%_
                               _%tl164870165548%_
                               _%e164875165551%_
                               _%hd164874165554%_
                               _%tl164873165556%_
                               _%e164878165559%_
                               _%hd164877165562%_
                               _%tl164876165564%_
                               _%e164881165567%_
                               _%hd164880165570%_
                               _%tl164879165572%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd164880165570%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl164879165572%_))
                                (let ((_%e164884165575%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl164879165572%_))))
                                  (let ((_%tl164882165580%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e164884165575%_)))
                                        (_%hd164883165578%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e164884165575%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl164882165580%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl164876165564%_))
                                            (let ((_%e164887165583%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl164876165564%_))))
                                              (let ((_%tl164885165588%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e164887165583%_)))
                                                    (_%hd164886165586%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e164887165583%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd164886165586%_))
                                                    (let ((_%e164890165591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd164886165586%_))))
                                                      (let ((_%tl164888165596%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e164890165591%_)))
                    (_%hd164889165594%_
                     (let () (declare (not safe)) (##car _%e164890165591%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd164889165594%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd164889165594%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl164888165596%_))
                            (let ((_%e164893165599%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl164888165596%_))))
                              (let ((_%tl164891165604%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e164893165599%_)))
                                    (_%hd164892165602%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e164893165599%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl164891165604%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl164885165588%_))
                                        (let ((_%__splice170448170449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl164885165588%_
                                                  '0))))
                                          (let ((_%tl164896165609%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice170448170449%_
                                                    '1)))
                                                (_%target164894165607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice170448170449%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl164896165609%_))
                                                (_%__match170655170656%_
                                                 _%e164857165503%_
                                                 _%hd164856165506%_
                                                 _%tl164855165508%_
                                                 _%e164860165511%_
                                                 _%hd164859165514%_
                                                 _%tl164858165516%_
                                                 _%e164863165519%_
                                                 _%hd164862165522%_
                                                 _%tl164861165524%_
                                                 _%e164866165527%_
                                                 _%hd164865165530%_
                                                 _%tl164864165532%_
                                                 _%e164869165535%_
                                                 _%hd164868165538%_
                                                 _%tl164867165540%_
                                                 _%e164872165543%_
                                                 _%hd164871165546%_
                                                 _%tl164870165548%_
                                                 _%e164875165551%_
                                                 _%hd164874165554%_
                                                 _%tl164873165556%_
                                                 _%e164878165559%_
                                                 _%hd164877165562%_
                                                 _%tl164876165564%_
                                                 _%e164881165567%_
                                                 _%hd164880165570%_
                                                 _%tl164879165572%_
                                                 _%e164884165575%_
                                                 _%hd164883165578%_
                                                 _%tl164882165580%_
                                                 _%e164887165583%_
                                                 _%hd164886165586%_
                                                 _%tl164885165588%_
                                                 _%e164890165591%_
                                                 _%hd164889165594%_
                                                 _%tl164888165596%_
                                                 _%e164893165599%_
                                                 _%hd164892165602%_
                                                 _%tl164891165604%_
                                                 _%__splice170448170449%_
                                                 _%target164894165607%_
                                                 _%tl164896165609%_)
                                                (_%__kont170458170459%_))))
                                        (_%__kont170458170459%_))
                                    (_%__kont170458170459%_))))
                            (_%__kont170458170459%_))
                        (_%__kont170458170459%_))
                    (_%__kont170458170459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170458170459%_))))
                                            (_%__match170937170938%_
                                             _%e164857165503%_
                                             _%hd164856165506%_
                                             _%tl164855165508%_
                                             _%e164860165511%_
                                             _%hd164859165514%_
                                             _%tl164858165516%_
                                             _%e164863165519%_
                                             _%hd164862165522%_
                                             _%tl164861165524%_
                                             _%e164866165527%_
                                             _%hd164865165530%_
                                             _%tl164864165532%_
                                             _%e164869165535%_
                                             _%hd164868165538%_
                                             _%tl164867165540%_
                                             _%e164872165543%_
                                             _%hd164871165546%_
                                             _%tl164870165548%_
                                             _%e164875165551%_
                                             _%hd164874165554%_
                                             _%tl164873165556%_
                                             _%e164878165559%_
                                             _%hd164877165562%_
                                             _%tl164876165564%_))
                                        (_%__match170937170938%_
                                         _%e164857165503%_
                                         _%hd164856165506%_
                                         _%tl164855165508%_
                                         _%e164860165511%_
                                         _%hd164859165514%_
                                         _%tl164858165516%_
                                         _%e164863165519%_
                                         _%hd164862165522%_
                                         _%tl164861165524%_
                                         _%e164866165527%_
                                         _%hd164865165530%_
                                         _%tl164864165532%_
                                         _%e164869165535%_
                                         _%hd164868165538%_
                                         _%tl164867165540%_
                                         _%e164872165543%_
                                         _%hd164871165546%_
                                         _%tl164870165548%_
                                         _%e164875165551%_
                                         _%hd164874165554%_
                                         _%tl164873165556%_
                                         _%e164878165559%_
                                         _%hd164877165562%_
                                         _%tl164876165564%_))))
                                (_%__match170937170938%_
                                 _%e164857165503%_
                                 _%hd164856165506%_
                                 _%tl164855165508%_
                                 _%e164860165511%_
                                 _%hd164859165514%_
                                 _%tl164858165516%_
                                 _%e164863165519%_
                                 _%hd164862165522%_
                                 _%tl164861165524%_
                                 _%e164866165527%_
                                 _%hd164865165530%_
                                 _%tl164864165532%_
                                 _%e164869165535%_
                                 _%hd164868165538%_
                                 _%tl164867165540%_
                                 _%e164872165543%_
                                 _%hd164871165546%_
                                 _%tl164870165548%_
                                 _%e164875165551%_
                                 _%hd164874165554%_
                                 _%tl164873165556%_
                                 _%e164878165559%_
                                 _%hd164877165562%_
                                 _%tl164876165564%_))
                            (_%__match170723170724%_
                             _%e164857165503%_
                             _%hd164856165506%_
                             _%tl164855165508%_
                             _%e164860165511%_
                             _%hd164859165514%_
                             _%tl164858165516%_
                             _%e164863165519%_
                             _%hd164862165522%_
                             _%tl164861165524%_
                             _%e164866165527%_
                             _%hd164865165530%_
                             _%tl164864165532%_
                             _%e164869165535%_
                             _%hd164868165538%_
                             _%tl164867165540%_
                             _%e164872165543%_
                             _%hd164871165546%_
                             _%tl164870165548%_
                             _%e164875165551%_
                             _%hd164874165554%_
                             _%tl164873165556%_
                             _%e164878165559%_
                             _%hd164877165562%_
                             _%tl164876165564%_
                             _%e164881165567%_
                             _%hd164880165570%_
                             _%tl164879165572%_))))
                     (_%__match170545170546%_
                      (lambda (_%e164813165695%_
                               _%hd164812165698%_
                               _%tl164811165700%_
                               _%e164816165703%_
                               _%hd164815165706%_
                               _%tl164814165708%_
                               _%e164819165711%_
                               _%hd164818165714%_
                               _%tl164817165716%_
                               _%e164822165719%_
                               _%hd164821165722%_
                               _%tl164820165724%_
                               _%e164825165727%_
                               _%hd164824165730%_
                               _%tl164823165732%_
                               _%e164828165735%_
                               _%hd164827165738%_
                               _%tl164826165740%_
                               _%e164831165743%_
                               _%hd164830165746%_
                               _%tl164829165748%_
                               _%e164834165751%_
                               _%hd164833165754%_
                               _%tl164832165756%_
                               _%e164837165759%_
                               _%hd164836165762%_
                               _%tl164835165764%_
                               _%e164840165767%_
                               _%hd164839165770%_
                               _%tl164838165772%_
                               _%__splice170444170445%_
                               _%target164841165775%_
                               _%tl164843165777%_)
                        (letrec ((_%loop164844165780%_
                                  (lambda (_%hd164842165783%_
                                           _%args164848165785%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd164842165783%_))
                                        (let ((_%e164845165788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd164842165783%_))))
                                          (let ((_%lp-tl164847165793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e164845165788%_)))
                                                (_%lp-hd164846165791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e164845165788%_))))
                                            (let ((__tmp171109
                                                   (cons _%lp-hd164846165791%_
                                                         _%args164848165785%_)))
                                              (declare (not safe))
                                              (_%loop164844165780%_
                                               _%lp-tl164847165793%_
                                               __tmp171109))))
                                        (let ((_%args164849165796%_
                                               (reverse _%args164848165785%_)))
                                          (let ((_%L165799%_
                                                 _%args164849165796%_)
                                                (_%L165800%_
                                                 _%hd164839165770%_)
                                                (_%L165801%_
                                                 _%hd164830165746%_)
                                                (_%L165802%_
                                                 _%hd164821165722%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L165802%_
                                                        'call-method))
                                                     (let ((__tmp171110
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self164794%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L165801%_
                                                        __tmp171110)))
                                                (_%__kont170442170443%_
                                                 _%L165799%_
                                                 _%L165800%_
                                                 _%L165801%_
                                                 _%L165802%_)
                                                (_%__match170733170734%_
                                                 _%e164813165695%_
                                                 _%hd164812165698%_
                                                 _%tl164811165700%_
                                                 _%e164816165703%_
                                                 _%hd164815165706%_
                                                 _%tl164814165708%_
                                                 _%e164819165711%_
                                                 _%hd164818165714%_
                                                 _%tl164817165716%_
                                                 _%e164822165719%_
                                                 _%hd164821165722%_
                                                 _%tl164820165724%_
                                                 _%e164825165727%_
                                                 _%hd164824165730%_
                                                 _%tl164823165732%_
                                                 _%e164828165735%_
                                                 _%hd164827165738%_
                                                 _%tl164826165740%_
                                                 _%e164831165743%_
                                                 _%hd164830165746%_
                                                 _%tl164829165748%_
                                                 _%e164834165751%_
                                                 _%hd164833165754%_
                                                 _%tl164832165756%_
                                                 _%e164837165759%_
                                                 _%hd164836165762%_
                                                 _%tl164835165764%_
                                                 _%e164840165767%_
                                                 _%hd164839165770%_
                                                 _%tl164838165772%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop164844165780%_
                             _%target164841165775%_
                             '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170440170441%_))
                    (let ((_%e164813165695%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170440170441%_))))
                      (let ((_%tl164811165700%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e164813165695%_)))
                            (_%hd164812165698%_
                             (let ()
                               (declare (not safe))
                               (##car _%e164813165695%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl164811165700%_))
                            (let ((_%e164816165703%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl164811165700%_))))
                              (let ((_%tl164814165708%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e164816165703%_)))
                                    (_%hd164815165706%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e164816165703%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd164815165706%_))
                                    (let ((_%e164819165711%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd164815165706%_))))
                                      (let ((_%tl164817165716%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e164819165711%_)))
                                            (_%hd164818165714%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e164819165711%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd164818165714%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd164818165714%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl164817165716%_))
                                                    (let ((_%e164822165719%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl164817165716%_))))
                                                      (let ((_%tl164820165724%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e164822165719%_)))
                    (_%hd164821165722%_
                     (let () (declare (not safe)) (##car _%e164822165719%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl164820165724%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl164814165708%_))
                        (let ((_%e164825165727%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl164814165708%_))))
                          (let ((_%tl164823165732%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164825165727%_)))
                                (_%hd164824165730%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164825165727%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd164824165730%_))
                                (let ((_%e164828165735%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd164824165730%_))))
                                  (let ((_%tl164826165740%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e164828165735%_)))
                                        (_%hd164827165738%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e164828165735%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd164827165738%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd164827165738%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl164826165740%_))
                                                (let ((_%e164831165743%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl164826165740%_))))
                                                  (let ((_%tl164829165748%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e164831165743%_)))
                                                        (_%hd164830165746%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e164831165743%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl164829165748%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl164823165732%_))
                                                            (let ((_%e164834165751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl164823165732%_))))
                      (let ((_%tl164832165756%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e164834165751%_)))
                            (_%hd164833165754%_
                             (let ()
                               (declare (not safe))
                               (##car _%e164834165751%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd164833165754%_))
                            (let ((_%e164837165759%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd164833165754%_))))
                              (let ((_%tl164835165764%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e164837165759%_)))
                                    (_%hd164836165762%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e164837165759%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd164836165762%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd164836165762%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl164835165764%_))
                                            (let ((_%e164840165767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl164835165764%_))))
                                              (let ((_%tl164838165772%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e164840165767%_)))
                                                    (_%hd164839165770%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e164840165767%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl164838165772%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl164832165756%_))
                                                        (let ((_%__splice170444170445%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl164832165756%_ '0))))
                  (let ((_%tl164843165777%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice170444170445%_ '1)))
                        (_%target164841165775%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice170444170445%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl164843165777%_))
                        (_%__match170545170546%_
                         _%e164813165695%_
                         _%hd164812165698%_
                         _%tl164811165700%_
                         _%e164816165703%_
                         _%hd164815165706%_
                         _%tl164814165708%_
                         _%e164819165711%_
                         _%hd164818165714%_
                         _%tl164817165716%_
                         _%e164822165719%_
                         _%hd164821165722%_
                         _%tl164820165724%_
                         _%e164825165727%_
                         _%hd164824165730%_
                         _%tl164823165732%_
                         _%e164828165735%_
                         _%hd164827165738%_
                         _%tl164826165740%_
                         _%e164831165743%_
                         _%hd164830165746%_
                         _%tl164829165748%_
                         _%e164834165751%_
                         _%hd164833165754%_
                         _%tl164832165756%_
                         _%e164837165759%_
                         _%hd164836165762%_
                         _%tl164835165764%_
                         _%e164840165767%_
                         _%hd164839165770%_
                         _%tl164838165772%_
                         _%__splice170444170445%_
                         _%target164841165775%_
                         _%tl164843165777%_)
                        (_%__match170733170734%_
                         _%e164813165695%_
                         _%hd164812165698%_
                         _%tl164811165700%_
                         _%e164816165703%_
                         _%hd164815165706%_
                         _%tl164814165708%_
                         _%e164819165711%_
                         _%hd164818165714%_
                         _%tl164817165716%_
                         _%e164822165719%_
                         _%hd164821165722%_
                         _%tl164820165724%_
                         _%e164825165727%_
                         _%hd164824165730%_
                         _%tl164823165732%_
                         _%e164828165735%_
                         _%hd164827165738%_
                         _%tl164826165740%_
                         _%e164831165743%_
                         _%hd164830165746%_
                         _%tl164829165748%_
                         _%e164834165751%_
                         _%hd164833165754%_
                         _%tl164832165756%_
                         _%e164837165759%_
                         _%hd164836165762%_
                         _%tl164835165764%_
                         _%e164840165767%_
                         _%hd164839165770%_
                         _%tl164838165772%_))))
                (_%__match170733170734%_
                 _%e164813165695%_
                 _%hd164812165698%_
                 _%tl164811165700%_
                 _%e164816165703%_
                 _%hd164815165706%_
                 _%tl164814165708%_
                 _%e164819165711%_
                 _%hd164818165714%_
                 _%tl164817165716%_
                 _%e164822165719%_
                 _%hd164821165722%_
                 _%tl164820165724%_
                 _%e164825165727%_
                 _%hd164824165730%_
                 _%tl164823165732%_
                 _%e164828165735%_
                 _%hd164827165738%_
                 _%tl164826165740%_
                 _%e164831165743%_
                 _%hd164830165746%_
                 _%tl164829165748%_
                 _%e164834165751%_
                 _%hd164833165754%_
                 _%tl164832165756%_
                 _%e164837165759%_
                 _%hd164836165762%_
                 _%tl164835165764%_
                 _%e164840165767%_
                 _%hd164839165770%_
                 _%tl164838165772%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match170937170938%_
                                                     _%e164813165695%_
                                                     _%hd164812165698%_
                                                     _%tl164811165700%_
                                                     _%e164816165703%_
                                                     _%hd164815165706%_
                                                     _%tl164814165708%_
                                                     _%e164819165711%_
                                                     _%hd164818165714%_
                                                     _%tl164817165716%_
                                                     _%e164822165719%_
                                                     _%hd164821165722%_
                                                     _%tl164820165724%_
                                                     _%e164825165727%_
                                                     _%hd164824165730%_
                                                     _%tl164823165732%_
                                                     _%e164828165735%_
                                                     _%hd164827165738%_
                                                     _%tl164826165740%_
                                                     _%e164831165743%_
                                                     _%hd164830165746%_
                                                     _%tl164829165748%_
                                                     _%e164834165751%_
                                                     _%hd164833165754%_
                                                     _%tl164832165756%_))))
                                            (_%__match170937170938%_
                                             _%e164813165695%_
                                             _%hd164812165698%_
                                             _%tl164811165700%_
                                             _%e164816165703%_
                                             _%hd164815165706%_
                                             _%tl164814165708%_
                                             _%e164819165711%_
                                             _%hd164818165714%_
                                             _%tl164817165716%_
                                             _%e164822165719%_
                                             _%hd164821165722%_
                                             _%tl164820165724%_
                                             _%e164825165727%_
                                             _%hd164824165730%_
                                             _%tl164823165732%_
                                             _%e164828165735%_
                                             _%hd164827165738%_
                                             _%tl164826165740%_
                                             _%e164831165743%_
                                             _%hd164830165746%_
                                             _%tl164829165748%_
                                             _%e164834165751%_
                                             _%hd164833165754%_
                                             _%tl164832165756%_))
                                        (_%__match170613170614%_
                                         _%e164813165695%_
                                         _%hd164812165698%_
                                         _%tl164811165700%_
                                         _%e164816165703%_
                                         _%hd164815165706%_
                                         _%tl164814165708%_
                                         _%e164819165711%_
                                         _%hd164818165714%_
                                         _%tl164817165716%_
                                         _%e164822165719%_
                                         _%hd164821165722%_
                                         _%tl164820165724%_
                                         _%e164825165727%_
                                         _%hd164824165730%_
                                         _%tl164823165732%_
                                         _%e164828165735%_
                                         _%hd164827165738%_
                                         _%tl164826165740%_
                                         _%e164831165743%_
                                         _%hd164830165746%_
                                         _%tl164829165748%_
                                         _%e164834165751%_
                                         _%hd164833165754%_
                                         _%tl164832165756%_
                                         _%e164837165759%_
                                         _%hd164836165762%_
                                         _%tl164835165764%_))
                                    (_%__match170937170938%_
                                     _%e164813165695%_
                                     _%hd164812165698%_
                                     _%tl164811165700%_
                                     _%e164816165703%_
                                     _%hd164815165706%_
                                     _%tl164814165708%_
                                     _%e164819165711%_
                                     _%hd164818165714%_
                                     _%tl164817165716%_
                                     _%e164822165719%_
                                     _%hd164821165722%_
                                     _%tl164820165724%_
                                     _%e164825165727%_
                                     _%hd164824165730%_
                                     _%tl164823165732%_
                                     _%e164828165735%_
                                     _%hd164827165738%_
                                     _%tl164826165740%_
                                     _%e164831165743%_
                                     _%hd164830165746%_
                                     _%tl164829165748%_
                                     _%e164834165751%_
                                     _%hd164833165754%_
                                     _%tl164832165756%_))))
                            (_%__match170937170938%_
                             _%e164813165695%_
                             _%hd164812165698%_
                             _%tl164811165700%_
                             _%e164816165703%_
                             _%hd164815165706%_
                             _%tl164814165708%_
                             _%e164819165711%_
                             _%hd164818165714%_
                             _%tl164817165716%_
                             _%e164822165719%_
                             _%hd164821165722%_
                             _%tl164820165724%_
                             _%e164825165727%_
                             _%hd164824165730%_
                             _%tl164823165732%_
                             _%e164828165735%_
                             _%hd164827165738%_
                             _%tl164826165740%_
                             _%e164831165743%_
                             _%hd164830165746%_
                             _%tl164829165748%_
                             _%e164834165751%_
                             _%hd164833165754%_
                             _%tl164832165756%_))))
                    (_%__match170875170876%_
                     _%e164813165695%_
                     _%hd164812165698%_
                     _%tl164811165700%_
                     _%e164816165703%_
                     _%hd164815165706%_
                     _%tl164814165708%_
                     _%e164819165711%_
                     _%hd164818165714%_
                     _%tl164817165716%_
                     _%e164822165719%_
                     _%hd164821165722%_
                     _%tl164820165724%_
                     _%e164825165727%_
                     _%hd164824165730%_
                     _%tl164823165732%_
                     _%e164828165735%_
                     _%hd164827165738%_
                     _%tl164826165740%_
                     _%e164831165743%_
                     _%hd164830165746%_
                     _%tl164829165748%_))
                (_%__kont170458170459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont170458170459%_))
                                            (_%__kont170458170459%_))
                                        (_%__kont170458170459%_))))
                                (_%__kont170458170459%_))))
                        (_%__kont170458170459%_))
                    (_%__kont170458170459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170458170459%_))
                                                (_%__kont170458170459%_))
                                            (_%__kont170458170459%_))))
                                    (_%__kont170458170459%_))))
                            (_%__kont170458170459%_))))
                    (_%__kont170458170459%_))))))))))
