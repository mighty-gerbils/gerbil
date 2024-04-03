(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712121902)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp171054 (list gxc#::identity::t))
            (__tmp171053 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp171054
         '()
         __tmp171053
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args169919%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args169919%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp171055
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
        (__make-promise __tmp171055)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx169911%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self169914%_
                (let ((__obj171048
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj171048))
               (__tmp171056
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self169914%_ _%stx169911%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp171056
           gxc#current-compile-method
           _%self169914%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp171058 (list gxc#::void::t))
            (__tmp171057 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp171058
         '(receiver methods slots)
         __tmp171057
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args169908%_
        (apply make-instance gxc#::collect-object-refs::t _%$args169908%_)))
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
      (let ((__tmp171059
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
        (__make-promise __tmp171059)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%_169873%_
               _%receiver169868169875%_
               _%methods169869169877%_
               _%slots169870169879%_
               _%stx169881%_)
        (let* ((_%receiver169884%_
                (if (eq? _%receiver169868169875%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver169868169875%_))
               (_%methods169886%_
                (if (eq? _%methods169869169877%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods169869169877%_))
               (_%slots169888%_
                (if (eq? _%slots169870169879%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots169870169879%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self169890%_
                  (let ((__obj171050
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
                       __obj171050
                       _%receiver169884%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171050
                       _%methods169886%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171050
                       _%slots169888%_
                       '3
                       '#f
                       '#f))
                    __obj171050))
                 (__tmp171060
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self169890%_ _%stx169881%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171060
             gxc#current-compile-method
             _%self169890%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords169897%_ . _%args169898%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords169897%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169897%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169897%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169897%_
                  'slots:
                  absent-value))
               _%args169898%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args169871169904%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args169871169904%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp171062 (list gxc#::basic-xform-expression::t))
            (__tmp171061 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp171062
         '(receiver klass methods slots)
         __tmp171061
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args169864%_
        (apply make-instance gxc#::subst-object-refs::t _%$args169864%_)))
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
      (let ((__tmp171063
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
        (__make-promise __tmp171063)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%_169825%_
               _%receiver169819169827%_
               _%klass169820169829%_
               _%methods169821169831%_
               _%slots169822169833%_
               _%stx169835%_)
        (let* ((_%receiver169838%_
                (if (eq? _%receiver169819169827%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver169819169827%_))
               (_%klass169840%_
                (if (eq? _%klass169820169829%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass169820169829%_))
               (_%methods169842%_
                (if (eq? _%methods169821169831%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods169821169831%_))
               (_%slots169844%_
                (if (eq? _%slots169822169833%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots169822169833%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self169846%_
                  (let ((__obj171052
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
                       __obj171052
                       _%receiver169838%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171052
                       _%klass169840%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171052
                       _%methods169842%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171052
                       _%slots169844%_
                       '4
                       '#f
                       '#f))
                    __obj171052))
                 (__tmp171064
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self169846%_ _%stx169835%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171064
             gxc#current-compile-method
             _%self169846%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords169853%_ . _%args169854%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords169853%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169853%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169853%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169853%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169853%_
                  'slots:
                  absent-value))
               _%args169854%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args169823169860%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args169823169860%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self167000%_ _%stx167001%_)
        (letrec ((_%generate-method-bind167003%_
                  (lambda (_%$klass169811%_
                           _%$method-table169812%_
                           _%id169813%_
                           _%$id169814%_)
                    (let ((_%$tmp169816%_
                           (let ((__tmp171065
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171065))))
                      (cons (cons _%$id169814%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp169816%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table169812%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id169813%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp169816%_ '()))
                    (cons (cons '%#ref (cons _%$tmp169816%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id169813%_
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
                 (_%generate-slot-bind167004%_
                  (lambda (_%$klass169805%_ _%id169806%_ _%$id169807%_)
                    (let ((_%$tmp169809%_
                           (let ((__tmp171066
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171066))))
                      (cons (cons _%$id169807%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp169809%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass169805%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id169806%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp169809%_ '()))
                        (cons (cons '%#ref (cons _%$tmp169809%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id169806%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl167005%_
                  (lambda (_%$klass169799%_
                           _%$method-table169800%_
                           _%methods-bind169801%_
                           _%slots-bind169802%_
                           _%specializer-impl169803%_)
                    (let ((__tmp171067
                           (cons '%#lambda
                                 (cons (cons _%$klass169799%_
                                             (cons _%$method-table169800%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind169802%_
                                                            _%methods-bind169801%_))
                                                         (cons _%specializer-impl169803%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171067 _%stx167001%_))))
                 (_%generate-specializer-def167006%_
                  (lambda (_%id169795%_
                           _%specializer-id169796%_
                           _%specializer-impl169797%_)
                    (let ((__tmp171068
                           (cons '%#begin
                                 (cons _%stx167001%_
                                       (cons (let ((__tmp171069
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id169796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl169797%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171069
                                                _%stx167001%_))
                                             (cons (let ((__tmp171070
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id169795%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id169796%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171070
                                                      _%stx167001%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171068 _%stx167001%_)))))
          (let* ((_%__stx170008170009%_ _%stx167001%_)
                 (_%g167009167029%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170008170009%_)))))
            (let ((_%__kont170010170011%_
                   (lambda (_%L167073%_ _%L167074%_)
                     (let ((_%method-calls167093%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs167094%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty167095%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?167097%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls167093%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs167094%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L167073%_))
                             (let ()
                               (let* ((_%__stx169922169923%_ _%L167073%_)
                                      (_%g167485167503%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx169922169923%_)))))
                                 (let ((_%__kont169924169925%_
                                        (lambda (_%L167539%_
                                                 _%L167540%_
                                                 _%L167541%_)
                                          (for-each
                                           (lambda (_%g167557167559%_)
                                             (let ()
                                               (declare (not safe))
                                               (gxc#apply-collect-object-refs
                                                _%g167557167559%_
                                                'receiver:
                                                _%L167541%_
                                                'methods:
                                                _%method-calls167093%_
                                                'slots:
                                                _%slot-refs167094%_)))
                                           _%L167539%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_%no-specializer?167097%_))
                                              _%stx167001%_
                                              (let* ((_%specializer-id167568%_
                                                      (let* ((_%id167562%_
                                                              (let ((__tmp171071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L167074%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp171071 '"::specialize")))
                     (_%specializer-id167565%_
                      (let ((__tmp171072
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx167001%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id167562%_ __tmp171072))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id167565%_))
                _%specializer-id167565%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass167570%_
                                                      (let ((__tmp171073
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp171073)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table167572%_
                                                      (let ((__tmp171074
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp171074)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods167574%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls167093%_)))
                                                     (_%$methods167578%_
                                                      (map (lambda (_%id167576%_)
                                                             (let ((__tmp171075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id167576%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171075)))
                   _%methods167574%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_167587%_
                                                      (for-each
                                                       (lambda (_%g167579167582%_
                                                                _%g167580167584%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls167093%_
                                                            _%g167579167582%_
                                                            _%g167580167584%_)))
                                                       _%methods167574%_
                                                       _%$methods167578%_))
                                                     (_%methods-bind167597%_
                                                      (map (lambda (_%g167589167592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g167590167594%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-method-bind167003%_
                        _%$klass167570%_
                        _%$method-table167572%_
                        _%g167589167592%_
                        _%g167590167594%_)))
                   _%methods167574%_
                   _%$methods167578%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots167599%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs167094%_)))
                                                     (_%$slots167603%_
                                                      (map (lambda (_%id167601%_)
                                                             (let ((__tmp171076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id167601%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171076)))
                   _%slots167599%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_167612%_
                                                      (for-each
                                                       (lambda (_%g167604167607%_
                                                                _%g167605167609%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs167094%_
                                                            _%g167604167607%_
                                                            _%g167605167609%_)))
                                                       _%slots167599%_
                                                       _%$slots167603%_))
                                                     (_%slots-bind167621%_
                                                      (map (lambda (_%g167613167616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g167614167618%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-slot-bind167004%_
                        _%$klass167570%_
                        _%g167613167616%_
                        _%g167614167618%_)))
                   _%slots167599%_
                   _%$slots167603%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body167627%_
                                                      (map (lambda (_%g167622167624%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _%g167622167624%_
                        'receiver:
                        _%L167541%_
                        'klass:
                        _%$klass167570%_
                        'methods:
                        _%method-calls167093%_
                        'slots:
                        _%slot-refs167094%_)))
                   _%L167539%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl167629%_
                                                      (let ((__tmp171077
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L167541%_ _%L167540%_)
                                 _%specializer-body167627%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp171077 _%stx167001%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl167631%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%generate-specializer-impl167005%_
                                                         _%$klass167570%_
                                                         _%$method-table167572%_
                                                         _%methods-bind167597%_
                                                         _%slots-bind167621%_
                                                         _%specializer-impl167629%_))))
                                                (let ((__tmp171079
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167074%_)))
                                                      (__tmp171078
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id167568%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp171079
                                                   '" => "
                                                   __tmp171078))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%generate-specializer-def167006%_
                                                   _%L167074%_
                                                   _%specializer-id167568%_
                                                   _%specializer-impl167631%_))))))
                                       (_%__kont169926169927%_
                                        (lambda () _%stx167001%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%__stx169922169923%_))
                                       (let ((_%e167492167515%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%__stx169922169923%_))))
                                         (let ((_%tl167490167520%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e167492167515%_)))
                                               (_%hd167491167518%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e167492167515%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl167490167520%_))
                                               (let ((_%e167495167523%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl167490167520%_))))
                                                 (let ((_%tl167493167528%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e167495167523%_)))
                                                       (_%hd167494167526%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e167495167523%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd167494167526%_))
                                                       (let ((_%e167498167531%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd167494167526%_))))
                 (let ((_%tl167496167536%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e167498167531%_)))
                       (_%hd167497167534%_
                        (let ()
                          (declare (not safe))
                          (##car _%e167498167531%_))))
                   (_%__kont169924169925%_
                    _%tl167493167528%_
                    _%tl167496167536%_
                    _%hd167497167534%_)))
               (_%__kont169926169927%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont169926169927%_))))
                                       (_%__kont169926169927%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L167073%_))
                                 (let ()
                                   (let* ((_%g167638167657%_
                                           (lambda (_%g167639167654%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g167639167654%_))))
                                          (_%g167637167944%_
                                           (lambda (_%g167639167660%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%g167639167660%_))
                                                 (let ((_%e167643167662%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g167639167660%_))))
                                                   (let ((_%hd167642167665%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e167643167662%_)))
                                                         (_%tl167641167667%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e167643167662%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl167641167667%_))
                                                         (let ((_g171080_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl167641167667%_ '0))))
                   (begin
                     (let ((_g171081_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g171080_)
                                  (##vector-length _g171080_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g171081_ 2)))
                           (error "Context expects 2 values" _g171081_)))
                     (let ((_%target167644167670%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g171080_ 0)))
                           (_%tl167646167672%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g171080_ 1))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl167646167672%_))
                           (letrec ((_%loop167647167675%_
                                     (lambda (_%hd167645167678%_
                                              _%clause167651167680%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd167645167678%_))
                                           (let ((_%e167648167683%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd167645167678%_))))
                                             (let ((_%lp-hd167649167686%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e167648167683%_)))
                                                   (_%lp-tl167650167688%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e167648167683%_))))
                                               (let ((__tmp171082
                                                      (cons _%lp-hd167649167686%_
                                                            _%clause167651167680%_)))
                                                 (declare (not safe))
                                                 (_%loop167647167675%_
                                                  _%lp-tl167650167688%_
                                                  __tmp171082))))
                                           (let ((_%clause167652167691%_
                                                  (reverse _%clause167651167680%_)))
                                             ((lambda (_%L167694%_)
                                                (for-each
                                                 (lambda (_%clause167708%_)
                                                   (let* ((_%__stx169948169949%_
                                                           _%clause167708%_)
                                                          (_%g167711167726%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%__stx169948169949%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%__kont169950169951%_
                                                            (lambda (_%L167754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%L167755%_
                             _%L167756%_)
                      (for-each
                       (lambda (_%g167771167773%_)
                         (let ()
                           (declare (not safe))
                           (gxc#apply-collect-object-refs
                            _%g167771167773%_
                            'receiver:
                            _%L167756%_
                            'methods:
                            _%method-calls167093%_
                            'slots:
                            _%slot-refs167094%_)))
                       _%L167754%_)))
                   (_%__kont169952169953%_ (lambda () '#!void)))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx169948169949%_))
                   (let ((_%e167718167738%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx169948169949%_))))
                     (let ((_%tl167716167743%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e167718167738%_)))
                           (_%hd167717167741%_
                            (let ()
                              (declare (not safe))
                              (##car _%e167718167738%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd167717167741%_))
                           (let ((_%e167721167746%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd167717167741%_))))
                             (let ((_%tl167719167751%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e167721167746%_)))
                                   (_%hd167720167749%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e167721167746%_))))
                               (_%__kont169950169951%_
                                _%tl167716167743%_
                                _%tl167719167751%_
                                _%hd167720167749%_)))
                           (_%__kont169952169953%_))))
                   (_%__kont169952169953%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp171083
                                                        (lambda (_%g167778167781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g167779167783%_)
                  (cons _%g167778167781%_ _%g167779167783%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp171083
                                                    '()
                                                    _%L167694%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (_%no-specializer?167097%_))
                                                    _%stx167001%_
                                                    (let* ((_%specializer-id167792%_
                                                            (let* ((_%id167786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp171084
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167074%_))))
                              (declare (not safe))
                              (make-symbol__1 __tmp171084 '"::specialize")))
                           (_%specializer-id167789%_
                            (let ((__tmp171085
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-source _%stx167001%_))))
                              (declare (not safe))
                              (gx#core-quote-syntax__1
                               _%id167786%_
                               __tmp171085))))
                      (let ()
                        (declare (not safe))
                        (gx#core-bind-runtime!__0 _%specializer-id167789%_))
                      _%specializer-id167789%_))
                   (_%$klass167794%_
                    (let ((__tmp171086
                           (let () (declare (not safe)) (##gensym '__klass))))
                      (declare (not safe))
                      (make-symbol__0 __tmp171086)))
                   (_%$method-table167796%_
                    (let ((__tmp171087
                           (let ()
                             (declare (not safe))
                             (##gensym '__method-table))))
                      (declare (not safe))
                      (make-symbol__0 __tmp171087)))
                   (_%methods167798%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%method-calls167093%_)))
                   (_%$methods167802%_
                    (map (lambda (_%id167800%_)
                           (let ((__tmp171088 (gensym _%id167800%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp171088)))
                         _%methods167798%_))
                   (_%_167811%_
                    (for-each
                     (lambda (_%g167803167806%_ _%g167804167808%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%method-calls167093%_
                          _%g167803167806%_
                          _%g167804167808%_)))
                     _%methods167798%_
                     _%$methods167802%_))
                   (_%methods-bind167821%_
                    (map (lambda (_%g167813167816%_ _%g167814167818%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-method-bind167003%_
                              _%$klass167794%_
                              _%$method-table167796%_
                              _%g167813167816%_
                              _%g167814167818%_)))
                         _%methods167798%_
                         _%$methods167802%_))
                   (_%slots167823%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%slot-refs167094%_)))
                   (_%$slots167827%_
                    (map (lambda (_%id167825%_)
                           (let ((__tmp171089 (gensym _%id167825%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp171089)))
                         _%slots167823%_))
                   (_%_167836%_
                    (for-each
                     (lambda (_%g167828167831%_ _%g167829167833%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%slot-refs167094%_
                          _%g167828167831%_
                          _%g167829167833%_)))
                     _%slots167823%_
                     _%$slots167827%_))
                   (_%slots-bind167845%_
                    (map (lambda (_%g167837167840%_ _%g167838167842%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-slot-bind167004%_
                              _%$klass167794%_
                              _%g167837167840%_
                              _%g167838167842%_)))
                         _%slots167823%_
                         _%$slots167827%_))
                   (_%specializer-clauses167937%_
                    (map (lambda (_%clause167847%_)
                           (let* ((_%__stx169968169969%_ _%clause167847%_)
                                  (_%g167850167865%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx169968169969%_)))))
                             (let ((_%__kont169970169971%_
                                    (lambda (_%L167893%_
                                             _%L167894%_
                                             _%L167895%_)
                                      (let ((_%body167925%_
                                             (map (lambda (_%g167920167922%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-subst-object-refs
                                                       _%g167920167922%_
                                                       'receiver:
                                                       _%L167895%_
                                                       'klass:
                                                       _%$klass167794%_
                                                       'methods:
                                                       _%method-calls167093%_
                                                       'slots:
                                                       _%slot-refs167094%_)))
                                                  _%L167893%_)))
                                        (cons (cons _%L167895%_ _%L167894%_)
                                              _%body167925%_))))
                                   (_%__kont169972169973%_
                                    (lambda () _%clause167847%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%__stx169968169969%_))
                                   (let ((_%e167857167877%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%__stx169968169969%_))))
                                     (let ((_%tl167855167882%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e167857167877%_)))
                                           (_%hd167856167880%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e167857167877%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd167856167880%_))
                                           (let ((_%e167860167885%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd167856167880%_))))
                                             (let ((_%tl167858167890%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e167860167885%_)))
                                                   (_%hd167859167888%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e167860167885%_))))
                                               (_%__kont169970169971%_
                                                _%tl167855167882%_
                                                _%tl167858167890%_
                                                _%hd167859167888%_)))
                                           (_%__kont169972169973%_))))
                                   (_%__kont169972169973%_)))))
                         (let ((__tmp171090
                                (lambda (_%g167929167932%_ _%g167930167934%_)
                                  (cons _%g167929167932%_ _%g167930167934%_))))
                           (declare (not safe))
                           (__foldr1 __tmp171090 '() _%L167694%_))))
                   (_%specializer-impl167939%_
                    (let ((__tmp171091
                           (cons '%#case-lambda
                                 _%specializer-clauses167937%_)))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171091 _%stx167001%_)))
                   (_%specializer-impl167941%_
                    (let ()
                      (declare (not safe))
                      (_%generate-specializer-impl167005%_
                       _%$klass167794%_
                       _%$method-table167796%_
                       _%methods-bind167821%_
                       _%slots-bind167845%_
                       _%specializer-impl167939%_))))
              (let ((__tmp171093
                     (let () (declare (not safe)) (gx#stx-e _%L167074%_)))
                    (__tmp171092
                     (let ()
                       (declare (not safe))
                       (gx#stx-e _%specializer-id167792%_))))
                (declare (not safe))
                (gxc#verbose
                 '"generate method specializer "
                 __tmp171093
                 '" => "
                 __tmp171092))
              (let ()
                (declare (not safe))
                (_%generate-specializer-def167006%_
                 _%L167074%_
                 _%specializer-id167792%_
                 _%specializer-impl167941%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%clause167652167691%_))))))
                             (let ()
                               (declare (not safe))
                               (_%loop167647167675%_
                                _%target167644167670%_
                                '())))
                           (let ()
                             (declare (not safe))
                             (_%g167638167657%_ _%g167639167660%_))))))
                 (let ()
                   (declare (not safe))
                   (_%g167638167657%_ _%g167639167660%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g167638167657%_
                                                    _%g167639167660%_))))))
                                     (declare (not safe))
                                     (_%g167637167944%_ _%L167073%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L167073%_))
                                     (let ()
                                       (let* ((_%g167948167978%_
                                               (lambda (_%g167949167975%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g167949167975%_))))
                                              (_%g167947168587%_
                                               (lambda (_%g167949167981%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%g167949167981%_))
                                                     (let ((_%e167955167983%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%g167949167981%_))))
                                                       (let ((_%hd167954167986%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e167955167983%_)))
                     (_%tl167953167988%_
                      (let () (declare (not safe)) (##cdr _%e167955167983%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl167953167988%_))
                     (let ((_%e167958167991%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167953167988%_))))
                       (let ((_%hd167957167994%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167958167991%_)))
                             (_%tl167956167996%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167958167991%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd167957167994%_))
                             (let ((_%e167961167999%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd167957167994%_))))
                               (let ((_%hd167960168002%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e167961167999%_)))
                                     (_%tl167959168004%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e167961167999%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd167960168002%_))
                                     (let ((_%e167964168007%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd167960168002%_))))
                                       (let ((_%hd167963168010%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e167964168007%_)))
                                             (_%tl167962168012%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e167964168007%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd167963168010%_))
                                             (let ((_%e167967168015%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd167963168010%_))))
                                               (let ((_%hd167966168018%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e167967168015%_)))
                                                     (_%tl167965168020%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e167967168015%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl167965168020%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl167962168012%_))
                                                         (let ((_%e167970168023%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl167962168012%_))))
                   (let ((_%hd167969168026%_
                          (let ()
                            (declare (not safe))
                            (##car _%e167970168023%_)))
                         (_%tl167968168028%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e167970168023%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl167968168028%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167959168004%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl167956167996%_))
                                 (let ((_%e167973168031%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl167956167996%_))))
                                   (let ((_%hd167972168034%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e167973168031%_)))
                                         (_%tl167971168036%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e167973168031%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl167971168036%_))
                                         ((lambda (_%L168039%_
                                                   _%L168040%_
                                                   _%L168041%_)
                                            (let* ((_%g168065168083%_
                                                    (lambda (_%g168066168080%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g168066168080%_))))
                                                   (_%g168064168134%_
                                                    (lambda (_%g168066168086%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g168066168086%_))
                                                          (let ((_%e168072168088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g168066168086%_))))
                    (let ((_%hd168071168091%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168072168088%_)))
                          (_%tl168070168093%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168072168088%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168070168093%_))
                          (let ((_%e168075168096%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168070168093%_))))
                            (let ((_%hd168074168099%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168075168096%_)))
                                  (_%tl168073168101%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168075168096%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd168074168099%_))
                                  (let ((_%e168078168104%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd168074168099%_))))
                                    (let ((_%hd168077168107%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168078168104%_)))
                                          (_%tl168076168109%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168078168104%_))))
                                      ((lambda (_%L168112%_
                                                _%L168113%_
                                                _%L168114%_)
                                         (for-each
                                          (lambda (_%g168129168131%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs
                                               _%g168129168131%_
                                               'receiver:
                                               _%L168114%_
                                               'methods:
                                               _%method-calls167093%_
                                               'slots:
                                               _%slot-refs167094%_)))
                                          _%L168112%_))
                                       _%tl168073168101%_
                                       _%tl168076168109%_
                                       _%hd168077168107%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168065168083%_ _%g168066168086%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g168065168083%_ _%g168066168086%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168065168083%_ _%g168066168086%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g168064168134%_ _%L168040%_))
                                            (let* ((_%g168137168156%_
                                                    (lambda (_%g168138168153%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g168138168153%_))))
                                                   (_%g168136168275%_
                                                    (lambda (_%g168138168159%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g168138168159%_))
                                                          (let ((_%e168142168161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g168138168159%_))))
                    (let ((_%hd168141168164%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168142168161%_)))
                          (_%tl168140168166%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168142168161%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl168140168166%_))
                          (let ((_g171094_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl168140168166%_
                                    '0))))
                            (begin
                              (let ((_g171095_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g171094_)
                                           (##vector-length _g171094_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g171095_ 2)))
                                    (error "Context expects 2 values"
                                           _g171095_)))
                              (let ((_%target168143168169%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g171094_ 0)))
                                    (_%tl168145168171%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g171094_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl168145168171%_))
                                    (letrec ((_%loop168146168174%_
                                              (lambda (_%hd168144168177%_
                                                       _%clause168150168179%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd168144168177%_))
                                                    (let ((_%e168147168182%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd168144168177%_))))
                                                      (let ((_%lp-hd168148168185%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e168147168182%_)))
                    (_%lp-tl168149168187%_
                     (let () (declare (not safe)) (##cdr _%e168147168182%_))))
                (let ((__tmp171096
                       (cons _%lp-hd168148168185%_ _%clause168150168179%_)))
                  (declare (not safe))
                  (_%loop168146168174%_ _%lp-tl168149168187%_ __tmp171096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%clause168151168190%_
                                                           (reverse _%clause168150168179%_)))
                                                      ((lambda (_%L168193%_)
                                                         (for-each
                                                          (lambda (_%clause168206%_)
                                                            (let* ((_%g168208168223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g168209168220%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g168209168220%_))))
                           (_%g168207168265%_
                            (lambda (_%g168209168226%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g168209168226%_))
                                  (let ((_%e168215168228%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g168209168226%_))))
                                    (let ((_%hd168214168231%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168215168228%_)))
                                          (_%tl168213168233%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168215168228%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd168214168231%_))
                                          (let ((_%e168218168236%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd168214168231%_))))
                                            (let ((_%hd168217168239%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168218168236%_)))
                                                  (_%tl168216168241%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168218168236%_))))
                                              ((lambda (_%L168244%_
                                                        _%L168245%_
                                                        _%L168246%_)
                                                 (for-each
                                                  (lambda (_%g168260168262%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs
                                                       _%g168260168262%_
                                                       'receiver:
                                                       _%L168246%_
                                                       'methods:
                                                       _%method-calls167093%_
                                                       'slots:
                                                       _%slot-refs167094%_)))
                                                  _%L168244%_))
                                               _%tl168213168233%_
                                               _%tl168216168241%_
                                               _%hd168217168239%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168208168223%_
                                             _%g168209168226%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168208168223%_ _%g168209168226%_))))))
                      (declare (not safe))
                      (_%g168207168265%_ _%clause168206%_)))
                  (let ((__tmp171097
                         (lambda (_%g168267168270%_ _%g168268168272%_)
                           (cons _%g168267168270%_ _%g168268168272%_))))
                    (declare (not safe))
                    (__foldr1 __tmp171097 '() _%L168193%_))))
               _%clause168151168190%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%loop168146168174%_
                                         _%target168143168169%_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168137168156%_
                                       _%g168138168159%_))))))
                          (let ()
                            (declare (not safe))
                            (_%g168137168156%_ _%g168138168159%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168137168156%_ _%g168138168159%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g168136168275%_ _%L168039%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (_%no-specializer?167097%_))
                                                _%stx167001%_
                                                (let* ((_%specializer-id168284%_
                                                        (let* ((_%id168278%_
                                                                (let ((__tmp171098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%L167074%_))))
                          (declare (not safe))
                          (make-symbol__1 __tmp171098 '"::specialize")))
                       (_%specializer-id168281%_
                        (let ((__tmp171099
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx167001%_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _%id168278%_ __tmp171099))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _%specializer-id168281%_))
                  _%specializer-id168281%_))
               (_%$klass168286%_
                (let ((__tmp171100
                       (let () (declare (not safe)) (##gensym '__klass))))
                  (declare (not safe))
                  (make-symbol__0 __tmp171100)))
               (_%$method-table168288%_
                (let ((__tmp171101
                       (let ()
                         (declare (not safe))
                         (##gensym '__method-table))))
                  (declare (not safe))
                  (make-symbol__0 __tmp171101)))
               (_%methods168290%_
                (let ()
                  (declare (not safe))
                  (hash-keys _%method-calls167093%_)))
               (_%$methods168294%_
                (map (lambda (_%id168292%_)
                       (let ((__tmp171102 (gensym _%id168292%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp171102)))
                     _%methods168290%_))
               (_%_168303%_
                (for-each
                 (lambda (_%g168295168298%_ _%g168296168300%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%method-calls167093%_
                      _%g168295168298%_
                      _%g168296168300%_)))
                 _%methods168290%_
                 _%$methods168294%_))
               (_%methods-bind168313%_
                (map (lambda (_%g168305168308%_ _%g168306168310%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-method-bind167003%_
                          _%$klass168286%_
                          _%$method-table168288%_
                          _%g168305168308%_
                          _%g168306168310%_)))
                     _%methods168290%_
                     _%$methods168294%_))
               (_%slots168315%_
                (let () (declare (not safe)) (hash-keys _%slot-refs167094%_)))
               (_%$slots168319%_
                (map (lambda (_%id168317%_)
                       (let ((__tmp171103 (gensym _%id168317%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp171103)))
                     _%slots168315%_))
               (_%_168328%_
                (for-each
                 (lambda (_%g168320168323%_ _%g168321168325%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%slot-refs167094%_
                      _%g168320168323%_
                      _%g168321168325%_)))
                 _%slots168315%_
                 _%$slots168319%_))
               (_%slots-bind168337%_
                (map (lambda (_%g168329168332%_ _%g168330168334%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-slot-bind167004%_
                          _%$klass168286%_
                          _%g168329168332%_
                          _%g168330168334%_)))
                     _%slots168315%_
                     _%$slots168319%_))
               (_%specializer-lambda-expr168423%_
                (let* ((_%g168339168357%_
                        (lambda (_%g168340168354%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g168340168354%_))))
                       (_%g168338168420%_
                        (lambda (_%g168340168360%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g168340168360%_))
                              (let ((_%e168346168362%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g168340168360%_))))
                                (let ((_%hd168345168365%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168346168362%_)))
                                      (_%tl168344168367%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168346168362%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168344168367%_))
                                      (let ((_%e168349168370%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168344168367%_))))
                                        (let ((_%hd168348168373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168349168370%_)))
                                              (_%tl168347168375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168349168370%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd168348168373%_))
                                              (let ((_%e168352168378%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd168348168373%_))))
                                                (let ((_%hd168351168381%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168352168378%_)))
                                                      (_%tl168350168383%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168352168378%_))))
                                                  ((lambda (_%L168386%_
                                                            _%L168387%_
                                                            _%L168388%_)
                                                     (let* ((_%body168418%_
                                                             (map (lambda (_%g168413168415%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _%g168413168415%_
                               'receiver:
                               _%L168388%_
                               'klass:
                               _%$klass168286%_
                               'methods:
                               _%method-calls167093%_
                               'slots:
                               _%slot-refs167094%_)))
                          _%L168386%_))
                    (__tmp171104
                     (cons '%#lambda
                           (cons (cons _%L168388%_ _%L168387%_)
                                 _%body168418%_))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp171104 _%L168040%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl168347168375%_
                                                   _%tl168350168383%_
                                                   _%hd168351168381%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168339168357%_
                                                 _%g168340168360%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168339168357%_
                                         _%g168340168360%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168339168357%_ _%g168340168360%_))))))
                  (declare (not safe))
                  (_%g168338168420%_ _%L168040%_)))
               (_%specializer-case-lambda-expr168580%_
                (let* ((_%g168425168444%_
                        (lambda (_%g168426168441%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g168426168441%_))))
                       (_%g168424168577%_
                        (lambda (_%g168426168447%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g168426168447%_))
                              (let ((_%e168430168449%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g168426168447%_))))
                                (let ((_%hd168429168452%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168430168449%_)))
                                      (_%tl168428168454%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168430168449%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl168428168454%_))
                                      (let ((_g171105_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl168428168454%_
                                                '0))))
                                        (begin
                                          (let ((_g171106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g171105_)
                                                       (##vector-length
                                                        _g171105_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g171106_ 2)))
                                                (error "Context expects 2 values"
                                                       _g171106_)))
                                          (let ((_%target168431168457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g171105_ 0)))
                                                (_%tl168433168459%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g171105_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl168433168459%_))
                                                (letrec ((_%loop168434168462%_
                                                          (lambda (_%hd168432168465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause168438168467%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168432168465%_))
                        (let ((_%e168435168470%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168432168465%_))))
                          (let ((_%lp-hd168436168473%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168435168470%_)))
                                (_%lp-tl168437168475%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168435168470%_))))
                            (let ((__tmp171107
                                   (cons _%lp-hd168436168473%_
                                         _%clause168438168467%_)))
                              (declare (not safe))
                              (_%loop168434168462%_
                               _%lp-tl168437168475%_
                               __tmp171107))))
                        (let ((_%clause168439168478%_
                               (reverse _%clause168438168467%_)))
                          ((lambda (_%L168481%_)
                             (let* ((_%clauses168575%_
                                     (map (lambda (_%clause168495%_)
                                            (let* ((_%__stx169988169989%_
                                                    _%clause168495%_)
                                                   (_%g168498168513%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx169988169989%_)))))
                                              (let ((_%__kont169990169991%_
                                                     (lambda (_%L168541%_
                                                              _%L168542%_
                                                              _%L168543%_)
                                                       (let ((_%body168563%_
                                                              (map (lambda (_%g168558168560%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _%g168558168560%_
                                'receiver:
                                _%L168543%_
                                'klass:
                                _%$klass168286%_
                                'methods:
                                _%method-calls167093%_
                                'slots:
                                _%slot-refs167094%_)))
                           _%L168541%_)))
                 (cons (cons _%L168543%_ _%L168542%_) _%body168563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont169992169993%_
                                                     (lambda ()
                                                       _%clause168495%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%__stx169988169989%_))
                                                    (let ((_%e168505168525%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%__stx169988169989%_))))
                                                      (let ((_%tl168503168530%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e168505168525%_)))
                    (_%hd168504168528%_
                     (let () (declare (not safe)) (##car _%e168505168525%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd168504168528%_))
                    (let ((_%e168508168533%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd168504168528%_))))
                      (let ((_%tl168506168538%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168508168533%_)))
                            (_%hd168507168536%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168508168533%_))))
                        (_%__kont169990169991%_
                         _%tl168503168530%_
                         _%tl168506168538%_
                         _%hd168507168536%_)))
                    (_%__kont169992169993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont169992169993%_)))))
                                          (let ((__tmp171108
                                                 (lambda (_%g168567168570%_
                                                          _%g168568168572%_)
                                                   (cons _%g168567168570%_
                                                         _%g168568168572%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp171108
                                             '()
                                             _%L168481%_))))
                                    (__tmp171109
                                     (cons '%#case-lambda _%clauses168575%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp171109
                                _%L168039%_)))
                           _%clause168439168478%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop168434168462%_
                                                     _%target168431168457%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168425168444%_
                                                   _%g168426168447%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168425168444%_
                                         _%g168426168447%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168425168444%_ _%g168426168447%_))))))
                  (declare (not safe))
                  (_%g168424168577%_ _%L168039%_)))
               (_%specializer-impl168582%_
                (let ((__tmp171110
                       (cons '%#let-values
                             (cons (cons (cons (cons _%L168041%_ '())
                                               (cons _%specializer-lambda-expr168423%_
                                                     '()))
                                         '())
                                   (cons _%specializer-case-lambda-expr168580%_
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp171110 _%stx167001%_)))
               (_%specializer-impl168584%_
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-impl167005%_
                   _%$klass168286%_
                   _%$method-table168288%_
                   _%methods-bind168313%_
                   _%slots-bind168337%_
                   _%specializer-impl168582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp171112
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%L167074%_)))
                                                        (__tmp171111
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%specializer-id168284%_))))
                                                    (declare (not safe))
                                                    (gxc#verbose
                                                     '"generate method specializer "
                                                     __tmp171112
                                                     '" => "
                                                     __tmp171111))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%generate-specializer-def167006%_
                                                     _%L167074%_
                                                     _%specializer-id168284%_
                                                     _%specializer-impl168584%_)))))
                                          _%hd167972168034%_
                                          _%hd167969168026%_
                                          _%hd167966168018%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g167948167978%_
                                            _%g167949167981%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g167948167978%_ _%g167949167981%_)))
                             (let ()
                               (declare (not safe))
                               (_%g167948167978%_ _%g167949167981%_)))
                         (let ()
                           (declare (not safe))
                           (_%g167948167978%_ _%g167949167981%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g167948167978%_ _%g167949167981%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g167948167978%_
                                                        _%g167949167981%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g167948167978%_
                                                _%g167949167981%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g167948167978%_
                                        _%g167949167981%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g167948167978%_ _%g167949167981%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g167948167978%_ _%g167949167981%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g167948167978%_
                                                        _%g167949167981%_))))))
                                         (declare (not safe))
                                         (_%g167947168587%_ _%L167073%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L167073%_))
                                         (let ()
                                           (let* ((_%g168591168644%_
                                                   (lambda (_%g168592168641%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g168592168641%_))))
                                                  (_%g168590169787%_
                                                   (lambda (_%g168592168647%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%g168592168647%_))
                                                         (let ((_%e168600168649%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%g168592168647%_))))
                   (let ((_%hd168599168652%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168600168649%_)))
                         (_%tl168598168654%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168600168649%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd168599168652%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#let-values _%hd168599168652%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl168598168654%_))
                                 (let ((_%e168603168657%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl168598168654%_))))
                                   (let ((_%hd168602168660%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e168603168657%_)))
                                         (_%tl168601168662%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e168603168657%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd168602168660%_))
                                         (let ((_%e168606168665%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd168602168660%_))))
                                           (let ((_%hd168605168668%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168606168665%_)))
                                                 (_%tl168604168670%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168606168665%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd168605168668%_))
                                                 (let ((_%e168609168673%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd168605168668%_))))
                                                   (let ((_%hd168608168676%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168609168673%_)))
                                                         (_%tl168607168678%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168609168673%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd168608168676%_))
                                                         (let ((_%e168612168681%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd168608168676%_))))
                   (let ((_%hd168611168684%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168612168681%_)))
                         (_%tl168610168686%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168612168681%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl168610168686%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl168607168678%_))
                             (let ((_%e168615168689%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl168607168678%_))))
                               (let ((_%hd168614168692%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e168615168689%_)))
                                     (_%tl168613168694%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e168615168689%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd168614168692%_))
                                     (let ((_%e168618168697%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd168614168692%_))))
                                       (let ((_%hd168617168700%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168618168697%_)))
                                             (_%tl168616168702%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168618168697%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%hd168617168700%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#let-values
                                                    _%hd168617168700%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl168616168702%_))
                                                     (let ((_%e168621168705%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl168616168702%_))))
                                                       (let ((_%hd168620168708%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e168621168705%_)))
                     (_%tl168619168710%_
                      (let () (declare (not safe)) (##cdr _%e168621168705%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd168620168708%_))
                     (let ((_%e168624168713%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%hd168620168708%_))))
                       (let ((_%hd168623168716%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168624168713%_)))
                             (_%tl168622168718%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168624168713%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd168623168716%_))
                             (let ((_%e168627168721%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd168623168716%_))))
                               (let ((_%hd168626168724%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e168627168721%_)))
                                     (_%tl168625168726%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e168627168721%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd168626168724%_))
                                     (let ((_%e168630168729%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd168626168724%_))))
                                       (let ((_%hd168629168732%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168630168729%_)))
                                             (_%tl168628168734%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168630168729%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl168628168734%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl168625168726%_))
                                                 (let ((_%e168633168737%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl168625168726%_))))
                                                   (let ((_%hd168632168740%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168633168737%_)))
                                                         (_%tl168631168742%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168633168737%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl168631168742%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl168622168718%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl168619168710%_))
                         (let ((_%e168636168745%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl168619168710%_))))
                           (let ((_%hd168635168748%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e168636168745%_)))
                                 (_%tl168634168750%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e168636168745%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl168634168750%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl168613168694%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl168604168670%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl168601168662%_))
                                             (let ((_%e168639168753%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl168601168662%_))))
                                               (let ((_%hd168638168756%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e168639168753%_)))
                                                     (_%tl168637168758%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e168639168753%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl168637168758%_))
                                                     ((lambda (_%L168761%_
                                                               _%L168762%_
                                                               _%L168763%_
                                                               _%L168764%_
                                                               _%L168765%_)
                                                        (let* ((_%g168805168867%_
                                                                (lambda (_%g168806168864%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g168806168864%_))))
                       (_%g168804169784%_
                        (lambda (_%g168806168870%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g168806168870%_))
                              (let ((_%e168814168872%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g168806168870%_))))
                                (let ((_%hd168813168875%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168814168872%_)))
                                      (_%tl168812168877%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168814168872%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd168813168875%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#lambda
                                             _%hd168813168875%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl168812168877%_))
                                              (let ((_%e168817168880%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl168812168877%_))))
                                                (let ((_%hd168816168883%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168817168880%_)))
                                                      (_%tl168815168885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168817168880%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl168815168885%_))
                                                      (let ((_%e168820168888%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl168815168885%_))))
                (let ((_%hd168819168891%_
                       (let () (declare (not safe)) (##car _%e168820168888%_)))
                      (_%tl168818168893%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e168820168888%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd168819168891%_))
                      (let ((_%e168823168896%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd168819168891%_))))
                        (let ((_%hd168822168899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168823168896%_)))
                              (_%tl168821168901%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168823168896%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd168822168899%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#call _%hd168822168899%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168821168901%_))
                                      (let ((_%e168826168904%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168821168901%_))))
                                        (let ((_%hd168825168907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168826168904%_)))
                                              (_%tl168824168909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168826168904%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd168825168907%_))
                                              (let ((_%e168829168912%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd168825168907%_))))
                                                (let ((_%hd168828168915%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168829168912%_)))
                                                      (_%tl168827168917%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168829168912%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd168828168915%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd168828168915%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl168827168917%_))
                      (let ((_%e168832168920%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl168827168917%_))))
                        (let ((_%hd168831168923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168832168920%_)))
                              (_%tl168830168925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168832168920%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl168830168925%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl168824168909%_))
                                  (let ((_%e168835168928%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl168824168909%_))))
                                    (let ((_%hd168834168931%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168835168928%_)))
                                          (_%tl168833168933%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168835168928%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd168834168931%_))
                                          (let ((_%e168838168936%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd168834168931%_))))
                                            (let ((_%hd168837168939%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168838168936%_)))
                                                  (_%tl168836168941%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168838168936%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd168837168939%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#ref
                                                         _%hd168837168939%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl168836168941%_))
                                                          (let ((_%e168841168944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl168836168941%_))))
                    (let ((_%hd168840168947%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168841168944%_)))
                          (_%tl168839168949%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168841168944%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168839168949%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl168833168933%_))
                              (let ((_%e168844168952%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl168833168933%_))))
                                (let ((_%hd168843168955%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168844168952%_)))
                                      (_%tl168842168957%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168844168952%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd168843168955%_))
                                      (let ((_%e168847168960%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd168843168955%_))))
                                        (let ((_%hd168846168963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168847168960%_)))
                                              (_%tl168845168965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168847168960%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%hd168846168963%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%hd168846168963%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl168845168965%_))
                                                      (let ((_%e168850168968%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl168845168965%_))))
                (let ((_%hd168849168971%_
                       (let () (declare (not safe)) (##car _%e168850168968%_)))
                      (_%tl168848168973%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e168850168968%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl168848168973%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl168842168957%_))
                          (if (let ((__tmp171113
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-length _%tl168842168957%_))))
                                (declare (not safe))
                                (##fx>= __tmp171113 '1))
                              (let ((_g171114_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl168842168957%_
                                        '1))))
                                (begin
                                  (let ((_g171115_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g171114_)
                                               (##vector-length _g171114_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g171115_ 2)))
                                        (error "Context expects 2 values"
                                               _g171115_)))
                                  (let ((_%target168851168976%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g171114_ 0)))
                                        (_%tl168853168978%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g171114_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168853168978%_))
                                        (let ((_%e168862168981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168853168978%_))))
                                          (let ((_%hd168861168984%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168862168981%_)))
                                                (_%tl168860168986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168862168981%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl168860168986%_))
                                                (letrec ((_%loop168854168989%_
                                                          (lambda (_%hd168852168992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%kw-ref168858168994%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168852168992%_))
                        (let ((_%e168855168997%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168852168992%_))))
                          (let ((_%lp-hd168856169000%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168855168997%_)))
                                (_%lp-tl168857169002%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168855168997%_))))
                            (let ((__tmp171116
                                   (cons _%lp-hd168856169000%_
                                         _%kw-ref168858168994%_)))
                              (declare (not safe))
                              (_%loop168854168989%_
                               _%lp-tl168857169002%_
                               __tmp171116))))
                        (let ((_%kw-ref168859169005%_
                               (reverse _%kw-ref168858168994%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl168818168893%_))
                              ((lambda (_%L169008%_
                                        _%L169009%_
                                        _%L169010%_
                                        _%L169011%_
                                        _%L169012%_)
                                 (let* ((_%kw-count169063%_
                                         (length (let ((__tmp171117
                                                        (lambda (_%g169055169058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g169056169060%_)
                  (cons _%g169055169058%_ _%g169056169060%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp171117
                                                    '()
                                                    _%L169009%_))))
                                        (_%self-index169065%_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _%kw-count169063%_ '1))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gxc#lambda-expr? _%L168763%_))
                                       (let ()
                                         (let* ((_%g169069169083%_
                                                 (lambda (_%g169070169080%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169070169080%_))))
                                                (_%g169068169200%_
                                                 (lambda (_%g169070169086%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169070169086%_))
                                                       (let ((_%e169075169088%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169070169086%_))))
                 (let ((_%hd169074169091%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169075169088%_)))
                       (_%tl169073169093%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169075169088%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl169073169093%_))
                       (let ((_%e169078169096%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169073169093%_))))
                         (let ((_%hd169077169099%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169078169096%_)))
                               (_%tl169076169101%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169078169096%_))))
                           ((lambda (_%L169104%_ _%L169105%_)
                              (let ((_%self169122%_
                                     (list-ref
                                      _%L169105%_
                                      _%self-index169065%_)))
                                (for-each
                                 (lambda (_%g169123169125%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#apply-collect-object-refs
                                      _%g169123169125%_
                                      'receiver:
                                      _%self169122%_
                                      'methods:
                                      _%method-calls167093%_
                                      'slots:
                                      _%slot-refs167094%_)))
                                 _%L169104%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%no-specializer?167097%_))
                                    _%stx167001%_
                                    (let* ((_%specializer-id169134%_
                                            (let* ((_%id169128%_
                                                    (let ((__tmp171118
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167074%_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp171118
                                                       '"::specialize")))
                                                   (_%specializer-id169131%_
                                                    (let ((__tmp171119
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _%stx167001%_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _%id169128%_
                                                       __tmp171119))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _%specializer-id169131%_))
                                              _%specializer-id169131%_))
                                           (_%$klass169136%_
                                            (let ((__tmp171120
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym '__klass))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp171120)))
                                           (_%$method-table169138%_
                                            (let ((__tmp171121
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym
                                                      '__method-table))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp171121)))
                                           (_%methods169140%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys
                                               _%method-calls167093%_)))
                                           (_%$methods169144%_
                                            (map (lambda (_%id169142%_)
                                                   (let ((__tmp171122
                                                          (gensym _%id169142%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp171122)))
                                                 _%methods169140%_))
                                           (_%_169153%_
                                            (for-each
                                             (lambda (_%g169145169148%_
                                                      _%g169146169150%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%method-calls167093%_
                                                  _%g169145169148%_
                                                  _%g169146169150%_)))
                                             _%methods169140%_
                                             _%$methods169144%_))
                                           (_%methods-bind169163%_
                                            (map (lambda (_%g169155169158%_
                                                          _%g169156169160%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-method-bind167003%_
                                                      _%$klass169136%_
                                                      _%$method-table169138%_
                                                      _%g169155169158%_
                                                      _%g169156169160%_)))
                                                 _%methods169140%_
                                                 _%$methods169144%_))
                                           (_%slots169165%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys _%slot-refs167094%_)))
                                           (_%$slots169169%_
                                            (map (lambda (_%id169167%_)
                                                   (let ((__tmp171123
                                                          (gensym _%id169167%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp171123)))
                                                 _%slots169165%_))
                                           (_%_169178%_
                                            (for-each
                                             (lambda (_%g169170169173%_
                                                      _%g169171169175%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%slot-refs167094%_
                                                  _%g169170169173%_
                                                  _%g169171169175%_)))
                                             _%slots169165%_
                                             _%$slots169169%_))
                                           (_%slots-bind169187%_
                                            (map (lambda (_%g169179169182%_
                                                          _%g169180169184%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-slot-bind167004%_
                                                      _%$klass169136%_
                                                      _%g169179169182%_
                                                      _%g169180169184%_)))
                                                 _%slots169165%_
                                                 _%$slots169169%_))
                                           (_%specializer-impl169195%_
                                            (let* ((_%specializer-body169193%_
                                                    (map (lambda (_%g169188169190%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _%g169188169190%_
                                                              'receiver:
                                                              _%self169122%_
                                                              'klass:
                                                              _%$klass169136%_
                                                              'methods:
                                                              _%method-calls167093%_
                                                              'slots:
                                                              _%slot-refs167094%_)))
                                                         _%L169104%_))
                                                   (__tmp171124
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L168765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#let-values
                                                (cons (cons (cons (cons _%L168764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ((__tmp171125
                                       (cons '%#lambda
                                             (cons _%L169105%_
                                                   _%specializer-body169193%_))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp171125
                                   _%L168763%_))
                                '()))
                    '())
              (cons _%L168762%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons _%L168761%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp171124
                                               _%stx167001%_)))
                                           (_%specializer-impl169197%_
                                            (let ()
                                              (declare (not safe))
                                              (_%generate-specializer-impl167005%_
                                               _%$klass169136%_
                                               _%$method-table169138%_
                                               _%methods-bind169163%_
                                               _%slots-bind169187%_
                                               _%specializer-impl169195%_))))
                                      (let ((__tmp171127
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%L167074%_)))
                                            (__tmp171126
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%specializer-id169134%_))))
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"generate method specializer "
                                         __tmp171127
                                         '" => "
                                         __tmp171126))
                                      (let ()
                                        (declare (not safe))
                                        (_%generate-specializer-def167006%_
                                         _%L167074%_
                                         _%specializer-id169134%_
                                         _%specializer-impl169197%_))))))
                            _%tl169076169101%_
                            _%hd169077169099%_)))
                       (let ()
                         (declare (not safe))
                         (_%g169069169083%_ _%g169070169086%_)))))
               (let ()
                 (declare (not safe))
                 (_%g169069169083%_ _%g169070169086%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%g169068169200%_ _%L168763%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#opt-lambda-expr?
                                              _%L168763%_))
                                           (let ()
                                             (let* ((_%g169204169234%_
                                                     (lambda (_%g169205169231%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g169205169231%_))))
                                                    (_%g169203169780%_
                                                     (lambda (_%g169205169237%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%g169205169237%_))
                                                           (let ((_%e169211169239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g169205169237%_))))
                     (let ((_%hd169210169242%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169211169239%_)))
                           (_%tl169209169244%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169211169239%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl169209169244%_))
                           (let ((_%e169214169247%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl169209169244%_))))
                             (let ((_%hd169213169250%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169214169247%_)))
                                   (_%tl169212169252%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169214169247%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169213169250%_))
                                   (let ((_%e169217169255%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169213169250%_))))
                                     (let ((_%hd169216169258%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169217169255%_)))
                                           (_%tl169215169260%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169217169255%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169216169258%_))
                                           (let ((_%e169220169263%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169216169258%_))))
                                             (let ((_%hd169219169266%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169220169263%_)))
                                                   (_%tl169218169268%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169220169263%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd169219169266%_))
                                                   (let ((_%e169223169271%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd169219169266%_))))
                                                     (let ((_%hd169222169274%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169223169271%_)))
                                                           (_%tl169221169276%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169223169271%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl169221169276%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl169218169268%_))
                       (let ((_%e169226169279%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169218169268%_))))
                         (let ((_%hd169225169282%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169226169279%_)))
                               (_%tl169224169284%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169226169279%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169224169284%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl169215169260%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl169212169252%_))
                                       (let ((_%e169229169287%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl169212169252%_))))
                                         (let ((_%hd169228169290%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169229169287%_)))
                                               (_%tl169227169292%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169229169287%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl169227169292%_))
                                               ((lambda (_%L169295%_
                                                         _%L169296%_
                                                         _%L169297%_)
                                                  (let* ((_%g169321169335%_
                                                          (lambda (_%g169322169332%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g169322169332%_))))
                                                         (_%g169320169376%_
                                                          (lambda (_%g169322169338%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g169322169338%_))
                        (let ((_%e169327169340%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169322169338%_))))
                          (let ((_%hd169326169343%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169327169340%_)))
                                (_%tl169325169345%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169327169340%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169325169345%_))
                                (let ((_%e169330169348%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169325169345%_))))
                                  (let ((_%hd169329169351%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169330169348%_)))
                                        (_%tl169328169353%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169330169348%_))))
                                    ((lambda (_%L169356%_ _%L169357%_)
                                       (let ((_%self169370%_
                                              (list-ref
                                               _%L169357%_
                                               _%self-index169065%_)))
                                         (for-each
                                          (lambda (_%g169371169373%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs
                                               _%g169371169373%_
                                               'receiver:
                                               _%self169370%_
                                               'methods:
                                               _%method-calls167093%_
                                               'slots:
                                               _%slot-refs167094%_)))
                                          _%L169356%_)))
                                     _%tl169328169353%_
                                     _%hd169329169351%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g169321169335%_ _%g169322169338%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g169321169335%_ _%g169322169338%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g169320169376%_
                                                     _%L169296%_))
                                                  (let* ((_%g169379169398%_
                                                          (lambda (_%g169380169395%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g169380169395%_))))
                                                         (_%g169378169503%_
                                                          (lambda (_%g169380169401%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g169380169401%_))
                        (let ((_%e169384169403%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169380169401%_))))
                          (let ((_%hd169383169406%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169384169403%_)))
                                (_%tl169382169408%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169384169403%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl169382169408%_))
                                (let ((_g171128_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl169382169408%_
                                          '0))))
                                  (begin
                                    (let ((_g171129_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g171128_)
                                                 (##vector-length _g171128_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g171129_ 2)))
                                          (error "Context expects 2 values"
                                                 _g171129_)))
                                    (let ((_%target169385169411%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g171128_ 0)))
                                          (_%tl169387169413%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g171128_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl169387169413%_))
                                          (letrec ((_%loop169388169416%_
                                                    (lambda (_%hd169386169419%_
                                                             _%clause169392169421%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd169386169419%_))
                                                          (let ((_%e169389169424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd169386169419%_))))
                    (let ((_%lp-hd169390169427%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169389169424%_)))
                          (_%lp-tl169391169429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169389169424%_))))
                      (let ((__tmp171130
                             (cons _%lp-hd169390169427%_
                                   _%clause169392169421%_)))
                        (declare (not safe))
                        (_%loop169388169416%_
                         _%lp-tl169391169429%_
                         __tmp171130))))
                  (let ((_%clause169393169432%_
                         (reverse _%clause169392169421%_)))
                    ((lambda (_%L169435%_)
                       (for-each
                        (lambda (_%clause169448%_)
                          (let* ((_%g169450169461%_
                                  (lambda (_%g169451169458%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g169451169458%_))))
                                 (_%g169449169493%_
                                  (lambda (_%g169451169464%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%g169451169464%_))
                                        (let ((_%e169456169466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g169451169464%_))))
                                          (let ((_%hd169455169469%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169456169466%_)))
                                                (_%tl169454169471%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169456169466%_))))
                                            ((lambda (_%L169474%_ _%L169475%_)
                                               (let ((_%self169487%_
                                                      (list-ref
                                                       _%L169475%_
                                                       _%self-index169065%_)))
                                                 (for-each
                                                  (lambda (_%g169488169490%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs
                                                       _%g169488169490%_
                                                       'receiver:
                                                       _%self169487%_
                                                       'methods:
                                                       _%method-calls167093%_
                                                       'slots:
                                                       _%slot-refs167094%_)))
                                                  _%L169474%_)))
                                             _%tl169454169471%_
                                             _%hd169455169469%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g169450169461%_
                                           _%g169451169464%_))))))
                            (declare (not safe))
                            (_%g169449169493%_ _%clause169448%_)))
                        (let ((__tmp171131
                               (lambda (_%g169495169498%_ _%g169496169500%_)
                                 (cons _%g169495169498%_ _%g169496169500%_))))
                          (declare (not safe))
                          (__foldr1 __tmp171131 '() _%L169435%_))))
                     _%clause169393169432%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop169388169416%_
                                               _%target169385169411%_
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g169379169398%_
                                             _%g169380169401%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g169379169398%_ _%g169380169401%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g169379169398%_ _%g169380169401%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g169378169503%_
                                                     _%L169295%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (_%no-specializer?167097%_))
                                                      _%stx167001%_
                                                      (let* ((_%specializer-id169512%_
                                                              (let* ((_%id169506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp171132
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L167074%_))))
                                (declare (not safe))
                                (make-symbol__1 __tmp171132 '"::specialize")))
                             (_%specializer-id169509%_
                              (let ((__tmp171133
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _%stx167001%_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _%id169506%_
                                 __tmp171133))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0 _%specializer-id169509%_))
                        _%specializer-id169509%_))
                     (_%$klass169514%_
                      (let ((__tmp171134
                             (let ()
                               (declare (not safe))
                               (##gensym '__klass))))
                        (declare (not safe))
                        (make-symbol__0 __tmp171134)))
                     (_%$method-table169516%_
                      (let ((__tmp171135
                             (let ()
                               (declare (not safe))
                               (##gensym '__method-table))))
                        (declare (not safe))
                        (make-symbol__0 __tmp171135)))
                     (_%methods169518%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%method-calls167093%_)))
                     (_%$methods169522%_
                      (map (lambda (_%id169520%_)
                             (let ((__tmp171136 (gensym _%id169520%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp171136)))
                           _%methods169518%_))
                     (_%_169531%_
                      (for-each
                       (lambda (_%g169523169526%_ _%g169524169528%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%method-calls167093%_
                            _%g169523169526%_
                            _%g169524169528%_)))
                       _%methods169518%_
                       _%$methods169522%_))
                     (_%methods-bind169541%_
                      (map (lambda (_%g169533169536%_ _%g169534169538%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-method-bind167003%_
                                _%$klass169514%_
                                _%$method-table169516%_
                                _%g169533169536%_
                                _%g169534169538%_)))
                           _%methods169518%_
                           _%$methods169522%_))
                     (_%slots169543%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%slot-refs167094%_)))
                     (_%$slots169547%_
                      (map (lambda (_%id169545%_)
                             (let ((__tmp171137 (gensym _%id169545%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp171137)))
                           _%slots169543%_))
                     (_%_169556%_
                      (for-each
                       (lambda (_%g169548169551%_ _%g169549169553%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%slot-refs167094%_
                            _%g169548169551%_
                            _%g169549169553%_)))
                       _%slots169543%_
                       _%$slots169547%_))
                     (_%slots-bind169565%_
                      (map (lambda (_%g169557169560%_ _%g169558169562%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-slot-bind167004%_
                                _%$klass169514%_
                                _%g169557169560%_
                                _%g169558169562%_)))
                           _%slots169543%_
                           _%$slots169547%_))
                     (_%specializer-lambda-expr169638%_
                      (let* ((_%g169567169581%_
                              (lambda (_%g169568169578%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g169568169578%_))))
                             (_%g169566169635%_
                              (lambda (_%g169568169584%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g169568169584%_))
                                    (let ((_%e169573169586%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g169568169584%_))))
                                      (let ((_%hd169572169589%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169573169586%_)))
                                            (_%tl169571169591%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169573169586%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169571169591%_))
                                            (let ((_%e169576169594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169571169591%_))))
                                              (let ((_%hd169575169597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169576169594%_)))
                                                    (_%tl169574169599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169576169594%_))))
                                                ((lambda (_%L169602%_
                                                          _%L169603%_)
                                                   (let* ((_%self169626%_
                                                           (list-ref
                                                            _%L169603%_
                                                            _%self-index169065%_))
                                                          (_%body169632%_
                                                           (map (lambda (_%g169627169629%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _%g169627169629%_
                             'receiver:
                             _%self169626%_
                             'klass:
                             _%$klass169514%_
                             'methods:
                             _%method-calls167093%_
                             'slots:
                             _%slot-refs167094%_)))
                        _%L169602%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp171138
                                                            (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L169603%_ _%body169632%_))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp171138 _%L169296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%tl169574169599%_
                                                 _%hd169575169597%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g169567169581%_
                                               _%g169568169584%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169567169581%_
                                       _%g169568169584%_))))))
                        (declare (not safe))
                        (_%g169566169635%_ _%L169296%_)))
                     (_%specializer-case-lambda-expr169773%_
                      (let* ((_%g169640169659%_
                              (lambda (_%g169641169656%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g169641169656%_))))
                             (_%g169639169770%_
                              (lambda (_%g169641169662%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g169641169662%_))
                                    (let ((_%e169645169664%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g169641169662%_))))
                                      (let ((_%hd169644169667%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169645169664%_)))
                                            (_%tl169643169669%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169645169664%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl169643169669%_))
                                            (let ((_g171139_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%tl169643169669%_
                                                      '0))))
                                              (begin
                                                (let ((_g171140_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g171139_)
                                                             (##vector-length
                                                              _g171139_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g171140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g171140_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target169646169672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g171139_
                                                          0)))
                                                      (_%tl169648169674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g171139_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169648169674%_))
                                                      (letrec ((_%loop169649169677%_
                                                                (lambda (_%hd169647169680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%clause169653169682%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169647169680%_))
                              (let ((_%e169650169685%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169647169680%_))))
                                (let ((_%lp-hd169651169688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169650169685%_)))
                                      (_%lp-tl169652169690%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169650169685%_))))
                                  (let ((__tmp171141
                                         (cons _%lp-hd169651169688%_
                                               _%clause169653169682%_)))
                                    (declare (not safe))
                                    (_%loop169649169677%_
                                     _%lp-tl169652169690%_
                                     __tmp171141))))
                              (let ((_%clause169654169693%_
                                     (reverse _%clause169653169682%_)))
                                ((lambda (_%L169696%_)
                                   (let* ((_%clauses169768%_
                                           (map (lambda (_%clause169710%_)
                                                  (let* ((_%g169712169723%_
                                                          (lambda (_%g169713169720%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g169713169720%_))))
                                                         (_%g169711169758%_
                                                          (lambda (_%g169713169726%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g169713169726%_))
                        (let ((_%e169718169728%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169713169726%_))))
                          (let ((_%hd169717169731%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169718169728%_)))
                                (_%tl169716169733%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169718169728%_))))
                            ((lambda (_%L169736%_ _%L169737%_)
                               (let* ((_%self169749%_
                                       (list-ref
                                        _%L169737%_
                                        _%self-index169065%_))
                                      (_%body169755%_
                                       (map (lambda (_%g169750169752%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#apply-subst-object-refs
                                                 _%g169750169752%_
                                                 'receiver:
                                                 _%self169749%_
                                                 'klass:
                                                 _%$klass169514%_
                                                 'methods:
                                                 _%method-calls167093%_
                                                 'slots:
                                                 _%slot-refs167094%_)))
                                            _%L169736%_)))
                                 (cons _%L169737%_ _%body169755%_)))
                             _%tl169716169733%_
                             _%hd169717169731%_)))
                        (let ()
                          (declare (not safe))
                          (_%g169712169723%_ _%g169713169726%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g169711169758%_
                                                     _%clause169710%_)))
                                                (let ((__tmp171142
                                                       (lambda (_%g169760169763%_
                                                                _%g169761169765%_)
                                                         (cons _%g169760169763%_
                                                               _%g169761169765%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp171142
                                                   '()
                                                   _%L169696%_))))
                                          (__tmp171143
                                           (cons '%#case-lambda
                                                 _%clauses169768%_)))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp171143
                                      _%L169295%_)))
                                 _%clause169654169693%_))))))
                (let ()
                  (declare (not safe))
                  (_%loop169649169677%_ _%target169646169672%_ '())))
              (let ()
                (declare (not safe))
                (_%g169640169659%_ _%g169641169662%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g169640169659%_
                                               _%g169641169662%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169640169659%_
                                       _%g169641169662%_))))))
                        (declare (not safe))
                        (_%g169639169770%_ _%L169295%_)))
                     (_%specializer-impl169775%_
                      (let ((__tmp171144
                             (cons '%#let-values
                                   (cons (cons (cons (cons _%L168765%_ '())
                                                     (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (cons _%L168764%_ '())
                                           (cons (let ((__tmp171145
                                                        (cons '%#let-values
                                                              (cons (cons (cons (cons _%L169297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _%specializer-lambda-expr169638%_
                                              '()))
                                  '())
                            (cons _%specializer-case-lambda-expr169773%_
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp171145
                                                    _%stx167001%_))
                                                 '()))
                                     '())
                               (cons _%L168762%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L168761%_ '())))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp171144 _%stx167001%_)))
                     (_%specializer-impl169777%_
                      (let ()
                        (declare (not safe))
                        (_%generate-specializer-impl167005%_
                         _%$klass169514%_
                         _%$method-table169516%_
                         _%methods-bind169541%_
                         _%slots-bind169565%_
                         _%specializer-impl169775%_))))
                (let ((__tmp171147
                       (let () (declare (not safe)) (gx#stx-e _%L167074%_)))
                      (__tmp171146
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%specializer-id169512%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"generate method specializer "
                   __tmp171147
                   '" => "
                   __tmp171146))
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-def167006%_
                   _%L167074%_
                   _%specializer-id169512%_
                   _%specializer-impl169777%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%hd169228169290%_
                                                _%hd169225169282%_
                                                _%hd169222169274%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g169204169234%_
                                                  _%g169205169237%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g169204169234%_
                                          _%g169205169237%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g169204169234%_ _%g169205169237%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%g169204169234%_ _%g169205169237%_)))))
                       (let ()
                         (declare (not safe))
                         (_%g169204169234%_ _%g169205169237%_)))
                   (let ()
                     (declare (not safe))
                     (_%g169204169234%_ _%g169205169237%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g169204169234%_
                                                      _%g169205169237%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g169204169234%_
                                              _%g169205169237%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g169204169234%_ _%g169205169237%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g169204169234%_ _%g169205169237%_)))))
                   (let ()
                     (declare (not safe))
                     (_%g169204169234%_ _%g169205169237%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%g169203169780%_
                                                _%L168763%_)))
                                           (let () _%stx167001%_)))))
                               _%hd168861168984%_
                               _%kw-ref168859169005%_
                               _%hd168849168971%_
                               _%hd168840168947%_
                               _%hd168831168923%_)
                              (let ()
                                (declare (not safe))
                                (_%g168805168867%_ _%g168806168870%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop168854168989%_
                                                     _%target168851168976%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168805168867%_
                                                   _%g168806168870%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g168805168867%_
                                           _%g168806168870%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g168805168867%_ _%g168806168870%_)))
                          (let ()
                            (declare (not safe))
                            (_%g168805168867%_ _%g168806168870%_)))
                      (let ()
                        (declare (not safe))
                        (_%g168805168867%_ _%g168806168870%_)))))
              (let ()
                (declare (not safe))
                (_%g168805168867%_ _%g168806168870%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168805168867%_
                                                     _%g168806168870%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168805168867%_
                                                 _%g168806168870%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168805168867%_
                                         _%g168806168870%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168805168867%_ _%g168806168870%_)))
                          (let ()
                            (declare (not safe))
                            (_%g168805168867%_ _%g168806168870%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168805168867%_ _%g168806168870%_)))
              (let ()
                (declare (not safe))
                (_%g168805168867%_ _%g168806168870%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168805168867%_
                                                     _%g168806168870%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168805168867%_
                                             _%g168806168870%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168805168867%_ _%g168806168870%_)))
                              (let ()
                                (declare (not safe))
                                (_%g168805168867%_ _%g168806168870%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g168805168867%_ _%g168806168870%_)))
                  (let ()
                    (declare (not safe))
                    (_%g168805168867%_ _%g168806168870%_)))
              (let ()
                (declare (not safe))
                (_%g168805168867%_ _%g168806168870%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g168805168867%_
                                                 _%g168806168870%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168805168867%_ _%g168806168870%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168805168867%_ _%g168806168870%_)))
                              (let ()
                                (declare (not safe))
                                (_%g168805168867%_ _%g168806168870%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g168805168867%_ _%g168806168870%_)))))
              (let ()
                (declare (not safe))
                (_%g168805168867%_ _%g168806168870%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g168805168867%_
                                                 _%g168806168870%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168805168867%_
                                             _%g168806168870%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168805168867%_
                                         _%g168806168870%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168805168867%_ _%g168806168870%_))))))
                  (declare (not safe))
                  (_%g168804169784%_ _%L168762%_)))
              _%hd168638168756%_
              _%hd168635168748%_
              _%hd168632168740%_
              _%hd168629168732%_
              _%hd168611168684%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168591168644%_
                                                        _%g168592168647%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168591168644%_
                                                _%g168592168647%_)))
                                         (let ()
                                           (declare (not safe))
                                           (_%g168591168644%_
                                            _%g168592168647%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168591168644%_ _%g168592168647%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%g168591168644%_ _%g168592168647%_)))))
                         (let ()
                           (declare (not safe))
                           (_%g168591168644%_ _%g168592168647%_)))
                     (let ()
                       (declare (not safe))
                       (_%g168591168644%_ _%g168592168647%_)))
                 (let ()
                   (declare (not safe))
                   (_%g168591168644%_ _%g168592168647%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g168591168644%_
                                                    _%g168592168647%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168591168644%_
                                                _%g168592168647%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168591168644%_
                                        _%g168592168647%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g168591168644%_ _%g168592168647%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g168591168644%_ _%g168592168647%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168591168644%_
                                                        _%g168592168647%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g168591168644%_
                                                    _%g168592168647%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168591168644%_
                                                _%g168592168647%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168591168644%_
                                        _%g168592168647%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g168591168644%_ _%g168592168647%_)))
                         (let ()
                           (declare (not safe))
                           (_%g168591168644%_ _%g168592168647%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g168591168644%_ _%g168592168647%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g168591168644%_
                                                    _%g168592168647%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g168591168644%_
                                            _%g168592168647%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g168591168644%_ _%g168592168647%_)))
                             (let ()
                               (declare (not safe))
                               (_%g168591168644%_ _%g168592168647%_)))
                         (let ()
                           (declare (not safe))
                           (_%g168591168644%_ _%g168592168647%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g168591168644%_ _%g168592168647%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%g168590169787%_ _%L167073%_)))
                                         (let () _%stx167001%_)))))))))
                  (_%__kont170012170013%_ (lambda () _%stx167001%_)))
              (let ((_%__match170041170042%_
                     (lambda (_%e167015167041%_
                              _%hd167014167044%_
                              _%tl167013167046%_
                              _%e167018167049%_
                              _%hd167017167052%_
                              _%tl167016167054%_
                              _%e167021167057%_
                              _%hd167020167060%_
                              _%tl167019167062%_
                              _%e167024167065%_
                              _%hd167023167068%_
                              _%tl167022167070%_)
                       (let ((_%L167073%_ _%hd167023167068%_)
                             (_%L167074%_ _%hd167020167060%_))
                         (if (let ((__tmp171148
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L167074%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp171148))
                             (_%__kont170010170011%_ _%L167073%_ _%L167074%_)
                             (_%__kont170012170013%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170008170009%_))
                    (let ((_%e167015167041%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170008170009%_))))
                      (let ((_%tl167013167046%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167015167041%_)))
                            (_%hd167014167044%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167015167041%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167013167046%_))
                            (let ((_%e167018167049%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167013167046%_))))
                              (let ((_%tl167016167054%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167018167049%_)))
                                    (_%hd167017167052%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167018167049%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd167017167052%_))
                                    (let ((_%e167021167057%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd167017167052%_))))
                                      (let ((_%tl167019167062%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e167021167057%_)))
                                            (_%hd167020167060%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e167021167057%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl167019167062%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl167016167054%_))
                                                (let ((_%e167024167065%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl167016167054%_))))
                                                  (let ((_%tl167022167070%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167024167065%_)))
                                                        (_%hd167023167068%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167024167065%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167022167070%_))
                                                        (_%__match170041170042%_
                                                         _%e167015167041%_
                                                         _%hd167014167044%_
                                                         _%tl167013167046%_
                                                         _%e167018167049%_
                                                         _%hd167017167052%_
                                                         _%tl167016167054%_
                                                         _%e167021167057%_
                                                         _%hd167020167060%_
                                                         _%tl167019167062%_
                                                         _%e167024167065%_
                                                         _%hd167023167068%_
                                                         _%tl167022167070%_)
                                                        (_%__kont170012170013%_))))
                                                (_%__kont170012170013%_))
                                            (_%__kont170012170013%_))))
                                    (_%__kont170012170013%_))))
                            (_%__kont170012170013%_))))
                    (_%__kont170012170013%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self165961%_ _%stx165962%_)
        (let* ((_%__stx170044170045%_ _%stx165962%_)
               (_%g165970166192%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx170044170045%_)))))
          (let ((_%__kont170046170047%_
                 (lambda (_%L166949%_ _%L166950%_ _%L166951%_ _%L166952%_)
                   (let ((__tmp171150
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self165961%_ 'methods)))
                         (__tmp171149
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166950%_))))
                     (declare (not safe))
                     (hash-put! __tmp171150 __tmp171149 '#t))
                   (for-each
                    (lambda (_%g166985166987%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self165961%_ _%g166985166987%_)))
                    (let ((__tmp171151
                           (lambda (_%g166989166992%_ _%g166990166994%_)
                             (cons _%g166989166992%_ _%g166990166994%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171151 '() _%L166949%_)))))
                (_%__kont170050170051%_
                 (lambda (_%L166784%_
                          _%L166785%_
                          _%L166786%_
                          _%L166787%_
                          _%L166788%_)
                   (let ((__tmp171153
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self165961%_ 'methods)))
                         (__tmp171152
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166785%_))))
                     (declare (not safe))
                     (hash-put! __tmp171153 __tmp171152 '#t))
                   (for-each
                    (lambda (_%g166828166830%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self165961%_ _%g166828166830%_)))
                    (let ((__tmp171154
                           (lambda (_%g166832166835%_ _%g166833166837%_)
                             (cons _%g166832166835%_ _%g166833166837%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171154 '() _%L166784%_)))))
                (_%__kont170054170055%_
                 (lambda (_%L166617%_ _%L166618%_ _%L166619%_)
                   (let ((__tmp171156
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self165961%_ 'slots)))
                         (__tmp171155
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166617%_))))
                     (declare (not safe))
                     (hash-put! __tmp171156 __tmp171155 '#t))))
                (_%__kont170056170057%_
                 (lambda (_%L166494%_ _%L166495%_ _%L166496%_ _%L166497%_)
                   (let ((__tmp171158
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self165961%_ 'slots)))
                         (__tmp171157
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166495%_))))
                     (declare (not safe))
                     (hash-put! __tmp171158 __tmp171157 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self165961%_ _%L166494%_))))
                (_%__kont170058170059%_
                 (lambda (_%L166368%_ _%L166369%_)
                   (let* ((_%accessor166391%_
                           (let ((__tmp171159
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166369%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171159)))
                          (_%klass166393%_
                           (let ((__tmp171160
                                  (##structure-ref
                                   _%accessor166391%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx165962%_
                              __tmp171160)))
                          (_%slot166395%_
                           (##structure-ref
                            _%accessor166391%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp171161
                                     (##structure-ref
                                      _%accessor166391%_
                                      '4
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp171161))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass166393%_
                                     _%slot166395%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass166393%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171163
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self165961%_ 'slots)))
                               (__tmp171162
                                (##structure-ref
                                 _%accessor166391%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp171163 __tmp171162 '#t))))))
                (_%__kont170060170061%_
                 (lambda (_%L166268%_ _%L166269%_ _%L166270%_)
                   (let* ((_%mutator166297%_
                           (let ((__tmp171164
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166270%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171164)))
                          (_%klass166299%_
                           (let ((__tmp171165
                                  (##structure-ref
                                   _%mutator166297%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx165962%_
                              __tmp171165)))
                          (_%slot166301%_
                           (##structure-ref
                            _%mutator166297%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp171166
                                     (##structure-ref
                                      _%mutator166297%_
                                      '4
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp171166))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass166299%_
                                     _%slot166301%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass166299%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171167
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self165961%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp171167 _%slot166301%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self165961%_ _%L166268%_)))))
                (_%__kont170062170063%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self165961%_ _%stx165962%_)))))
            (let* ((_%__match170543170544%_
                    (lambda (_%e166166166204%_
                             _%hd166165166207%_
                             _%tl166164166209%_
                             _%e166169166212%_
                             _%hd166168166215%_
                             _%tl166167166217%_
                             _%e166172166220%_
                             _%hd166171166223%_
                             _%tl166170166225%_
                             _%e166175166228%_
                             _%hd166174166231%_
                             _%tl166173166233%_
                             _%e166178166236%_
                             _%hd166177166239%_
                             _%tl166176166241%_
                             _%e166181166244%_
                             _%hd166180166247%_
                             _%tl166179166249%_
                             _%e166184166252%_
                             _%hd166183166255%_
                             _%tl166182166257%_
                             _%e166187166260%_
                             _%hd166186166263%_
                             _%tl166185166265%_)
                      (let ((_%L166268%_ _%hd166186166263%_)
                            (_%L166269%_ _%hd166183166255%_)
                            (_%L166270%_ _%hd166174166231%_))
                        (if (and (let ((__tmp171168
                                        (let ((__tmp171169
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166270%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171169))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171168
                                    'gxc#!mutator::t))
                                 (let ((__tmp171170
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self165961%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166269%_
                                    __tmp171170)))
                            (_%__kont170060170061%_
                             _%L166268%_
                             _%L166269%_
                             _%L166270%_)
                            (_%__kont170062170063%_)))))
                   (_%__match170541170542%_
                    (lambda (_%e166166166204%_
                             _%hd166165166207%_
                             _%tl166164166209%_
                             _%e166169166212%_
                             _%hd166168166215%_
                             _%tl166167166217%_
                             _%e166172166220%_
                             _%hd166171166223%_
                             _%tl166170166225%_
                             _%e166175166228%_
                             _%hd166174166231%_
                             _%tl166173166233%_
                             _%e166178166236%_
                             _%hd166177166239%_
                             _%tl166176166241%_
                             _%e166181166244%_
                             _%hd166180166247%_
                             _%tl166179166249%_
                             _%e166184166252%_
                             _%hd166183166255%_
                             _%tl166182166257%_
                             _%e166187166260%_
                             _%hd166186166263%_
                             _%tl166185166265%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166185166265%_))
                          (_%__match170543170544%_
                           _%e166166166204%_
                           _%hd166165166207%_
                           _%tl166164166209%_
                           _%e166169166212%_
                           _%hd166168166215%_
                           _%tl166167166217%_
                           _%e166172166220%_
                           _%hd166171166223%_
                           _%tl166170166225%_
                           _%e166175166228%_
                           _%hd166174166231%_
                           _%tl166173166233%_
                           _%e166178166236%_
                           _%hd166177166239%_
                           _%tl166176166241%_
                           _%e166181166244%_
                           _%hd166180166247%_
                           _%tl166179166249%_
                           _%e166184166252%_
                           _%hd166183166255%_
                           _%tl166182166257%_
                           _%e166187166260%_
                           _%hd166186166263%_
                           _%tl166185166265%_)
                          (_%__kont170062170063%_))))
                   (_%__match170535170536%_
                    (lambda (_%e166166166204%_
                             _%hd166165166207%_
                             _%tl166164166209%_
                             _%e166169166212%_
                             _%hd166168166215%_
                             _%tl166167166217%_
                             _%e166172166220%_
                             _%hd166171166223%_
                             _%tl166170166225%_
                             _%e166175166228%_
                             _%hd166174166231%_
                             _%tl166173166233%_
                             _%e166178166236%_
                             _%hd166177166239%_
                             _%tl166176166241%_
                             _%e166181166244%_
                             _%hd166180166247%_
                             _%tl166179166249%_
                             _%e166184166252%_
                             _%hd166183166255%_
                             _%tl166182166257%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166176166241%_))
                          (let ((_%e166187166260%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166176166241%_))))
                            (let ((_%tl166185166265%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166187166260%_)))
                                  (_%hd166186166263%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166187166260%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166185166265%_))
                                  (_%__match170543170544%_
                                   _%e166166166204%_
                                   _%hd166165166207%_
                                   _%tl166164166209%_
                                   _%e166169166212%_
                                   _%hd166168166215%_
                                   _%tl166167166217%_
                                   _%e166172166220%_
                                   _%hd166171166223%_
                                   _%tl166170166225%_
                                   _%e166175166228%_
                                   _%hd166174166231%_
                                   _%tl166173166233%_
                                   _%e166178166236%_
                                   _%hd166177166239%_
                                   _%tl166176166241%_
                                   _%e166181166244%_
                                   _%hd166180166247%_
                                   _%tl166179166249%_
                                   _%e166184166252%_
                                   _%hd166183166255%_
                                   _%tl166182166257%_
                                   _%e166187166260%_
                                   _%hd166186166263%_
                                   _%tl166185166265%_)
                                  (_%__kont170062170063%_))))
                          (_%__kont170062170063%_))))
                   (_%__match170481170482%_
                    (lambda (_%e166142166312%_
                             _%hd166141166315%_
                             _%tl166140166317%_
                             _%e166145166320%_
                             _%hd166144166323%_
                             _%tl166143166325%_
                             _%e166148166328%_
                             _%hd166147166331%_
                             _%tl166146166333%_
                             _%e166151166336%_
                             _%hd166150166339%_
                             _%tl166149166341%_
                             _%e166154166344%_
                             _%hd166153166347%_
                             _%tl166152166349%_
                             _%e166157166352%_
                             _%hd166156166355%_
                             _%tl166155166357%_
                             _%e166160166360%_
                             _%hd166159166363%_
                             _%tl166158166365%_)
                      (let ((_%L166368%_ _%hd166159166363%_)
                            (_%L166369%_ _%hd166150166339%_))
                        (if (and (let ((__tmp171171
                                        (let ((__tmp171172
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166369%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171172))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171171
                                    'gxc#!accessor::t))
                                 (let ((__tmp171173
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self165961%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166368%_
                                    __tmp171173)))
                            (_%__kont170058170059%_ _%L166368%_ _%L166369%_)
                            (_%__kont170062170063%_)))))
                   (_%__match170479170480%_
                    (lambda (_%e166142166312%_
                             _%hd166141166315%_
                             _%tl166140166317%_
                             _%e166145166320%_
                             _%hd166144166323%_
                             _%tl166143166325%_
                             _%e166148166328%_
                             _%hd166147166331%_
                             _%tl166146166333%_
                             _%e166151166336%_
                             _%hd166150166339%_
                             _%tl166149166341%_
                             _%e166154166344%_
                             _%hd166153166347%_
                             _%tl166152166349%_
                             _%e166157166352%_
                             _%hd166156166355%_
                             _%tl166155166357%_
                             _%e166160166360%_
                             _%hd166159166363%_
                             _%tl166158166365%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166152166349%_))
                          (_%__match170481170482%_
                           _%e166142166312%_
                           _%hd166141166315%_
                           _%tl166140166317%_
                           _%e166145166320%_
                           _%hd166144166323%_
                           _%tl166143166325%_
                           _%e166148166328%_
                           _%hd166147166331%_
                           _%tl166146166333%_
                           _%e166151166336%_
                           _%hd166150166339%_
                           _%tl166149166341%_
                           _%e166154166344%_
                           _%hd166153166347%_
                           _%tl166152166349%_
                           _%e166157166352%_
                           _%hd166156166355%_
                           _%tl166155166357%_
                           _%e166160166360%_
                           _%hd166159166363%_
                           _%tl166158166365%_)
                          (_%__match170535170536%_
                           _%e166142166312%_
                           _%hd166141166315%_
                           _%tl166140166317%_
                           _%e166145166320%_
                           _%hd166144166323%_
                           _%tl166143166325%_
                           _%e166148166328%_
                           _%hd166147166331%_
                           _%tl166146166333%_
                           _%e166151166336%_
                           _%hd166150166339%_
                           _%tl166149166341%_
                           _%e166154166344%_
                           _%hd166153166347%_
                           _%tl166152166349%_
                           _%e166157166352%_
                           _%hd166156166355%_
                           _%tl166155166357%_
                           _%e166160166360%_
                           _%hd166159166363%_
                           _%tl166158166365%_))))
                   (_%__match170425170426%_
                    (lambda (_%e166107166406%_
                             _%hd166106166409%_
                             _%tl166105166411%_
                             _%e166110166414%_
                             _%hd166109166417%_
                             _%tl166108166419%_
                             _%e166113166422%_
                             _%hd166112166425%_
                             _%tl166111166427%_
                             _%e166116166430%_
                             _%hd166115166433%_
                             _%tl166114166435%_
                             _%e166119166438%_
                             _%hd166118166441%_
                             _%tl166117166443%_
                             _%e166122166446%_
                             _%hd166121166449%_
                             _%tl166120166451%_
                             _%e166125166454%_
                             _%hd166124166457%_
                             _%tl166123166459%_
                             _%e166128166462%_
                             _%hd166127166465%_
                             _%tl166126166467%_
                             _%e166131166470%_
                             _%hd166130166473%_
                             _%tl166129166475%_
                             _%e166134166478%_
                             _%hd166133166481%_
                             _%tl166132166483%_
                             _%e166137166486%_
                             _%hd166136166489%_
                             _%tl166135166491%_)
                      (let ((_%L166494%_ _%hd166136166489%_)
                            (_%L166495%_ _%hd166133166481%_)
                            (_%L166496%_ _%hd166124166457%_)
                            (_%L166497%_ _%hd166115166433%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166497%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166497%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp171174
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self165961%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166496%_
                                    __tmp171174)))
                            (_%__kont170056170057%_
                             _%L166494%_
                             _%L166495%_
                             _%L166496%_
                             _%L166497%_)
                            (_%__kont170062170063%_)))))
                   (_%__match170417170418%_
                    (lambda (_%e166107166406%_
                             _%hd166106166409%_
                             _%tl166105166411%_
                             _%e166110166414%_
                             _%hd166109166417%_
                             _%tl166108166419%_
                             _%e166113166422%_
                             _%hd166112166425%_
                             _%tl166111166427%_
                             _%e166116166430%_
                             _%hd166115166433%_
                             _%tl166114166435%_
                             _%e166119166438%_
                             _%hd166118166441%_
                             _%tl166117166443%_
                             _%e166122166446%_
                             _%hd166121166449%_
                             _%tl166120166451%_
                             _%e166125166454%_
                             _%hd166124166457%_
                             _%tl166123166459%_
                             _%e166128166462%_
                             _%hd166127166465%_
                             _%tl166126166467%_
                             _%e166131166470%_
                             _%hd166130166473%_
                             _%tl166129166475%_
                             _%e166134166478%_
                             _%hd166133166481%_
                             _%tl166132166483%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166126166467%_))
                          (let ((_%e166137166486%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166126166467%_))))
                            (let ((_%tl166135166491%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166137166486%_)))
                                  (_%hd166136166489%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166137166486%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166135166491%_))
                                  (_%__match170425170426%_
                                   _%e166107166406%_
                                   _%hd166106166409%_
                                   _%tl166105166411%_
                                   _%e166110166414%_
                                   _%hd166109166417%_
                                   _%tl166108166419%_
                                   _%e166113166422%_
                                   _%hd166112166425%_
                                   _%tl166111166427%_
                                   _%e166116166430%_
                                   _%hd166115166433%_
                                   _%tl166114166435%_
                                   _%e166119166438%_
                                   _%hd166118166441%_
                                   _%tl166117166443%_
                                   _%e166122166446%_
                                   _%hd166121166449%_
                                   _%tl166120166451%_
                                   _%e166125166454%_
                                   _%hd166124166457%_
                                   _%tl166123166459%_
                                   _%e166128166462%_
                                   _%hd166127166465%_
                                   _%tl166126166467%_
                                   _%e166131166470%_
                                   _%hd166130166473%_
                                   _%tl166129166475%_
                                   _%e166134166478%_
                                   _%hd166133166481%_
                                   _%tl166132166483%_
                                   _%e166137166486%_
                                   _%hd166136166489%_
                                   _%tl166135166491%_)
                                  (_%__kont170062170063%_))))
                          (_%__match170541170542%_
                           _%e166107166406%_
                           _%hd166106166409%_
                           _%tl166105166411%_
                           _%e166110166414%_
                           _%hd166109166417%_
                           _%tl166108166419%_
                           _%e166113166422%_
                           _%hd166112166425%_
                           _%tl166111166427%_
                           _%e166116166430%_
                           _%hd166115166433%_
                           _%tl166114166435%_
                           _%e166119166438%_
                           _%hd166118166441%_
                           _%tl166117166443%_
                           _%e166122166446%_
                           _%hd166121166449%_
                           _%tl166120166451%_
                           _%e166125166454%_
                           _%hd166124166457%_
                           _%tl166123166459%_
                           _%e166128166462%_
                           _%hd166127166465%_
                           _%tl166126166467%_))))
                   (_%__match170339170340%_
                    (lambda (_%e166073166537%_
                             _%hd166072166540%_
                             _%tl166071166542%_
                             _%e166076166545%_
                             _%hd166075166548%_
                             _%tl166074166550%_
                             _%e166079166553%_
                             _%hd166078166556%_
                             _%tl166077166558%_
                             _%e166082166561%_
                             _%hd166081166564%_
                             _%tl166080166566%_
                             _%e166085166569%_
                             _%hd166084166572%_
                             _%tl166083166574%_
                             _%e166088166577%_
                             _%hd166087166580%_
                             _%tl166086166582%_
                             _%e166091166585%_
                             _%hd166090166588%_
                             _%tl166089166590%_
                             _%e166094166593%_
                             _%hd166093166596%_
                             _%tl166092166598%_
                             _%e166097166601%_
                             _%hd166096166604%_
                             _%tl166095166606%_
                             _%e166100166609%_
                             _%hd166099166612%_
                             _%tl166098166614%_)
                      (let ((_%L166617%_ _%hd166099166612%_)
                            (_%L166618%_ _%hd166090166588%_)
                            (_%L166619%_ _%hd166081166564%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166619%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166619%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp171175
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self165961%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166618%_
                                    __tmp171175)))
                            (_%__kont170054170055%_
                             _%L166617%_
                             _%L166618%_
                             _%L166619%_)
                            (_%__match170543170544%_
                             _%e166073166537%_
                             _%hd166072166540%_
                             _%tl166071166542%_
                             _%e166076166545%_
                             _%hd166075166548%_
                             _%tl166074166550%_
                             _%e166079166553%_
                             _%hd166078166556%_
                             _%tl166077166558%_
                             _%e166082166561%_
                             _%hd166081166564%_
                             _%tl166080166566%_
                             _%e166085166569%_
                             _%hd166084166572%_
                             _%tl166083166574%_
                             _%e166088166577%_
                             _%hd166087166580%_
                             _%tl166086166582%_
                             _%e166091166585%_
                             _%hd166090166588%_
                             _%tl166089166590%_
                             _%e166094166593%_
                             _%hd166093166596%_
                             _%tl166092166598%_)))))
                   (_%__match170337170338%_
                    (lambda (_%e166073166537%_
                             _%hd166072166540%_
                             _%tl166071166542%_
                             _%e166076166545%_
                             _%hd166075166548%_
                             _%tl166074166550%_
                             _%e166079166553%_
                             _%hd166078166556%_
                             _%tl166077166558%_
                             _%e166082166561%_
                             _%hd166081166564%_
                             _%tl166080166566%_
                             _%e166085166569%_
                             _%hd166084166572%_
                             _%tl166083166574%_
                             _%e166088166577%_
                             _%hd166087166580%_
                             _%tl166086166582%_
                             _%e166091166585%_
                             _%hd166090166588%_
                             _%tl166089166590%_
                             _%e166094166593%_
                             _%hd166093166596%_
                             _%tl166092166598%_
                             _%e166097166601%_
                             _%hd166096166604%_
                             _%tl166095166606%_
                             _%e166100166609%_
                             _%hd166099166612%_
                             _%tl166098166614%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166092166598%_))
                          (_%__match170339170340%_
                           _%e166073166537%_
                           _%hd166072166540%_
                           _%tl166071166542%_
                           _%e166076166545%_
                           _%hd166075166548%_
                           _%tl166074166550%_
                           _%e166079166553%_
                           _%hd166078166556%_
                           _%tl166077166558%_
                           _%e166082166561%_
                           _%hd166081166564%_
                           _%tl166080166566%_
                           _%e166085166569%_
                           _%hd166084166572%_
                           _%tl166083166574%_
                           _%e166088166577%_
                           _%hd166087166580%_
                           _%tl166086166582%_
                           _%e166091166585%_
                           _%hd166090166588%_
                           _%tl166089166590%_
                           _%e166094166593%_
                           _%hd166093166596%_
                           _%tl166092166598%_
                           _%e166097166601%_
                           _%hd166096166604%_
                           _%tl166095166606%_
                           _%e166100166609%_
                           _%hd166099166612%_
                           _%tl166098166614%_)
                          (_%__match170417170418%_
                           _%e166073166537%_
                           _%hd166072166540%_
                           _%tl166071166542%_
                           _%e166076166545%_
                           _%hd166075166548%_
                           _%tl166074166550%_
                           _%e166079166553%_
                           _%hd166078166556%_
                           _%tl166077166558%_
                           _%e166082166561%_
                           _%hd166081166564%_
                           _%tl166080166566%_
                           _%e166085166569%_
                           _%hd166084166572%_
                           _%tl166083166574%_
                           _%e166088166577%_
                           _%hd166087166580%_
                           _%tl166086166582%_
                           _%e166091166585%_
                           _%hd166090166588%_
                           _%tl166089166590%_
                           _%e166094166593%_
                           _%hd166093166596%_
                           _%tl166092166598%_
                           _%e166097166601%_
                           _%hd166096166604%_
                           _%tl166095166606%_
                           _%e166100166609%_
                           _%hd166099166612%_
                           _%tl166098166614%_))))
                   (_%__match170327170328%_
                    (lambda (_%e166073166537%_
                             _%hd166072166540%_
                             _%tl166071166542%_
                             _%e166076166545%_
                             _%hd166075166548%_
                             _%tl166074166550%_
                             _%e166079166553%_
                             _%hd166078166556%_
                             _%tl166077166558%_
                             _%e166082166561%_
                             _%hd166081166564%_
                             _%tl166080166566%_
                             _%e166085166569%_
                             _%hd166084166572%_
                             _%tl166083166574%_
                             _%e166088166577%_
                             _%hd166087166580%_
                             _%tl166086166582%_
                             _%e166091166585%_
                             _%hd166090166588%_
                             _%tl166089166590%_
                             _%e166094166593%_
                             _%hd166093166596%_
                             _%tl166092166598%_
                             _%e166097166601%_
                             _%hd166096166604%_
                             _%tl166095166606%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd166096166604%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166095166606%_))
                              (let ((_%e166100166609%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166095166606%_))))
                                (let ((_%tl166098166614%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166100166609%_)))
                                      (_%hd166099166612%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166100166609%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166098166614%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl166092166598%_))
                                          (_%__match170339170340%_
                                           _%e166073166537%_
                                           _%hd166072166540%_
                                           _%tl166071166542%_
                                           _%e166076166545%_
                                           _%hd166075166548%_
                                           _%tl166074166550%_
                                           _%e166079166553%_
                                           _%hd166078166556%_
                                           _%tl166077166558%_
                                           _%e166082166561%_
                                           _%hd166081166564%_
                                           _%tl166080166566%_
                                           _%e166085166569%_
                                           _%hd166084166572%_
                                           _%tl166083166574%_
                                           _%e166088166577%_
                                           _%hd166087166580%_
                                           _%tl166086166582%_
                                           _%e166091166585%_
                                           _%hd166090166588%_
                                           _%tl166089166590%_
                                           _%e166094166593%_
                                           _%hd166093166596%_
                                           _%tl166092166598%_
                                           _%e166097166601%_
                                           _%hd166096166604%_
                                           _%tl166095166606%_
                                           _%e166100166609%_
                                           _%hd166099166612%_
                                           _%tl166098166614%_)
                                          (_%__match170417170418%_
                                           _%e166073166537%_
                                           _%hd166072166540%_
                                           _%tl166071166542%_
                                           _%e166076166545%_
                                           _%hd166075166548%_
                                           _%tl166074166550%_
                                           _%e166079166553%_
                                           _%hd166078166556%_
                                           _%tl166077166558%_
                                           _%e166082166561%_
                                           _%hd166081166564%_
                                           _%tl166080166566%_
                                           _%e166085166569%_
                                           _%hd166084166572%_
                                           _%tl166083166574%_
                                           _%e166088166577%_
                                           _%hd166087166580%_
                                           _%tl166086166582%_
                                           _%e166091166585%_
                                           _%hd166090166588%_
                                           _%tl166089166590%_
                                           _%e166094166593%_
                                           _%hd166093166596%_
                                           _%tl166092166598%_
                                           _%e166097166601%_
                                           _%hd166096166604%_
                                           _%tl166095166606%_
                                           _%e166100166609%_
                                           _%hd166099166612%_
                                           _%tl166098166614%_))
                                      (_%__match170541170542%_
                                       _%e166073166537%_
                                       _%hd166072166540%_
                                       _%tl166071166542%_
                                       _%e166076166545%_
                                       _%hd166075166548%_
                                       _%tl166074166550%_
                                       _%e166079166553%_
                                       _%hd166078166556%_
                                       _%tl166077166558%_
                                       _%e166082166561%_
                                       _%hd166081166564%_
                                       _%tl166080166566%_
                                       _%e166085166569%_
                                       _%hd166084166572%_
                                       _%tl166083166574%_
                                       _%e166088166577%_
                                       _%hd166087166580%_
                                       _%tl166086166582%_
                                       _%e166091166585%_
                                       _%hd166090166588%_
                                       _%tl166089166590%_
                                       _%e166094166593%_
                                       _%hd166093166596%_
                                       _%tl166092166598%_))))
                              (_%__match170541170542%_
                               _%e166073166537%_
                               _%hd166072166540%_
                               _%tl166071166542%_
                               _%e166076166545%_
                               _%hd166075166548%_
                               _%tl166074166550%_
                               _%e166079166553%_
                               _%hd166078166556%_
                               _%tl166077166558%_
                               _%e166082166561%_
                               _%hd166081166564%_
                               _%tl166080166566%_
                               _%e166085166569%_
                               _%hd166084166572%_
                               _%tl166083166574%_
                               _%e166088166577%_
                               _%hd166087166580%_
                               _%tl166086166582%_
                               _%e166091166585%_
                               _%hd166090166588%_
                               _%tl166089166590%_
                               _%e166094166593%_
                               _%hd166093166596%_
                               _%tl166092166598%_))
                          (_%__match170541170542%_
                           _%e166073166537%_
                           _%hd166072166540%_
                           _%tl166071166542%_
                           _%e166076166545%_
                           _%hd166075166548%_
                           _%tl166074166550%_
                           _%e166079166553%_
                           _%hd166078166556%_
                           _%tl166077166558%_
                           _%e166082166561%_
                           _%hd166081166564%_
                           _%tl166080166566%_
                           _%e166085166569%_
                           _%hd166084166572%_
                           _%tl166083166574%_
                           _%e166088166577%_
                           _%hd166087166580%_
                           _%tl166086166582%_
                           _%e166091166585%_
                           _%hd166090166588%_
                           _%tl166089166590%_
                           _%e166094166593%_
                           _%hd166093166596%_
                           _%tl166092166598%_))))
                   (_%__match170259170260%_
                    (lambda (_%e166022166656%_
                             _%hd166021166659%_
                             _%tl166020166661%_
                             _%e166025166664%_
                             _%hd166024166667%_
                             _%tl166023166669%_
                             _%e166028166672%_
                             _%hd166027166675%_
                             _%tl166026166677%_
                             _%e166031166680%_
                             _%hd166030166683%_
                             _%tl166029166685%_
                             _%e166034166688%_
                             _%hd166033166691%_
                             _%tl166032166693%_
                             _%e166037166696%_
                             _%hd166036166699%_
                             _%tl166035166701%_
                             _%e166040166704%_
                             _%hd166039166707%_
                             _%tl166038166709%_
                             _%e166043166712%_
                             _%hd166042166715%_
                             _%tl166041166717%_
                             _%e166046166720%_
                             _%hd166045166723%_
                             _%tl166044166725%_
                             _%e166049166728%_
                             _%hd166048166731%_
                             _%tl166047166733%_
                             _%e166052166736%_
                             _%hd166051166739%_
                             _%tl166050166741%_
                             _%e166055166744%_
                             _%hd166054166747%_
                             _%tl166053166749%_
                             _%e166058166752%_
                             _%hd166057166755%_
                             _%tl166056166757%_
                             _%__splice170052170053%_
                             _%target166059166760%_
                             _%tl166061166762%_)
                      (letrec ((_%loop166062166765%_
                                (lambda (_%hd166060166768%_
                                         _%args166066166770%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166060166768%_))
                                      (let ((_%e166063166773%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166060166768%_))))
                                        (let ((_%lp-tl166065166778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166063166773%_)))
                                              (_%lp-hd166064166776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166063166773%_))))
                                          (let ((__tmp171176
                                                 (cons _%lp-hd166064166776%_
                                                       _%args166066166770%_)))
                                            (declare (not safe))
                                            (_%loop166062166765%_
                                             _%lp-tl166065166778%_
                                             __tmp171176))))
                                      (let ((_%args166067166781%_
                                             (reverse _%args166066166770%_)))
                                        (let ((_%L166784%_
                                               _%args166067166781%_)
                                              (_%L166785%_ _%hd166057166755%_)
                                              (_%L166786%_ _%hd166048166731%_)
                                              (_%L166787%_ _%hd166039166707%_)
                                              (_%L166788%_ _%hd166030166683%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L166788%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L166787%_
                                                      'call-method))
                                                   (let ((__tmp171177
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self165961%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L166786%_
                                                      __tmp171177)))
                                              (_%__kont170050170051%_
                                               _%L166784%_
                                               _%L166785%_
                                               _%L166786%_
                                               _%L166787%_
                                               _%L166788%_)
                                              (_%__kont170062170063%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop166062166765%_ _%target166059166760%_ '())))))
                   (_%__match170217170218%_
                    (lambda (_%e166022166656%_
                             _%hd166021166659%_
                             _%tl166020166661%_
                             _%e166025166664%_
                             _%hd166024166667%_
                             _%tl166023166669%_
                             _%e166028166672%_
                             _%hd166027166675%_
                             _%tl166026166677%_
                             _%e166031166680%_
                             _%hd166030166683%_
                             _%tl166029166685%_
                             _%e166034166688%_
                             _%hd166033166691%_
                             _%tl166032166693%_
                             _%e166037166696%_
                             _%hd166036166699%_
                             _%tl166035166701%_
                             _%e166040166704%_
                             _%hd166039166707%_
                             _%tl166038166709%_
                             _%e166043166712%_
                             _%hd166042166715%_
                             _%tl166041166717%_
                             _%e166046166720%_
                             _%hd166045166723%_
                             _%tl166044166725%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd166045166723%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166044166725%_))
                              (let ((_%e166049166728%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166044166725%_))))
                                (let ((_%tl166047166733%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166049166728%_)))
                                      (_%hd166048166731%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166049166728%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166047166733%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166041166717%_))
                                          (let ((_%e166052166736%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166041166717%_))))
                                            (let ((_%tl166050166741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166052166736%_)))
                                                  (_%hd166051166739%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166052166736%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd166051166739%_))
                                                  (let ((_%e166055166744%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd166051166739%_))))
                                                    (let ((_%tl166053166749%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166055166744%_)))
                                                          (_%hd166054166747%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166055166744%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd166054166747%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd166054166747%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166053166749%_))
                          (let ((_%e166058166752%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166053166749%_))))
                            (let ((_%tl166056166757%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166058166752%_)))
                                  (_%hd166057166755%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166058166752%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166056166757%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl166050166741%_))
                                      (let ((_%__splice170052170053%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl166050166741%_
                                                '0))))
                                        (let ((_%tl166061166762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170052170053%_
                                                  '1)))
                                              (_%target166059166760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170052170053%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl166061166762%_))
                                              (_%__match170259170260%_
                                               _%e166022166656%_
                                               _%hd166021166659%_
                                               _%tl166020166661%_
                                               _%e166025166664%_
                                               _%hd166024166667%_
                                               _%tl166023166669%_
                                               _%e166028166672%_
                                               _%hd166027166675%_
                                               _%tl166026166677%_
                                               _%e166031166680%_
                                               _%hd166030166683%_
                                               _%tl166029166685%_
                                               _%e166034166688%_
                                               _%hd166033166691%_
                                               _%tl166032166693%_
                                               _%e166037166696%_
                                               _%hd166036166699%_
                                               _%tl166035166701%_
                                               _%e166040166704%_
                                               _%hd166039166707%_
                                               _%tl166038166709%_
                                               _%e166043166712%_
                                               _%hd166042166715%_
                                               _%tl166041166717%_
                                               _%e166046166720%_
                                               _%hd166045166723%_
                                               _%tl166044166725%_
                                               _%e166049166728%_
                                               _%hd166048166731%_
                                               _%tl166047166733%_
                                               _%e166052166736%_
                                               _%hd166051166739%_
                                               _%tl166050166741%_
                                               _%e166055166744%_
                                               _%hd166054166747%_
                                               _%tl166053166749%_
                                               _%e166058166752%_
                                               _%hd166057166755%_
                                               _%tl166056166757%_
                                               _%__splice170052170053%_
                                               _%target166059166760%_
                                               _%tl166061166762%_)
                                              (_%__kont170062170063%_))))
                                      (_%__kont170062170063%_))
                                  (_%__kont170062170063%_))))
                          (_%__kont170062170063%_))
                      (_%__kont170062170063%_))
                  (_%__kont170062170063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170062170063%_))))
                                          (_%__match170541170542%_
                                           _%e166022166656%_
                                           _%hd166021166659%_
                                           _%tl166020166661%_
                                           _%e166025166664%_
                                           _%hd166024166667%_
                                           _%tl166023166669%_
                                           _%e166028166672%_
                                           _%hd166027166675%_
                                           _%tl166026166677%_
                                           _%e166031166680%_
                                           _%hd166030166683%_
                                           _%tl166029166685%_
                                           _%e166034166688%_
                                           _%hd166033166691%_
                                           _%tl166032166693%_
                                           _%e166037166696%_
                                           _%hd166036166699%_
                                           _%tl166035166701%_
                                           _%e166040166704%_
                                           _%hd166039166707%_
                                           _%tl166038166709%_
                                           _%e166043166712%_
                                           _%hd166042166715%_
                                           _%tl166041166717%_))
                                      (_%__match170541170542%_
                                       _%e166022166656%_
                                       _%hd166021166659%_
                                       _%tl166020166661%_
                                       _%e166025166664%_
                                       _%hd166024166667%_
                                       _%tl166023166669%_
                                       _%e166028166672%_
                                       _%hd166027166675%_
                                       _%tl166026166677%_
                                       _%e166031166680%_
                                       _%hd166030166683%_
                                       _%tl166029166685%_
                                       _%e166034166688%_
                                       _%hd166033166691%_
                                       _%tl166032166693%_
                                       _%e166037166696%_
                                       _%hd166036166699%_
                                       _%tl166035166701%_
                                       _%e166040166704%_
                                       _%hd166039166707%_
                                       _%tl166038166709%_
                                       _%e166043166712%_
                                       _%hd166042166715%_
                                       _%tl166041166717%_))))
                              (_%__match170541170542%_
                               _%e166022166656%_
                               _%hd166021166659%_
                               _%tl166020166661%_
                               _%e166025166664%_
                               _%hd166024166667%_
                               _%tl166023166669%_
                               _%e166028166672%_
                               _%hd166027166675%_
                               _%tl166026166677%_
                               _%e166031166680%_
                               _%hd166030166683%_
                               _%tl166029166685%_
                               _%e166034166688%_
                               _%hd166033166691%_
                               _%tl166032166693%_
                               _%e166037166696%_
                               _%hd166036166699%_
                               _%tl166035166701%_
                               _%e166040166704%_
                               _%hd166039166707%_
                               _%tl166038166709%_
                               _%e166043166712%_
                               _%hd166042166715%_
                               _%tl166041166717%_))
                          (_%__match170327170328%_
                           _%e166022166656%_
                           _%hd166021166659%_
                           _%tl166020166661%_
                           _%e166025166664%_
                           _%hd166024166667%_
                           _%tl166023166669%_
                           _%e166028166672%_
                           _%hd166027166675%_
                           _%tl166026166677%_
                           _%e166031166680%_
                           _%hd166030166683%_
                           _%tl166029166685%_
                           _%e166034166688%_
                           _%hd166033166691%_
                           _%tl166032166693%_
                           _%e166037166696%_
                           _%hd166036166699%_
                           _%tl166035166701%_
                           _%e166040166704%_
                           _%hd166039166707%_
                           _%tl166038166709%_
                           _%e166043166712%_
                           _%hd166042166715%_
                           _%tl166041166717%_
                           _%e166046166720%_
                           _%hd166045166723%_
                           _%tl166044166725%_))))
                   (_%__match170149170150%_
                    (lambda (_%e165978166845%_
                             _%hd165977166848%_
                             _%tl165976166850%_
                             _%e165981166853%_
                             _%hd165980166856%_
                             _%tl165979166858%_
                             _%e165984166861%_
                             _%hd165983166864%_
                             _%tl165982166866%_
                             _%e165987166869%_
                             _%hd165986166872%_
                             _%tl165985166874%_
                             _%e165990166877%_
                             _%hd165989166880%_
                             _%tl165988166882%_
                             _%e165993166885%_
                             _%hd165992166888%_
                             _%tl165991166890%_
                             _%e165996166893%_
                             _%hd165995166896%_
                             _%tl165994166898%_
                             _%e165999166901%_
                             _%hd165998166904%_
                             _%tl165997166906%_
                             _%e166002166909%_
                             _%hd166001166912%_
                             _%tl166000166914%_
                             _%e166005166917%_
                             _%hd166004166920%_
                             _%tl166003166922%_
                             _%__splice170048170049%_
                             _%target166006166925%_
                             _%tl166008166927%_)
                      (letrec ((_%loop166009166930%_
                                (lambda (_%hd166007166933%_
                                         _%args166013166935%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166007166933%_))
                                      (let ((_%e166010166938%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166007166933%_))))
                                        (let ((_%lp-tl166012166943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166010166938%_)))
                                              (_%lp-hd166011166941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166010166938%_))))
                                          (let ((__tmp171178
                                                 (cons _%lp-hd166011166941%_
                                                       _%args166013166935%_)))
                                            (declare (not safe))
                                            (_%loop166009166930%_
                                             _%lp-tl166012166943%_
                                             __tmp171178))))
                                      (let ((_%args166014166946%_
                                             (reverse _%args166013166935%_)))
                                        (let ((_%L166949%_
                                               _%args166014166946%_)
                                              (_%L166950%_ _%hd166004166920%_)
                                              (_%L166951%_ _%hd165995166896%_)
                                              (_%L166952%_ _%hd165986166872%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L166952%_
                                                      'call-method))
                                                   (let ((__tmp171179
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self165961%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L166951%_
                                                      __tmp171179)))
                                              (_%__kont170046170047%_
                                               _%L166949%_
                                               _%L166950%_
                                               _%L166951%_
                                               _%L166952%_)
                                              (_%__match170337170338%_
                                               _%e165978166845%_
                                               _%hd165977166848%_
                                               _%tl165976166850%_
                                               _%e165981166853%_
                                               _%hd165980166856%_
                                               _%tl165979166858%_
                                               _%e165984166861%_
                                               _%hd165983166864%_
                                               _%tl165982166866%_
                                               _%e165987166869%_
                                               _%hd165986166872%_
                                               _%tl165985166874%_
                                               _%e165990166877%_
                                               _%hd165989166880%_
                                               _%tl165988166882%_
                                               _%e165993166885%_
                                               _%hd165992166888%_
                                               _%tl165991166890%_
                                               _%e165996166893%_
                                               _%hd165995166896%_
                                               _%tl165994166898%_
                                               _%e165999166901%_
                                               _%hd165998166904%_
                                               _%tl165997166906%_
                                               _%e166002166909%_
                                               _%hd166001166912%_
                                               _%tl166000166914%_
                                               _%e166005166917%_
                                               _%hd166004166920%_
                                               _%tl166003166922%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop166009166930%_
                           _%target166006166925%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx170044170045%_))
                  (let ((_%e165978166845%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx170044170045%_))))
                    (let ((_%tl165976166850%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e165978166845%_)))
                          (_%hd165977166848%_
                           (let ()
                             (declare (not safe))
                             (##car _%e165978166845%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl165976166850%_))
                          (let ((_%e165981166853%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl165976166850%_))))
                            (let ((_%tl165979166858%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e165981166853%_)))
                                  (_%hd165980166856%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e165981166853%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd165980166856%_))
                                  (let ((_%e165984166861%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd165980166856%_))))
                                    (let ((_%tl165982166866%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e165984166861%_)))
                                          (_%hd165983166864%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e165984166861%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd165983166864%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd165983166864%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl165982166866%_))
                                                  (let ((_%e165987166869%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl165982166866%_))))
                                                    (let ((_%tl165985166874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e165987166869%_)))
                                                          (_%hd165986166872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e165987166869%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl165985166874%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl165979166858%_))
                      (let ((_%e165990166877%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl165979166858%_))))
                        (let ((_%tl165988166882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165990166877%_)))
                              (_%hd165989166880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165990166877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd165989166880%_))
                              (let ((_%e165993166885%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd165989166880%_))))
                                (let ((_%tl165991166890%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165993166885%_)))
                                      (_%hd165992166888%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165993166885%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd165992166888%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd165992166888%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165991166890%_))
                                              (let ((_%e165996166893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165991166890%_))))
                                                (let ((_%tl165994166898%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165996166893%_)))
                                                      (_%hd165995166896%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165996166893%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl165994166898%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl165988166882%_))
                                                          (let ((_%e165999166901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl165988166882%_))))
                    (let ((_%tl165997166906%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e165999166901%_)))
                          (_%hd165998166904%_
                           (let ()
                             (declare (not safe))
                             (##car _%e165999166901%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd165998166904%_))
                          (let ((_%e166002166909%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd165998166904%_))))
                            (let ((_%tl166000166914%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166002166909%_)))
                                  (_%hd166001166912%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166002166909%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd166001166912%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd166001166912%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166000166914%_))
                                          (let ((_%e166005166917%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166000166914%_))))
                                            (let ((_%tl166003166922%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166005166917%_)))
                                                  (_%hd166004166920%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166005166917%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166003166922%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl165997166906%_))
                                                      (let ((_%__splice170048170049%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl165997166906%_ '0))))
                (let ((_%tl166008166927%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170048170049%_ '1)))
                      (_%target166006166925%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170048170049%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl166008166927%_))
                      (_%__match170149170150%_
                       _%e165978166845%_
                       _%hd165977166848%_
                       _%tl165976166850%_
                       _%e165981166853%_
                       _%hd165980166856%_
                       _%tl165979166858%_
                       _%e165984166861%_
                       _%hd165983166864%_
                       _%tl165982166866%_
                       _%e165987166869%_
                       _%hd165986166872%_
                       _%tl165985166874%_
                       _%e165990166877%_
                       _%hd165989166880%_
                       _%tl165988166882%_
                       _%e165993166885%_
                       _%hd165992166888%_
                       _%tl165991166890%_
                       _%e165996166893%_
                       _%hd165995166896%_
                       _%tl165994166898%_
                       _%e165999166901%_
                       _%hd165998166904%_
                       _%tl165997166906%_
                       _%e166002166909%_
                       _%hd166001166912%_
                       _%tl166000166914%_
                       _%e166005166917%_
                       _%hd166004166920%_
                       _%tl166003166922%_
                       _%__splice170048170049%_
                       _%target166006166925%_
                       _%tl166008166927%_)
                      (_%__match170337170338%_
                       _%e165978166845%_
                       _%hd165977166848%_
                       _%tl165976166850%_
                       _%e165981166853%_
                       _%hd165980166856%_
                       _%tl165979166858%_
                       _%e165984166861%_
                       _%hd165983166864%_
                       _%tl165982166866%_
                       _%e165987166869%_
                       _%hd165986166872%_
                       _%tl165985166874%_
                       _%e165990166877%_
                       _%hd165989166880%_
                       _%tl165988166882%_
                       _%e165993166885%_
                       _%hd165992166888%_
                       _%tl165991166890%_
                       _%e165996166893%_
                       _%hd165995166896%_
                       _%tl165994166898%_
                       _%e165999166901%_
                       _%hd165998166904%_
                       _%tl165997166906%_
                       _%e166002166909%_
                       _%hd166001166912%_
                       _%tl166000166914%_
                       _%e166005166917%_
                       _%hd166004166920%_
                       _%tl166003166922%_))))
              (_%__match170337170338%_
               _%e165978166845%_
               _%hd165977166848%_
               _%tl165976166850%_
               _%e165981166853%_
               _%hd165980166856%_
               _%tl165979166858%_
               _%e165984166861%_
               _%hd165983166864%_
               _%tl165982166866%_
               _%e165987166869%_
               _%hd165986166872%_
               _%tl165985166874%_
               _%e165990166877%_
               _%hd165989166880%_
               _%tl165988166882%_
               _%e165993166885%_
               _%hd165992166888%_
               _%tl165991166890%_
               _%e165996166893%_
               _%hd165995166896%_
               _%tl165994166898%_
               _%e165999166901%_
               _%hd165998166904%_
               _%tl165997166906%_
               _%e166002166909%_
               _%hd166001166912%_
               _%tl166000166914%_
               _%e166005166917%_
               _%hd166004166920%_
               _%tl166003166922%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match170541170542%_
                                                   _%e165978166845%_
                                                   _%hd165977166848%_
                                                   _%tl165976166850%_
                                                   _%e165981166853%_
                                                   _%hd165980166856%_
                                                   _%tl165979166858%_
                                                   _%e165984166861%_
                                                   _%hd165983166864%_
                                                   _%tl165982166866%_
                                                   _%e165987166869%_
                                                   _%hd165986166872%_
                                                   _%tl165985166874%_
                                                   _%e165990166877%_
                                                   _%hd165989166880%_
                                                   _%tl165988166882%_
                                                   _%e165993166885%_
                                                   _%hd165992166888%_
                                                   _%tl165991166890%_
                                                   _%e165996166893%_
                                                   _%hd165995166896%_
                                                   _%tl165994166898%_
                                                   _%e165999166901%_
                                                   _%hd165998166904%_
                                                   _%tl165997166906%_))))
                                          (_%__match170541170542%_
                                           _%e165978166845%_
                                           _%hd165977166848%_
                                           _%tl165976166850%_
                                           _%e165981166853%_
                                           _%hd165980166856%_
                                           _%tl165979166858%_
                                           _%e165984166861%_
                                           _%hd165983166864%_
                                           _%tl165982166866%_
                                           _%e165987166869%_
                                           _%hd165986166872%_
                                           _%tl165985166874%_
                                           _%e165990166877%_
                                           _%hd165989166880%_
                                           _%tl165988166882%_
                                           _%e165993166885%_
                                           _%hd165992166888%_
                                           _%tl165991166890%_
                                           _%e165996166893%_
                                           _%hd165995166896%_
                                           _%tl165994166898%_
                                           _%e165999166901%_
                                           _%hd165998166904%_
                                           _%tl165997166906%_))
                                      (_%__match170217170218%_
                                       _%e165978166845%_
                                       _%hd165977166848%_
                                       _%tl165976166850%_
                                       _%e165981166853%_
                                       _%hd165980166856%_
                                       _%tl165979166858%_
                                       _%e165984166861%_
                                       _%hd165983166864%_
                                       _%tl165982166866%_
                                       _%e165987166869%_
                                       _%hd165986166872%_
                                       _%tl165985166874%_
                                       _%e165990166877%_
                                       _%hd165989166880%_
                                       _%tl165988166882%_
                                       _%e165993166885%_
                                       _%hd165992166888%_
                                       _%tl165991166890%_
                                       _%e165996166893%_
                                       _%hd165995166896%_
                                       _%tl165994166898%_
                                       _%e165999166901%_
                                       _%hd165998166904%_
                                       _%tl165997166906%_
                                       _%e166002166909%_
                                       _%hd166001166912%_
                                       _%tl166000166914%_))
                                  (_%__match170541170542%_
                                   _%e165978166845%_
                                   _%hd165977166848%_
                                   _%tl165976166850%_
                                   _%e165981166853%_
                                   _%hd165980166856%_
                                   _%tl165979166858%_
                                   _%e165984166861%_
                                   _%hd165983166864%_
                                   _%tl165982166866%_
                                   _%e165987166869%_
                                   _%hd165986166872%_
                                   _%tl165985166874%_
                                   _%e165990166877%_
                                   _%hd165989166880%_
                                   _%tl165988166882%_
                                   _%e165993166885%_
                                   _%hd165992166888%_
                                   _%tl165991166890%_
                                   _%e165996166893%_
                                   _%hd165995166896%_
                                   _%tl165994166898%_
                                   _%e165999166901%_
                                   _%hd165998166904%_
                                   _%tl165997166906%_))))
                          (_%__match170541170542%_
                           _%e165978166845%_
                           _%hd165977166848%_
                           _%tl165976166850%_
                           _%e165981166853%_
                           _%hd165980166856%_
                           _%tl165979166858%_
                           _%e165984166861%_
                           _%hd165983166864%_
                           _%tl165982166866%_
                           _%e165987166869%_
                           _%hd165986166872%_
                           _%tl165985166874%_
                           _%e165990166877%_
                           _%hd165989166880%_
                           _%tl165988166882%_
                           _%e165993166885%_
                           _%hd165992166888%_
                           _%tl165991166890%_
                           _%e165996166893%_
                           _%hd165995166896%_
                           _%tl165994166898%_
                           _%e165999166901%_
                           _%hd165998166904%_
                           _%tl165997166906%_))))
                  (_%__match170479170480%_
                   _%e165978166845%_
                   _%hd165977166848%_
                   _%tl165976166850%_
                   _%e165981166853%_
                   _%hd165980166856%_
                   _%tl165979166858%_
                   _%e165984166861%_
                   _%hd165983166864%_
                   _%tl165982166866%_
                   _%e165987166869%_
                   _%hd165986166872%_
                   _%tl165985166874%_
                   _%e165990166877%_
                   _%hd165989166880%_
                   _%tl165988166882%_
                   _%e165993166885%_
                   _%hd165992166888%_
                   _%tl165991166890%_
                   _%e165996166893%_
                   _%hd165995166896%_
                   _%tl165994166898%_))
              (_%__kont170062170063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont170062170063%_))
                                          (_%__kont170062170063%_))
                                      (_%__kont170062170063%_))))
                              (_%__kont170062170063%_))))
                      (_%__kont170062170063%_))
                  (_%__kont170062170063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170062170063%_))
                                              (_%__kont170062170063%_))
                                          (_%__kont170062170063%_))))
                                  (_%__kont170062170063%_))))
                          (_%__kont170062170063%_))))
                  (_%__kont170062170063%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self164900%_ _%stx164901%_)
        (letrec ((_%force-e164903%_
                  (lambda (_%target165959%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target165959%_ '()))
                                      '()))))))
          (let* ((_%__stx170546170547%_ _%stx164901%_)
                 (_%g164911165133%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170546170547%_)))))
            (let ((_%__kont170548170549%_
                   (lambda (_%L165905%_ _%L165906%_ _%L165907%_ _%L165908%_)
                     (let ((_%$method165953%_
                            (let ((__tmp171181
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self164900%_ 'methods)))
                                  (__tmp171180
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L165906%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171181 __tmp171180)))
                           (_%args165954%_
                            (map (lambda (_%g165941165943%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self164900%_
                                      _%g165941165943%_)))
                                 (let ((__tmp171182
                                        (lambda (_%g165945165948%_
                                                 _%g165946165950%_)
                                          (cons _%g165945165948%_
                                                _%g165946165950%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171182 '() _%L165905%_)))))
                       (let ((__tmp171183
                              (cons '%#call
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%force-e164903%_
                                             _%$method165953%_))
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self164900%_
                                                               'receiver))
                                                            '()))
                                                _%args165954%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171183 _%stx164901%_)))))
                  (_%__kont170552170553%_
                   (lambda (_%L165737%_
                            _%L165738%_
                            _%L165739%_
                            _%L165740%_
                            _%L165741%_)
                     (let ((_%$method165793%_
                            (let ((__tmp171185
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self164900%_ 'methods)))
                                  (__tmp171184
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L165738%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171185 __tmp171184)))
                           (_%args165794%_
                            (map (lambda (_%g165781165783%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self164900%_
                                      _%g165781165783%_)))
                                 (let ((__tmp171186
                                        (lambda (_%g165785165788%_
                                                 _%g165786165790%_)
                                          (cons _%g165785165788%_
                                                _%g165786165790%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171186 '() _%L165737%_)))))
                       (let ((__tmp171187
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (_%force-e164903%_
                                                   _%$method165793%_))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self164900%_ 'receiver))
                          '()))
              _%args165794%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171187 _%stx164901%_)))))
                  (_%__kont170556170557%_
                   (lambda (_%L165568%_ _%L165569%_ _%L165570%_)
                     (let* ((_%$field165602%_
                             (let ((__tmp171189
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self164900%_ 'slots)))
                                   (__tmp171188
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L165568%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp171189 __tmp171188)))
                            (__tmp171190
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self164900%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field165602%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self164900%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp171190 _%stx164901%_))))
                  (_%__kont170558170559%_
                   (lambda (_%L165442%_ _%L165443%_ _%L165444%_ _%L165445%_)
                     (let ((_%$field165480%_
                            (let ((__tmp171192
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self164900%_ 'slots)))
                                  (__tmp171191
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L165443%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171192 __tmp171191)))
                           (_%expr165481%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self164900%_ _%L165442%_))))
                       (let ((__tmp171193
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self164900%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field165480%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self164900%_ 'receiver))
                          '()))
              (cons _%expr165481%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171193 _%stx164901%_)))))
                  (_%__kont170560170561%_
                   (lambda (_%L165314%_ _%L165315%_)
                     (let* ((_%accessor165337%_
                             (let ((__tmp171194
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165315%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171194)))
                            (_%klass165339%_
                             (let ((__tmp171195
                                    (##structure-ref
                                     _%accessor165337%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx164901%_
                                __tmp171195)))
                            (_%slot165341%_
                             (##structure-ref
                              _%accessor165337%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp171196
                                       (##structure-ref
                                        _%accessor165337%_
                                        '4
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp171196))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165339%_
                                       _%slot165341%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165339%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx164901%_
                           (let* ((_%$field165347%_
                                   (let ((__tmp171197
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164900%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171197 _%slot165341%_)))
                                  (__tmp171198
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self164900%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self164900%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171198
                              _%stx164901%_))))))
                  (_%__kont170562170563%_
                   (lambda (_%L165209%_ _%L165210%_ _%L165211%_)
                     (let* ((_%mutator165239%_
                             (let ((__tmp171199
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165211%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171199)))
                            (_%klass165241%_
                             (let ((__tmp171200
                                    (##structure-ref
                                     _%mutator165239%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx164901%_
                                __tmp171200)))
                            (_%slot165243%_
                             (##structure-ref
                              _%mutator165239%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr165245%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self164900%_ _%L165209%_))))
                       (if (and (let ((__tmp171201
                                       (##structure-ref
                                        _%mutator165239%_
                                        '4
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp171201))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165241%_
                                       _%slot165243%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165241%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp171202
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L165211%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L165210%_
                                                                '()))
                                                    (cons _%expr165245%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171202 _%stx164901%_))
                           (let* ((_%$field165251%_
                                   (let ((__tmp171203
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164900%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171203 _%slot165243%_)))
                                  (__tmp171204
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self164900%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self164900%_ 'receiver))
                               '()))
                   (cons _%expr165245%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171204
                              _%stx164901%_))))))
                  (_%__kont170564170565%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self164900%_ _%stx164901%_)))))
              (let* ((_%__match171045171046%_
                      (lambda (_%e165107165145%_
                               _%hd165106165148%_
                               _%tl165105165150%_
                               _%e165110165153%_
                               _%hd165109165156%_
                               _%tl165108165158%_
                               _%e165113165161%_
                               _%hd165112165164%_
                               _%tl165111165166%_
                               _%e165116165169%_
                               _%hd165115165172%_
                               _%tl165114165174%_
                               _%e165119165177%_
                               _%hd165118165180%_
                               _%tl165117165182%_
                               _%e165122165185%_
                               _%hd165121165188%_
                               _%tl165120165190%_
                               _%e165125165193%_
                               _%hd165124165196%_
                               _%tl165123165198%_
                               _%e165128165201%_
                               _%hd165127165204%_
                               _%tl165126165206%_)
                        (let ((_%L165209%_ _%hd165127165204%_)
                              (_%L165210%_ _%hd165124165196%_)
                              (_%L165211%_ _%hd165115165172%_))
                          (if (and (let ((__tmp171205
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164900%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165210%_
                                      __tmp171205))
                                   (let ((__tmp171206
                                          (let ((__tmp171207
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165211%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171207))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171206
                                      'gxc#!mutator::t)))
                              (_%__kont170562170563%_
                               _%L165209%_
                               _%L165210%_
                               _%L165211%_)
                              (_%__kont170564170565%_)))))
                     (_%__match171043171044%_
                      (lambda (_%e165107165145%_
                               _%hd165106165148%_
                               _%tl165105165150%_
                               _%e165110165153%_
                               _%hd165109165156%_
                               _%tl165108165158%_
                               _%e165113165161%_
                               _%hd165112165164%_
                               _%tl165111165166%_
                               _%e165116165169%_
                               _%hd165115165172%_
                               _%tl165114165174%_
                               _%e165119165177%_
                               _%hd165118165180%_
                               _%tl165117165182%_
                               _%e165122165185%_
                               _%hd165121165188%_
                               _%tl165120165190%_
                               _%e165125165193%_
                               _%hd165124165196%_
                               _%tl165123165198%_
                               _%e165128165201%_
                               _%hd165127165204%_
                               _%tl165126165206%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165126165206%_))
                            (_%__match171045171046%_
                             _%e165107165145%_
                             _%hd165106165148%_
                             _%tl165105165150%_
                             _%e165110165153%_
                             _%hd165109165156%_
                             _%tl165108165158%_
                             _%e165113165161%_
                             _%hd165112165164%_
                             _%tl165111165166%_
                             _%e165116165169%_
                             _%hd165115165172%_
                             _%tl165114165174%_
                             _%e165119165177%_
                             _%hd165118165180%_
                             _%tl165117165182%_
                             _%e165122165185%_
                             _%hd165121165188%_
                             _%tl165120165190%_
                             _%e165125165193%_
                             _%hd165124165196%_
                             _%tl165123165198%_
                             _%e165128165201%_
                             _%hd165127165204%_
                             _%tl165126165206%_)
                            (_%__kont170564170565%_))))
                     (_%__match171037171038%_
                      (lambda (_%e165107165145%_
                               _%hd165106165148%_
                               _%tl165105165150%_
                               _%e165110165153%_
                               _%hd165109165156%_
                               _%tl165108165158%_
                               _%e165113165161%_
                               _%hd165112165164%_
                               _%tl165111165166%_
                               _%e165116165169%_
                               _%hd165115165172%_
                               _%tl165114165174%_
                               _%e165119165177%_
                               _%hd165118165180%_
                               _%tl165117165182%_
                               _%e165122165185%_
                               _%hd165121165188%_
                               _%tl165120165190%_
                               _%e165125165193%_
                               _%hd165124165196%_
                               _%tl165123165198%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165117165182%_))
                            (let ((_%e165128165201%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165117165182%_))))
                              (let ((_%tl165126165206%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165128165201%_)))
                                    (_%hd165127165204%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165128165201%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165126165206%_))
                                    (_%__match171045171046%_
                                     _%e165107165145%_
                                     _%hd165106165148%_
                                     _%tl165105165150%_
                                     _%e165110165153%_
                                     _%hd165109165156%_
                                     _%tl165108165158%_
                                     _%e165113165161%_
                                     _%hd165112165164%_
                                     _%tl165111165166%_
                                     _%e165116165169%_
                                     _%hd165115165172%_
                                     _%tl165114165174%_
                                     _%e165119165177%_
                                     _%hd165118165180%_
                                     _%tl165117165182%_
                                     _%e165122165185%_
                                     _%hd165121165188%_
                                     _%tl165120165190%_
                                     _%e165125165193%_
                                     _%hd165124165196%_
                                     _%tl165123165198%_
                                     _%e165128165201%_
                                     _%hd165127165204%_
                                     _%tl165126165206%_)
                                    (_%__kont170564170565%_))))
                            (_%__kont170564170565%_))))
                     (_%__match170983170984%_
                      (lambda (_%e165083165258%_
                               _%hd165082165261%_
                               _%tl165081165263%_
                               _%e165086165266%_
                               _%hd165085165269%_
                               _%tl165084165271%_
                               _%e165089165274%_
                               _%hd165088165277%_
                               _%tl165087165279%_
                               _%e165092165282%_
                               _%hd165091165285%_
                               _%tl165090165287%_
                               _%e165095165290%_
                               _%hd165094165293%_
                               _%tl165093165295%_
                               _%e165098165298%_
                               _%hd165097165301%_
                               _%tl165096165303%_
                               _%e165101165306%_
                               _%hd165100165309%_
                               _%tl165099165311%_)
                        (let ((_%L165314%_ _%hd165100165309%_)
                              (_%L165315%_ _%hd165091165285%_))
                          (if (and (let ((__tmp171208
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164900%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165314%_
                                      __tmp171208))
                                   (let ((__tmp171209
                                          (let ((__tmp171210
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165315%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171210))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171209
                                      'gxc#!accessor::t)))
                              (_%__kont170560170561%_ _%L165314%_ _%L165315%_)
                              (_%__kont170564170565%_)))))
                     (_%__match170981170982%_
                      (lambda (_%e165083165258%_
                               _%hd165082165261%_
                               _%tl165081165263%_
                               _%e165086165266%_
                               _%hd165085165269%_
                               _%tl165084165271%_
                               _%e165089165274%_
                               _%hd165088165277%_
                               _%tl165087165279%_
                               _%e165092165282%_
                               _%hd165091165285%_
                               _%tl165090165287%_
                               _%e165095165290%_
                               _%hd165094165293%_
                               _%tl165093165295%_
                               _%e165098165298%_
                               _%hd165097165301%_
                               _%tl165096165303%_
                               _%e165101165306%_
                               _%hd165100165309%_
                               _%tl165099165311%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165093165295%_))
                            (_%__match170983170984%_
                             _%e165083165258%_
                             _%hd165082165261%_
                             _%tl165081165263%_
                             _%e165086165266%_
                             _%hd165085165269%_
                             _%tl165084165271%_
                             _%e165089165274%_
                             _%hd165088165277%_
                             _%tl165087165279%_
                             _%e165092165282%_
                             _%hd165091165285%_
                             _%tl165090165287%_
                             _%e165095165290%_
                             _%hd165094165293%_
                             _%tl165093165295%_
                             _%e165098165298%_
                             _%hd165097165301%_
                             _%tl165096165303%_
                             _%e165101165306%_
                             _%hd165100165309%_
                             _%tl165099165311%_)
                            (_%__match171037171038%_
                             _%e165083165258%_
                             _%hd165082165261%_
                             _%tl165081165263%_
                             _%e165086165266%_
                             _%hd165085165269%_
                             _%tl165084165271%_
                             _%e165089165274%_
                             _%hd165088165277%_
                             _%tl165087165279%_
                             _%e165092165282%_
                             _%hd165091165285%_
                             _%tl165090165287%_
                             _%e165095165290%_
                             _%hd165094165293%_
                             _%tl165093165295%_
                             _%e165098165298%_
                             _%hd165097165301%_
                             _%tl165096165303%_
                             _%e165101165306%_
                             _%hd165100165309%_
                             _%tl165099165311%_))))
                     (_%__match170927170928%_
                      (lambda (_%e165048165354%_
                               _%hd165047165357%_
                               _%tl165046165359%_
                               _%e165051165362%_
                               _%hd165050165365%_
                               _%tl165049165367%_
                               _%e165054165370%_
                               _%hd165053165373%_
                               _%tl165052165375%_
                               _%e165057165378%_
                               _%hd165056165381%_
                               _%tl165055165383%_
                               _%e165060165386%_
                               _%hd165059165389%_
                               _%tl165058165391%_
                               _%e165063165394%_
                               _%hd165062165397%_
                               _%tl165061165399%_
                               _%e165066165402%_
                               _%hd165065165405%_
                               _%tl165064165407%_
                               _%e165069165410%_
                               _%hd165068165413%_
                               _%tl165067165415%_
                               _%e165072165418%_
                               _%hd165071165421%_
                               _%tl165070165423%_
                               _%e165075165426%_
                               _%hd165074165429%_
                               _%tl165073165431%_
                               _%e165078165434%_
                               _%hd165077165437%_
                               _%tl165076165439%_)
                        (let ((_%L165442%_ _%hd165077165437%_)
                              (_%L165443%_ _%hd165074165429%_)
                              (_%L165444%_ _%hd165065165405%_)
                              (_%L165445%_ _%hd165056165381%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165445%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165445%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp171211
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164900%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165444%_
                                      __tmp171211)))
                              (_%__kont170558170559%_
                               _%L165442%_
                               _%L165443%_
                               _%L165444%_
                               _%L165445%_)
                              (_%__kont170564170565%_)))))
                     (_%__match170919170920%_
                      (lambda (_%e165048165354%_
                               _%hd165047165357%_
                               _%tl165046165359%_
                               _%e165051165362%_
                               _%hd165050165365%_
                               _%tl165049165367%_
                               _%e165054165370%_
                               _%hd165053165373%_
                               _%tl165052165375%_
                               _%e165057165378%_
                               _%hd165056165381%_
                               _%tl165055165383%_
                               _%e165060165386%_
                               _%hd165059165389%_
                               _%tl165058165391%_
                               _%e165063165394%_
                               _%hd165062165397%_
                               _%tl165061165399%_
                               _%e165066165402%_
                               _%hd165065165405%_
                               _%tl165064165407%_
                               _%e165069165410%_
                               _%hd165068165413%_
                               _%tl165067165415%_
                               _%e165072165418%_
                               _%hd165071165421%_
                               _%tl165070165423%_
                               _%e165075165426%_
                               _%hd165074165429%_
                               _%tl165073165431%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165067165415%_))
                            (let ((_%e165078165434%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165067165415%_))))
                              (let ((_%tl165076165439%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165078165434%_)))
                                    (_%hd165077165437%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165078165434%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165076165439%_))
                                    (_%__match170927170928%_
                                     _%e165048165354%_
                                     _%hd165047165357%_
                                     _%tl165046165359%_
                                     _%e165051165362%_
                                     _%hd165050165365%_
                                     _%tl165049165367%_
                                     _%e165054165370%_
                                     _%hd165053165373%_
                                     _%tl165052165375%_
                                     _%e165057165378%_
                                     _%hd165056165381%_
                                     _%tl165055165383%_
                                     _%e165060165386%_
                                     _%hd165059165389%_
                                     _%tl165058165391%_
                                     _%e165063165394%_
                                     _%hd165062165397%_
                                     _%tl165061165399%_
                                     _%e165066165402%_
                                     _%hd165065165405%_
                                     _%tl165064165407%_
                                     _%e165069165410%_
                                     _%hd165068165413%_
                                     _%tl165067165415%_
                                     _%e165072165418%_
                                     _%hd165071165421%_
                                     _%tl165070165423%_
                                     _%e165075165426%_
                                     _%hd165074165429%_
                                     _%tl165073165431%_
                                     _%e165078165434%_
                                     _%hd165077165437%_
                                     _%tl165076165439%_)
                                    (_%__kont170564170565%_))))
                            (_%__match171043171044%_
                             _%e165048165354%_
                             _%hd165047165357%_
                             _%tl165046165359%_
                             _%e165051165362%_
                             _%hd165050165365%_
                             _%tl165049165367%_
                             _%e165054165370%_
                             _%hd165053165373%_
                             _%tl165052165375%_
                             _%e165057165378%_
                             _%hd165056165381%_
                             _%tl165055165383%_
                             _%e165060165386%_
                             _%hd165059165389%_
                             _%tl165058165391%_
                             _%e165063165394%_
                             _%hd165062165397%_
                             _%tl165061165399%_
                             _%e165066165402%_
                             _%hd165065165405%_
                             _%tl165064165407%_
                             _%e165069165410%_
                             _%hd165068165413%_
                             _%tl165067165415%_))))
                     (_%__match170841170842%_
                      (lambda (_%e165014165488%_
                               _%hd165013165491%_
                               _%tl165012165493%_
                               _%e165017165496%_
                               _%hd165016165499%_
                               _%tl165015165501%_
                               _%e165020165504%_
                               _%hd165019165507%_
                               _%tl165018165509%_
                               _%e165023165512%_
                               _%hd165022165515%_
                               _%tl165021165517%_
                               _%e165026165520%_
                               _%hd165025165523%_
                               _%tl165024165525%_
                               _%e165029165528%_
                               _%hd165028165531%_
                               _%tl165027165533%_
                               _%e165032165536%_
                               _%hd165031165539%_
                               _%tl165030165541%_
                               _%e165035165544%_
                               _%hd165034165547%_
                               _%tl165033165549%_
                               _%e165038165552%_
                               _%hd165037165555%_
                               _%tl165036165557%_
                               _%e165041165560%_
                               _%hd165040165563%_
                               _%tl165039165565%_)
                        (let ((_%L165568%_ _%hd165040165563%_)
                              (_%L165569%_ _%hd165031165539%_)
                              (_%L165570%_ _%hd165022165515%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165570%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165570%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp171212
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164900%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165569%_
                                      __tmp171212)))
                              (_%__kont170556170557%_
                               _%L165568%_
                               _%L165569%_
                               _%L165570%_)
                              (_%__match171045171046%_
                               _%e165014165488%_
                               _%hd165013165491%_
                               _%tl165012165493%_
                               _%e165017165496%_
                               _%hd165016165499%_
                               _%tl165015165501%_
                               _%e165020165504%_
                               _%hd165019165507%_
                               _%tl165018165509%_
                               _%e165023165512%_
                               _%hd165022165515%_
                               _%tl165021165517%_
                               _%e165026165520%_
                               _%hd165025165523%_
                               _%tl165024165525%_
                               _%e165029165528%_
                               _%hd165028165531%_
                               _%tl165027165533%_
                               _%e165032165536%_
                               _%hd165031165539%_
                               _%tl165030165541%_
                               _%e165035165544%_
                               _%hd165034165547%_
                               _%tl165033165549%_)))))
                     (_%__match170839170840%_
                      (lambda (_%e165014165488%_
                               _%hd165013165491%_
                               _%tl165012165493%_
                               _%e165017165496%_
                               _%hd165016165499%_
                               _%tl165015165501%_
                               _%e165020165504%_
                               _%hd165019165507%_
                               _%tl165018165509%_
                               _%e165023165512%_
                               _%hd165022165515%_
                               _%tl165021165517%_
                               _%e165026165520%_
                               _%hd165025165523%_
                               _%tl165024165525%_
                               _%e165029165528%_
                               _%hd165028165531%_
                               _%tl165027165533%_
                               _%e165032165536%_
                               _%hd165031165539%_
                               _%tl165030165541%_
                               _%e165035165544%_
                               _%hd165034165547%_
                               _%tl165033165549%_
                               _%e165038165552%_
                               _%hd165037165555%_
                               _%tl165036165557%_
                               _%e165041165560%_
                               _%hd165040165563%_
                               _%tl165039165565%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165033165549%_))
                            (_%__match170841170842%_
                             _%e165014165488%_
                             _%hd165013165491%_
                             _%tl165012165493%_
                             _%e165017165496%_
                             _%hd165016165499%_
                             _%tl165015165501%_
                             _%e165020165504%_
                             _%hd165019165507%_
                             _%tl165018165509%_
                             _%e165023165512%_
                             _%hd165022165515%_
                             _%tl165021165517%_
                             _%e165026165520%_
                             _%hd165025165523%_
                             _%tl165024165525%_
                             _%e165029165528%_
                             _%hd165028165531%_
                             _%tl165027165533%_
                             _%e165032165536%_
                             _%hd165031165539%_
                             _%tl165030165541%_
                             _%e165035165544%_
                             _%hd165034165547%_
                             _%tl165033165549%_
                             _%e165038165552%_
                             _%hd165037165555%_
                             _%tl165036165557%_
                             _%e165041165560%_
                             _%hd165040165563%_
                             _%tl165039165565%_)
                            (_%__match170919170920%_
                             _%e165014165488%_
                             _%hd165013165491%_
                             _%tl165012165493%_
                             _%e165017165496%_
                             _%hd165016165499%_
                             _%tl165015165501%_
                             _%e165020165504%_
                             _%hd165019165507%_
                             _%tl165018165509%_
                             _%e165023165512%_
                             _%hd165022165515%_
                             _%tl165021165517%_
                             _%e165026165520%_
                             _%hd165025165523%_
                             _%tl165024165525%_
                             _%e165029165528%_
                             _%hd165028165531%_
                             _%tl165027165533%_
                             _%e165032165536%_
                             _%hd165031165539%_
                             _%tl165030165541%_
                             _%e165035165544%_
                             _%hd165034165547%_
                             _%tl165033165549%_
                             _%e165038165552%_
                             _%hd165037165555%_
                             _%tl165036165557%_
                             _%e165041165560%_
                             _%hd165040165563%_
                             _%tl165039165565%_))))
                     (_%__match170829170830%_
                      (lambda (_%e165014165488%_
                               _%hd165013165491%_
                               _%tl165012165493%_
                               _%e165017165496%_
                               _%hd165016165499%_
                               _%tl165015165501%_
                               _%e165020165504%_
                               _%hd165019165507%_
                               _%tl165018165509%_
                               _%e165023165512%_
                               _%hd165022165515%_
                               _%tl165021165517%_
                               _%e165026165520%_
                               _%hd165025165523%_
                               _%tl165024165525%_
                               _%e165029165528%_
                               _%hd165028165531%_
                               _%tl165027165533%_
                               _%e165032165536%_
                               _%hd165031165539%_
                               _%tl165030165541%_
                               _%e165035165544%_
                               _%hd165034165547%_
                               _%tl165033165549%_
                               _%e165038165552%_
                               _%hd165037165555%_
                               _%tl165036165557%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd165037165555%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165036165557%_))
                                (let ((_%e165041165560%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165036165557%_))))
                                  (let ((_%tl165039165565%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165041165560%_)))
                                        (_%hd165040165563%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165041165560%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165039165565%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl165033165549%_))
                                            (_%__match170841170842%_
                                             _%e165014165488%_
                                             _%hd165013165491%_
                                             _%tl165012165493%_
                                             _%e165017165496%_
                                             _%hd165016165499%_
                                             _%tl165015165501%_
                                             _%e165020165504%_
                                             _%hd165019165507%_
                                             _%tl165018165509%_
                                             _%e165023165512%_
                                             _%hd165022165515%_
                                             _%tl165021165517%_
                                             _%e165026165520%_
                                             _%hd165025165523%_
                                             _%tl165024165525%_
                                             _%e165029165528%_
                                             _%hd165028165531%_
                                             _%tl165027165533%_
                                             _%e165032165536%_
                                             _%hd165031165539%_
                                             _%tl165030165541%_
                                             _%e165035165544%_
                                             _%hd165034165547%_
                                             _%tl165033165549%_
                                             _%e165038165552%_
                                             _%hd165037165555%_
                                             _%tl165036165557%_
                                             _%e165041165560%_
                                             _%hd165040165563%_
                                             _%tl165039165565%_)
                                            (_%__match170919170920%_
                                             _%e165014165488%_
                                             _%hd165013165491%_
                                             _%tl165012165493%_
                                             _%e165017165496%_
                                             _%hd165016165499%_
                                             _%tl165015165501%_
                                             _%e165020165504%_
                                             _%hd165019165507%_
                                             _%tl165018165509%_
                                             _%e165023165512%_
                                             _%hd165022165515%_
                                             _%tl165021165517%_
                                             _%e165026165520%_
                                             _%hd165025165523%_
                                             _%tl165024165525%_
                                             _%e165029165528%_
                                             _%hd165028165531%_
                                             _%tl165027165533%_
                                             _%e165032165536%_
                                             _%hd165031165539%_
                                             _%tl165030165541%_
                                             _%e165035165544%_
                                             _%hd165034165547%_
                                             _%tl165033165549%_
                                             _%e165038165552%_
                                             _%hd165037165555%_
                                             _%tl165036165557%_
                                             _%e165041165560%_
                                             _%hd165040165563%_
                                             _%tl165039165565%_))
                                        (_%__match171043171044%_
                                         _%e165014165488%_
                                         _%hd165013165491%_
                                         _%tl165012165493%_
                                         _%e165017165496%_
                                         _%hd165016165499%_
                                         _%tl165015165501%_
                                         _%e165020165504%_
                                         _%hd165019165507%_
                                         _%tl165018165509%_
                                         _%e165023165512%_
                                         _%hd165022165515%_
                                         _%tl165021165517%_
                                         _%e165026165520%_
                                         _%hd165025165523%_
                                         _%tl165024165525%_
                                         _%e165029165528%_
                                         _%hd165028165531%_
                                         _%tl165027165533%_
                                         _%e165032165536%_
                                         _%hd165031165539%_
                                         _%tl165030165541%_
                                         _%e165035165544%_
                                         _%hd165034165547%_
                                         _%tl165033165549%_))))
                                (_%__match171043171044%_
                                 _%e165014165488%_
                                 _%hd165013165491%_
                                 _%tl165012165493%_
                                 _%e165017165496%_
                                 _%hd165016165499%_
                                 _%tl165015165501%_
                                 _%e165020165504%_
                                 _%hd165019165507%_
                                 _%tl165018165509%_
                                 _%e165023165512%_
                                 _%hd165022165515%_
                                 _%tl165021165517%_
                                 _%e165026165520%_
                                 _%hd165025165523%_
                                 _%tl165024165525%_
                                 _%e165029165528%_
                                 _%hd165028165531%_
                                 _%tl165027165533%_
                                 _%e165032165536%_
                                 _%hd165031165539%_
                                 _%tl165030165541%_
                                 _%e165035165544%_
                                 _%hd165034165547%_
                                 _%tl165033165549%_))
                            (_%__match171043171044%_
                             _%e165014165488%_
                             _%hd165013165491%_
                             _%tl165012165493%_
                             _%e165017165496%_
                             _%hd165016165499%_
                             _%tl165015165501%_
                             _%e165020165504%_
                             _%hd165019165507%_
                             _%tl165018165509%_
                             _%e165023165512%_
                             _%hd165022165515%_
                             _%tl165021165517%_
                             _%e165026165520%_
                             _%hd165025165523%_
                             _%tl165024165525%_
                             _%e165029165528%_
                             _%hd165028165531%_
                             _%tl165027165533%_
                             _%e165032165536%_
                             _%hd165031165539%_
                             _%tl165030165541%_
                             _%e165035165544%_
                             _%hd165034165547%_
                             _%tl165033165549%_))))
                     (_%__match170761170762%_
                      (lambda (_%e164963165609%_
                               _%hd164962165612%_
                               _%tl164961165614%_
                               _%e164966165617%_
                               _%hd164965165620%_
                               _%tl164964165622%_
                               _%e164969165625%_
                               _%hd164968165628%_
                               _%tl164967165630%_
                               _%e164972165633%_
                               _%hd164971165636%_
                               _%tl164970165638%_
                               _%e164975165641%_
                               _%hd164974165644%_
                               _%tl164973165646%_
                               _%e164978165649%_
                               _%hd164977165652%_
                               _%tl164976165654%_
                               _%e164981165657%_
                               _%hd164980165660%_
                               _%tl164979165662%_
                               _%e164984165665%_
                               _%hd164983165668%_
                               _%tl164982165670%_
                               _%e164987165673%_
                               _%hd164986165676%_
                               _%tl164985165678%_
                               _%e164990165681%_
                               _%hd164989165684%_
                               _%tl164988165686%_
                               _%e164993165689%_
                               _%hd164992165692%_
                               _%tl164991165694%_
                               _%e164996165697%_
                               _%hd164995165700%_
                               _%tl164994165702%_
                               _%e164999165705%_
                               _%hd164998165708%_
                               _%tl164997165710%_
                               _%__splice170554170555%_
                               _%target165000165713%_
                               _%tl165002165715%_)
                        (letrec ((_%loop165003165718%_
                                  (lambda (_%hd165001165721%_
                                           _%args165007165723%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165001165721%_))
                                        (let ((_%e165004165726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165001165721%_))))
                                          (let ((_%lp-tl165006165731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165004165726%_)))
                                                (_%lp-hd165005165729%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165004165726%_))))
                                            (let ((__tmp171213
                                                   (cons _%lp-hd165005165729%_
                                                         _%args165007165723%_)))
                                              (declare (not safe))
                                              (_%loop165003165718%_
                                               _%lp-tl165006165731%_
                                               __tmp171213))))
                                        (let ((_%args165008165734%_
                                               (reverse _%args165007165723%_)))
                                          (let ((_%L165737%_
                                                 _%args165008165734%_)
                                                (_%L165738%_
                                                 _%hd164998165708%_)
                                                (_%L165739%_
                                                 _%hd164989165684%_)
                                                (_%L165740%_
                                                 _%hd164980165660%_)
                                                (_%L165741%_
                                                 _%hd164971165636%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L165741%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L165740%_
                                                        'call-method))
                                                     (let ((__tmp171214
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self164900%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L165739%_
                                                        __tmp171214)))
                                                (_%__kont170552170553%_
                                                 _%L165737%_
                                                 _%L165738%_
                                                 _%L165739%_
                                                 _%L165740%_
                                                 _%L165741%_)
                                                (_%__kont170564170565%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop165003165718%_
                             _%target165000165713%_
                             '())))))
                     (_%__match170719170720%_
                      (lambda (_%e164963165609%_
                               _%hd164962165612%_
                               _%tl164961165614%_
                               _%e164966165617%_
                               _%hd164965165620%_
                               _%tl164964165622%_
                               _%e164969165625%_
                               _%hd164968165628%_
                               _%tl164967165630%_
                               _%e164972165633%_
                               _%hd164971165636%_
                               _%tl164970165638%_
                               _%e164975165641%_
                               _%hd164974165644%_
                               _%tl164973165646%_
                               _%e164978165649%_
                               _%hd164977165652%_
                               _%tl164976165654%_
                               _%e164981165657%_
                               _%hd164980165660%_
                               _%tl164979165662%_
                               _%e164984165665%_
                               _%hd164983165668%_
                               _%tl164982165670%_
                               _%e164987165673%_
                               _%hd164986165676%_
                               _%tl164985165678%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd164986165676%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl164985165678%_))
                                (let ((_%e164990165681%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl164985165678%_))))
                                  (let ((_%tl164988165686%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e164990165681%_)))
                                        (_%hd164989165684%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e164990165681%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl164988165686%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl164982165670%_))
                                            (let ((_%e164993165689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl164982165670%_))))
                                              (let ((_%tl164991165694%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e164993165689%_)))
                                                    (_%hd164992165692%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e164993165689%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd164992165692%_))
                                                    (let ((_%e164996165697%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd164992165692%_))))
                                                      (let ((_%tl164994165702%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e164996165697%_)))
                    (_%hd164995165700%_
                     (let () (declare (not safe)) (##car _%e164996165697%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd164995165700%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd164995165700%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl164994165702%_))
                            (let ((_%e164999165705%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl164994165702%_))))
                              (let ((_%tl164997165710%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e164999165705%_)))
                                    (_%hd164998165708%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e164999165705%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl164997165710%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl164991165694%_))
                                        (let ((_%__splice170554170555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl164991165694%_
                                                  '0))))
                                          (let ((_%tl165002165715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice170554170555%_
                                                    '1)))
                                                (_%target165000165713%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice170554170555%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165002165715%_))
                                                (_%__match170761170762%_
                                                 _%e164963165609%_
                                                 _%hd164962165612%_
                                                 _%tl164961165614%_
                                                 _%e164966165617%_
                                                 _%hd164965165620%_
                                                 _%tl164964165622%_
                                                 _%e164969165625%_
                                                 _%hd164968165628%_
                                                 _%tl164967165630%_
                                                 _%e164972165633%_
                                                 _%hd164971165636%_
                                                 _%tl164970165638%_
                                                 _%e164975165641%_
                                                 _%hd164974165644%_
                                                 _%tl164973165646%_
                                                 _%e164978165649%_
                                                 _%hd164977165652%_
                                                 _%tl164976165654%_
                                                 _%e164981165657%_
                                                 _%hd164980165660%_
                                                 _%tl164979165662%_
                                                 _%e164984165665%_
                                                 _%hd164983165668%_
                                                 _%tl164982165670%_
                                                 _%e164987165673%_
                                                 _%hd164986165676%_
                                                 _%tl164985165678%_
                                                 _%e164990165681%_
                                                 _%hd164989165684%_
                                                 _%tl164988165686%_
                                                 _%e164993165689%_
                                                 _%hd164992165692%_
                                                 _%tl164991165694%_
                                                 _%e164996165697%_
                                                 _%hd164995165700%_
                                                 _%tl164994165702%_
                                                 _%e164999165705%_
                                                 _%hd164998165708%_
                                                 _%tl164997165710%_
                                                 _%__splice170554170555%_
                                                 _%target165000165713%_
                                                 _%tl165002165715%_)
                                                (_%__kont170564170565%_))))
                                        (_%__kont170564170565%_))
                                    (_%__kont170564170565%_))))
                            (_%__kont170564170565%_))
                        (_%__kont170564170565%_))
                    (_%__kont170564170565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170564170565%_))))
                                            (_%__match171043171044%_
                                             _%e164963165609%_
                                             _%hd164962165612%_
                                             _%tl164961165614%_
                                             _%e164966165617%_
                                             _%hd164965165620%_
                                             _%tl164964165622%_
                                             _%e164969165625%_
                                             _%hd164968165628%_
                                             _%tl164967165630%_
                                             _%e164972165633%_
                                             _%hd164971165636%_
                                             _%tl164970165638%_
                                             _%e164975165641%_
                                             _%hd164974165644%_
                                             _%tl164973165646%_
                                             _%e164978165649%_
                                             _%hd164977165652%_
                                             _%tl164976165654%_
                                             _%e164981165657%_
                                             _%hd164980165660%_
                                             _%tl164979165662%_
                                             _%e164984165665%_
                                             _%hd164983165668%_
                                             _%tl164982165670%_))
                                        (_%__match171043171044%_
                                         _%e164963165609%_
                                         _%hd164962165612%_
                                         _%tl164961165614%_
                                         _%e164966165617%_
                                         _%hd164965165620%_
                                         _%tl164964165622%_
                                         _%e164969165625%_
                                         _%hd164968165628%_
                                         _%tl164967165630%_
                                         _%e164972165633%_
                                         _%hd164971165636%_
                                         _%tl164970165638%_
                                         _%e164975165641%_
                                         _%hd164974165644%_
                                         _%tl164973165646%_
                                         _%e164978165649%_
                                         _%hd164977165652%_
                                         _%tl164976165654%_
                                         _%e164981165657%_
                                         _%hd164980165660%_
                                         _%tl164979165662%_
                                         _%e164984165665%_
                                         _%hd164983165668%_
                                         _%tl164982165670%_))))
                                (_%__match171043171044%_
                                 _%e164963165609%_
                                 _%hd164962165612%_
                                 _%tl164961165614%_
                                 _%e164966165617%_
                                 _%hd164965165620%_
                                 _%tl164964165622%_
                                 _%e164969165625%_
                                 _%hd164968165628%_
                                 _%tl164967165630%_
                                 _%e164972165633%_
                                 _%hd164971165636%_
                                 _%tl164970165638%_
                                 _%e164975165641%_
                                 _%hd164974165644%_
                                 _%tl164973165646%_
                                 _%e164978165649%_
                                 _%hd164977165652%_
                                 _%tl164976165654%_
                                 _%e164981165657%_
                                 _%hd164980165660%_
                                 _%tl164979165662%_
                                 _%e164984165665%_
                                 _%hd164983165668%_
                                 _%tl164982165670%_))
                            (_%__match170829170830%_
                             _%e164963165609%_
                             _%hd164962165612%_
                             _%tl164961165614%_
                             _%e164966165617%_
                             _%hd164965165620%_
                             _%tl164964165622%_
                             _%e164969165625%_
                             _%hd164968165628%_
                             _%tl164967165630%_
                             _%e164972165633%_
                             _%hd164971165636%_
                             _%tl164970165638%_
                             _%e164975165641%_
                             _%hd164974165644%_
                             _%tl164973165646%_
                             _%e164978165649%_
                             _%hd164977165652%_
                             _%tl164976165654%_
                             _%e164981165657%_
                             _%hd164980165660%_
                             _%tl164979165662%_
                             _%e164984165665%_
                             _%hd164983165668%_
                             _%tl164982165670%_
                             _%e164987165673%_
                             _%hd164986165676%_
                             _%tl164985165678%_))))
                     (_%__match170651170652%_
                      (lambda (_%e164919165801%_
                               _%hd164918165804%_
                               _%tl164917165806%_
                               _%e164922165809%_
                               _%hd164921165812%_
                               _%tl164920165814%_
                               _%e164925165817%_
                               _%hd164924165820%_
                               _%tl164923165822%_
                               _%e164928165825%_
                               _%hd164927165828%_
                               _%tl164926165830%_
                               _%e164931165833%_
                               _%hd164930165836%_
                               _%tl164929165838%_
                               _%e164934165841%_
                               _%hd164933165844%_
                               _%tl164932165846%_
                               _%e164937165849%_
                               _%hd164936165852%_
                               _%tl164935165854%_
                               _%e164940165857%_
                               _%hd164939165860%_
                               _%tl164938165862%_
                               _%e164943165865%_
                               _%hd164942165868%_
                               _%tl164941165870%_
                               _%e164946165873%_
                               _%hd164945165876%_
                               _%tl164944165878%_
                               _%__splice170550170551%_
                               _%target164947165881%_
                               _%tl164949165883%_)
                        (letrec ((_%loop164950165886%_
                                  (lambda (_%hd164948165889%_
                                           _%args164954165891%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd164948165889%_))
                                        (let ((_%e164951165894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd164948165889%_))))
                                          (let ((_%lp-tl164953165899%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e164951165894%_)))
                                                (_%lp-hd164952165897%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e164951165894%_))))
                                            (let ((__tmp171215
                                                   (cons _%lp-hd164952165897%_
                                                         _%args164954165891%_)))
                                              (declare (not safe))
                                              (_%loop164950165886%_
                                               _%lp-tl164953165899%_
                                               __tmp171215))))
                                        (let ((_%args164955165902%_
                                               (reverse _%args164954165891%_)))
                                          (let ((_%L165905%_
                                                 _%args164955165902%_)
                                                (_%L165906%_
                                                 _%hd164945165876%_)
                                                (_%L165907%_
                                                 _%hd164936165852%_)
                                                (_%L165908%_
                                                 _%hd164927165828%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L165908%_
                                                        'call-method))
                                                     (let ((__tmp171216
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self164900%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L165907%_
                                                        __tmp171216)))
                                                (_%__kont170548170549%_
                                                 _%L165905%_
                                                 _%L165906%_
                                                 _%L165907%_
                                                 _%L165908%_)
                                                (_%__match170839170840%_
                                                 _%e164919165801%_
                                                 _%hd164918165804%_
                                                 _%tl164917165806%_
                                                 _%e164922165809%_
                                                 _%hd164921165812%_
                                                 _%tl164920165814%_
                                                 _%e164925165817%_
                                                 _%hd164924165820%_
                                                 _%tl164923165822%_
                                                 _%e164928165825%_
                                                 _%hd164927165828%_
                                                 _%tl164926165830%_
                                                 _%e164931165833%_
                                                 _%hd164930165836%_
                                                 _%tl164929165838%_
                                                 _%e164934165841%_
                                                 _%hd164933165844%_
                                                 _%tl164932165846%_
                                                 _%e164937165849%_
                                                 _%hd164936165852%_
                                                 _%tl164935165854%_
                                                 _%e164940165857%_
                                                 _%hd164939165860%_
                                                 _%tl164938165862%_
                                                 _%e164943165865%_
                                                 _%hd164942165868%_
                                                 _%tl164941165870%_
                                                 _%e164946165873%_
                                                 _%hd164945165876%_
                                                 _%tl164944165878%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop164950165886%_
                             _%target164947165881%_
                             '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170546170547%_))
                    (let ((_%e164919165801%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170546170547%_))))
                      (let ((_%tl164917165806%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e164919165801%_)))
                            (_%hd164918165804%_
                             (let ()
                               (declare (not safe))
                               (##car _%e164919165801%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl164917165806%_))
                            (let ((_%e164922165809%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl164917165806%_))))
                              (let ((_%tl164920165814%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e164922165809%_)))
                                    (_%hd164921165812%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e164922165809%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd164921165812%_))
                                    (let ((_%e164925165817%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd164921165812%_))))
                                      (let ((_%tl164923165822%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e164925165817%_)))
                                            (_%hd164924165820%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e164925165817%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd164924165820%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd164924165820%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl164923165822%_))
                                                    (let ((_%e164928165825%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl164923165822%_))))
                                                      (let ((_%tl164926165830%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e164928165825%_)))
                    (_%hd164927165828%_
                     (let () (declare (not safe)) (##car _%e164928165825%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl164926165830%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl164920165814%_))
                        (let ((_%e164931165833%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl164920165814%_))))
                          (let ((_%tl164929165838%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164931165833%_)))
                                (_%hd164930165836%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164931165833%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd164930165836%_))
                                (let ((_%e164934165841%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd164930165836%_))))
                                  (let ((_%tl164932165846%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e164934165841%_)))
                                        (_%hd164933165844%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e164934165841%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd164933165844%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd164933165844%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl164932165846%_))
                                                (let ((_%e164937165849%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl164932165846%_))))
                                                  (let ((_%tl164935165854%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e164937165849%_)))
                                                        (_%hd164936165852%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e164937165849%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl164935165854%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl164929165838%_))
                                                            (let ((_%e164940165857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl164929165838%_))))
                      (let ((_%tl164938165862%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e164940165857%_)))
                            (_%hd164939165860%_
                             (let ()
                               (declare (not safe))
                               (##car _%e164940165857%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd164939165860%_))
                            (let ((_%e164943165865%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd164939165860%_))))
                              (let ((_%tl164941165870%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e164943165865%_)))
                                    (_%hd164942165868%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e164943165865%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd164942165868%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd164942165868%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl164941165870%_))
                                            (let ((_%e164946165873%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl164941165870%_))))
                                              (let ((_%tl164944165878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e164946165873%_)))
                                                    (_%hd164945165876%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e164946165873%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl164944165878%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl164938165862%_))
                                                        (let ((_%__splice170550170551%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl164938165862%_ '0))))
                  (let ((_%tl164949165883%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice170550170551%_ '1)))
                        (_%target164947165881%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice170550170551%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl164949165883%_))
                        (_%__match170651170652%_
                         _%e164919165801%_
                         _%hd164918165804%_
                         _%tl164917165806%_
                         _%e164922165809%_
                         _%hd164921165812%_
                         _%tl164920165814%_
                         _%e164925165817%_
                         _%hd164924165820%_
                         _%tl164923165822%_
                         _%e164928165825%_
                         _%hd164927165828%_
                         _%tl164926165830%_
                         _%e164931165833%_
                         _%hd164930165836%_
                         _%tl164929165838%_
                         _%e164934165841%_
                         _%hd164933165844%_
                         _%tl164932165846%_
                         _%e164937165849%_
                         _%hd164936165852%_
                         _%tl164935165854%_
                         _%e164940165857%_
                         _%hd164939165860%_
                         _%tl164938165862%_
                         _%e164943165865%_
                         _%hd164942165868%_
                         _%tl164941165870%_
                         _%e164946165873%_
                         _%hd164945165876%_
                         _%tl164944165878%_
                         _%__splice170550170551%_
                         _%target164947165881%_
                         _%tl164949165883%_)
                        (_%__match170839170840%_
                         _%e164919165801%_
                         _%hd164918165804%_
                         _%tl164917165806%_
                         _%e164922165809%_
                         _%hd164921165812%_
                         _%tl164920165814%_
                         _%e164925165817%_
                         _%hd164924165820%_
                         _%tl164923165822%_
                         _%e164928165825%_
                         _%hd164927165828%_
                         _%tl164926165830%_
                         _%e164931165833%_
                         _%hd164930165836%_
                         _%tl164929165838%_
                         _%e164934165841%_
                         _%hd164933165844%_
                         _%tl164932165846%_
                         _%e164937165849%_
                         _%hd164936165852%_
                         _%tl164935165854%_
                         _%e164940165857%_
                         _%hd164939165860%_
                         _%tl164938165862%_
                         _%e164943165865%_
                         _%hd164942165868%_
                         _%tl164941165870%_
                         _%e164946165873%_
                         _%hd164945165876%_
                         _%tl164944165878%_))))
                (_%__match170839170840%_
                 _%e164919165801%_
                 _%hd164918165804%_
                 _%tl164917165806%_
                 _%e164922165809%_
                 _%hd164921165812%_
                 _%tl164920165814%_
                 _%e164925165817%_
                 _%hd164924165820%_
                 _%tl164923165822%_
                 _%e164928165825%_
                 _%hd164927165828%_
                 _%tl164926165830%_
                 _%e164931165833%_
                 _%hd164930165836%_
                 _%tl164929165838%_
                 _%e164934165841%_
                 _%hd164933165844%_
                 _%tl164932165846%_
                 _%e164937165849%_
                 _%hd164936165852%_
                 _%tl164935165854%_
                 _%e164940165857%_
                 _%hd164939165860%_
                 _%tl164938165862%_
                 _%e164943165865%_
                 _%hd164942165868%_
                 _%tl164941165870%_
                 _%e164946165873%_
                 _%hd164945165876%_
                 _%tl164944165878%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171043171044%_
                                                     _%e164919165801%_
                                                     _%hd164918165804%_
                                                     _%tl164917165806%_
                                                     _%e164922165809%_
                                                     _%hd164921165812%_
                                                     _%tl164920165814%_
                                                     _%e164925165817%_
                                                     _%hd164924165820%_
                                                     _%tl164923165822%_
                                                     _%e164928165825%_
                                                     _%hd164927165828%_
                                                     _%tl164926165830%_
                                                     _%e164931165833%_
                                                     _%hd164930165836%_
                                                     _%tl164929165838%_
                                                     _%e164934165841%_
                                                     _%hd164933165844%_
                                                     _%tl164932165846%_
                                                     _%e164937165849%_
                                                     _%hd164936165852%_
                                                     _%tl164935165854%_
                                                     _%e164940165857%_
                                                     _%hd164939165860%_
                                                     _%tl164938165862%_))))
                                            (_%__match171043171044%_
                                             _%e164919165801%_
                                             _%hd164918165804%_
                                             _%tl164917165806%_
                                             _%e164922165809%_
                                             _%hd164921165812%_
                                             _%tl164920165814%_
                                             _%e164925165817%_
                                             _%hd164924165820%_
                                             _%tl164923165822%_
                                             _%e164928165825%_
                                             _%hd164927165828%_
                                             _%tl164926165830%_
                                             _%e164931165833%_
                                             _%hd164930165836%_
                                             _%tl164929165838%_
                                             _%e164934165841%_
                                             _%hd164933165844%_
                                             _%tl164932165846%_
                                             _%e164937165849%_
                                             _%hd164936165852%_
                                             _%tl164935165854%_
                                             _%e164940165857%_
                                             _%hd164939165860%_
                                             _%tl164938165862%_))
                                        (_%__match170719170720%_
                                         _%e164919165801%_
                                         _%hd164918165804%_
                                         _%tl164917165806%_
                                         _%e164922165809%_
                                         _%hd164921165812%_
                                         _%tl164920165814%_
                                         _%e164925165817%_
                                         _%hd164924165820%_
                                         _%tl164923165822%_
                                         _%e164928165825%_
                                         _%hd164927165828%_
                                         _%tl164926165830%_
                                         _%e164931165833%_
                                         _%hd164930165836%_
                                         _%tl164929165838%_
                                         _%e164934165841%_
                                         _%hd164933165844%_
                                         _%tl164932165846%_
                                         _%e164937165849%_
                                         _%hd164936165852%_
                                         _%tl164935165854%_
                                         _%e164940165857%_
                                         _%hd164939165860%_
                                         _%tl164938165862%_
                                         _%e164943165865%_
                                         _%hd164942165868%_
                                         _%tl164941165870%_))
                                    (_%__match171043171044%_
                                     _%e164919165801%_
                                     _%hd164918165804%_
                                     _%tl164917165806%_
                                     _%e164922165809%_
                                     _%hd164921165812%_
                                     _%tl164920165814%_
                                     _%e164925165817%_
                                     _%hd164924165820%_
                                     _%tl164923165822%_
                                     _%e164928165825%_
                                     _%hd164927165828%_
                                     _%tl164926165830%_
                                     _%e164931165833%_
                                     _%hd164930165836%_
                                     _%tl164929165838%_
                                     _%e164934165841%_
                                     _%hd164933165844%_
                                     _%tl164932165846%_
                                     _%e164937165849%_
                                     _%hd164936165852%_
                                     _%tl164935165854%_
                                     _%e164940165857%_
                                     _%hd164939165860%_
                                     _%tl164938165862%_))))
                            (_%__match171043171044%_
                             _%e164919165801%_
                             _%hd164918165804%_
                             _%tl164917165806%_
                             _%e164922165809%_
                             _%hd164921165812%_
                             _%tl164920165814%_
                             _%e164925165817%_
                             _%hd164924165820%_
                             _%tl164923165822%_
                             _%e164928165825%_
                             _%hd164927165828%_
                             _%tl164926165830%_
                             _%e164931165833%_
                             _%hd164930165836%_
                             _%tl164929165838%_
                             _%e164934165841%_
                             _%hd164933165844%_
                             _%tl164932165846%_
                             _%e164937165849%_
                             _%hd164936165852%_
                             _%tl164935165854%_
                             _%e164940165857%_
                             _%hd164939165860%_
                             _%tl164938165862%_))))
                    (_%__match170981170982%_
                     _%e164919165801%_
                     _%hd164918165804%_
                     _%tl164917165806%_
                     _%e164922165809%_
                     _%hd164921165812%_
                     _%tl164920165814%_
                     _%e164925165817%_
                     _%hd164924165820%_
                     _%tl164923165822%_
                     _%e164928165825%_
                     _%hd164927165828%_
                     _%tl164926165830%_
                     _%e164931165833%_
                     _%hd164930165836%_
                     _%tl164929165838%_
                     _%e164934165841%_
                     _%hd164933165844%_
                     _%tl164932165846%_
                     _%e164937165849%_
                     _%hd164936165852%_
                     _%tl164935165854%_))
                (_%__kont170564170565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont170564170565%_))
                                            (_%__kont170564170565%_))
                                        (_%__kont170564170565%_))))
                                (_%__kont170564170565%_))))
                        (_%__kont170564170565%_))
                    (_%__kont170564170565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170564170565%_))
                                                (_%__kont170564170565%_))
                                            (_%__kont170564170565%_))))
                                    (_%__kont170564170565%_))))
                            (_%__kont170564170565%_))))
                    (_%__kont170564170565%_))))))))))
