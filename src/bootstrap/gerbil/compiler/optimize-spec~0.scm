(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1781119057)
  (begin
    (define gxc#::generate-method-specializers::t
      (make-class-type
       'gxc#::generate-method-specializers::t
       '::generate-method-specializers
       (list gxc#::identity::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::generate-method-specializers?
      (make-class-predicate gxc#::generate-method-specializers::t))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args208005%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args208005%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::identity-bind-methods!)
         (bind-method!
          gxc#::generate-method-specializers::t
          '%#begin
          gxc#xform-begin%)
         (bind-method!
          gxc#::generate-method-specializers::t
          '%#begin-syntax
          gxc#xform-begin-syntax%)
         (bind-method!
          gxc#::generate-method-specializers::t
          '%#module
          gxc#xform-module%)
         (bind-method!
          gxc#::generate-method-specializers::t
          '%#define-values
          gxc#generate-method-specializers-define-values%)
         (seal-class! gxc#::generate-method-specializers::t))))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx207997%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let ((_%self208000%_ (gxc#make-::generate-method-specializers)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self208000%_ _%stx207997%_))
           gxc#current-compile-method
           _%self208000%_))))
    (define gxc#::extract-receiver::t
      (make-class-type
       'gxc#::extract-receiver::t
       '::extract-receiver
       (list gxc#::false::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::extract-receiver?
      (make-class-predicate gxc#::extract-receiver::t))
    (define gxc#make-::extract-receiver
      (lambda _%$args207994%_
        (apply make-instance gxc#::extract-receiver::t _%$args207994%_)))
    (define gxc#::extract-receiver-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::false-bind-methods!)
         (bind-method!
          gxc#::extract-receiver::t
          '%#begin
          gxc#apply-last-begin%)
         (bind-method!
          gxc#::extract-receiver::t
          '%#begin-annotation
          gxc#extract-receiver-begin-annotation%)
         (bind-method!
          gxc#::extract-receiver::t
          '%#let-values
          gxc#apply-body-last-let-values%)
         (bind-method!
          gxc#::extract-receiver::t
          '%#letrec-values
          gxc#apply-body-last-let-values%)
         (bind-method!
          gxc#::extract-receiver::t
          '%#letrec*-values
          gxc#apply-body-last-let-values%)
         (bind-method!
          gxc#::extract-receiver::t
          '%#if
          gxc#extract-receiver-if%)
         (seal-class! gxc#::extract-receiver::t))))
    (define gxc#apply-extract-receiver
      (lambda (_%stx207986%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let ((_%self207989%_ (gxc#make-::extract-receiver)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self207989%_ _%stx207986%_))
           gxc#current-compile-method
           _%self207989%_))))
    (define gxc#::collect-object-refs::t
      (make-class-type
       'gxc#::collect-object-refs::t
       '::collect-object-refs
       (list gxc#::void::t)
       '(receiver methods slots)
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::collect-object-refs?
      (make-class-predicate gxc#::collect-object-refs::t))
    (define gxc#make-::collect-object-refs
      (lambda _%$args207983%_
        (apply make-instance gxc#::collect-object-refs::t _%$args207983%_)))
    (define gxc#::collect-object-refs-receiver
      (make-class-slot-accessor gxc#::collect-object-refs::t 'receiver))
    (define gxc#::collect-object-refs-methods
      (make-class-slot-accessor gxc#::collect-object-refs::t 'methods))
    (define gxc#::collect-object-refs-slots
      (make-class-slot-accessor gxc#::collect-object-refs::t 'slots))
    (define gxc#::collect-object-refs-receiver-set!
      (make-class-slot-mutator gxc#::collect-object-refs::t 'receiver))
    (define gxc#::collect-object-refs-methods-set!
      (make-class-slot-mutator gxc#::collect-object-refs::t 'methods))
    (define gxc#::collect-object-refs-slots-set!
      (make-class-slot-mutator gxc#::collect-object-refs::t 'slots))
    (define gxc#&::collect-object-refs-receiver
      (make-class-slot-unchecked-accessor
       gxc#::collect-object-refs::t
       'receiver))
    (define gxc#&::collect-object-refs-methods
      (make-class-slot-unchecked-accessor
       gxc#::collect-object-refs::t
       'methods))
    (define gxc#&::collect-object-refs-slots
      (make-class-slot-unchecked-accessor gxc#::collect-object-refs::t 'slots))
    (define gxc#&::collect-object-refs-receiver-set!
      (make-class-slot-unchecked-mutator
       gxc#::collect-object-refs::t
       'receiver))
    (define gxc#&::collect-object-refs-methods-set!
      (make-class-slot-unchecked-mutator
       gxc#::collect-object-refs::t
       'methods))
    (define gxc#&::collect-object-refs-slots-set!
      (make-class-slot-unchecked-mutator gxc#::collect-object-refs::t 'slots))
    (define gxc#::collect-object-refs-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::void-bind-methods!)
         (bind-method! gxc#::collect-object-refs::t '%#begin gxc#apply-begin%)
         (bind-method!
          gxc#::collect-object-refs::t
          '%#begin-annotation
          gxc#apply-begin-annotation%)
         (bind-method!
          gxc#::collect-object-refs::t
          '%#lambda
          gxc#apply-body-lambda%)
         (bind-method!
          gxc#::collect-object-refs::t
          '%#case-lambda
          gxc#apply-body-case-lambda%)
         (bind-method!
          gxc#::collect-object-refs::t
          '%#let-values
          gxc#apply-body-let-values%)
         (bind-method!
          gxc#::collect-object-refs::t
          '%#letrec-values
          gxc#apply-body-let-values%)
         (bind-method!
          gxc#::collect-object-refs::t
          '%#letrec*-values
          gxc#apply-body-let-values%)
         (bind-method!
          gxc#::collect-object-refs::t
          '%#call
          gxc#collect-object-refs-call%)
         (bind-method! gxc#::collect-object-refs::t '%#if gxc#apply-operands)
         (bind-method!
          gxc#::collect-object-refs::t
          '%#set!
          gxc#apply-body-setq%)
         (bind-method!
          gxc#::collect-object-refs::t
          '%#struct-ref
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-object-refs::t
          '%#struct-set!
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-object-refs::t
          '%#struct-direct-ref
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-object-refs::t
          '%#struct-direct-set!
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-object-refs::t
          '%#struct-unchecked-ref
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-object-refs::t
          '%#struct-unchecked-set!
          gxc#apply-operands)
         (seal-class! gxc#::collect-object-refs::t))))
    (define gxc#apply-collect-object-refs
      (let ((_%$%kw-lambda207945207976%_
             (let ((_%$%kw-lambda-main207946207969%_
                    (lambda (_%@@keywords207952%_
                             _%$%receiver207947207953%_
                             _%$%methods207948207954%_
                             _%$%slots207949207955%_
                             _%stx207956%_)
                      (let* ((_%receiver207959%_
                              (if (eq? _%$%receiver207947207953%_ absent-value)
                                  (error '"Missing required keyword argument"
                                         'receiver:)
                                  _%$%receiver207947207953%_))
                             (_%methods207961%_
                              (if (eq? _%$%methods207948207954%_ absent-value)
                                  (error '"Missing required keyword argument"
                                         'methods:)
                                  _%$%methods207948207954%_))
                             (_%slots207963%_
                              (if (eq? _%$%slots207949207955%_ absent-value)
                                  (error '"Missing required keyword argument"
                                         'slots:)
                                  _%$%slots207949207955%_)))
                        (force gxc#::collect-object-refs-bind-methods!)
                        (let ((_%self207965%_
                               (gxc#make-::collect-object-refs
                                'receiver:
                                _%receiver207959%_
                                'methods:
                                _%methods207961%_
                                'slots:
                                _%slots207963%_)))
                          (call-with-parameters
                           (lambda ()
                             (gxc#compile-e _%self207965%_ _%stx207956%_))
                           gxc#current-compile-method
                           _%self207965%_))))))
               (lambda (_%@@keywords207972%_ . _%args207973%_)
                 (apply _%$%kw-lambda-main207946207969%_
                        _%@@keywords207972%_
                        (symbolic-table-ref
                         _%@@keywords207972%_
                         'receiver:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords207972%_
                         'methods:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords207972%_
                         'slots:
                         absent-value)
                        _%args207973%_)))))
        (lambda _%$%args207950207979%_
          (apply keyword-dispatch
                 '#(receiver: slots: methods:)
                 _%$%kw-lambda207945207976%_
                 _%$%args207950207979%_))))
    (define gxc#::subst-object-refs::t
      (make-class-type
       'gxc#::subst-object-refs::t
       '::subst-object-refs
       (list gxc#::basic-xform-expression::t)
       '(receiver klass methods slots)
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::subst-object-refs?
      (make-class-predicate gxc#::subst-object-refs::t))
    (define gxc#make-::subst-object-refs
      (lambda _%$args207943%_
        (apply make-instance gxc#::subst-object-refs::t _%$args207943%_)))
    (define gxc#::subst-object-refs-receiver
      (make-class-slot-accessor gxc#::subst-object-refs::t 'receiver))
    (define gxc#::subst-object-refs-klass
      (make-class-slot-accessor gxc#::subst-object-refs::t 'klass))
    (define gxc#::subst-object-refs-methods
      (make-class-slot-accessor gxc#::subst-object-refs::t 'methods))
    (define gxc#::subst-object-refs-slots
      (make-class-slot-accessor gxc#::subst-object-refs::t 'slots))
    (define gxc#::subst-object-refs-receiver-set!
      (make-class-slot-mutator gxc#::subst-object-refs::t 'receiver))
    (define gxc#::subst-object-refs-klass-set!
      (make-class-slot-mutator gxc#::subst-object-refs::t 'klass))
    (define gxc#::subst-object-refs-methods-set!
      (make-class-slot-mutator gxc#::subst-object-refs::t 'methods))
    (define gxc#::subst-object-refs-slots-set!
      (make-class-slot-mutator gxc#::subst-object-refs::t 'slots))
    (define gxc#&::subst-object-refs-receiver
      (make-class-slot-unchecked-accessor
       gxc#::subst-object-refs::t
       'receiver))
    (define gxc#&::subst-object-refs-klass
      (make-class-slot-unchecked-accessor gxc#::subst-object-refs::t 'klass))
    (define gxc#&::subst-object-refs-methods
      (make-class-slot-unchecked-accessor gxc#::subst-object-refs::t 'methods))
    (define gxc#&::subst-object-refs-slots
      (make-class-slot-unchecked-accessor gxc#::subst-object-refs::t 'slots))
    (define gxc#&::subst-object-refs-receiver-set!
      (make-class-slot-unchecked-mutator gxc#::subst-object-refs::t 'receiver))
    (define gxc#&::subst-object-refs-klass-set!
      (make-class-slot-unchecked-mutator gxc#::subst-object-refs::t 'klass))
    (define gxc#&::subst-object-refs-methods-set!
      (make-class-slot-unchecked-mutator gxc#::subst-object-refs::t 'methods))
    (define gxc#&::subst-object-refs-slots-set!
      (make-class-slot-unchecked-mutator gxc#::subst-object-refs::t 'slots))
    (define gxc#::subst-object-refs-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::basic-xform-expression-bind-methods!)
         (bind-method! gxc#::subst-object-refs::t '%#begin gxc#xform-begin%)
         (bind-method!
          gxc#::subst-object-refs::t
          '%#call
          gxc#subst-object-refs-call%)
         (seal-class! gxc#::subst-object-refs::t))))
    (define gxc#apply-subst-object-refs
      (let ((_%$%kw-lambda207901207936%_
             (let ((_%$%kw-lambda-main207902207929%_
                    (lambda (_%@@keywords207909%_
                             _%$%receiver207903207910%_
                             _%$%klass207904207911%_
                             _%$%methods207905207912%_
                             _%$%slots207906207913%_
                             _%stx207914%_)
                      (let* ((_%receiver207917%_
                              (if (eq? _%$%receiver207903207910%_ absent-value)
                                  (error '"Missing required keyword argument"
                                         'receiver:)
                                  _%$%receiver207903207910%_))
                             (_%klass207919%_
                              (if (eq? _%$%klass207904207911%_ absent-value)
                                  (error '"Missing required keyword argument"
                                         'klass:)
                                  _%$%klass207904207911%_))
                             (_%methods207921%_
                              (if (eq? _%$%methods207905207912%_ absent-value)
                                  (error '"Missing required keyword argument"
                                         'methods:)
                                  _%$%methods207905207912%_))
                             (_%slots207923%_
                              (if (eq? _%$%slots207906207913%_ absent-value)
                                  (error '"Missing required keyword argument"
                                         'slots:)
                                  _%$%slots207906207913%_)))
                        (force gxc#::subst-object-refs-bind-methods!)
                        (let ((_%self207925%_
                               (gxc#make-::subst-object-refs
                                'receiver:
                                _%receiver207917%_
                                'klass:
                                _%klass207919%_
                                'methods:
                                _%methods207921%_
                                'slots:
                                _%slots207923%_)))
                          (call-with-parameters
                           (lambda ()
                             (gxc#compile-e _%self207925%_ _%stx207914%_))
                           gxc#current-compile-method
                           _%self207925%_))))))
               (lambda (_%@@keywords207932%_ . _%args207933%_)
                 (apply _%$%kw-lambda-main207902207929%_
                        _%@@keywords207932%_
                        (symbolic-table-ref
                         _%@@keywords207932%_
                         'receiver:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords207932%_
                         'klass:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords207932%_
                         'methods:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords207932%_
                         'slots:
                         absent-value)
                        _%args207933%_)))))
        (lambda _%$%args207907207939%_
          (apply keyword-dispatch
                 '#(receiver: methods: slots: klass:)
                 _%$%kw-lambda207901207936%_
                 _%$%args207907207939%_))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self205034%_ _%stx205035%_)
        (letrec ((_%generate-method-bind205037%_
                  (lambda (_%$klass207895%_
                           _%$method-table207896%_
                           _%id207897%_
                           _%$id207898%_)
                    (let ((_%$tmp207900%_ (make-symbol (gensym '__method))))
                      (cons (cons _%$id207898%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp207900%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table207896%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id207897%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp207900%_ '()))
                    (cons (cons '%#ref (cons _%$tmp207900%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id207897%_
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
                 (_%generate-slot-bind205038%_
                  (lambda (_%$klass207889%_ _%id207890%_ _%$id207891%_)
                    (let ((_%$tmp207893%_ (make-symbol (gensym '__slot))))
                      (cons (cons _%$id207891%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp207893%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass207889%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id207890%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp207893%_ '()))
                        (cons (cons '%#ref (cons _%$tmp207893%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id207890%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl205039%_
                  (lambda (_%$klass207883%_
                           _%$method-table207884%_
                           _%methods-bind207885%_
                           _%slots-bind207886%_
                           _%specializer-impl207887%_)
                    (gxc#xform-wrap-source
                     (cons '%#lambda
                           (cons (cons _%$klass207883%_
                                       (cons _%$method-table207884%_ '()))
                                 (cons (cons '%#let-values
                                             (cons (foldr cons
                                                          _%slots-bind207886%_
                                                          _%methods-bind207885%_)
                                                   (cons _%specializer-impl207887%_
                                                         '())))
                                       '())))
                     _%stx205035%_)))
                 (_%generate-specializer-def205040%_
                  (lambda (_%id207879%_
                           _%specializer-id207880%_
                           _%specializer-impl207881%_)
                    (gxc#xform-wrap-source
                     (cons '%#begin
                           (cons _%stx205035%_
                                 (cons (gxc#xform-wrap-source
                                        (cons '%#define-values
                                              (cons (cons _%specializer-id207880%_
                                                          '())
                                                    (cons _%specializer-impl207881%_
                                                          '())))
                                        _%stx205035%_)
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons 'bind-specializer!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#ref (cons _%id207879%_ '()))
                        (cons (cons '%#ref (cons _%specializer-id207880%_ '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx205035%_)
                                             '()))))
                     _%stx205035%_))))
          (let* ((_%$%g205043205063%_
                  (lambda (_%$%g205044205060%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205044205060%_)))
                 (_%$%g205042205070%_
                  (lambda (_%$%g205044205066%_) ((lambda () _%stx205035%_))))
                 (_%$%g205041207876%_
                  (lambda (_%$%g205044205073%_)
                    (if (gx#stx-pair? _%$%g205044205073%_)
                        (let ((_%$%e205047205075%_
                               (gx#stx-e _%$%g205044205073%_)))
                          (let ((_%$%hd205048205078%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205047205075%_)))
                                (_%$%tl205049205080%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205047205075%_))))
                            (if (gx#stx-pair? _%$%tl205049205080%_)
                                (let ((_%$%e205050205083%_
                                       (gx#stx-e _%$%tl205049205080%_)))
                                  (let ((_%$%hd205051205086%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e205050205083%_)))
                                        (_%$%tl205052205088%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e205050205083%_))))
                                    (if (gx#stx-pair? _%$%hd205051205086%_)
                                        (let ((_%$%e205053205091%_
                                               (gx#stx-e
                                                _%$%hd205051205086%_)))
                                          (let ((_%$%hd205054205094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e205053205091%_)))
                                                (_%$%tl205055205096%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e205053205091%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl205055205096%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl205052205088%_)
                                                    (let ((_%$%e205056205099%_
                                                           (gx#stx-e
                                                            _%$%tl205052205088%_)))
                                                      (let ((_%$%hd205057205102%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e205056205099%_)))
                    (_%$%tl205058205104%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e205056205099%_))))
                (if (gx#stx-null? _%$%tl205058205104%_)
                    ((lambda (_%$%g205045205107%_ _%$%g205046205108%_)
                       (if (gxc#optimizer-top-level-method?
                            (gxc#identifier-symbol _%$%g205046205108%_))
                           (let ((_%method-calls205127%_ (make-hash-table-eq))
                                 (_%slot-refs205128%_ (make-hash-table-eq))
                                 (_%empty205129%_ (make-hash-table-eq)))
                             (letrec ((_%no-specializer?205131%_
                                       (lambda ()
                                         (if (fxzero? (hash-length
                                                       _%method-calls205127%_))
                                             (fxzero? (hash-length
                                                       _%slot-refs205128%_))
                                             '#f))))
                               (if (gxc#lambda-expr? _%$%g205045205107%_)
                                   (let* ((_%$%g205515205533%_
                                           (lambda (_%$%g205516205530%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g205516205530%_)))
                                          (_%$%g205514205540%_
                                           (lambda (_%$%g205516205536%_)
                                             ((lambda () _%stx205035%_))))
                                          (_%$%g205513205669%_
                                           (lambda (_%$%g205516205543%_)
                                             (if (gx#stx-pair?
                                                  _%$%g205516205543%_)
                                                 (let ((_%$%e205520205545%_
                                                        (gx#stx-e
                                                         _%$%g205516205543%_)))
                                                   (let ((_%$%hd205521205548%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e205520205545%_)))
                                                         (_%$%tl205522205550%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e205520205545%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%tl205522205550%_)
                                                         (let ((_%$%e205523205553%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl205522205550%_)))
                   (let ((_%$%hd205524205556%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e205523205553%_)))
                         (_%$%tl205525205558%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e205523205553%_))))
                     (if (gx#stx-pair? _%$%hd205524205556%_)
                         (let ((_%$%e205526205561%_
                                (gx#stx-e _%$%hd205524205556%_)))
                           (let ((_%$%hd205527205564%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e205526205561%_)))
                                 (_%$%tl205528205566%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e205526205561%_))))
                             ((lambda (_%$%g205517205569%_
                                       _%$%g205518205570%_
                                       _%$%g205519205571%_)
                                (let ((_%receiver205591%_
                                       (let ((_%$e205588%_
                                              (gxc#apply-extract-receiver
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '%#begin)
                                                     _%$%g205517205569%_))))
                                         (if _%$e205588%_
                                             _%$e205588%_
                                             _%$%g205519205571%_))))
                                  (for-each
                                   (lambda (_%$%g205592205594%_)
                                     (gxc#apply-collect-object-refs
                                      _%$%g205592205594%_
                                      'receiver:
                                      _%receiver205591%_
                                      'methods:
                                      _%method-calls205127%_
                                      'slots:
                                      _%slot-refs205128%_))
                                   _%$%g205517205569%_)
                                  (if (_%no-specializer?205131%_)
                                      _%stx205035%_
                                      (let* ((_%specializer-id205603%_
                                              (let* ((_%id205597%_
                                                      (make-symbol
                                                       (gx#stx-e
                                                        _%$%g205046205108%_)
                                                       '"::specialize"))
                                                     (_%specializer-id205600%_
                                                      (gx#core-quote-syntax
                                                       _%id205597%_
                                                       (gx#stx-source
                                                        _%stx205035%_))))
                                                (gx#core-bind-runtime!
                                                 _%specializer-id205600%_)
                                                _%specializer-id205600%_))
                                             (_%$klass205605%_
                                              (make-symbol (gensym '__klass)))
                                             (_%$method-table205607%_
                                              (make-symbol
                                               (gensym '__method-table)))
                                             (_%methods205609%_
                                              (hash-keys
                                               _%method-calls205127%_))
                                             (_%$methods205613%_
                                              (map (lambda (_%id205611%_)
                                                     (make-symbol
                                                      '"__"
                                                      (gensym _%id205611%_)))
                                                   _%methods205609%_))
                                             (_%_205622%_
                                              (for-each
                                               (lambda (_%$%g205614205617%_
                                                        _%$%g205615205619%_)
                                                 (hash-put!
                                                  _%method-calls205127%_
                                                  _%$%g205614205617%_
                                                  _%$%g205615205619%_))
                                               _%methods205609%_
                                               _%$methods205613%_))
                                             (_%methods-bind205632%_
                                              (map (lambda (_%$%g205624205627%_
                                                            _%$%g205625205629%_)
                                                     (_%generate-method-bind205037%_
                                                      _%$klass205605%_
                                                      _%$method-table205607%_
                                                      _%$%g205624205627%_
                                                      _%$%g205625205629%_))
                                                   _%methods205609%_
                                                   _%$methods205613%_))
                                             (_%slots205634%_
                                              (hash-keys _%slot-refs205128%_))
                                             (_%$slots205638%_
                                              (map (lambda (_%id205636%_)
                                                     (make-symbol
                                                      '"__"
                                                      (gensym _%id205636%_)))
                                                   _%slots205634%_))
                                             (_%_205647%_
                                              (for-each
                                               (lambda (_%$%g205639205642%_
                                                        _%$%g205640205644%_)
                                                 (hash-put!
                                                  _%slot-refs205128%_
                                                  _%$%g205639205642%_
                                                  _%$%g205640205644%_))
                                               _%slots205634%_
                                               _%$slots205638%_))
                                             (_%slots-bind205656%_
                                              (map (lambda (_%$%g205648205651%_
                                                            _%$%g205649205653%_)
                                                     (_%generate-slot-bind205038%_
                                                      _%$klass205605%_
                                                      _%$%g205648205651%_
                                                      _%$%g205649205653%_))
                                                   _%slots205634%_
                                                   _%$slots205638%_))
                                             (_%specializer-body205662%_
                                              (map (lambda (_%$%g205657205659%_)
                                                     (gxc#apply-subst-object-refs
                                                      _%$%g205657205659%_
                                                      'receiver:
                                                      _%receiver205591%_
                                                      'klass:
                                                      _%$klass205605%_
                                                      'methods:
                                                      _%method-calls205127%_
                                                      'slots:
                                                      _%slot-refs205128%_))
                                                   _%$%g205517205569%_))
                                             (_%specializer-impl205664%_
                                              (gxc#xform-wrap-source
                                               (cons '%#lambda
                                                     (cons (cons _%$%g205519205571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g205518205570%_)
                   _%specializer-body205662%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx205035%_))
                                             (_%specializer-impl205666%_
                                              (_%generate-specializer-impl205039%_
                                               _%$klass205605%_
                                               _%$method-table205607%_
                                               _%methods-bind205632%_
                                               _%slots-bind205656%_
                                               _%specializer-impl205664%_)))
                                        (gxc#verbose
                                         '"generate method specializer "
                                         (gx#stx-e _%$%g205046205108%_)
                                         '" => "
                                         (gx#stx-e _%specializer-id205603%_))
                                        (_%generate-specializer-def205040%_
                                         _%$%g205046205108%_
                                         _%specializer-id205603%_
                                         _%specializer-impl205666%_)))))
                              _%$%tl205525205558%_
                              _%$%tl205528205566%_
                              _%$%hd205527205564%_)))
                         (_%$%g205514205540%_ _%$%g205516205543%_))))
                 (_%$%g205514205540%_ _%$%g205516205543%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g205514205540%_
                                                  _%$%g205516205543%_)))))
                                     (_%$%g205513205669%_ _%$%g205045205107%_))
                                   (if (gxc#case-lambda-expr?
                                        _%$%g205045205107%_)
                                       (let* ((_%$%g205673205692%_
                                               (lambda (_%$%g205674205689%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g205674205689%_)))
                                              (_%$%g205672205988%_
                                               (lambda (_%$%g205674205695%_)
                                                 (if (gx#stx-pair?
                                                      _%$%g205674205695%_)
                                                     (let ((_%$%e205676205697%_
                                                            (gx#stx-e
                                                             _%$%g205674205695%_)))
                                                       (let ((_%$%hd205677205700%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e205676205697%_)))
                     (_%$%tl205678205702%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e205676205697%_))))
                 (if (gx#stx-pair/null? _%$%tl205678205702%_)
                     (let ((_g208007_
                            (gx#syntax-split-splice _%$%tl205678205702%_ '0)))
                       (begin
                         (let ((_g208008_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g208007_)
                                      (##values-length _g208007_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g208008_ 2)))
                               (error "Context expects 2 values" _g208008_)))
                         (let ((_%$%target205679205705%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g208007_ 0)))
                               (_%$%tl205681205707%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g208007_ 1))))
                           (if (gx#stx-null? _%$%tl205681205707%_)
                               (letrec ((_%$%loop205682205710%_
                                         (lambda (_%$%hd205680205713%_
                                                  _%$%clause205686205715%_)
                                           (if (gx#stx-pair?
                                                _%$%hd205680205713%_)
                                               (let ((_%$%e205683205717%_
                                                      (gx#stx-e
                                                       _%$%hd205680205713%_)))
                                                 (let ((_%$%lp-hd205684205720%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e205683205717%_)))
                                                       (_%$%lp-tl205685205722%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e205683205717%_))))
                                                   (_%$%loop205682205710%_
                                                    _%$%lp-tl205685205722%_
                                                    (cons _%$%lp-hd205684205720%_
                                                          _%$%clause205686205715%_))))
                                               (let ((_%$%clause205687205725%_
                                                      (reverse _%$%clause205686205715%_)))
                                                 ((lambda (_%$%g205675205727%_)
                                                    (for-each
                                                     (lambda (_%clause205741%_)
                                                       (let* ((_%$%g205744205759%_
                                                               (lambda (_%$%g205745205756%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g205745205756%_)))
                      (_%$%g205743205766%_
                       (lambda (_%$%g205745205762%_) ((lambda () (void)))))
                      (_%$%g205742205814%_
                       (lambda (_%$%g205745205769%_)
                         (if (gx#stx-pair? _%$%g205745205769%_)
                             (let ((_%$%e205749205771%_
                                    (gx#stx-e _%$%g205745205769%_)))
                               (let ((_%$%hd205750205774%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e205749205771%_)))
                                     (_%$%tl205751205776%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e205749205771%_))))
                                 (if (gx#stx-pair? _%$%hd205750205774%_)
                                     (let ((_%$%e205752205779%_
                                            (gx#stx-e _%$%hd205750205774%_)))
                                       (let ((_%$%hd205753205782%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e205752205779%_)))
                                             (_%$%tl205754205784%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e205752205779%_))))
                                         ((lambda (_%$%g205746205787%_
                                                   _%$%g205747205788%_
                                                   _%$%g205748205789%_)
                                            (let ((_%receiver205808%_
                                                   (let ((_%$e205805%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%#begin)
                         _%$%g205746205787%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e205805%_
                                                         _%$e205805%_
                                                         _%$%g205748205789%_))))
                                              (for-each
                                               (lambda (_%$%g205809205811%_)
                                                 (gxc#apply-collect-object-refs
                                                  _%$%g205809205811%_
                                                  'receiver:
                                                  _%receiver205808%_
                                                  'methods:
                                                  _%method-calls205127%_
                                                  'slots:
                                                  _%slot-refs205128%_))
                                               _%$%g205746205787%_)))
                                          _%$%tl205751205776%_
                                          _%$%tl205754205784%_
                                          _%$%hd205753205782%_)))
                                     (_%$%g205743205766%_
                                      _%$%g205745205769%_))))
                             (_%$%g205743205766%_ _%$%g205745205769%_)))))
                 (_%$%g205742205814%_ _%clause205741%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (foldr (lambda (_%$%g205816205819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g205817205821%_)
                      (cons _%$%g205816205819%_ _%$%g205817205821%_))
                    '()
                    _%$%g205675205727%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (_%no-specializer?205131%_)
                                                        _%stx205035%_
                                                        (let* ((_%specializer-id205830%_
                                                                (let* ((_%id205824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (make-symbol
                                 (gx#stx-e _%$%g205046205108%_)
                                 '"::specialize"))
                               (_%specializer-id205827%_
                                (gx#core-quote-syntax
                                 _%id205824%_
                                 (gx#stx-source _%stx205035%_))))
                          (gx#core-bind-runtime! _%specializer-id205827%_)
                          _%specializer-id205827%_))
                       (_%$klass205832%_ (make-symbol (gensym '__klass)))
                       (_%$method-table205834%_
                        (make-symbol (gensym '__method-table)))
                       (_%methods205836%_ (hash-keys _%method-calls205127%_))
                       (_%$methods205840%_
                        (map (lambda (_%id205838%_)
                               (make-symbol '"__" (gensym _%id205838%_)))
                             _%methods205836%_))
                       (_%_205849%_
                        (for-each
                         (lambda (_%$%g205841205844%_ _%$%g205842205846%_)
                           (hash-put!
                            _%method-calls205127%_
                            _%$%g205841205844%_
                            _%$%g205842205846%_))
                         _%methods205836%_
                         _%$methods205840%_))
                       (_%methods-bind205859%_
                        (map (lambda (_%$%g205851205854%_ _%$%g205852205856%_)
                               (_%generate-method-bind205037%_
                                _%$klass205832%_
                                _%$method-table205834%_
                                _%$%g205851205854%_
                                _%$%g205852205856%_))
                             _%methods205836%_
                             _%$methods205840%_))
                       (_%slots205861%_ (hash-keys _%slot-refs205128%_))
                       (_%$slots205865%_
                        (map (lambda (_%id205863%_)
                               (make-symbol '"__" (gensym _%id205863%_)))
                             _%slots205861%_))
                       (_%_205874%_
                        (for-each
                         (lambda (_%$%g205866205869%_ _%$%g205867205871%_)
                           (hash-put!
                            _%slot-refs205128%_
                            _%$%g205866205869%_
                            _%$%g205867205871%_))
                         _%slots205861%_
                         _%$slots205865%_))
                       (_%slots-bind205883%_
                        (map (lambda (_%$%g205875205878%_ _%$%g205876205880%_)
                               (_%generate-slot-bind205038%_
                                _%$klass205832%_
                                _%$%g205875205878%_
                                _%$%g205876205880%_))
                             _%slots205861%_
                             _%$slots205865%_))
                       (_%specializer-clauses205981%_
                        (map (lambda (_%clause205885%_)
                               (let* ((_%$%g205888205903%_
                                       (lambda (_%$%g205889205900%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%$%g205889205900%_)))
                                      (_%$%g205887205910%_
                                       (lambda (_%$%g205889205906%_)
                                         ((lambda () _%clause205885%_))))
                                      (_%$%g205886205971%_
                                       (lambda (_%$%g205889205913%_)
                                         (if (gx#stx-pair? _%$%g205889205913%_)
                                             (let ((_%$%e205893205915%_
                                                    (gx#stx-e
                                                     _%$%g205889205913%_)))
                                               (let ((_%$%hd205894205918%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e205893205915%_)))
                                                     (_%$%tl205895205920%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e205893205915%_))))
                                                 (if (gx#stx-pair?
                                                      _%$%hd205894205918%_)
                                                     (let ((_%$%e205896205923%_
                                                            (gx#stx-e
                                                             _%$%hd205894205918%_)))
                                                       (let ((_%$%hd205897205926%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e205896205923%_)))
                     (_%$%tl205898205928%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e205896205923%_))))
                 ((lambda (_%$%g205890205931%_
                           _%$%g205891205932%_
                           _%$%g205892205933%_)
                    (let* ((_%receiver205962%_
                            (let ((_%$e205959%_
                                   (gxc#apply-extract-receiver
                                    (cons (gx#datum->syntax '#f '%#begin)
                                          _%$%g205890205931%_))))
                              (if _%$e205959%_
                                  _%$e205959%_
                                  _%$%g205892205933%_)))
                           (_%body205968%_
                            (map (lambda (_%$%g205963205965%_)
                                   (gxc#apply-subst-object-refs
                                    _%$%g205963205965%_
                                    'receiver:
                                    _%receiver205962%_
                                    'klass:
                                    _%$klass205832%_
                                    'methods:
                                    _%method-calls205127%_
                                    'slots:
                                    _%slot-refs205128%_))
                                 _%$%g205890205931%_)))
                      (cons (cons _%$%g205892205933%_ _%$%g205891205932%_)
                            _%body205968%_)))
                  _%$%tl205895205920%_
                  _%$%tl205898205928%_
                  _%$%hd205897205926%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g205887205910%_
                                                      _%$%g205889205913%_))))
                                             (_%$%g205887205910%_
                                              _%$%g205889205913%_)))))
                                 (_%$%g205886205971%_ _%clause205885%_)))
                             (foldr (lambda (_%$%g205973205976%_
                                             _%$%g205974205978%_)
                                      (cons _%$%g205973205976%_
                                            _%$%g205974205978%_))
                                    '()
                                    _%$%g205675205727%_)))
                       (_%specializer-impl205983%_
                        (gxc#xform-wrap-source
                         (cons '%#case-lambda _%specializer-clauses205981%_)
                         _%stx205035%_))
                       (_%specializer-impl205985%_
                        (_%generate-specializer-impl205039%_
                         _%$klass205832%_
                         _%$method-table205834%_
                         _%methods-bind205859%_
                         _%slots-bind205883%_
                         _%specializer-impl205983%_)))
                  (gxc#verbose
                   '"generate method specializer "
                   (gx#stx-e _%$%g205046205108%_)
                   '" => "
                   (gx#stx-e _%specializer-id205830%_))
                  (_%generate-specializer-def205040%_
                   _%$%g205046205108%_
                   _%specializer-id205830%_
                   _%specializer-impl205985%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$%clause205687205725%_))))))
                                 (_%$%loop205682205710%_
                                  _%$%target205679205705%_
                                  '()))
                               (_%$%g205673205692%_ _%$%g205674205695%_)))))
                     (_%$%g205673205692%_ _%$%g205674205695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g205673205692%_
                                                      _%$%g205674205695%_)))))
                                         (_%$%g205672205988%_
                                          _%$%g205045205107%_))
                                       (if (gxc#opt-lambda-expr?
                                            _%$%g205045205107%_)
                                           (let* ((_%$%g205992206022%_
                                                   (lambda (_%$%g205993206019%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g205993206019%_)))
                                                  (_%$%g205991206649%_
                                                   (lambda (_%$%g205993206025%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g205993206025%_)
                                                         (let ((_%$%e205997206027%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g205993206025%_)))
                   (let ((_%$%hd205998206030%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e205997206027%_)))
                         (_%$%tl205999206032%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e205997206027%_))))
                     (if (gx#stx-pair? _%$%tl205999206032%_)
                         (let ((_%$%e206000206035%_
                                (gx#stx-e _%$%tl205999206032%_)))
                           (let ((_%$%hd206001206038%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e206000206035%_)))
                                 (_%$%tl206002206040%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e206000206035%_))))
                             (if (gx#stx-pair? _%$%hd206001206038%_)
                                 (let ((_%$%e206003206043%_
                                        (gx#stx-e _%$%hd206001206038%_)))
                                   (let ((_%$%hd206004206046%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e206003206043%_)))
                                         (_%$%tl206005206048%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e206003206043%_))))
                                     (if (gx#stx-pair? _%$%hd206004206046%_)
                                         (let ((_%$%e206006206051%_
                                                (gx#stx-e
                                                 _%$%hd206004206046%_)))
                                           (let ((_%$%hd206007206054%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e206006206051%_)))
                                                 (_%$%tl206008206056%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e206006206051%_))))
                                             (if (gx#stx-pair?
                                                  _%$%hd206007206054%_)
                                                 (let ((_%$%e206009206059%_
                                                        (gx#stx-e
                                                         _%$%hd206007206054%_)))
                                                   (let ((_%$%hd206010206062%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e206009206059%_)))
                                                         (_%$%tl206011206064%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e206009206059%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl206011206064%_)
                                                         (if (gx#stx-pair?
                                                              _%$%tl206008206056%_)
                                                             (let ((_%$%e206012206067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _%$%tl206008206056%_)))
                       (let ((_%$%hd206013206070%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e206012206067%_)))
                             (_%$%tl206014206072%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e206012206067%_))))
                         (if (gx#stx-null? _%$%tl206014206072%_)
                             (if (gx#stx-null? _%$%tl206005206048%_)
                                 (if (gx#stx-pair? _%$%tl206002206040%_)
                                     (let ((_%$%e206015206075%_
                                            (gx#stx-e _%$%tl206002206040%_)))
                                       (let ((_%$%hd206016206078%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e206015206075%_)))
                                             (_%$%tl206017206080%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e206015206075%_))))
                                         (if (gx#stx-null?
                                              _%$%tl206017206080%_)
                                             ((lambda (_%$%g205994206083%_
                                                       _%$%g205995206084%_
                                                       _%$%g205996206085%_)
                                                (let* ((_%$%g206109206127%_
                                                        (lambda (_%$%g206110206124%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g206110206124%_)))
                                                       (_%$%g206108206183%_
                                                        (lambda (_%$%g206110206130%_)
                                                          (if (gx#stx-pair?
                                                               _%$%g206110206130%_)
                                                              (let ((_%$%e206114206132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%g206110206130%_)))
                        (let ((_%$%hd206115206135%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206114206132%_)))
                              (_%$%tl206116206137%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206114206132%_))))
                          (if (gx#stx-pair? _%$%tl206116206137%_)
                              (let ((_%$%e206117206140%_
                                     (gx#stx-e _%$%tl206116206137%_)))
                                (let ((_%$%hd206118206143%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206117206140%_)))
                                      (_%$%tl206119206145%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206117206140%_))))
                                  (if (gx#stx-pair? _%$%hd206118206143%_)
                                      (let ((_%$%e206120206148%_
                                             (gx#stx-e _%$%hd206118206143%_)))
                                        (let ((_%$%hd206121206151%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206120206148%_)))
                                              (_%$%tl206122206153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206120206148%_))))
                                          ((lambda (_%$%g206111206156%_
                                                    _%$%g206112206157%_
                                                    _%$%g206113206158%_)
                                             (let ((_%receiver206177%_
                                                    (let ((_%$e206174%_
                                                           (gxc#apply-extract-receiver
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#begin)
                          _%$%g206111206156%_))))
              (if _%$e206174%_ _%$e206174%_ _%$%g206113206158%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                (lambda (_%$%g206178206180%_)
                                                  (gxc#apply-collect-object-refs
                                                   _%$%g206178206180%_
                                                   'receiver:
                                                   _%receiver206177%_
                                                   'methods:
                                                   _%method-calls205127%_
                                                   'slots:
                                                   _%slot-refs205128%_))
                                                _%$%g206111206156%_)))
                                           _%$%tl206119206145%_
                                           _%$%tl206122206153%_
                                           _%$%hd206121206151%_)))
                                      (_%$%g206109206127%_
                                       _%$%g206110206130%_))))
                              (_%$%g206109206127%_ _%$%g206110206130%_))))
                      (_%$%g206109206127%_ _%$%g206110206130%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g206108206183%_
                                                   _%$%g205995206084%_))
                                                (let* ((_%$%g206186206205%_
                                                        (lambda (_%$%g206187206202%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g206187206202%_)))
                                                       (_%$%g206185206327%_
                                                        (lambda (_%$%g206187206208%_)
                                                          (if (gx#stx-pair?
                                                               _%$%g206187206208%_)
                                                              (let ((_%$%e206189206210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%g206187206208%_)))
                        (let ((_%$%hd206190206213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206189206210%_)))
                              (_%$%tl206191206215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206189206210%_))))
                          (if (gx#stx-pair/null? _%$%tl206191206215%_)
                              (let ((_g208009_
                                     (gx#syntax-split-splice
                                      _%$%tl206191206215%_
                                      '0)))
                                (begin
                                  (let ((_g208010_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g208009_)
                                               (##values-length _g208009_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g208010_ 2)))
                                        (error "Context expects 2 values"
                                               _g208010_)))
                                  (let ((_%$%target206192206218%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g208009_ 0)))
                                        (_%$%tl206194206220%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g208009_ 1))))
                                    (if (gx#stx-null? _%$%tl206194206220%_)
                                        (letrec ((_%$%loop206195206223%_
                                                  (lambda (_%$%hd206193206226%_
                                                           _%$%clause206199206228%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd206193206226%_)
                                                        (let ((_%$%e206196206230%_
                                                               (gx#stx-e
                                                                _%$%hd206193206226%_)))
                                                          (let ((_%$%lp-hd206197206233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e206196206230%_)))
                        (_%$%lp-tl206198206235%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e206196206230%_))))
                    (_%$%loop206195206223%_
                     _%$%lp-tl206198206235%_
                     (cons _%$%lp-hd206197206233%_ _%$%clause206199206228%_))))
                (let ((_%$%clause206200206238%_
                       (reverse _%$%clause206199206228%_)))
                  ((lambda (_%$%g206188206240%_)
                     (for-each
                      (lambda (_%clause206253%_)
                        (let* ((_%$%g206255206270%_
                                (lambda (_%$%g206256206267%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g206256206267%_)))
                               (_%$%g206254206317%_
                                (lambda (_%$%g206256206273%_)
                                  (if (gx#stx-pair? _%$%g206256206273%_)
                                      (let ((_%$%e206260206275%_
                                             (gx#stx-e _%$%g206256206273%_)))
                                        (let ((_%$%hd206261206278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206260206275%_)))
                                              (_%$%tl206262206280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206260206275%_))))
                                          (if (gx#stx-pair?
                                               _%$%hd206261206278%_)
                                              (let ((_%$%e206263206283%_
                                                     (gx#stx-e
                                                      _%$%hd206261206278%_)))
                                                (let ((_%$%hd206264206286%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e206263206283%_)))
                                                      (_%$%tl206265206288%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e206263206283%_))))
                                                  ((lambda (_%$%g206257206291%_
                                                            _%$%g206258206292%_
                                                            _%$%g206259206293%_)
                                                     (let ((_%receiver206311%_
                                                            (let ((_%$e206308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-extract-receiver
                            (cons (gx#datum->syntax '#f '%#begin)
                                  _%$%g206257206291%_))))
                      (if _%$e206308%_ _%$e206308%_ _%$%g206259206293%_))))
               (for-each
                (lambda (_%$%g206312206314%_)
                  (gxc#apply-collect-object-refs
                   _%$%g206312206314%_
                   'receiver:
                   _%receiver206311%_
                   'methods:
                   _%method-calls205127%_
                   'slots:
                   _%slot-refs205128%_))
                _%$%g206257206291%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%tl206262206280%_
                                                   _%$%tl206265206288%_
                                                   _%$%hd206264206286%_)))
                                              (_%$%g206255206270%_
                                               _%$%g206256206273%_))))
                                      (_%$%g206255206270%_
                                       _%$%g206256206273%_)))))
                          (_%$%g206254206317%_ _%clause206253%_)))
                      (foldr (lambda (_%$%g206319206322%_ _%$%g206320206324%_)
                               (cons _%$%g206319206322%_ _%$%g206320206324%_))
                             '()
                             _%$%g206188206240%_)))
                   _%$%clause206200206238%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop206195206223%_
                                           _%$%target206192206218%_
                                           '()))
                                        (_%$%g206186206205%_
                                         _%$%g206187206208%_)))))
                              (_%$%g206186206205%_ _%$%g206187206208%_))))
                      (_%$%g206186206205%_ _%$%g206187206208%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g206185206327%_
                                                   _%$%g205994206083%_))
                                                (if (_%no-specializer?205131%_)
                                                    _%stx205035%_
                                                    (let* ((_%specializer-id206336%_
                                                            (let* ((_%id206330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-symbol
                             (gx#stx-e _%$%g205046205108%_)
                             '"::specialize"))
                           (_%specializer-id206333%_
                            (gx#core-quote-syntax
                             _%id206330%_
                             (gx#stx-source _%stx205035%_))))
                      (gx#core-bind-runtime! _%specializer-id206333%_)
                      _%specializer-id206333%_))
                   (_%$klass206338%_ (make-symbol (gensym '__klass)))
                   (_%$method-table206340%_
                    (make-symbol (gensym '__method-table)))
                   (_%methods206342%_ (hash-keys _%method-calls205127%_))
                   (_%$methods206346%_
                    (map (lambda (_%id206344%_)
                           (make-symbol '"__" (gensym _%id206344%_)))
                         _%methods206342%_))
                   (_%_206355%_
                    (for-each
                     (lambda (_%$%g206347206350%_ _%$%g206348206352%_)
                       (hash-put!
                        _%method-calls205127%_
                        _%$%g206347206350%_
                        _%$%g206348206352%_))
                     _%methods206342%_
                     _%$methods206346%_))
                   (_%methods-bind206365%_
                    (map (lambda (_%$%g206357206360%_ _%$%g206358206362%_)
                           (_%generate-method-bind205037%_
                            _%$klass206338%_
                            _%$method-table206340%_
                            _%$%g206357206360%_
                            _%$%g206358206362%_))
                         _%methods206342%_
                         _%$methods206346%_))
                   (_%slots206367%_ (hash-keys _%slot-refs205128%_))
                   (_%$slots206371%_
                    (map (lambda (_%id206369%_)
                           (make-symbol '"__" (gensym _%id206369%_)))
                         _%slots206367%_))
                   (_%_206380%_
                    (for-each
                     (lambda (_%$%g206372206375%_ _%$%g206373206377%_)
                       (hash-put!
                        _%slot-refs205128%_
                        _%$%g206372206375%_
                        _%$%g206373206377%_))
                     _%slots206367%_
                     _%$slots206371%_))
                   (_%slots-bind206389%_
                    (map (lambda (_%$%g206381206384%_ _%$%g206382206386%_)
                           (_%generate-slot-bind205038%_
                            _%$klass206338%_
                            _%$%g206381206384%_
                            _%$%g206382206386%_))
                         _%slots206367%_
                         _%$slots206371%_))
                   (_%specializer-lambda-expr206481%_
                    (let* ((_%$%g206391206409%_
                            (lambda (_%$%g206392206406%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g206392206406%_)))
                           (_%$%g206390206478%_
                            (lambda (_%$%g206392206412%_)
                              (if (gx#stx-pair? _%$%g206392206412%_)
                                  (let ((_%$%e206396206414%_
                                         (gx#stx-e _%$%g206392206412%_)))
                                    (let ((_%$%hd206397206417%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e206396206414%_)))
                                          (_%$%tl206398206419%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e206396206414%_))))
                                      (if (gx#stx-pair? _%$%tl206398206419%_)
                                          (let ((_%$%e206399206422%_
                                                 (gx#stx-e
                                                  _%$%tl206398206419%_)))
                                            (let ((_%$%hd206400206425%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e206399206422%_)))
                                                  (_%$%tl206401206427%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e206399206422%_))))
                                              (if (gx#stx-pair?
                                                   _%$%hd206400206425%_)
                                                  (let ((_%$%e206402206430%_
                                                         (gx#stx-e
                                                          _%$%hd206400206425%_)))
                                                    (let ((_%$%hd206403206433%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e206402206430%_)))
                                                          (_%$%tl206404206435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e206402206430%_))))
                                                      ((lambda (_%$%g206393206438%_
                                                                _%$%g206394206439%_
                                                                _%$%g206395206440%_)
                                                         (let* ((_%receiver206469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_%$e206466%_
                                (gxc#apply-extract-receiver
                                 (cons (gx#datum->syntax '#f '%#begin)
                                       _%$%g206393206438%_))))
                           (if _%$e206466%_ _%$e206466%_ _%$%g206395206440%_)))
                        (_%body206475%_
                         (map (lambda (_%$%g206470206472%_)
                                (gxc#apply-subst-object-refs
                                 _%$%g206470206472%_
                                 'receiver:
                                 _%receiver206469%_
                                 'klass:
                                 _%$klass206338%_
                                 'methods:
                                 _%method-calls205127%_
                                 'slots:
                                 _%slot-refs205128%_))
                              _%$%g206393206438%_)))
                   (gxc#xform-wrap-source
                    (cons '%#lambda
                          (cons (cons _%$%g206395206440%_ _%$%g206394206439%_)
                                _%body206475%_))
                    _%$%g205995206084%_)))
               _%$%tl206401206427%_
               _%$%tl206404206435%_
               _%$%hd206403206433%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g206391206409%_
                                                   _%$%g206392206412%_))))
                                          (_%$%g206391206409%_
                                           _%$%g206392206412%_))))
                                  (_%$%g206391206409%_ _%$%g206392206412%_)))))
                      (_%$%g206390206478%_ _%$%g205995206084%_)))
                   (_%specializer-case-lambda-expr206642%_
                    (let* ((_%$%g206483206502%_
                            (lambda (_%$%g206484206499%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g206484206499%_)))
                           (_%$%g206482206639%_
                            (lambda (_%$%g206484206505%_)
                              (if (gx#stx-pair? _%$%g206484206505%_)
                                  (let ((_%$%e206486206507%_
                                         (gx#stx-e _%$%g206484206505%_)))
                                    (let ((_%$%hd206487206510%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e206486206507%_)))
                                          (_%$%tl206488206512%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e206486206507%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl206488206512%_)
                                          (let ((_g208011_
                                                 (gx#syntax-split-splice
                                                  _%$%tl206488206512%_
                                                  '0)))
                                            (begin
                                              (let ((_g208012_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g208011_)
                                                           (##values-length
                                                            _g208011_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g208012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g208012_)))
                                              (let ((_%$%target206489206515%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g208011_
                                                        0)))
                                                    (_%$%tl206491206517%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g208011_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl206491206517%_)
                                                    (letrec ((_%$%loop206492206520%_
                                                              (lambda (_%$%hd206490206523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%clause206496206525%_)
                        (if (gx#stx-pair? _%$%hd206490206523%_)
                            (let ((_%$%e206493206527%_
                                   (gx#stx-e _%$%hd206490206523%_)))
                              (let ((_%$%lp-hd206494206530%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e206493206527%_)))
                                    (_%$%lp-tl206495206532%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e206493206527%_))))
                                (_%$%loop206492206520%_
                                 _%$%lp-tl206495206532%_
                                 (cons _%$%lp-hd206494206530%_
                                       _%$%clause206496206525%_))))
                            (let ((_%$%clause206497206535%_
                                   (reverse _%$%clause206496206525%_)))
                              ((lambda (_%$%g206485206537%_)
                                 (let ((_%clauses206637%_
                                        (map (lambda (_%clause206551%_)
                                               (let* ((_%$%g206554206569%_
                                                       (lambda (_%$%g206555206566%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%$%g206555206566%_)))
                                                      (_%$%g206553206576%_
                                                       (lambda (_%$%g206555206572%_)
                                                         ((lambda ()
                                                            _%clause206551%_))))
                                                      (_%$%g206552206627%_
                                                       (lambda (_%$%g206555206579%_)
                                                         (if (gx#stx-pair?
                                                              _%$%g206555206579%_)
                                                             (let ((_%$%e206559206581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _%$%g206555206579%_)))
                       (let ((_%$%hd206560206584%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e206559206581%_)))
                             (_%$%tl206561206586%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e206559206581%_))))
                         (if (gx#stx-pair? _%$%hd206560206584%_)
                             (let ((_%$%e206562206589%_
                                    (gx#stx-e _%$%hd206560206584%_)))
                               (let ((_%$%hd206563206592%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e206562206589%_)))
                                     (_%$%tl206564206594%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e206562206589%_))))
                                 ((lambda (_%$%g206556206597%_
                                           _%$%g206557206598%_
                                           _%$%g206558206599%_)
                                    (let* ((_%receiver206618%_
                                            (let ((_%$e206615%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '%#begin)
                                                          _%$%g206556206597%_))))
                                              (if _%$e206615%_
                                                  _%$e206615%_
                                                  _%$%g206558206599%_)))
                                           (_%body206624%_
                                            (map (lambda (_%$%g206619206621%_)
                                                   (gxc#apply-subst-object-refs
                                                    _%$%g206619206621%_
                                                    'receiver:
                                                    _%receiver206618%_
                                                    'klass:
                                                    _%$klass206338%_
                                                    'methods:
                                                    _%method-calls205127%_
                                                    'slots:
                                                    _%slot-refs205128%_))
                                                 _%$%g206556206597%_)))
                                      (cons (cons _%$%g206558206599%_
                                                  _%$%g206557206598%_)
                                            _%body206624%_)))
                                  _%$%tl206561206586%_
                                  _%$%tl206564206594%_
                                  _%$%hd206563206592%_)))
                             (_%$%g206553206576%_ _%$%g206555206579%_))))
                     (_%$%g206553206576%_ _%$%g206555206579%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g206552206627%_
                                                  _%clause206551%_)))
                                             (foldr (lambda (_%$%g206629206632%_
                                                             _%$%g206630206634%_)
                                                      (cons _%$%g206629206632%_
                                                            _%$%g206630206634%_))
                                                    '()
                                                    _%$%g206485206537%_))))
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _%clauses206637%_)
                                    _%$%g205994206083%_)))
                               _%$%clause206497206535%_))))))
              (_%$%loop206492206520%_ _%$%target206489206515%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g206483206502%_
                                                     _%$%g206484206505%_)))))
                                          (_%$%g206483206502%_
                                           _%$%g206484206505%_))))
                                  (_%$%g206483206502%_ _%$%g206484206505%_)))))
                      (_%$%g206482206639%_ _%$%g205994206083%_)))
                   (_%specializer-impl206644%_
                    (gxc#xform-wrap-source
                     (cons '%#let-values
                           (cons (cons (cons (cons _%$%g205996206085%_ '())
                                             (cons _%specializer-lambda-expr206481%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr206642%_
                                       '())))
                     _%stx205035%_))
                   (_%specializer-impl206646%_
                    (_%generate-specializer-impl205039%_
                     _%$klass206338%_
                     _%$method-table206340%_
                     _%methods-bind206365%_
                     _%slots-bind206389%_
                     _%specializer-impl206644%_)))
              (gxc#verbose
               '"generate method specializer "
               (gx#stx-e _%$%g205046205108%_)
               '" => "
               (gx#stx-e _%specializer-id206336%_))
              (_%generate-specializer-def205040%_
               _%$%g205046205108%_
               _%specializer-id206336%_
               _%specializer-impl206646%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%$%hd206016206078%_
                                              _%$%hd206013206070%_
                                              _%$%hd206010206062%_)
                                             (_%$%g205992206022%_
                                              _%$%g205993206025%_))))
                                     (_%$%g205992206022%_ _%$%g205993206025%_))
                                 (_%$%g205992206022%_ _%$%g205993206025%_))
                             (_%$%g205992206022%_ _%$%g205993206025%_))))
                     (_%$%g205992206022%_ _%$%g205993206025%_))
                 (_%$%g205992206022%_ _%$%g205993206025%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g205992206022%_
                                                  _%$%g205993206025%_))))
                                         (_%$%g205992206022%_
                                          _%$%g205993206025%_))))
                                 (_%$%g205992206022%_ _%$%g205993206025%_))))
                         (_%$%g205992206022%_ _%$%g205993206025%_))))
                 (_%$%g205992206022%_ _%$%g205993206025%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g205991206649%_
                                              _%$%g205045205107%_))
                                           (if (gxc#kw-lambda-expr?
                                                _%$%g205045205107%_)
                                               (let* ((_%$%g206653206706%_
                                                       (lambda (_%$%g206654206703%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%$%g206654206703%_)))
                                                      (_%$%g206652207871%_
                                                       (lambda (_%$%g206654206709%_)
                                                         (if (gx#stx-pair?
                                                              _%$%g206654206709%_)
                                                             (let ((_%$%e206660206711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _%$%g206654206709%_)))
                       (let ((_%$%hd206661206714%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e206660206711%_)))
                             (_%$%tl206662206716%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e206660206711%_))))
                         (if (gx#identifier? _%$%hd206661206714%_)
                             (if (gx#stx-eq?
                                  '%#let-values
                                  _%$%hd206661206714%_)
                                 (if (gx#stx-pair? _%$%tl206662206716%_)
                                     (let ((_%$%e206663206719%_
                                            (gx#stx-e _%$%tl206662206716%_)))
                                       (let ((_%$%hd206664206722%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e206663206719%_)))
                                             (_%$%tl206665206724%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e206663206719%_))))
                                         (if (gx#stx-pair?
                                              _%$%hd206664206722%_)
                                             (let ((_%$%e206666206727%_
                                                    (gx#stx-e
                                                     _%$%hd206664206722%_)))
                                               (let ((_%$%hd206667206730%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e206666206727%_)))
                                                     (_%$%tl206668206732%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e206666206727%_))))
                                                 (if (gx#stx-pair?
                                                      _%$%hd206667206730%_)
                                                     (let ((_%$%e206669206735%_
                                                            (gx#stx-e
                                                             _%$%hd206667206730%_)))
                                                       (let ((_%$%hd206670206738%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e206669206735%_)))
                     (_%$%tl206671206740%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e206669206735%_))))
                 (if (gx#stx-pair? _%$%hd206670206738%_)
                     (let ((_%$%e206672206743%_
                            (gx#stx-e _%$%hd206670206738%_)))
                       (let ((_%$%hd206673206746%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e206672206743%_)))
                             (_%$%tl206674206748%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e206672206743%_))))
                         (if (gx#stx-null? _%$%tl206674206748%_)
                             (if (gx#stx-pair? _%$%tl206671206740%_)
                                 (let ((_%$%e206675206751%_
                                        (gx#stx-e _%$%tl206671206740%_)))
                                   (let ((_%$%hd206676206754%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e206675206751%_)))
                                         (_%$%tl206677206756%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e206675206751%_))))
                                     (if (gx#stx-pair? _%$%hd206676206754%_)
                                         (let ((_%$%e206678206759%_
                                                (gx#stx-e
                                                 _%$%hd206676206754%_)))
                                           (let ((_%$%hd206679206762%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e206678206759%_)))
                                                 (_%$%tl206680206764%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e206678206759%_))))
                                             (if (gx#identifier?
                                                  _%$%hd206679206762%_)
                                                 (if (gx#stx-eq?
                                                      '%#let-values
                                                      _%$%hd206679206762%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl206680206764%_)
                                                         (let ((_%$%e206681206767%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl206680206764%_)))
                   (let ((_%$%hd206682206770%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e206681206767%_)))
                         (_%$%tl206683206772%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e206681206767%_))))
                     (if (gx#stx-pair? _%$%hd206682206770%_)
                         (let ((_%$%e206684206775%_
                                (gx#stx-e _%$%hd206682206770%_)))
                           (let ((_%$%hd206685206778%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e206684206775%_)))
                                 (_%$%tl206686206780%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e206684206775%_))))
                             (if (gx#stx-pair? _%$%hd206685206778%_)
                                 (let ((_%$%e206687206783%_
                                        (gx#stx-e _%$%hd206685206778%_)))
                                   (let ((_%$%hd206688206786%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e206687206783%_)))
                                         (_%$%tl206689206788%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e206687206783%_))))
                                     (if (gx#stx-pair? _%$%hd206688206786%_)
                                         (let ((_%$%e206690206791%_
                                                (gx#stx-e
                                                 _%$%hd206688206786%_)))
                                           (let ((_%$%hd206691206794%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e206690206791%_)))
                                                 (_%$%tl206692206796%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e206690206791%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl206692206796%_)
                                                 (if (gx#stx-pair?
                                                      _%$%tl206689206788%_)
                                                     (let ((_%$%e206693206799%_
                                                            (gx#stx-e
                                                             _%$%tl206689206788%_)))
                                                       (let ((_%$%hd206694206802%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e206693206799%_)))
                     (_%$%tl206695206804%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e206693206799%_))))
                 (if (gx#stx-null? _%$%tl206695206804%_)
                     (if (gx#stx-null? _%$%tl206686206780%_)
                         (if (gx#stx-pair? _%$%tl206683206772%_)
                             (let ((_%$%e206696206807%_
                                    (gx#stx-e _%$%tl206683206772%_)))
                               (let ((_%$%hd206697206810%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e206696206807%_)))
                                     (_%$%tl206698206812%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e206696206807%_))))
                                 (if (gx#stx-null? _%$%tl206698206812%_)
                                     (if (gx#stx-null? _%$%tl206677206756%_)
                                         (if (gx#stx-null?
                                              _%$%tl206668206732%_)
                                             (if (gx#stx-pair?
                                                  _%$%tl206665206724%_)
                                                 (let ((_%$%e206699206815%_
                                                        (gx#stx-e
                                                         _%$%tl206665206724%_)))
                                                   (let ((_%$%hd206700206818%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e206699206815%_)))
                                                         (_%$%tl206701206820%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e206699206815%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl206701206820%_)
                                                         ((lambda (_%$%g206655206823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g206656206824%_
                           _%$%g206657206825%_
                           _%$%g206658206826%_
                           _%$%g206659206827%_)
                    (let* ((_%$%g206867206929%_
                            (lambda (_%$%g206868206926%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g206868206926%_)))
                           (_%$%g206866207868%_
                            (lambda (_%$%g206868206932%_)
                              (if (gx#stx-pair? _%$%g206868206932%_)
                                  (let ((_%$%e206874206934%_
                                         (gx#stx-e _%$%g206868206932%_)))
                                    (let ((_%$%hd206875206937%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e206874206934%_)))
                                          (_%$%tl206876206939%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e206874206934%_))))
                                      (if (gx#identifier? _%$%hd206875206937%_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _%$%hd206875206937%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl206876206939%_)
                                                  (let ((_%$%e206877206942%_
                                                         (gx#stx-e
                                                          _%$%tl206876206939%_)))
                                                    (let ((_%$%hd206878206945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e206877206942%_)))
                                                          (_%$%tl206879206947%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e206877206942%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl206879206947%_)
                                                          (let ((_%$%e206880206950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl206879206947%_)))
                    (let ((_%$%hd206881206953%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e206880206950%_)))
                          (_%$%tl206882206955%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e206880206950%_))))
                      (if (gx#stx-pair? _%$%hd206881206953%_)
                          (let ((_%$%e206883206958%_
                                 (gx#stx-e _%$%hd206881206953%_)))
                            (let ((_%$%hd206884206961%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e206883206958%_)))
                                  (_%$%tl206885206963%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e206883206958%_))))
                              (if (gx#identifier? _%$%hd206884206961%_)
                                  (if (gx#stx-eq? '%#call _%$%hd206884206961%_)
                                      (if (gx#stx-pair? _%$%tl206885206963%_)
                                          (let ((_%$%e206886206966%_
                                                 (gx#stx-e
                                                  _%$%tl206885206963%_)))
                                            (let ((_%$%hd206887206969%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e206886206966%_)))
                                                  (_%$%tl206888206971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e206886206966%_))))
                                              (if (gx#stx-pair?
                                                   _%$%hd206887206969%_)
                                                  (let ((_%$%e206889206974%_
                                                         (gx#stx-e
                                                          _%$%hd206887206969%_)))
                                                    (let ((_%$%hd206890206977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e206889206974%_)))
                                                          (_%$%tl206891206979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e206889206974%_))))
                                                      (if (gx#identifier?
                                                           _%$%hd206890206977%_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd206890206977%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%tl206891206979%_)
                          (let ((_%$%e206892206982%_
                                 (gx#stx-e _%$%tl206891206979%_)))
                            (let ((_%$%hd206893206985%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e206892206982%_)))
                                  (_%$%tl206894206987%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e206892206982%_))))
                              (if (gx#stx-null? _%$%tl206894206987%_)
                                  (if (gx#stx-pair? _%$%tl206888206971%_)
                                      (let ((_%$%e206895206990%_
                                             (gx#stx-e _%$%tl206888206971%_)))
                                        (let ((_%$%hd206896206993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206895206990%_)))
                                              (_%$%tl206897206995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206895206990%_))))
                                          (if (gx#stx-pair?
                                               _%$%hd206896206993%_)
                                              (let ((_%$%e206898206998%_
                                                     (gx#stx-e
                                                      _%$%hd206896206993%_)))
                                                (let ((_%$%hd206899207001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e206898206998%_)))
                                                      (_%$%tl206900207003%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e206898206998%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd206899207001%_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd206899207001%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl206900207003%_)
                                                              (let ((_%$%e206901207006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl206900207003%_)))
                        (let ((_%$%hd206902207009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206901207006%_)))
                              (_%$%tl206903207011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206901207006%_))))
                          (if (gx#stx-null? _%$%tl206903207011%_)
                              (if (gx#stx-pair? _%$%tl206897206995%_)
                                  (let ((_%$%e206904207014%_
                                         (gx#stx-e _%$%tl206897206995%_)))
                                    (let ((_%$%hd206905207017%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e206904207014%_)))
                                          (_%$%tl206906207019%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e206904207014%_))))
                                      (if (gx#stx-pair? _%$%hd206905207017%_)
                                          (let ((_%$%e206907207022%_
                                                 (gx#stx-e
                                                  _%$%hd206905207017%_)))
                                            (let ((_%$%hd206908207025%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e206907207022%_)))
                                                  (_%$%tl206909207027%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e206907207022%_))))
                                              (if (gx#identifier?
                                                   _%$%hd206908207025%_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd206908207025%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl206909207027%_)
                                                          (let ((_%$%e206910207030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl206909207027%_)))
                    (let ((_%$%hd206911207033%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e206910207030%_)))
                          (_%$%tl206912207035%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e206910207030%_))))
                      (if (gx#stx-null? _%$%tl206912207035%_)
                          (if (gx#stx-pair/null? _%$%tl206906207019%_)
                              (if (fx>= (gx#stx-length _%$%tl206906207019%_)
                                        '1)
                                  (let ((_g208013_
                                         (gx#syntax-split-splice
                                          _%$%tl206906207019%_
                                          '1)))
                                    (begin
                                      (let ((_g208014_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g208013_)
                                                   (##values-length _g208013_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g208014_ 2)))
                                            (error "Context expects 2 values"
                                                   _g208014_)))
                                      (let ((_%$%target206913207038%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g208013_ 0)))
                                            (_%$%tl206915207040%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g208013_ 1))))
                                        (if (gx#stx-pair? _%$%tl206915207040%_)
                                            (let ((_%$%e206922207043%_
                                                   (gx#stx-e
                                                    _%$%tl206915207040%_)))
                                              (let ((_%$%hd206923207046%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e206922207043%_)))
                                                    (_%$%tl206924207048%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e206922207043%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl206924207048%_)
                                                    (letrec ((_%$%loop206916207051%_
                                                              (lambda (_%$%hd206914207054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%kw-ref206920207056%_)
                        (if (gx#stx-pair? _%$%hd206914207054%_)
                            (let ((_%$%e206917207058%_
                                   (gx#stx-e _%$%hd206914207054%_)))
                              (let ((_%$%lp-hd206918207061%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e206917207058%_)))
                                    (_%$%lp-tl206919207063%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e206917207058%_))))
                                (_%$%loop206916207051%_
                                 _%$%lp-tl206919207063%_
                                 (cons _%$%lp-hd206918207061%_
                                       _%$%kw-ref206920207056%_))))
                            (let ((_%$%kw-ref206921207066%_
                                   (reverse _%$%kw-ref206920207056%_)))
                              (if (gx#stx-null? _%$%tl206882206955%_)
                                  ((lambda (_%$%g206869207068%_
                                            _%$%g206870207069%_
                                            _%$%g206871207070%_
                                            _%$%g206872207071%_
                                            _%$%g206873207072%_)
                                     (let* ((_%kw-count207123%_
                                             (length (foldr (lambda (_%$%g207115207118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g207116207120%_)
                      (cons _%$%g207115207118%_ _%$%g207116207120%_))
                    '()
                    _%$%g206870207069%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%self-index207125%_
                                             (fx1+ _%kw-count207123%_)))
                                       (if (gxc#lambda-expr?
                                            _%$%g206657206825%_)
                                           (let* ((_%$%g207129207143%_
                                                   (lambda (_%$%g207130207140%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g207130207140%_)))
                                                  (_%$%g207128207266%_
                                                   (lambda (_%$%g207130207146%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g207130207146%_)
                                                         (let ((_%$%e207133207148%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g207130207146%_)))
                   (let ((_%$%hd207134207151%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e207133207148%_)))
                         (_%$%tl207135207153%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e207133207148%_))))
                     (if (gx#stx-pair? _%$%tl207135207153%_)
                         (let ((_%$%e207136207156%_
                                (gx#stx-e _%$%tl207135207153%_)))
                           (let ((_%$%hd207137207159%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e207136207156%_)))
                                 (_%$%tl207138207161%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e207136207156%_))))
                             ((lambda (_%$%g207131207164%_ _%$%g207132207165%_)
                                (let* ((_%self207182%_
                                        (list-ref
                                         _%$%g207132207165%_
                                         _%self-index207125%_))
                                       (_%receiver207187%_
                                        (let ((_%$e207184%_
                                               (gxc#apply-extract-receiver
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '%#begin)
                                                      _%$%g207131207164%_))))
                                          (if _%$e207184%_
                                              _%$e207184%_
                                              _%self207182%_))))
                                  (for-each
                                   (lambda (_%$%g207189207191%_)
                                     (gxc#apply-collect-object-refs
                                      _%$%g207189207191%_
                                      'receiver:
                                      _%receiver207187%_
                                      'methods:
                                      _%method-calls205127%_
                                      'slots:
                                      _%slot-refs205128%_))
                                   _%$%g207131207164%_)
                                  (if (_%no-specializer?205131%_)
                                      _%stx205035%_
                                      (let* ((_%specializer-id207200%_
                                              (let* ((_%id207194%_
                                                      (make-symbol
                                                       (gx#stx-e
                                                        _%$%g205046205108%_)
                                                       '"::specialize"))
                                                     (_%specializer-id207197%_
                                                      (gx#core-quote-syntax
                                                       _%id207194%_
                                                       (gx#stx-source
                                                        _%stx205035%_))))
                                                (gx#core-bind-runtime!
                                                 _%specializer-id207197%_)
                                                _%specializer-id207197%_))
                                             (_%$klass207202%_
                                              (make-symbol (gensym '__klass)))
                                             (_%$method-table207204%_
                                              (make-symbol
                                               (gensym '__method-table)))
                                             (_%methods207206%_
                                              (hash-keys
                                               _%method-calls205127%_))
                                             (_%$methods207210%_
                                              (map (lambda (_%id207208%_)
                                                     (make-symbol
                                                      '"__"
                                                      (gensym _%id207208%_)))
                                                   _%methods207206%_))
                                             (_%_207219%_
                                              (for-each
                                               (lambda (_%$%g207211207214%_
                                                        _%$%g207212207216%_)
                                                 (hash-put!
                                                  _%method-calls205127%_
                                                  _%$%g207211207214%_
                                                  _%$%g207212207216%_))
                                               _%methods207206%_
                                               _%$methods207210%_))
                                             (_%methods-bind207229%_
                                              (map (lambda (_%$%g207221207224%_
                                                            _%$%g207222207226%_)
                                                     (_%generate-method-bind205037%_
                                                      _%$klass207202%_
                                                      _%$method-table207204%_
                                                      _%$%g207221207224%_
                                                      _%$%g207222207226%_))
                                                   _%methods207206%_
                                                   _%$methods207210%_))
                                             (_%slots207231%_
                                              (hash-keys _%slot-refs205128%_))
                                             (_%$slots207235%_
                                              (map (lambda (_%id207233%_)
                                                     (make-symbol
                                                      '"__"
                                                      (gensym _%id207233%_)))
                                                   _%slots207231%_))
                                             (_%_207244%_
                                              (for-each
                                               (lambda (_%$%g207236207239%_
                                                        _%$%g207237207241%_)
                                                 (hash-put!
                                                  _%slot-refs205128%_
                                                  _%$%g207236207239%_
                                                  _%$%g207237207241%_))
                                               _%slots207231%_
                                               _%$slots207235%_))
                                             (_%slots-bind207253%_
                                              (map (lambda (_%$%g207245207248%_
                                                            _%$%g207246207250%_)
                                                     (_%generate-slot-bind205038%_
                                                      _%$klass207202%_
                                                      _%$%g207245207248%_
                                                      _%$%g207246207250%_))
                                                   _%slots207231%_
                                                   _%$slots207235%_))
                                             (_%specializer-impl207261%_
                                              (let ((_%specializer-body207259%_
                                                     (map (lambda (_%$%g207254207256%_)
                                                            (gxc#apply-subst-object-refs
                                                             _%$%g207254207256%_
                                                             'receiver:
                                                             _%receiver207187%_
                                                             'klass:
                                                             _%$klass207202%_
                                                             'methods:
                                                             _%method-calls205127%_
                                                             'slots:
                                                             _%slot-refs205128%_))
                                                          _%$%g207131207164%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#let-values
                                                       (cons (cons (cons (cons _%$%g206659206827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons '%#let-values
                                             (cons (cons (cons (cons _%$%g206658206826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (gxc#xform-wrap-source
                              (cons '%#lambda
                                    (cons _%$%g207132207165%_
                                          _%specializer-body207259%_))
                              _%$%g206657206825%_)
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%$%g206656206824%_
                                                         '())))
                                       '()))
                           '())
                     (cons _%$%g206655206823%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx205035%_)))
                                             (_%specializer-impl207263%_
                                              (_%generate-specializer-impl205039%_
                                               _%$klass207202%_
                                               _%$method-table207204%_
                                               _%methods-bind207229%_
                                               _%slots-bind207253%_
                                               _%specializer-impl207261%_)))
                                        (gxc#verbose
                                         '"generate method specializer "
                                         (gx#stx-e _%$%g205046205108%_)
                                         '" => "
                                         (gx#stx-e _%specializer-id207200%_))
                                        (_%generate-specializer-def205040%_
                                         _%$%g205046205108%_
                                         _%specializer-id207200%_
                                         _%specializer-impl207263%_)))))
                              _%$%tl207138207161%_
                              _%$%hd207137207159%_)))
                         (_%$%g207129207143%_ _%$%g207130207146%_))))
                 (_%$%g207129207143%_ _%$%g207130207146%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g207128207266%_
                                              _%$%g206657206825%_))
                                           (if (gxc#opt-lambda-expr?
                                                _%$%g206657206825%_)
                                               (let* ((_%$%g207270207300%_
                                                       (lambda (_%$%g207271207297%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%$%g207271207297%_)))
                                                      (_%$%g207269207864%_
                                                       (lambda (_%$%g207271207303%_)
                                                         (if (gx#stx-pair?
                                                              _%$%g207271207303%_)
                                                             (let ((_%$%e207275207305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _%$%g207271207303%_)))
                       (let ((_%$%hd207276207308%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e207275207305%_)))
                             (_%$%tl207277207310%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e207275207305%_))))
                         (if (gx#stx-pair? _%$%tl207277207310%_)
                             (let ((_%$%e207278207313%_
                                    (gx#stx-e _%$%tl207277207310%_)))
                               (let ((_%$%hd207279207316%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e207278207313%_)))
                                     (_%$%tl207280207318%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e207278207313%_))))
                                 (if (gx#stx-pair? _%$%hd207279207316%_)
                                     (let ((_%$%e207281207321%_
                                            (gx#stx-e _%$%hd207279207316%_)))
                                       (let ((_%$%hd207282207324%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e207281207321%_)))
                                             (_%$%tl207283207326%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e207281207321%_))))
                                         (if (gx#stx-pair?
                                              _%$%hd207282207324%_)
                                             (let ((_%$%e207284207329%_
                                                    (gx#stx-e
                                                     _%$%hd207282207324%_)))
                                               (let ((_%$%hd207285207332%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e207284207329%_)))
                                                     (_%$%tl207286207334%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e207284207329%_))))
                                                 (if (gx#stx-pair?
                                                      _%$%hd207285207332%_)
                                                     (let ((_%$%e207287207337%_
                                                            (gx#stx-e
                                                             _%$%hd207285207332%_)))
                                                       (let ((_%$%hd207288207340%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e207287207337%_)))
                     (_%$%tl207289207342%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e207287207337%_))))
                 (if (gx#stx-null? _%$%tl207289207342%_)
                     (if (gx#stx-pair? _%$%tl207286207334%_)
                         (let ((_%$%e207290207345%_
                                (gx#stx-e _%$%tl207286207334%_)))
                           (let ((_%$%hd207291207348%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e207290207345%_)))
                                 (_%$%tl207292207350%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e207290207345%_))))
                             (if (gx#stx-null? _%$%tl207292207350%_)
                                 (if (gx#stx-null? _%$%tl207283207326%_)
                                     (if (gx#stx-pair? _%$%tl207280207318%_)
                                         (let ((_%$%e207293207353%_
                                                (gx#stx-e
                                                 _%$%tl207280207318%_)))
                                           (let ((_%$%hd207294207356%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e207293207353%_)))
                                                 (_%$%tl207295207358%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e207293207353%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl207295207358%_)
                                                 ((lambda (_%$%g207272207361%_
                                                           _%$%g207273207362%_
                                                           _%$%g207274207363%_)
                                                    (let* ((_%$%g207387207401%_
                                                            (lambda (_%$%g207388207398%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g207388207398%_)))
                                                           (_%$%g207386207448%_
                                                            (lambda (_%$%g207388207404%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g207388207404%_)
                          (let ((_%$%e207391207406%_
                                 (gx#stx-e _%$%g207388207404%_)))
                            (let ((_%$%hd207392207409%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e207391207406%_)))
                                  (_%$%tl207393207411%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e207391207406%_))))
                              (if (gx#stx-pair? _%$%tl207393207411%_)
                                  (let ((_%$%e207394207414%_
                                         (gx#stx-e _%$%tl207393207411%_)))
                                    (let ((_%$%hd207395207417%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e207394207414%_)))
                                          (_%$%tl207396207419%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e207394207414%_))))
                                      ((lambda (_%$%g207389207422%_
                                                _%$%g207390207423%_)
                                         (let* ((_%self207436%_
                                                 (list-ref
                                                  _%$%g207390207423%_
                                                  _%self-index207125%_))
                                                (_%receiver207441%_
                                                 (let ((_%$e207438%_
                                                        (gxc#apply-extract-receiver
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '%#begin)
                                                               _%$%g207389207422%_))))
                                                   (if _%$e207438%_
                                                       _%$e207438%_
                                                       _%self207436%_))))
                                           (for-each
                                            (lambda (_%$%g207443207445%_)
                                              (gxc#apply-collect-object-refs
                                               _%$%g207443207445%_
                                               'receiver:
                                               _%receiver207441%_
                                               'methods:
                                               _%method-calls205127%_
                                               'slots:
                                               _%slot-refs205128%_))
                                            _%$%g207389207422%_)))
                                       _%$%tl207396207419%_
                                       _%$%hd207395207417%_)))
                                  (_%$%g207387207401%_ _%$%g207388207404%_))))
                          (_%$%g207387207401%_ _%$%g207388207404%_)))))
              (_%$%g207386207448%_ _%$%g207273207362%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%g207451207470%_
                                                            (lambda (_%$%g207452207467%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g207452207467%_)))
                                                           (_%$%g207450207579%_
                                                            (lambda (_%$%g207452207473%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g207452207473%_)
                          (let ((_%$%e207454207475%_
                                 (gx#stx-e _%$%g207452207473%_)))
                            (let ((_%$%hd207455207478%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e207454207475%_)))
                                  (_%$%tl207456207480%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e207454207475%_))))
                              (if (gx#stx-pair/null? _%$%tl207456207480%_)
                                  (let ((_g208015_
                                         (gx#syntax-split-splice
                                          _%$%tl207456207480%_
                                          '0)))
                                    (begin
                                      (let ((_g208016_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g208015_)
                                                   (##values-length _g208015_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g208016_ 2)))
                                            (error "Context expects 2 values"
                                                   _g208016_)))
                                      (let ((_%$%target207457207483%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g208015_ 0)))
                                            (_%$%tl207459207485%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g208015_ 1))))
                                        (if (gx#stx-null? _%$%tl207459207485%_)
                                            (letrec ((_%$%loop207460207488%_
                                                      (lambda (_%$%hd207458207491%_
                                                               _%$%clause207464207493%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd207458207491%_)
                                                            (let ((_%$%e207461207495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%$%hd207458207491%_)))
                      (let ((_%$%lp-hd207462207498%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e207461207495%_)))
                            (_%$%lp-tl207463207500%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e207461207495%_))))
                        (_%$%loop207460207488%_
                         _%$%lp-tl207463207500%_
                         (cons _%$%lp-hd207462207498%_
                               _%$%clause207464207493%_))))
                    (let ((_%$%clause207465207503%_
                           (reverse _%$%clause207464207493%_)))
                      ((lambda (_%$%g207453207505%_)
                         (for-each
                          (lambda (_%clause207518%_)
                            (let* ((_%$%g207520207531%_
                                    (lambda (_%$%g207521207528%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g207521207528%_)))
                                   (_%$%g207519207569%_
                                    (lambda (_%$%g207521207534%_)
                                      (if (gx#stx-pair? _%$%g207521207534%_)
                                          (let ((_%$%e207524207536%_
                                                 (gx#stx-e
                                                  _%$%g207521207534%_)))
                                            (let ((_%$%hd207525207539%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e207524207536%_)))
                                                  (_%$%tl207526207541%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e207524207536%_))))
                                              ((lambda (_%$%g207522207544%_
                                                        _%$%g207523207545%_)
                                                 (let* ((_%self207557%_
                                                         (list-ref
                                                          _%$%g207523207545%_
                                                          _%self-index207125%_))
                                                        (_%receiver207562%_
                                                         (let ((_%$e207559%_
                                                                (gxc#apply-extract-receiver
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '%#begin)
                               _%$%g207522207544%_))))
                   (if _%$e207559%_ _%$e207559%_ _%self207557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (for-each
                                                    (lambda (_%$%g207564207566%_)
                                                      (gxc#apply-collect-object-refs
                                                       _%$%g207564207566%_
                                                       'receiver:
                                                       _%receiver207562%_
                                                       'methods:
                                                       _%method-calls205127%_
                                                       'slots:
                                                       _%slot-refs205128%_))
                                                    _%$%g207522207544%_)))
                                               _%$%tl207526207541%_
                                               _%$%hd207525207539%_)))
                                          (_%$%g207520207531%_
                                           _%$%g207521207534%_)))))
                              (_%$%g207519207569%_ _%clause207518%_)))
                          (foldr (lambda (_%$%g207571207574%_
                                          _%$%g207572207576%_)
                                   (cons _%$%g207571207574%_
                                         _%$%g207572207576%_))
                                 '()
                                 _%$%g207453207505%_)))
                       _%$%clause207465207503%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop207460207488%_
                                               _%$%target207457207483%_
                                               '()))
                                            (_%$%g207451207470%_
                                             _%$%g207452207473%_)))))
                                  (_%$%g207451207470%_ _%$%g207452207473%_))))
                          (_%$%g207451207470%_ _%$%g207452207473%_)))))
              (_%$%g207450207579%_ _%$%g207272207361%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (_%no-specializer?205131%_)
                                                        _%stx205035%_
                                                        (let* ((_%specializer-id207588%_
                                                                (let* ((_%id207582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (make-symbol
                                 (gx#stx-e _%$%g205046205108%_)
                                 '"::specialize"))
                               (_%specializer-id207585%_
                                (gx#core-quote-syntax
                                 _%id207582%_
                                 (gx#stx-source _%stx205035%_))))
                          (gx#core-bind-runtime! _%specializer-id207585%_)
                          _%specializer-id207585%_))
                       (_%$klass207590%_ (make-symbol (gensym '__klass)))
                       (_%$method-table207592%_
                        (make-symbol (gensym '__method-table)))
                       (_%methods207594%_ (hash-keys _%method-calls205127%_))
                       (_%$methods207598%_
                        (map (lambda (_%id207596%_)
                               (make-symbol '"__" (gensym _%id207596%_)))
                             _%methods207594%_))
                       (_%_207607%_
                        (for-each
                         (lambda (_%$%g207599207602%_ _%$%g207600207604%_)
                           (hash-put!
                            _%method-calls205127%_
                            _%$%g207599207602%_
                            _%$%g207600207604%_))
                         _%methods207594%_
                         _%$methods207598%_))
                       (_%methods-bind207617%_
                        (map (lambda (_%$%g207609207612%_ _%$%g207610207614%_)
                               (_%generate-method-bind205037%_
                                _%$klass207590%_
                                _%$method-table207592%_
                                _%$%g207609207612%_
                                _%$%g207610207614%_))
                             _%methods207594%_
                             _%$methods207598%_))
                       (_%slots207619%_ (hash-keys _%slot-refs205128%_))
                       (_%$slots207623%_
                        (map (lambda (_%id207621%_)
                               (make-symbol '"__" (gensym _%id207621%_)))
                             _%slots207619%_))
                       (_%_207632%_
                        (for-each
                         (lambda (_%$%g207624207627%_ _%$%g207625207629%_)
                           (hash-put!
                            _%slot-refs205128%_
                            _%$%g207624207627%_
                            _%$%g207625207629%_))
                         _%slots207619%_
                         _%$slots207623%_))
                       (_%slots-bind207641%_
                        (map (lambda (_%$%g207633207636%_ _%$%g207634207638%_)
                               (_%generate-slot-bind205038%_
                                _%$klass207590%_
                                _%$%g207633207636%_
                                _%$%g207634207638%_))
                             _%slots207619%_
                             _%$slots207623%_))
                       (_%specializer-lambda-expr207719%_
                        (let* ((_%$%g207643207657%_
                                (lambda (_%$%g207644207654%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g207644207654%_)))
                               (_%$%g207642207716%_
                                (lambda (_%$%g207644207660%_)
                                  (if (gx#stx-pair? _%$%g207644207660%_)
                                      (let ((_%$%e207647207662%_
                                             (gx#stx-e _%$%g207644207660%_)))
                                        (let ((_%$%hd207648207665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207647207662%_)))
                                              (_%$%tl207649207667%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207647207662%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl207649207667%_)
                                              (let ((_%$%e207650207670%_
                                                     (gx#stx-e
                                                      _%$%tl207649207667%_)))
                                                (let ((_%$%hd207651207673%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207650207670%_)))
                                                      (_%$%tl207652207675%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207650207670%_))))
                                                  ((lambda (_%$%g207645207678%_
                                                            _%$%g207646207679%_)
                                                     (let* ((_%self207702%_
                                                             (list-ref
                                                              _%$%g207646207679%_
                                                              _%self-index207125%_))
                                                            (_%receiver207707%_
                                                             (let ((_%$e207704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (gx#datum->syntax '#f '%#begin)
                                   _%$%g207645207678%_))))
                       (if _%$e207704%_ _%$e207704%_ _%self207702%_)))
                    (_%body207713%_
                     (map (lambda (_%$%g207708207710%_)
                            (gxc#apply-subst-object-refs
                             _%$%g207708207710%_
                             'receiver:
                             _%receiver207707%_
                             'klass:
                             _%$klass207590%_
                             'methods:
                             _%method-calls205127%_
                             'slots:
                             _%slot-refs205128%_))
                          _%$%g207645207678%_)))
               (gxc#xform-wrap-source
                (cons '%#lambda (cons _%$%g207646207679%_ _%body207713%_))
                _%$%g207273207362%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%tl207652207675%_
                                                   _%$%hd207651207673%_)))
                                              (_%$%g207643207657%_
                                               _%$%g207644207660%_))))
                                      (_%$%g207643207657%_
                                       _%$%g207644207660%_)))))
                          (_%$%g207642207716%_ _%$%g207273207362%_)))
                       (_%specializer-case-lambda-expr207857%_
                        (let* ((_%$%g207721207740%_
                                (lambda (_%$%g207722207737%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g207722207737%_)))
                               (_%$%g207720207854%_
                                (lambda (_%$%g207722207743%_)
                                  (if (gx#stx-pair? _%$%g207722207743%_)
                                      (let ((_%$%e207724207745%_
                                             (gx#stx-e _%$%g207722207743%_)))
                                        (let ((_%$%hd207725207748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207724207745%_)))
                                              (_%$%tl207726207750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207724207745%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl207726207750%_)
                                              (let ((_g208017_
                                                     (gx#syntax-split-splice
                                                      _%$%tl207726207750%_
                                                      '0)))
                                                (begin
                                                  (let ((_g208018_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g208017_)
                                                               (##values-length
                                                                _g208017_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g208018_ 2)))
                (error "Context expects 2 values" _g208018_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target207727207753%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g208017_
                                                            0)))
                                                        (_%$%tl207729207755%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g208017_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl207729207755%_)
                                                        (letrec ((_%$%loop207730207758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd207728207761%_
                                   _%$%clause207734207763%_)
                            (if (gx#stx-pair? _%$%hd207728207761%_)
                                (let ((_%$%e207731207765%_
                                       (gx#stx-e _%$%hd207728207761%_)))
                                  (let ((_%$%lp-hd207732207768%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e207731207765%_)))
                                        (_%$%lp-tl207733207770%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e207731207765%_))))
                                    (_%$%loop207730207758%_
                                     _%$%lp-tl207733207770%_
                                     (cons _%$%lp-hd207732207768%_
                                           _%$%clause207734207763%_))))
                                (let ((_%$%clause207735207773%_
                                       (reverse _%$%clause207734207763%_)))
                                  ((lambda (_%$%g207723207775%_)
                                     (let ((_%clauses207852%_
                                            (map (lambda (_%clause207789%_)
                                                   (let* ((_%$%g207791207802%_
                                                           (lambda (_%$%g207792207799%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%$%g207792207799%_)))
                                                          (_%$%g207790207842%_
                                                           (lambda (_%$%g207792207805%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g207792207805%_)
                         (let ((_%$%e207795207807%_
                                (gx#stx-e _%$%g207792207805%_)))
                           (let ((_%$%hd207796207810%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e207795207807%_)))
                                 (_%$%tl207797207812%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e207795207807%_))))
                             ((lambda (_%$%g207793207815%_ _%$%g207794207816%_)
                                (let* ((_%self207828%_
                                        (list-ref
                                         _%$%g207794207816%_
                                         _%self-index207125%_))
                                       (_%receiver207833%_
                                        (let ((_%$e207830%_
                                               (gxc#apply-extract-receiver
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '%#begin)
                                                      _%$%g207793207815%_))))
                                          (if _%$e207830%_
                                              _%$e207830%_
                                              _%self207828%_)))
                                       (_%body207839%_
                                        (map (lambda (_%$%g207834207836%_)
                                               (gxc#apply-subst-object-refs
                                                _%$%g207834207836%_
                                                'receiver:
                                                _%receiver207833%_
                                                'klass:
                                                _%$klass207590%_
                                                'methods:
                                                _%method-calls205127%_
                                                'slots:
                                                _%slot-refs205128%_))
                                             _%$%g207793207815%_)))
                                  (cons _%$%g207794207816%_ _%body207839%_)))
                              _%$%tl207797207812%_
                              _%$%hd207796207810%_)))
                         (_%$%g207791207802%_ _%$%g207792207805%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g207790207842%_
                                                      _%clause207789%_)))
                                                 (foldr (lambda (_%$%g207844207847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g207845207849%_)
                  (cons _%$%g207844207847%_ _%$%g207845207849%_))
                '()
                _%$%g207723207775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gxc#xform-wrap-source
                                        (cons '%#case-lambda _%clauses207852%_)
                                        _%$%g207272207361%_)))
                                   _%$%clause207735207773%_))))))
                  (_%$%loop207730207758%_ _%$%target207727207753%_ '()))
                (_%$%g207721207740%_ _%$%g207722207743%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207721207740%_
                                               _%$%g207722207743%_))))
                                      (_%$%g207721207740%_
                                       _%$%g207722207743%_)))))
                          (_%$%g207720207854%_ _%$%g207272207361%_)))
                       (_%specializer-impl207859%_
                        (gxc#xform-wrap-source
                         (cons '%#let-values
                               (cons (cons (cons (cons _%$%g206659206827%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%$%g206658206826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$%g207274207363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%specializer-lambda-expr207719%_ '()))
                        '())
                  (cons _%specializer-case-lambda-expr207857%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx205035%_)
                                             '()))
                                 '())
                           (cons _%$%g206656206824%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%$%g206655206823%_ '())))
                         _%stx205035%_))
                       (_%specializer-impl207861%_
                        (_%generate-specializer-impl205039%_
                         _%$klass207590%_
                         _%$method-table207592%_
                         _%methods-bind207617%_
                         _%slots-bind207641%_
                         _%specializer-impl207859%_)))
                  (gxc#verbose
                   '"generate method specializer "
                   (gx#stx-e _%$%g205046205108%_)
                   '" => "
                   (gx#stx-e _%specializer-id207588%_))
                  (_%generate-specializer-def205040%_
                   _%$%g205046205108%_
                   _%specializer-id207588%_
                   _%specializer-impl207861%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$%hd207294207356%_
                                                  _%$%hd207291207348%_
                                                  _%$%hd207288207340%_)
                                                 (_%$%g207270207300%_
                                                  _%$%g207271207303%_))))
                                         (_%$%g207270207300%_
                                          _%$%g207271207303%_))
                                     (_%$%g207270207300%_ _%$%g207271207303%_))
                                 (_%$%g207270207300%_ _%$%g207271207303%_))))
                         (_%$%g207270207300%_ _%$%g207271207303%_))
                     (_%$%g207270207300%_ _%$%g207271207303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g207270207300%_
                                                      _%$%g207271207303%_))))
                                             (_%$%g207270207300%_
                                              _%$%g207271207303%_))))
                                     (_%$%g207270207300%_
                                      _%$%g207271207303%_))))
                             (_%$%g207270207300%_ _%$%g207271207303%_))))
                     (_%$%g207270207300%_ _%$%g207271207303%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g207269207864%_
                                                  _%$%g206657206825%_))
                                               _%stx205035%_))))
                                   _%$%hd206923207046%_
                                   _%$%kw-ref206921207066%_
                                   _%$%hd206911207033%_
                                   _%$%hd206902207009%_
                                   _%$%hd206893206985%_)
                                  (_%$%g206867206929%_
                                   _%$%g206868206932%_)))))))
              (_%$%loop206916207051%_ _%$%target206913207038%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g206867206929%_
                                                     _%$%g206868206932%_))))
                                            (_%$%g206867206929%_
                                             _%$%g206868206932%_)))))
                                  (_%$%g206867206929%_ _%$%g206868206932%_))
                              (_%$%g206867206929%_ _%$%g206868206932%_))
                          (_%$%g206867206929%_ _%$%g206868206932%_))))
                  (_%$%g206867206929%_ _%$%g206868206932%_))
              (_%$%g206867206929%_ _%$%g206868206932%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g206867206929%_
                                                   _%$%g206868206932%_))))
                                          (_%$%g206867206929%_
                                           _%$%g206868206932%_))))
                                  (_%$%g206867206929%_ _%$%g206868206932%_))
                              (_%$%g206867206929%_ _%$%g206868206932%_))))
                      (_%$%g206867206929%_ _%$%g206868206932%_))
                  (_%$%g206867206929%_ _%$%g206868206932%_))
              (_%$%g206867206929%_ _%$%g206868206932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g206867206929%_
                                               _%$%g206868206932%_))))
                                      (_%$%g206867206929%_
                                       _%$%g206868206932%_))
                                  (_%$%g206867206929%_ _%$%g206868206932%_))))
                          (_%$%g206867206929%_ _%$%g206868206932%_))
                      (_%$%g206867206929%_ _%$%g206868206932%_))
                  (_%$%g206867206929%_ _%$%g206868206932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g206867206929%_
                                                   _%$%g206868206932%_))))
                                          (_%$%g206867206929%_
                                           _%$%g206868206932%_))
                                      (_%$%g206867206929%_
                                       _%$%g206868206932%_))
                                  (_%$%g206867206929%_ _%$%g206868206932%_))))
                          (_%$%g206867206929%_ _%$%g206868206932%_))))
                  (_%$%g206867206929%_ _%$%g206868206932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g206867206929%_
                                                   _%$%g206868206932%_))
                                              (_%$%g206867206929%_
                                               _%$%g206868206932%_))
                                          (_%$%g206867206929%_
                                           _%$%g206868206932%_))))
                                  (_%$%g206867206929%_ _%$%g206868206932%_)))))
                      (_%$%g206866207868%_ _%$%g206656206824%_)))
                  _%$%hd206700206818%_
                  _%$%hd206697206810%_
                  _%$%hd206694206802%_
                  _%$%hd206691206794%_
                  _%$%hd206673206746%_)
                 (_%$%g206653206706%_ _%$%g206654206709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g206653206706%_
                                                  _%$%g206654206709%_))
                                             (_%$%g206653206706%_
                                              _%$%g206654206709%_))
                                         (_%$%g206653206706%_
                                          _%$%g206654206709%_))
                                     (_%$%g206653206706%_
                                      _%$%g206654206709%_))))
                             (_%$%g206653206706%_ _%$%g206654206709%_))
                         (_%$%g206653206706%_ _%$%g206654206709%_))
                     (_%$%g206653206706%_ _%$%g206654206709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g206653206706%_
                                                      _%$%g206654206709%_))
                                                 (_%$%g206653206706%_
                                                  _%$%g206654206709%_))))
                                         (_%$%g206653206706%_
                                          _%$%g206654206709%_))))
                                 (_%$%g206653206706%_ _%$%g206654206709%_))))
                         (_%$%g206653206706%_ _%$%g206654206709%_))))
                 (_%$%g206653206706%_ _%$%g206654206709%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g206653206706%_
                                                      _%$%g206654206709%_))
                                                 (_%$%g206653206706%_
                                                  _%$%g206654206709%_))))
                                         (_%$%g206653206706%_
                                          _%$%g206654206709%_))))
                                 (_%$%g206653206706%_ _%$%g206654206709%_))
                             (_%$%g206653206706%_ _%$%g206654206709%_))))
                     (_%$%g206653206706%_ _%$%g206654206709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g206653206706%_
                                                      _%$%g206654206709%_))))
                                             (_%$%g206653206706%_
                                              _%$%g206654206709%_))))
                                     (_%$%g206653206706%_ _%$%g206654206709%_))
                                 (_%$%g206653206706%_ _%$%g206654206709%_))
                             (_%$%g206653206706%_ _%$%g206654206709%_))))
                     (_%$%g206653206706%_ _%$%g206654206709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g206652207871%_
                                                  _%$%g205045205107%_))
                                               _%stx205035%_))))))
                           (_%$%g205042205070%_ _%$%g205044205073%_)))
                     _%$%hd205057205102%_
                     _%$%hd205054205094%_)
                    (_%$%g205042205070%_ _%$%g205044205073%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g205042205070%_
                                                     _%$%g205044205073%_))
                                                (_%$%g205042205070%_
                                                 _%$%g205044205073%_))))
                                        (_%$%g205042205070%_
                                         _%$%g205044205073%_))))
                                (_%$%g205042205070%_ _%$%g205044205073%_))))
                        (_%$%g205042205070%_ _%$%g205044205073%_)))))
            (_%$%g205041207876%_ _%stx205035%_)))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self204887%_ _%stx204888%_)
        (let* ((_%$%g204891204924%_
                (lambda (_%$%g204892204921%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g204892204921%_)))
               (_%$%g204890204969%_
                (lambda (_%$%g204892204927%_)
                  (if (gx#stx-pair? _%$%g204892204927%_)
                      (let ((_%$%e204911204929%_
                             (gx#stx-e _%$%g204892204927%_)))
                        (let ((_%$%hd204912204932%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204911204929%_)))
                              (_%$%tl204913204934%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204911204929%_))))
                          (if (gx#stx-pair? _%$%tl204913204934%_)
                              (let ((_%$%e204914204937%_
                                     (gx#stx-e _%$%tl204913204934%_)))
                                (let ((_%$%hd204915204940%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204914204937%_)))
                                      (_%$%tl204916204942%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204914204937%_))))
                                  (if (gx#stx-pair? _%$%tl204916204942%_)
                                      (let ((_%$%e204917204945%_
                                             (gx#stx-e _%$%tl204916204942%_)))
                                        (let ((_%$%hd204918204948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204917204945%_)))
                                              (_%$%tl204919204950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204917204945%_))))
                                          (if (gx#stx-null?
                                               _%$%tl204919204950%_)
                                              ((lambda (_%$%g204909204953%_
                                                        _%$%g204910204954%_)
                                                 (gxc#compile-e
                                                  _%self204887%_
                                                  _%$%g204909204953%_))
                                               _%$%hd204918204948%_
                                               _%$%hd204915204940%_)
                                              (_%$%g204891204924%_
                                               _%$%g204892204927%_))))
                                      (_%$%g204891204924%_
                                       _%$%g204892204927%_))))
                              (_%$%g204891204924%_ _%$%g204892204927%_))))
                      (_%$%g204891204924%_ _%$%g204892204927%_))))
               (_%$%g204889205031%_
                (lambda (_%$%g204892204972%_)
                  (if (gx#stx-pair? _%$%g204892204972%_)
                      (let ((_%$%e204894204974%_
                             (gx#stx-e _%$%g204892204972%_)))
                        (let ((_%$%hd204895204977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204894204974%_)))
                              (_%$%tl204896204979%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204894204974%_))))
                          (if (gx#stx-pair? _%$%tl204896204979%_)
                              (let ((_%$%e204897204982%_
                                     (gx#stx-e _%$%tl204896204979%_)))
                                (let ((_%$%hd204898204985%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204897204982%_)))
                                      (_%$%tl204899204987%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204897204982%_))))
                                  (if (gx#stx-pair? _%$%hd204898204985%_)
                                      (let ((_%$%e204900204990%_
                                             (gx#stx-e _%$%hd204898204985%_)))
                                        (let ((_%$%hd204901204993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204900204990%_)))
                                              (_%$%tl204902204995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204900204990%_))))
                                          (if (gx#identifier?
                                               _%$%hd204901204993%_)
                                              (if (gx#stx-eq?
                                                   '@receiver
                                                   _%$%hd204901204993%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl204902204995%_)
                                                      (let ((_%$%e204903204998%_
                                                             (gx#stx-e
                                                              _%$%tl204902204995%_)))
                                                        (let ((_%$%hd204904205001%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e204903204998%_)))
                      (_%$%tl204905205003%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e204903204998%_))))
                  (if (gx#stx-null? _%$%tl204905205003%_)
                      (if (gx#stx-pair? _%$%tl204899204987%_)
                          (let ((_%$%e204906205006%_
                                 (gx#stx-e _%$%tl204899204987%_)))
                            (let ((_%$%hd204907205009%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e204906205006%_)))
                                  (_%$%tl204908205011%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e204906205006%_))))
                              (if (gx#stx-null? _%$%tl204908205011%_)
                                  ((lambda (_%$%g204893205014%_)
                                     _%$%g204893205014%_)
                                   _%$%hd204904205001%_)
                                  (_%$%g204890204969%_ _%$%g204892204972%_))))
                          (_%$%g204890204969%_ _%$%g204892204972%_))
                      (_%$%g204890204969%_ _%$%g204892204972%_))))
              (_%$%g204890204969%_ _%$%g204892204972%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g204890204969%_
                                                   _%$%g204892204972%_))
                                              (_%$%g204890204969%_
                                               _%$%g204892204972%_))))
                                      (_%$%g204890204969%_
                                       _%$%g204892204972%_))))
                              (_%$%g204890204969%_ _%$%g204892204972%_))))
                      (_%$%g204890204969%_ _%$%g204892204972%_)))))
          (_%$%g204889205031%_ _%stx204888%_))))
    (define gxc#extract-receiver-if%
      (lambda (_%self204803%_ _%stx204804%_)
        (let* ((_%$%g204806204827%_
                (lambda (_%$%g204807204824%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g204807204824%_)))
               (_%$%g204805204884%_
                (lambda (_%$%g204807204830%_)
                  (if (gx#stx-pair? _%$%g204807204830%_)
                      (let ((_%$%e204811204832%_
                             (gx#stx-e _%$%g204807204830%_)))
                        (let ((_%$%hd204812204835%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204811204832%_)))
                              (_%$%tl204813204837%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204811204832%_))))
                          (if (gx#stx-pair? _%$%tl204813204837%_)
                              (let ((_%$%e204814204840%_
                                     (gx#stx-e _%$%tl204813204837%_)))
                                (let ((_%$%hd204815204843%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204814204840%_)))
                                      (_%$%tl204816204845%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204814204840%_))))
                                  (if (gx#stx-pair? _%$%tl204816204845%_)
                                      (let ((_%$%e204817204848%_
                                             (gx#stx-e _%$%tl204816204845%_)))
                                        (let ((_%$%hd204818204851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204817204848%_)))
                                              (_%$%tl204819204853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204817204848%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl204819204853%_)
                                              (let ((_%$%e204820204856%_
                                                     (gx#stx-e
                                                      _%$%tl204819204853%_)))
                                                (let ((_%$%hd204821204859%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204820204856%_)))
                                                      (_%$%tl204822204861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204820204856%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl204822204861%_)
                                                      ((lambda (_%$%g204808204864%_
                                                                _%$%g204809204865%_
                                                                _%$%g204810204866%_)
                                                         (gxc#compile-e
                                                          _%self204803%_
                                                          _%$%g204809204865%_))
                                                       _%$%hd204821204859%_
                                                       _%$%hd204818204851%_
                                                       _%$%hd204815204843%_)
                                                      (_%$%g204806204827%_
                                                       _%$%g204807204830%_))))
                                              (_%$%g204806204827%_
                                               _%$%g204807204830%_))))
                                      (_%$%g204806204827%_
                                       _%$%g204807204830%_))))
                              (_%$%g204806204827%_ _%$%g204807204830%_))))
                      (_%$%g204806204827%_ _%$%g204807204830%_)))))
          (_%$%g204805204884%_ _%stx204804%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self203768%_ _%stx203769%_)
        (let* ((_%$%g203777203999%_
                (lambda (_%$%g203778203996%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g203778203996%_)))
               (_%$%g203776204006%_
                (lambda (_%$%g203778204002%_)
                  ((lambda ()
                     (gxc#apply-operands _%self203768%_ _%stx203769%_)))))
               (_%$%g203775204114%_
                (lambda (_%$%g203778204009%_)
                  (if (gx#stx-pair? _%$%g203778204009%_)
                      (let ((_%$%e203971204011%_
                             (gx#stx-e _%$%g203778204009%_)))
                        (let ((_%$%hd203972204014%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203971204011%_)))
                              (_%$%tl203973204016%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203971204011%_))))
                          (if (gx#stx-pair? _%$%tl203973204016%_)
                              (let ((_%$%e203974204019%_
                                     (gx#stx-e _%$%tl203973204016%_)))
                                (let ((_%$%hd203975204022%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203974204019%_)))
                                      (_%$%tl203976204024%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203974204019%_))))
                                  (if (gx#stx-pair? _%$%hd203975204022%_)
                                      (let ((_%$%e203977204027%_
                                             (gx#stx-e _%$%hd203975204022%_)))
                                        (let ((_%$%hd203978204030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203977204027%_)))
                                              (_%$%tl203979204032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203977204027%_))))
                                          (if (gx#identifier?
                                               _%$%hd203978204030%_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd203978204030%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl203979204032%_)
                                                      (let ((_%$%e203980204035%_
                                                             (gx#stx-e
                                                              _%$%tl203979204032%_)))
                                                        (let ((_%$%hd203981204038%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e203980204035%_)))
                      (_%$%tl203982204040%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e203980204035%_))))
                  (if (gx#stx-null? _%$%tl203982204040%_)
                      (if (gx#stx-pair? _%$%tl203976204024%_)
                          (let ((_%$%e203983204043%_
                                 (gx#stx-e _%$%tl203976204024%_)))
                            (let ((_%$%hd203984204046%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e203983204043%_)))
                                  (_%$%tl203985204048%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e203983204043%_))))
                              (if (gx#stx-pair? _%$%hd203984204046%_)
                                  (let ((_%$%e203986204051%_
                                         (gx#stx-e _%$%hd203984204046%_)))
                                    (let ((_%$%hd203987204054%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e203986204051%_)))
                                          (_%$%tl203988204056%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e203986204051%_))))
                                      (if (gx#identifier? _%$%hd203987204054%_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _%$%hd203987204054%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl203988204056%_)
                                                  (let ((_%$%e203989204059%_
                                                         (gx#stx-e
                                                          _%$%tl203988204056%_)))
                                                    (let ((_%$%hd203990204062%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e203989204059%_)))
                                                          (_%$%tl203991204064%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e203989204059%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl203991204064%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl203985204048%_)
                                                              (let ((_%$%e203992204067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl203985204048%_)))
                        (let ((_%$%hd203993204070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203992204067%_)))
                              (_%$%tl203994204072%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203992204067%_))))
                          (if (gx#stx-null? _%$%tl203994204072%_)
                              ((lambda (_%$%g203968204075%_
                                        _%$%g203969204076%_
                                        _%$%g203970204077%_)
                                 (if (and (gxc#!mutator?
                                           (gxc#optimizer-resolve-type
                                            (gxc#identifier-symbol
                                             _%$%g203970204077%_)))
                                          (gx#free-identifier=?
                                           _%$%g203969204076%_
                                           (slot-ref
                                            _%self203768%_
                                            'receiver)))
                                     (let* ((_%mutator204104%_
                                             (gxc#optimizer-resolve-type
                                              (gxc#identifier-symbol
                                               _%$%g203970204077%_)))
                                            (_%klass204106%_
                                             (gxc#optimizer-resolve-class
                                              _%stx203769%_
                                              (gxc#!type-id
                                               _%mutator204104%_)))
                                            (_%slot204108%_
                                             (gxc#!mutator-slot
                                              _%mutator204104%_)))
                                       (if (and (not (gxc#!mutator-checked?
                                                      _%mutator204104%_))
                                                (or (gxc#!class-struct-slot?
                                                     _%klass204106%_
                                                     _%slot204108%_)
                                                    (gxc#!class-final?
                                                     _%klass204106%_)))
                                           '#!void
                                           (hash-put!
                                            (slot-ref _%self203768%_ 'slots)
                                            _%slot204108%_
                                            '#t))
                                       (gxc#compile-e
                                        _%self203768%_
                                        _%$%g203968204075%_))
                                     (_%$%g203776204006%_
                                      _%$%g203778204009%_)))
                               _%$%hd203993204070%_
                               _%$%hd203990204062%_
                               _%$%hd203981204038%_)
                              (_%$%g203776204006%_ _%$%g203778204009%_))))
                      (_%$%g203776204006%_ _%$%g203778204009%_))
                  (_%$%g203776204006%_ _%$%g203778204009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g203776204006%_
                                                   _%$%g203778204009%_))
                                              (_%$%g203776204006%_
                                               _%$%g203778204009%_))
                                          (_%$%g203776204006%_
                                           _%$%g203778204009%_))))
                                  (_%$%g203776204006%_ _%$%g203778204009%_))))
                          (_%$%g203776204006%_ _%$%g203778204009%_))
                      (_%$%g203776204006%_ _%$%g203778204009%_))))
              (_%$%g203776204006%_ _%$%g203778204009%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g203776204006%_
                                                   _%$%g203778204009%_))
                                              (_%$%g203776204006%_
                                               _%$%g203778204009%_))))
                                      (_%$%g203776204006%_
                                       _%$%g203778204009%_))))
                              (_%$%g203776204006%_ _%$%g203778204009%_))))
                      (_%$%g203776204006%_ _%$%g203778204009%_))))
               (_%$%g203774204208%_
                (lambda (_%$%g203778204117%_)
                  (if (gx#stx-pair? _%$%g203778204117%_)
                      (let ((_%$%e203947204119%_
                             (gx#stx-e _%$%g203778204117%_)))
                        (let ((_%$%hd203948204122%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203947204119%_)))
                              (_%$%tl203949204124%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203947204119%_))))
                          (if (gx#stx-pair? _%$%tl203949204124%_)
                              (let ((_%$%e203950204127%_
                                     (gx#stx-e _%$%tl203949204124%_)))
                                (let ((_%$%hd203951204130%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203950204127%_)))
                                      (_%$%tl203952204132%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203950204127%_))))
                                  (if (gx#stx-pair? _%$%hd203951204130%_)
                                      (let ((_%$%e203953204135%_
                                             (gx#stx-e _%$%hd203951204130%_)))
                                        (let ((_%$%hd203954204138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203953204135%_)))
                                              (_%$%tl203955204140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203953204135%_))))
                                          (if (gx#identifier?
                                               _%$%hd203954204138%_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd203954204138%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl203955204140%_)
                                                      (let ((_%$%e203956204143%_
                                                             (gx#stx-e
                                                              _%$%tl203955204140%_)))
                                                        (let ((_%$%hd203957204146%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e203956204143%_)))
                      (_%$%tl203958204148%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e203956204143%_))))
                  (if (gx#stx-null? _%$%tl203958204148%_)
                      (if (gx#stx-pair? _%$%tl203952204132%_)
                          (let ((_%$%e203959204151%_
                                 (gx#stx-e _%$%tl203952204132%_)))
                            (let ((_%$%hd203960204154%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e203959204151%_)))
                                  (_%$%tl203961204156%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e203959204151%_))))
                              (if (gx#stx-pair? _%$%hd203960204154%_)
                                  (let ((_%$%e203962204159%_
                                         (gx#stx-e _%$%hd203960204154%_)))
                                    (let ((_%$%hd203963204162%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e203962204159%_)))
                                          (_%$%tl203964204164%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e203962204159%_))))
                                      (if (gx#identifier? _%$%hd203963204162%_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _%$%hd203963204162%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl203964204164%_)
                                                  (let ((_%$%e203965204167%_
                                                         (gx#stx-e
                                                          _%$%tl203964204164%_)))
                                                    (let ((_%$%hd203966204170%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e203965204167%_)))
                                                          (_%$%tl203967204172%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e203965204167%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl203967204172%_)
                                                          (if (gx#stx-null?
                                                               _%$%tl203961204156%_)
                                                              ((lambda (_%$%g203945204175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g203946204176%_)
                         (if (and (gxc#!accessor?
                                   (gxc#optimizer-resolve-type
                                    (gxc#identifier-symbol
                                     _%$%g203946204176%_)))
                                  (gx#free-identifier=?
                                   _%$%g203945204175%_
                                   (slot-ref _%self203768%_ 'receiver)))
                             (let* ((_%accessor204198%_
                                     (gxc#optimizer-resolve-type
                                      (gxc#identifier-symbol
                                       _%$%g203946204176%_)))
                                    (_%klass204200%_
                                     (gxc#optimizer-resolve-class
                                      _%stx203769%_
                                      (gxc#!type-id _%accessor204198%_)))
                                    (_%slot204202%_
                                     (gxc#!accessor-slot _%accessor204198%_)))
                               (if (and (not (gxc#!accessor-checked?
                                              _%accessor204198%_))
                                        (or (gxc#!class-struct-slot?
                                             _%klass204200%_
                                             _%slot204202%_)
                                            (gxc#!class-final?
                                             _%klass204200%_)))
                                   '#!void
                                   (hash-put!
                                    (slot-ref _%self203768%_ 'slots)
                                    (gxc#!accessor-slot _%accessor204198%_)
                                    '#t)))
                             (_%$%g203775204114%_ _%$%g203778204117%_)))
                       _%$%hd203966204170%_
                       _%$%hd203957204146%_)
                      (_%$%g203775204114%_ _%$%g203778204117%_))
                  (_%$%g203775204114%_ _%$%g203778204117%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g203775204114%_
                                                   _%$%g203778204117%_))
                                              (_%$%g203775204114%_
                                               _%$%g203778204117%_))
                                          (_%$%g203775204114%_
                                           _%$%g203778204117%_))))
                                  (_%$%g203775204114%_ _%$%g203778204117%_))))
                          (_%$%g203775204114%_ _%$%g203778204117%_))
                      (_%$%g203775204114%_ _%$%g203778204117%_))))
              (_%$%g203775204114%_ _%$%g203778204117%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g203775204114%_
                                                   _%$%g203778204117%_))
                                              (_%$%g203775204114%_
                                               _%$%g203778204117%_))))
                                      (_%$%g203775204114%_
                                       _%$%g203778204117%_))))
                              (_%$%g203775204114%_ _%$%g203778204117%_))))
                      (_%$%g203775204114%_ _%$%g203778204117%_))))
               (_%$%g203773204339%_
                (lambda (_%$%g203778204211%_)
                  (if (gx#stx-pair? _%$%g203778204211%_)
                      (let ((_%$%e203912204213%_
                             (gx#stx-e _%$%g203778204211%_)))
                        (let ((_%$%hd203913204216%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203912204213%_)))
                              (_%$%tl203914204218%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203912204213%_))))
                          (if (gx#stx-pair? _%$%tl203914204218%_)
                              (let ((_%$%e203915204221%_
                                     (gx#stx-e _%$%tl203914204218%_)))
                                (let ((_%$%hd203916204224%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203915204221%_)))
                                      (_%$%tl203917204226%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203915204221%_))))
                                  (if (gx#stx-pair? _%$%hd203916204224%_)
                                      (let ((_%$%e203918204229%_
                                             (gx#stx-e _%$%hd203916204224%_)))
                                        (let ((_%$%hd203919204232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203918204229%_)))
                                              (_%$%tl203920204234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203918204229%_))))
                                          (if (gx#identifier?
                                               _%$%hd203919204232%_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd203919204232%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl203920204234%_)
                                                      (let ((_%$%e203921204237%_
                                                             (gx#stx-e
                                                              _%$%tl203920204234%_)))
                                                        (let ((_%$%hd203922204240%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e203921204237%_)))
                      (_%$%tl203923204242%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e203921204237%_))))
                  (if (gx#stx-null? _%$%tl203923204242%_)
                      (if (gx#stx-pair? _%$%tl203917204226%_)
                          (let ((_%$%e203924204245%_
                                 (gx#stx-e _%$%tl203917204226%_)))
                            (let ((_%$%hd203925204248%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e203924204245%_)))
                                  (_%$%tl203926204250%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e203924204245%_))))
                              (if (gx#stx-pair? _%$%hd203925204248%_)
                                  (let ((_%$%e203927204253%_
                                         (gx#stx-e _%$%hd203925204248%_)))
                                    (let ((_%$%hd203928204256%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e203927204253%_)))
                                          (_%$%tl203929204258%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e203927204253%_))))
                                      (if (gx#identifier? _%$%hd203928204256%_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _%$%hd203928204256%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl203929204258%_)
                                                  (let ((_%$%e203930204261%_
                                                         (gx#stx-e
                                                          _%$%tl203929204258%_)))
                                                    (let ((_%$%hd203931204264%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e203930204261%_)))
                                                          (_%$%tl203932204266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e203930204261%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl203932204266%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl203926204250%_)
                                                              (let ((_%$%e203933204269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl203926204250%_)))
                        (let ((_%$%hd203934204272%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203933204269%_)))
                              (_%$%tl203935204274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203933204269%_))))
                          (if (gx#stx-pair? _%$%hd203934204272%_)
                              (let ((_%$%e203936204277%_
                                     (gx#stx-e _%$%hd203934204272%_)))
                                (let ((_%$%hd203937204280%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203936204277%_)))
                                      (_%$%tl203938204282%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203936204277%_))))
                                  (if (gx#identifier? _%$%hd203937204280%_)
                                      (if (gx#stx-eq?
                                           '%#quote
                                           _%$%hd203937204280%_)
                                          (if (gx#stx-pair?
                                               _%$%tl203938204282%_)
                                              (let ((_%$%e203939204285%_
                                                     (gx#stx-e
                                                      _%$%tl203938204282%_)))
                                                (let ((_%$%hd203940204288%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e203939204285%_)))
                                                      (_%$%tl203941204290%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e203939204285%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl203941204290%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl203935204274%_)
                                                          (let ((_%$%e203942204293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl203935204274%_)))
                    (let ((_%$%hd203943204296%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e203942204293%_)))
                          (_%$%tl203944204298%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e203942204293%_))))
                      (if (gx#stx-null? _%$%tl203944204298%_)
                          ((lambda (_%$%g203908204301%_
                                    _%$%g203909204302%_
                                    _%$%g203910204303%_
                                    _%$%g203911204304%_)
                             (if (and (or (gxc#runtime-identifier=?
                                           _%$%g203911204304%_
                                           'slot-set!)
                                          (gxc#runtime-identifier=?
                                           _%$%g203911204304%_
                                           'unchecked-slot-set!))
                                      (gx#free-identifier=?
                                       _%$%g203910204303%_
                                       (slot-ref _%self203768%_ 'receiver)))
                                 (begin
                                   (hash-put!
                                    (slot-ref _%self203768%_ 'slots)
                                    (gx#stx-e _%$%g203909204302%_)
                                    '#t)
                                   (gxc#compile-e
                                    _%self203768%_
                                    _%$%g203908204301%_))
                                 (_%$%g203774204208%_ _%$%g203778204211%_)))
                           _%$%hd203943204296%_
                           _%$%hd203940204288%_
                           _%$%hd203931204264%_
                           _%$%hd203922204240%_)
                          (_%$%g203774204208%_ _%$%g203778204211%_))))
                  (_%$%g203774204208%_ _%$%g203778204211%_))
              (_%$%g203774204208%_ _%$%g203778204211%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g203774204208%_
                                               _%$%g203778204211%_))
                                          (_%$%g203774204208%_
                                           _%$%g203778204211%_))
                                      (_%$%g203774204208%_
                                       _%$%g203778204211%_))))
                              (_%$%g203774204208%_ _%$%g203778204211%_))))
                      (_%$%g203774204208%_ _%$%g203778204211%_))
                  (_%$%g203774204208%_ _%$%g203778204211%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g203774204208%_
                                                   _%$%g203778204211%_))
                                              (_%$%g203774204208%_
                                               _%$%g203778204211%_))
                                          (_%$%g203774204208%_
                                           _%$%g203778204211%_))))
                                  (_%$%g203774204208%_ _%$%g203778204211%_))))
                          (_%$%g203774204208%_ _%$%g203778204211%_))
                      (_%$%g203774204208%_ _%$%g203778204211%_))))
              (_%$%g203774204208%_ _%$%g203778204211%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g203774204208%_
                                                   _%$%g203778204211%_))
                                              (_%$%g203774204208%_
                                               _%$%g203778204211%_))))
                                      (_%$%g203774204208%_
                                       _%$%g203778204211%_))))
                              (_%$%g203774204208%_ _%$%g203778204211%_))))
                      (_%$%g203774204208%_ _%$%g203778204211%_))))
               (_%$%g203772204458%_
                (lambda (_%$%g203778204342%_)
                  (if (gx#stx-pair? _%$%g203778204342%_)
                      (let ((_%$%e203878204344%_
                             (gx#stx-e _%$%g203778204342%_)))
                        (let ((_%$%hd203879204347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203878204344%_)))
                              (_%$%tl203880204349%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203878204344%_))))
                          (if (gx#stx-pair? _%$%tl203880204349%_)
                              (let ((_%$%e203881204352%_
                                     (gx#stx-e _%$%tl203880204349%_)))
                                (let ((_%$%hd203882204355%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203881204352%_)))
                                      (_%$%tl203883204357%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203881204352%_))))
                                  (if (gx#stx-pair? _%$%hd203882204355%_)
                                      (let ((_%$%e203884204360%_
                                             (gx#stx-e _%$%hd203882204355%_)))
                                        (let ((_%$%hd203885204363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203884204360%_)))
                                              (_%$%tl203886204365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203884204360%_))))
                                          (if (gx#identifier?
                                               _%$%hd203885204363%_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd203885204363%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl203886204365%_)
                                                      (let ((_%$%e203887204368%_
                                                             (gx#stx-e
                                                              _%$%tl203886204365%_)))
                                                        (let ((_%$%hd203888204371%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e203887204368%_)))
                      (_%$%tl203889204373%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e203887204368%_))))
                  (if (gx#stx-null? _%$%tl203889204373%_)
                      (if (gx#stx-pair? _%$%tl203883204357%_)
                          (let ((_%$%e203890204376%_
                                 (gx#stx-e _%$%tl203883204357%_)))
                            (let ((_%$%hd203891204379%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e203890204376%_)))
                                  (_%$%tl203892204381%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e203890204376%_))))
                              (if (gx#stx-pair? _%$%hd203891204379%_)
                                  (let ((_%$%e203893204384%_
                                         (gx#stx-e _%$%hd203891204379%_)))
                                    (let ((_%$%hd203894204387%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e203893204384%_)))
                                          (_%$%tl203895204389%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e203893204384%_))))
                                      (if (gx#identifier? _%$%hd203894204387%_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _%$%hd203894204387%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl203895204389%_)
                                                  (let ((_%$%e203896204392%_
                                                         (gx#stx-e
                                                          _%$%tl203895204389%_)))
                                                    (let ((_%$%hd203897204395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e203896204392%_)))
                                                          (_%$%tl203898204397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e203896204392%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl203898204397%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl203892204381%_)
                                                              (let ((_%$%e203899204400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl203892204381%_)))
                        (let ((_%$%hd203900204403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203899204400%_)))
                              (_%$%tl203901204405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203899204400%_))))
                          (if (gx#stx-pair? _%$%hd203900204403%_)
                              (let ((_%$%e203902204408%_
                                     (gx#stx-e _%$%hd203900204403%_)))
                                (let ((_%$%hd203903204411%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203902204408%_)))
                                      (_%$%tl203904204413%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203902204408%_))))
                                  (if (gx#identifier? _%$%hd203903204411%_)
                                      (if (gx#stx-eq?
                                           '%#quote
                                           _%$%hd203903204411%_)
                                          (if (gx#stx-pair?
                                               _%$%tl203904204413%_)
                                              (let ((_%$%e203905204416%_
                                                     (gx#stx-e
                                                      _%$%tl203904204413%_)))
                                                (let ((_%$%hd203906204419%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e203905204416%_)))
                                                      (_%$%tl203907204421%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e203905204416%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl203907204421%_)
                                                      (if (gx#stx-null?
                                                           _%$%tl203901204405%_)
                                                          ((lambda (_%$%g203875204424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g203876204425%_
                            _%$%g203877204426%_)
                     (if (and (or (gxc#runtime-identifier=?
                                   _%$%g203877204426%_
                                   'slot-ref)
                                  (gxc#runtime-identifier=?
                                   _%$%g203877204426%_
                                   'unchecked-slot-ref))
                              (gx#free-identifier=?
                               _%$%g203876204425%_
                               (slot-ref _%self203768%_ 'receiver)))
                         (hash-put!
                          (slot-ref _%self203768%_ 'slots)
                          (gx#stx-e _%$%g203875204424%_)
                          '#t)
                         (_%$%g203773204339%_ _%$%g203778204342%_)))
                   _%$%hd203906204419%_
                   _%$%hd203897204395%_
                   _%$%hd203888204371%_)
                  (_%$%g203773204339%_ _%$%g203778204342%_))
              (_%$%g203773204339%_ _%$%g203778204342%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g203773204339%_
                                               _%$%g203778204342%_))
                                          (_%$%g203773204339%_
                                           _%$%g203778204342%_))
                                      (_%$%g203773204339%_
                                       _%$%g203778204342%_))))
                              (_%$%g203773204339%_ _%$%g203778204342%_))))
                      (_%$%g203773204339%_ _%$%g203778204342%_))
                  (_%$%g203773204339%_ _%$%g203778204342%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g203773204339%_
                                                   _%$%g203778204342%_))
                                              (_%$%g203773204339%_
                                               _%$%g203778204342%_))
                                          (_%$%g203773204339%_
                                           _%$%g203778204342%_))))
                                  (_%$%g203773204339%_ _%$%g203778204342%_))))
                          (_%$%g203773204339%_ _%$%g203778204342%_))
                      (_%$%g203773204339%_ _%$%g203778204342%_))))
              (_%$%g203773204339%_ _%$%g203778204342%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g203773204339%_
                                                   _%$%g203778204342%_))
                                              (_%$%g203773204339%_
                                               _%$%g203778204342%_))))
                                      (_%$%g203773204339%_
                                       _%$%g203778204342%_))))
                              (_%$%g203773204339%_ _%$%g203778204342%_))))
                      (_%$%g203773204339%_ _%$%g203778204342%_))))
               (_%$%g203771204645%_
                (lambda (_%$%g203778204461%_)
                  (if (gx#stx-pair? _%$%g203778204461%_)
                      (let ((_%$%e203827204463%_
                             (gx#stx-e _%$%g203778204461%_)))
                        (let ((_%$%hd203828204466%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203827204463%_)))
                              (_%$%tl203829204468%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203827204463%_))))
                          (if (gx#stx-pair? _%$%tl203829204468%_)
                              (let ((_%$%e203830204471%_
                                     (gx#stx-e _%$%tl203829204468%_)))
                                (let ((_%$%hd203831204474%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203830204471%_)))
                                      (_%$%tl203832204476%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203830204471%_))))
                                  (if (gx#stx-pair? _%$%hd203831204474%_)
                                      (let ((_%$%e203833204479%_
                                             (gx#stx-e _%$%hd203831204474%_)))
                                        (let ((_%$%hd203834204482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203833204479%_)))
                                              (_%$%tl203835204484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203833204479%_))))
                                          (if (gx#identifier?
                                               _%$%hd203834204482%_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd203834204482%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl203835204484%_)
                                                      (let ((_%$%e203836204487%_
                                                             (gx#stx-e
                                                              _%$%tl203835204484%_)))
                                                        (let ((_%$%hd203837204490%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e203836204487%_)))
                      (_%$%tl203838204492%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e203836204487%_))))
                  (if (gx#stx-null? _%$%tl203838204492%_)
                      (if (gx#stx-pair? _%$%tl203832204476%_)
                          (let ((_%$%e203839204495%_
                                 (gx#stx-e _%$%tl203832204476%_)))
                            (let ((_%$%hd203840204498%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e203839204495%_)))
                                  (_%$%tl203841204500%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e203839204495%_))))
                              (if (gx#stx-pair? _%$%hd203840204498%_)
                                  (let ((_%$%e203842204503%_
                                         (gx#stx-e _%$%hd203840204498%_)))
                                    (let ((_%$%hd203843204506%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e203842204503%_)))
                                          (_%$%tl203844204508%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e203842204503%_))))
                                      (if (gx#identifier? _%$%hd203843204506%_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _%$%hd203843204506%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl203844204508%_)
                                                  (let ((_%$%e203845204511%_
                                                         (gx#stx-e
                                                          _%$%tl203844204508%_)))
                                                    (let ((_%$%hd203846204514%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e203845204511%_)))
                                                          (_%$%tl203847204516%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e203845204511%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl203847204516%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl203841204500%_)
                                                              (let ((_%$%e203848204519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl203841204500%_)))
                        (let ((_%$%hd203849204522%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203848204519%_)))
                              (_%$%tl203850204524%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203848204519%_))))
                          (if (gx#stx-pair? _%$%hd203849204522%_)
                              (let ((_%$%e203851204527%_
                                     (gx#stx-e _%$%hd203849204522%_)))
                                (let ((_%$%hd203852204530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203851204527%_)))
                                      (_%$%tl203853204532%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203851204527%_))))
                                  (if (gx#identifier? _%$%hd203852204530%_)
                                      (if (gx#stx-eq?
                                           '%#ref
                                           _%$%hd203852204530%_)
                                          (if (gx#stx-pair?
                                               _%$%tl203853204532%_)
                                              (let ((_%$%e203854204535%_
                                                     (gx#stx-e
                                                      _%$%tl203853204532%_)))
                                                (let ((_%$%hd203855204538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e203854204535%_)))
                                                      (_%$%tl203856204540%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e203854204535%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl203856204540%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl203850204524%_)
                                                          (let ((_%$%e203857204543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl203850204524%_)))
                    (let ((_%$%hd203858204546%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e203857204543%_)))
                          (_%$%tl203859204548%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e203857204543%_))))
                      (if (gx#stx-pair? _%$%hd203858204546%_)
                          (let ((_%$%e203860204551%_
                                 (gx#stx-e _%$%hd203858204546%_)))
                            (let ((_%$%hd203861204554%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e203860204551%_)))
                                  (_%$%tl203862204556%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e203860204551%_))))
                              (if (gx#identifier? _%$%hd203861204554%_)
                                  (if (gx#stx-eq?
                                       '%#quote
                                       _%$%hd203861204554%_)
                                      (if (gx#stx-pair? _%$%tl203862204556%_)
                                          (let ((_%$%e203863204559%_
                                                 (gx#stx-e
                                                  _%$%tl203862204556%_)))
                                            (let ((_%$%hd203864204562%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e203863204559%_)))
                                                  (_%$%tl203865204564%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e203863204559%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl203865204564%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl203859204548%_)
                                                      (let ((_g208019_
                                                             (gx#syntax-split-splice
                                                              _%$%tl203859204548%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g208020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g208019_)
                               (##values-length _g208019_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g208020_ 2)))
                        (error "Context expects 2 values" _g208020_)))
                  (let ((_%$%target203866204567%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g208019_ 0)))
                        (_%$%tl203868204569%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g208019_ 1))))
                    (if (gx#stx-null? _%$%tl203868204569%_)
                        (letrec ((_%$%loop203869204572%_
                                  (lambda (_%$%hd203867204575%_
                                           _%$%args203873204577%_)
                                    (if (gx#stx-pair? _%$%hd203867204575%_)
                                        (let ((_%$%e203870204579%_
                                               (gx#stx-e
                                                _%$%hd203867204575%_)))
                                          (let ((_%$%lp-hd203871204582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e203870204579%_)))
                                                (_%$%lp-tl203872204584%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e203870204579%_))))
                                            (_%$%loop203869204572%_
                                             _%$%lp-tl203872204584%_
                                             (cons _%$%lp-hd203871204582%_
                                                   _%$%args203873204577%_))))
                                        (let ((_%$%args203874204587%_
                                               (reverse _%$%args203873204577%_)))
                                          ((lambda (_%$%g203822204589%_
                                                    _%$%g203823204590%_
                                                    _%$%g203824204591%_
                                                    _%$%g203825204592%_
                                                    _%$%g203826204593%_)
                                             (if (and (gxc#runtime-identifier=?
                                                       _%$%g203826204593%_
                                                       'apply)
                                                      (gxc#runtime-identifier=?
                                                       _%$%g203825204592%_
                                                       'call-method)
                                                      (gx#free-identifier=?
                                                       _%$%g203824204591%_
                                                       (slot-ref
                                                        _%self203768%_
                                                        'receiver)))
                                                 (begin
                                                   (hash-put!
                                                    (slot-ref
                                                     _%self203768%_
                                                     'methods)
                                                    (gx#stx-e
                                                     _%$%g203823204590%_)
                                                    '#t)
                                                   (for-each
                                                    (lambda (_%$%g204633204635%_)
                                                      (gxc#compile-e
                                                       _%self203768%_
                                                       _%$%g204633204635%_))
                                                    (foldr (lambda (_%$%g204637204640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g204638204642%_)
                     (cons _%$%g204637204640%_ _%$%g204638204642%_))
                   '()
                   _%$%g203822204589%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g203772204458%_
                                                  _%$%g203778204461%_)))
                                           _%$%args203874204587%_
                                           _%$%hd203864204562%_
                                           _%$%hd203855204538%_
                                           _%$%hd203846204514%_
                                           _%$%hd203837204490%_))))))
                          (_%$%loop203869204572%_
                           _%$%target203866204567%_
                           '()))
                        (_%$%g203772204458%_ _%$%g203778204461%_)))))
              (_%$%g203772204458%_ _%$%g203778204461%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g203772204458%_
                                                   _%$%g203778204461%_))))
                                          (_%$%g203772204458%_
                                           _%$%g203778204461%_))
                                      (_%$%g203772204458%_
                                       _%$%g203778204461%_))
                                  (_%$%g203772204458%_ _%$%g203778204461%_))))
                          (_%$%g203772204458%_ _%$%g203778204461%_))))
                  (_%$%g203772204458%_ _%$%g203778204461%_))
              (_%$%g203772204458%_ _%$%g203778204461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g203772204458%_
                                               _%$%g203778204461%_))
                                          (_%$%g203772204458%_
                                           _%$%g203778204461%_))
                                      (_%$%g203772204458%_
                                       _%$%g203778204461%_))))
                              (_%$%g203772204458%_ _%$%g203778204461%_))))
                      (_%$%g203772204458%_ _%$%g203778204461%_))
                  (_%$%g203772204458%_ _%$%g203778204461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g203772204458%_
                                                   _%$%g203778204461%_))
                                              (_%$%g203772204458%_
                                               _%$%g203778204461%_))
                                          (_%$%g203772204458%_
                                           _%$%g203778204461%_))))
                                  (_%$%g203772204458%_ _%$%g203778204461%_))))
                          (_%$%g203772204458%_ _%$%g203778204461%_))
                      (_%$%g203772204458%_ _%$%g203778204461%_))))
              (_%$%g203772204458%_ _%$%g203778204461%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g203772204458%_
                                                   _%$%g203778204461%_))
                                              (_%$%g203772204458%_
                                               _%$%g203778204461%_))))
                                      (_%$%g203772204458%_
                                       _%$%g203778204461%_))))
                              (_%$%g203772204458%_ _%$%g203778204461%_))))
                      (_%$%g203772204458%_ _%$%g203778204461%_))))
               (_%$%g203770204800%_
                (lambda (_%$%g203778204648%_)
                  (if (gx#stx-pair? _%$%g203778204648%_)
                      (let ((_%$%e203783204650%_
                             (gx#stx-e _%$%g203778204648%_)))
                        (let ((_%$%hd203784204653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203783204650%_)))
                              (_%$%tl203785204655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203783204650%_))))
                          (if (gx#stx-pair? _%$%tl203785204655%_)
                              (let ((_%$%e203786204658%_
                                     (gx#stx-e _%$%tl203785204655%_)))
                                (let ((_%$%hd203787204661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203786204658%_)))
                                      (_%$%tl203788204663%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203786204658%_))))
                                  (if (gx#stx-pair? _%$%hd203787204661%_)
                                      (let ((_%$%e203789204666%_
                                             (gx#stx-e _%$%hd203787204661%_)))
                                        (let ((_%$%hd203790204669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203789204666%_)))
                                              (_%$%tl203791204671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203789204666%_))))
                                          (if (gx#identifier?
                                               _%$%hd203790204669%_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd203790204669%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl203791204671%_)
                                                      (let ((_%$%e203792204674%_
                                                             (gx#stx-e
                                                              _%$%tl203791204671%_)))
                                                        (let ((_%$%hd203793204677%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e203792204674%_)))
                      (_%$%tl203794204679%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e203792204674%_))))
                  (if (gx#stx-null? _%$%tl203794204679%_)
                      (if (gx#stx-pair? _%$%tl203788204663%_)
                          (let ((_%$%e203795204682%_
                                 (gx#stx-e _%$%tl203788204663%_)))
                            (let ((_%$%hd203796204685%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e203795204682%_)))
                                  (_%$%tl203797204687%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e203795204682%_))))
                              (if (gx#stx-pair? _%$%hd203796204685%_)
                                  (let ((_%$%e203798204690%_
                                         (gx#stx-e _%$%hd203796204685%_)))
                                    (let ((_%$%hd203799204693%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e203798204690%_)))
                                          (_%$%tl203800204695%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e203798204690%_))))
                                      (if (gx#identifier? _%$%hd203799204693%_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _%$%hd203799204693%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl203800204695%_)
                                                  (let ((_%$%e203801204698%_
                                                         (gx#stx-e
                                                          _%$%tl203800204695%_)))
                                                    (let ((_%$%hd203802204701%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e203801204698%_)))
                                                          (_%$%tl203803204703%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e203801204698%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl203803204703%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl203797204687%_)
                                                              (let ((_%$%e203804204706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl203797204687%_)))
                        (let ((_%$%hd203805204709%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203804204706%_)))
                              (_%$%tl203806204711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203804204706%_))))
                          (if (gx#stx-pair? _%$%hd203805204709%_)
                              (let ((_%$%e203807204714%_
                                     (gx#stx-e _%$%hd203805204709%_)))
                                (let ((_%$%hd203808204717%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203807204714%_)))
                                      (_%$%tl203809204719%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203807204714%_))))
                                  (if (gx#identifier? _%$%hd203808204717%_)
                                      (if (gx#stx-eq?
                                           '%#quote
                                           _%$%hd203808204717%_)
                                          (if (gx#stx-pair?
                                               _%$%tl203809204719%_)
                                              (let ((_%$%e203810204722%_
                                                     (gx#stx-e
                                                      _%$%tl203809204719%_)))
                                                (let ((_%$%hd203811204725%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e203810204722%_)))
                                                      (_%$%tl203812204727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e203810204722%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl203812204727%_)
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl203806204711%_)
                                                          (let ((_g208021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%$%tl203806204711%_ '0)))
                    (begin
                      (let ((_g208022_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g208021_)
                                   (##values-length _g208021_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g208022_ 2)))
                            (error "Context expects 2 values" _g208022_)))
                      (let ((_%$%target203813204730%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g208021_ 0)))
                            (_%$%tl203815204732%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g208021_ 1))))
                        (if (gx#stx-null? _%$%tl203815204732%_)
                            (letrec ((_%$%loop203816204735%_
                                      (lambda (_%$%hd203814204738%_
                                               _%$%args203820204740%_)
                                        (if (gx#stx-pair? _%$%hd203814204738%_)
                                            (let ((_%$%e203817204742%_
                                                   (gx#stx-e
                                                    _%$%hd203814204738%_)))
                                              (let ((_%$%lp-hd203818204745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e203817204742%_)))
                                                    (_%$%lp-tl203819204747%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e203817204742%_))))
                                                (_%$%loop203816204735%_
                                                 _%$%lp-tl203819204747%_
                                                 (cons _%$%lp-hd203818204745%_
                                                       _%$%args203820204740%_))))
                                            (let ((_%$%args203821204750%_
                                                   (reverse _%$%args203820204740%_)))
                                              ((lambda (_%$%g203779204752%_
                                                        _%$%g203780204753%_
                                                        _%$%g203781204754%_
                                                        _%$%g203782204755%_)
                                                 (if (and (gxc#runtime-identifier=?
                                                           _%$%g203782204755%_
                                                           'call-method)
                                                          (gx#free-identifier=?
                                                           _%$%g203781204754%_
                                                           (slot-ref
                                                            _%self203768%_
                                                            'receiver)))
                                                     (begin
                                                       (hash-put!
                                                        (slot-ref
                                                         _%self203768%_
                                                         'methods)
                                                        (gx#stx-e
                                                         _%$%g203780204753%_)
                                                        '#t)
                                                       (for-each
                                                        (lambda (_%$%g204788204790%_)
                                                          (gxc#compile-e
                                                           _%self203768%_
                                                           _%$%g204788204790%_))
                                                        (foldr (lambda (_%$%g204792204795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g204793204797%_)
                         (cons _%$%g204792204795%_ _%$%g204793204797%_))
                       '()
                       _%$%g203779204752%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g203771204645%_
                                                      _%$%g203778204648%_)))
                                               _%$%args203821204750%_
                                               _%$%hd203811204725%_
                                               _%$%hd203802204701%_
                                               _%$%hd203793204677%_))))))
                              (_%$%loop203816204735%_
                               _%$%target203813204730%_
                               '()))
                            (_%$%g203771204645%_ _%$%g203778204648%_)))))
                  (_%$%g203771204645%_ _%$%g203778204648%_))
              (_%$%g203771204645%_ _%$%g203778204648%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g203771204645%_
                                               _%$%g203778204648%_))
                                          (_%$%g203771204645%_
                                           _%$%g203778204648%_))
                                      (_%$%g203771204645%_
                                       _%$%g203778204648%_))))
                              (_%$%g203771204645%_ _%$%g203778204648%_))))
                      (_%$%g203771204645%_ _%$%g203778204648%_))
                  (_%$%g203771204645%_ _%$%g203778204648%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g203771204645%_
                                                   _%$%g203778204648%_))
                                              (_%$%g203771204645%_
                                               _%$%g203778204648%_))
                                          (_%$%g203771204645%_
                                           _%$%g203778204648%_))))
                                  (_%$%g203771204645%_ _%$%g203778204648%_))))
                          (_%$%g203771204645%_ _%$%g203778204648%_))
                      (_%$%g203771204645%_ _%$%g203778204648%_))))
              (_%$%g203771204645%_ _%$%g203778204648%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g203771204645%_
                                                   _%$%g203778204648%_))
                                              (_%$%g203771204645%_
                                               _%$%g203778204648%_))))
                                      (_%$%g203771204645%_
                                       _%$%g203778204648%_))))
                              (_%$%g203771204645%_ _%$%g203778204648%_))))
                      (_%$%g203771204645%_ _%$%g203778204648%_)))))
          (_%$%g203770204800%_ _%stx203769%_))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self202711%_ _%stx202712%_)
        (letrec ((_%force-e202714%_
                  (lambda (_%target203766%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target203766%_ '()))
                                      '()))))))
          (let* ((_%$%g202722202944%_
                  (lambda (_%$%g202723202941%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202723202941%_)))
                 (_%$%g202721202951%_
                  (lambda (_%$%g202723202947%_)
                    ((lambda ()
                       (gxc#xform-operands _%self202711%_ _%stx202712%_)))))
                 (_%$%g202720203064%_
                  (lambda (_%$%g202723202954%_)
                    (if (gx#stx-pair? _%$%g202723202954%_)
                        (let ((_%$%e202916202956%_
                               (gx#stx-e _%$%g202723202954%_)))
                          (let ((_%$%hd202917202959%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202916202956%_)))
                                (_%$%tl202918202961%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202916202956%_))))
                            (if (gx#stx-pair? _%$%tl202918202961%_)
                                (let ((_%$%e202919202964%_
                                       (gx#stx-e _%$%tl202918202961%_)))
                                  (let ((_%$%hd202920202967%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202919202964%_)))
                                        (_%$%tl202921202969%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202919202964%_))))
                                    (if (gx#stx-pair? _%$%hd202920202967%_)
                                        (let ((_%$%e202922202972%_
                                               (gx#stx-e
                                                _%$%hd202920202967%_)))
                                          (let ((_%$%hd202923202975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202922202972%_)))
                                                (_%$%tl202924202977%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202922202972%_))))
                                            (if (gx#identifier?
                                                 _%$%hd202923202975%_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd202923202975%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl202924202977%_)
                                                        (let ((_%$%e202925202980%_
                                                               (gx#stx-e
                                                                _%$%tl202924202977%_)))
                                                          (let ((_%$%hd202926202983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e202925202980%_)))
                        (_%$%tl202927202985%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e202925202980%_))))
                    (if (gx#stx-null? _%$%tl202927202985%_)
                        (if (gx#stx-pair? _%$%tl202921202969%_)
                            (let ((_%$%e202928202988%_
                                   (gx#stx-e _%$%tl202921202969%_)))
                              (let ((_%$%hd202929202991%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e202928202988%_)))
                                    (_%$%tl202930202993%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e202928202988%_))))
                                (if (gx#stx-pair? _%$%hd202929202991%_)
                                    (let ((_%$%e202931202996%_
                                           (gx#stx-e _%$%hd202929202991%_)))
                                      (let ((_%$%hd202932202999%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e202931202996%_)))
                                            (_%$%tl202933203001%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e202931202996%_))))
                                        (if (gx#identifier?
                                             _%$%hd202932202999%_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd202932202999%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl202933203001%_)
                                                    (let ((_%$%e202934203004%_
                                                           (gx#stx-e
                                                            _%$%tl202933203001%_)))
                                                      (let ((_%$%hd202935203007%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e202934203004%_)))
                    (_%$%tl202936203009%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e202934203004%_))))
                (if (gx#stx-null? _%$%tl202936203009%_)
                    (if (gx#stx-pair? _%$%tl202930202993%_)
                        (let ((_%$%e202937203012%_
                               (gx#stx-e _%$%tl202930202993%_)))
                          (let ((_%$%hd202938203015%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202937203012%_)))
                                (_%$%tl202939203017%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202937203012%_))))
                            (if (gx#stx-null? _%$%tl202939203017%_)
                                ((lambda (_%$%g202913203020%_
                                          _%$%g202914203021%_
                                          _%$%g202915203022%_)
                                   (if (and (gx#free-identifier=?
                                             _%$%g202914203021%_
                                             (slot-ref
                                              _%self202711%_
                                              'receiver))
                                            (gxc#!mutator?
                                             (gxc#optimizer-resolve-type
                                              (gxc#identifier-symbol
                                               _%$%g202915203022%_))))
                                       (let* ((_%mutator203050%_
                                               (gxc#optimizer-resolve-type
                                                (gxc#identifier-symbol
                                                 _%$%g202915203022%_)))
                                              (_%klass203052%_
                                               (gxc#optimizer-resolve-class
                                                _%stx202712%_
                                                (gxc#!type-id
                                                 _%mutator203050%_)))
                                              (_%slot203054%_
                                               (gxc#!mutator-slot
                                                _%mutator203050%_))
                                              (_%expr203056%_
                                               (gxc#compile-e
                                                _%self202711%_
                                                _%$%g202913203020%_)))
                                         (if (and (not (gxc#!mutator-checked?
                                                        _%mutator203050%_))
                                                  (or (gxc#!class-struct-slot?
                                                       _%klass203052%_
                                                       _%slot203054%_)
                                                      (gxc#!class-final?
                                                       _%klass203052%_)))
                                             (gxc#xform-wrap-source
                                              (cons '%#call
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#ref)
                        (cons _%$%g202915203022%_ '()))
                  (cons (cons (gx#datum->syntax '#f '%#ref)
                              (cons _%$%g202914203021%_ '()))
                        (cons _%expr203056%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx202712%_)
                                             (let ((_%$field203062%_
                                                    (hash-ref
                                                     (slot-ref
                                                      _%self202711%_
                                                      'slots)
                                                     _%slot203054%_)))
                                               (gxc#xform-wrap-source
                                                (cons '%#struct-unchecked-set!
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (slot-ref _%self202711%_ 'klass) '()))
                    (cons (cons '%#ref (cons _%$field203062%_ '()))
                          (cons (cons '%#ref
                                      (cons (slot-ref _%self202711%_ 'receiver)
                                            '()))
                                (cons _%expr203056%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx202712%_))))
                                       (_%$%g202721202951%_
                                        _%$%g202723202954%_)))
                                 _%$%hd202938203015%_
                                 _%$%hd202935203007%_
                                 _%$%hd202926202983%_)
                                (_%$%g202721202951%_ _%$%g202723202954%_))))
                        (_%$%g202721202951%_ _%$%g202723202954%_))
                    (_%$%g202721202951%_ _%$%g202723202954%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g202721202951%_
                                                     _%$%g202723202954%_))
                                                (_%$%g202721202951%_
                                                 _%$%g202723202954%_))
                                            (_%$%g202721202951%_
                                             _%$%g202723202954%_))))
                                    (_%$%g202721202951%_
                                     _%$%g202723202954%_))))
                            (_%$%g202721202951%_ _%$%g202723202954%_))
                        (_%$%g202721202951%_ _%$%g202723202954%_))))
                (_%$%g202721202951%_ _%$%g202723202954%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g202721202951%_
                                                     _%$%g202723202954%_))
                                                (_%$%g202721202951%_
                                                 _%$%g202723202954%_))))
                                        (_%$%g202721202951%_
                                         _%$%g202723202954%_))))
                                (_%$%g202721202951%_ _%$%g202723202954%_))))
                        (_%$%g202721202951%_ _%$%g202723202954%_))))
                 (_%$%g202719203160%_
                  (lambda (_%$%g202723203067%_)
                    (if (gx#stx-pair? _%$%g202723203067%_)
                        (let ((_%$%e202892203069%_
                               (gx#stx-e _%$%g202723203067%_)))
                          (let ((_%$%hd202893203072%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202892203069%_)))
                                (_%$%tl202894203074%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202892203069%_))))
                            (if (gx#stx-pair? _%$%tl202894203074%_)
                                (let ((_%$%e202895203077%_
                                       (gx#stx-e _%$%tl202894203074%_)))
                                  (let ((_%$%hd202896203080%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202895203077%_)))
                                        (_%$%tl202897203082%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202895203077%_))))
                                    (if (gx#stx-pair? _%$%hd202896203080%_)
                                        (let ((_%$%e202898203085%_
                                               (gx#stx-e
                                                _%$%hd202896203080%_)))
                                          (let ((_%$%hd202899203088%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202898203085%_)))
                                                (_%$%tl202900203090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202898203085%_))))
                                            (if (gx#identifier?
                                                 _%$%hd202899203088%_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd202899203088%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl202900203090%_)
                                                        (let ((_%$%e202901203093%_
                                                               (gx#stx-e
                                                                _%$%tl202900203090%_)))
                                                          (let ((_%$%hd202902203096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e202901203093%_)))
                        (_%$%tl202903203098%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e202901203093%_))))
                    (if (gx#stx-null? _%$%tl202903203098%_)
                        (if (gx#stx-pair? _%$%tl202897203082%_)
                            (let ((_%$%e202904203101%_
                                   (gx#stx-e _%$%tl202897203082%_)))
                              (let ((_%$%hd202905203104%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e202904203101%_)))
                                    (_%$%tl202906203106%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e202904203101%_))))
                                (if (gx#stx-pair? _%$%hd202905203104%_)
                                    (let ((_%$%e202907203109%_
                                           (gx#stx-e _%$%hd202905203104%_)))
                                      (let ((_%$%hd202908203112%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e202907203109%_)))
                                            (_%$%tl202909203114%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e202907203109%_))))
                                        (if (gx#identifier?
                                             _%$%hd202908203112%_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd202908203112%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl202909203114%_)
                                                    (let ((_%$%e202910203117%_
                                                           (gx#stx-e
                                                            _%$%tl202909203114%_)))
                                                      (let ((_%$%hd202911203120%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e202910203117%_)))
                    (_%$%tl202912203122%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e202910203117%_))))
                (if (gx#stx-null? _%$%tl202912203122%_)
                    (if (gx#stx-null? _%$%tl202906203106%_)
                        ((lambda (_%$%g202890203125%_ _%$%g202891203126%_)
                           (if (and (gx#free-identifier=?
                                     _%$%g202890203125%_
                                     (slot-ref _%self202711%_ 'receiver))
                                    (gxc#!accessor?
                                     (gxc#optimizer-resolve-type
                                      (gxc#identifier-symbol
                                       _%$%g202891203126%_))))
                               (let* ((_%accessor203148%_
                                       (gxc#optimizer-resolve-type
                                        (gxc#identifier-symbol
                                         _%$%g202891203126%_)))
                                      (_%klass203150%_
                                       (gxc#optimizer-resolve-class
                                        _%stx202712%_
                                        (gxc#!type-id _%accessor203148%_)))
                                      (_%slot203152%_
                                       (gxc#!accessor-slot
                                        _%accessor203148%_)))
                                 (if (and (not (gxc#!accessor-checked?
                                                _%accessor203148%_))
                                          (or (gxc#!class-struct-slot?
                                               _%klass203150%_
                                               _%slot203152%_)
                                              (gxc#!class-final?
                                               _%klass203150%_)))
                                     _%stx202712%_
                                     (let ((_%$field203158%_
                                            (hash-ref
                                             (slot-ref _%self202711%_ 'slots)
                                             _%slot203152%_)))
                                       (gxc#xform-wrap-source
                                        (cons '%#struct-unchecked-ref
                                              (cons (cons '%#ref
                                                          (cons (slot-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self202711%_
                         'klass)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#ref
                                                                (cons _%$field203158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#ref
                              (cons (slot-ref _%self202711%_ 'receiver) '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%stx202712%_))))
                               (_%$%g202720203064%_ _%$%g202723203067%_)))
                         _%$%hd202911203120%_
                         _%$%hd202902203096%_)
                        (_%$%g202720203064%_ _%$%g202723203067%_))
                    (_%$%g202720203064%_ _%$%g202723203067%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g202720203064%_
                                                     _%$%g202723203067%_))
                                                (_%$%g202720203064%_
                                                 _%$%g202723203067%_))
                                            (_%$%g202720203064%_
                                             _%$%g202723203067%_))))
                                    (_%$%g202720203064%_
                                     _%$%g202723203067%_))))
                            (_%$%g202720203064%_ _%$%g202723203067%_))
                        (_%$%g202720203064%_ _%$%g202723203067%_))))
                (_%$%g202720203064%_ _%$%g202723203067%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g202720203064%_
                                                     _%$%g202723203067%_))
                                                (_%$%g202720203064%_
                                                 _%$%g202723203067%_))))
                                        (_%$%g202720203064%_
                                         _%$%g202723203067%_))))
                                (_%$%g202720203064%_ _%$%g202723203067%_))))
                        (_%$%g202720203064%_ _%$%g202723203067%_))))
                 (_%$%g202718203294%_
                  (lambda (_%$%g202723203163%_)
                    (if (gx#stx-pair? _%$%g202723203163%_)
                        (let ((_%$%e202857203165%_
                               (gx#stx-e _%$%g202723203163%_)))
                          (let ((_%$%hd202858203168%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202857203165%_)))
                                (_%$%tl202859203170%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202857203165%_))))
                            (if (gx#stx-pair? _%$%tl202859203170%_)
                                (let ((_%$%e202860203173%_
                                       (gx#stx-e _%$%tl202859203170%_)))
                                  (let ((_%$%hd202861203176%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202860203173%_)))
                                        (_%$%tl202862203178%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202860203173%_))))
                                    (if (gx#stx-pair? _%$%hd202861203176%_)
                                        (let ((_%$%e202863203181%_
                                               (gx#stx-e
                                                _%$%hd202861203176%_)))
                                          (let ((_%$%hd202864203184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202863203181%_)))
                                                (_%$%tl202865203186%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202863203181%_))))
                                            (if (gx#identifier?
                                                 _%$%hd202864203184%_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd202864203184%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl202865203186%_)
                                                        (let ((_%$%e202866203189%_
                                                               (gx#stx-e
                                                                _%$%tl202865203186%_)))
                                                          (let ((_%$%hd202867203192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e202866203189%_)))
                        (_%$%tl202868203194%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e202866203189%_))))
                    (if (gx#stx-null? _%$%tl202868203194%_)
                        (if (gx#stx-pair? _%$%tl202862203178%_)
                            (let ((_%$%e202869203197%_
                                   (gx#stx-e _%$%tl202862203178%_)))
                              (let ((_%$%hd202870203200%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e202869203197%_)))
                                    (_%$%tl202871203202%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e202869203197%_))))
                                (if (gx#stx-pair? _%$%hd202870203200%_)
                                    (let ((_%$%e202872203205%_
                                           (gx#stx-e _%$%hd202870203200%_)))
                                      (let ((_%$%hd202873203208%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e202872203205%_)))
                                            (_%$%tl202874203210%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e202872203205%_))))
                                        (if (gx#identifier?
                                             _%$%hd202873203208%_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd202873203208%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl202874203210%_)
                                                    (let ((_%$%e202875203213%_
                                                           (gx#stx-e
                                                            _%$%tl202874203210%_)))
                                                      (let ((_%$%hd202876203216%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e202875203213%_)))
                    (_%$%tl202877203218%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e202875203213%_))))
                (if (gx#stx-null? _%$%tl202877203218%_)
                    (if (gx#stx-pair? _%$%tl202871203202%_)
                        (let ((_%$%e202878203221%_
                               (gx#stx-e _%$%tl202871203202%_)))
                          (let ((_%$%hd202879203224%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202878203221%_)))
                                (_%$%tl202880203226%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202878203221%_))))
                            (if (gx#stx-pair? _%$%hd202879203224%_)
                                (let ((_%$%e202881203229%_
                                       (gx#stx-e _%$%hd202879203224%_)))
                                  (let ((_%$%hd202882203232%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202881203229%_)))
                                        (_%$%tl202883203234%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202881203229%_))))
                                    (if (gx#identifier? _%$%hd202882203232%_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _%$%hd202882203232%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl202883203234%_)
                                                (let ((_%$%e202884203237%_
                                                       (gx#stx-e
                                                        _%$%tl202883203234%_)))
                                                  (let ((_%$%hd202885203240%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e202884203237%_)))
                                                        (_%$%tl202886203242%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e202884203237%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl202886203242%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl202880203226%_)
                                                            (let ((_%$%e202887203245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%$%tl202880203226%_)))
                      (let ((_%$%hd202888203248%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e202887203245%_)))
                            (_%$%tl202889203250%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e202887203245%_))))
                        (if (gx#stx-null? _%$%tl202889203250%_)
                            ((lambda (_%$%g202853203253%_
                                      _%$%g202854203254%_
                                      _%$%g202855203255%_
                                      _%$%g202856203256%_)
                               (if (and (or (gxc#runtime-identifier=?
                                             _%$%g202856203256%_
                                             'slot-set!)
                                            (gxc#runtime-identifier=?
                                             _%$%g202856203256%_
                                             'unchecked-slot-set!))
                                        (gx#free-identifier=?
                                         _%$%g202855203255%_
                                         (slot-ref _%self202711%_ 'receiver)))
                                   (let ((_%$field203291%_
                                          (hash-ref
                                           (slot-ref _%self202711%_ 'slots)
                                           (gx#stx-e _%$%g202854203254%_)))
                                         (_%expr203292%_
                                          (gxc#compile-e
                                           _%self202711%_
                                           _%$%g202853203253%_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#struct-unchecked-set!
                                            (cons (cons '%#ref
                                                        (cons (slot-ref
                                                               _%self202711%_
                                                               'klass)
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _%$field203291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref
                            (cons (slot-ref _%self202711%_ 'receiver) '()))
                      (cons _%expr203292%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _%stx202712%_))
                                   (_%$%g202719203160%_ _%$%g202723203163%_)))
                             _%$%hd202888203248%_
                             _%$%hd202885203240%_
                             _%$%hd202876203216%_
                             _%$%hd202867203192%_)
                            (_%$%g202719203160%_ _%$%g202723203163%_))))
                    (_%$%g202719203160%_ _%$%g202723203163%_))
                (_%$%g202719203160%_ _%$%g202723203163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g202719203160%_
                                                 _%$%g202723203163%_))
                                            (_%$%g202719203160%_
                                             _%$%g202723203163%_))
                                        (_%$%g202719203160%_
                                         _%$%g202723203163%_))))
                                (_%$%g202719203160%_ _%$%g202723203163%_))))
                        (_%$%g202719203160%_ _%$%g202723203163%_))
                    (_%$%g202719203160%_ _%$%g202723203163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g202719203160%_
                                                     _%$%g202723203163%_))
                                                (_%$%g202719203160%_
                                                 _%$%g202723203163%_))
                                            (_%$%g202719203160%_
                                             _%$%g202723203163%_))))
                                    (_%$%g202719203160%_
                                     _%$%g202723203163%_))))
                            (_%$%g202719203160%_ _%$%g202723203163%_))
                        (_%$%g202719203160%_ _%$%g202723203163%_))))
                (_%$%g202719203160%_ _%$%g202723203163%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g202719203160%_
                                                     _%$%g202723203163%_))
                                                (_%$%g202719203160%_
                                                 _%$%g202723203163%_))))
                                        (_%$%g202719203160%_
                                         _%$%g202723203163%_))))
                                (_%$%g202719203160%_ _%$%g202723203163%_))))
                        (_%$%g202719203160%_ _%$%g202723203163%_))))
                 (_%$%g202717203415%_
                  (lambda (_%$%g202723203297%_)
                    (if (gx#stx-pair? _%$%g202723203297%_)
                        (let ((_%$%e202823203299%_
                               (gx#stx-e _%$%g202723203297%_)))
                          (let ((_%$%hd202824203302%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202823203299%_)))
                                (_%$%tl202825203304%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202823203299%_))))
                            (if (gx#stx-pair? _%$%tl202825203304%_)
                                (let ((_%$%e202826203307%_
                                       (gx#stx-e _%$%tl202825203304%_)))
                                  (let ((_%$%hd202827203310%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202826203307%_)))
                                        (_%$%tl202828203312%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202826203307%_))))
                                    (if (gx#stx-pair? _%$%hd202827203310%_)
                                        (let ((_%$%e202829203315%_
                                               (gx#stx-e
                                                _%$%hd202827203310%_)))
                                          (let ((_%$%hd202830203318%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202829203315%_)))
                                                (_%$%tl202831203320%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202829203315%_))))
                                            (if (gx#identifier?
                                                 _%$%hd202830203318%_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd202830203318%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl202831203320%_)
                                                        (let ((_%$%e202832203323%_
                                                               (gx#stx-e
                                                                _%$%tl202831203320%_)))
                                                          (let ((_%$%hd202833203326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e202832203323%_)))
                        (_%$%tl202834203328%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e202832203323%_))))
                    (if (gx#stx-null? _%$%tl202834203328%_)
                        (if (gx#stx-pair? _%$%tl202828203312%_)
                            (let ((_%$%e202835203331%_
                                   (gx#stx-e _%$%tl202828203312%_)))
                              (let ((_%$%hd202836203334%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e202835203331%_)))
                                    (_%$%tl202837203336%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e202835203331%_))))
                                (if (gx#stx-pair? _%$%hd202836203334%_)
                                    (let ((_%$%e202838203339%_
                                           (gx#stx-e _%$%hd202836203334%_)))
                                      (let ((_%$%hd202839203342%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e202838203339%_)))
                                            (_%$%tl202840203344%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e202838203339%_))))
                                        (if (gx#identifier?
                                             _%$%hd202839203342%_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd202839203342%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl202840203344%_)
                                                    (let ((_%$%e202841203347%_
                                                           (gx#stx-e
                                                            _%$%tl202840203344%_)))
                                                      (let ((_%$%hd202842203350%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e202841203347%_)))
                    (_%$%tl202843203352%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e202841203347%_))))
                (if (gx#stx-null? _%$%tl202843203352%_)
                    (if (gx#stx-pair? _%$%tl202837203336%_)
                        (let ((_%$%e202844203355%_
                               (gx#stx-e _%$%tl202837203336%_)))
                          (let ((_%$%hd202845203358%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202844203355%_)))
                                (_%$%tl202846203360%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202844203355%_))))
                            (if (gx#stx-pair? _%$%hd202845203358%_)
                                (let ((_%$%e202847203363%_
                                       (gx#stx-e _%$%hd202845203358%_)))
                                  (let ((_%$%hd202848203366%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202847203363%_)))
                                        (_%$%tl202849203368%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202847203363%_))))
                                    (if (gx#identifier? _%$%hd202848203366%_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _%$%hd202848203366%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl202849203368%_)
                                                (let ((_%$%e202850203371%_
                                                       (gx#stx-e
                                                        _%$%tl202849203368%_)))
                                                  (let ((_%$%hd202851203374%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e202850203371%_)))
                                                        (_%$%tl202852203376%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e202850203371%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl202852203376%_)
                                                        (if (gx#stx-null?
                                                             _%$%tl202846203360%_)
                                                            ((lambda (_%$%g202820203379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g202821203380%_
                              _%$%g202822203381%_)
                       (if (and (or (gxc#runtime-identifier=?
                                     _%$%g202822203381%_
                                     'slot-ref)
                                    (gxc#runtime-identifier=?
                                     _%$%g202822203381%_
                                     'unchecked-slot-ref))
                                (gx#free-identifier=?
                                 _%$%g202821203380%_
                                 (slot-ref _%self202711%_ 'receiver)))
                           (let ((_%$field203413%_
                                  (hash-ref
                                   (slot-ref _%self202711%_ 'slots)
                                   (gx#stx-e _%$%g202820203379%_))))
                             (gxc#xform-wrap-source
                              (cons '%#struct-unchecked-ref
                                    (cons (cons '%#ref
                                                (cons (slot-ref
                                                       _%self202711%_
                                                       'klass)
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field203413%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (slot-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%self202711%_
                           'receiver)
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%stx202712%_))
                           (_%$%g202718203294%_ _%$%g202723203297%_)))
                     _%$%hd202851203374%_
                     _%$%hd202842203350%_
                     _%$%hd202833203326%_)
                    (_%$%g202718203294%_ _%$%g202723203297%_))
                (_%$%g202718203294%_ _%$%g202723203297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g202718203294%_
                                                 _%$%g202723203297%_))
                                            (_%$%g202718203294%_
                                             _%$%g202723203297%_))
                                        (_%$%g202718203294%_
                                         _%$%g202723203297%_))))
                                (_%$%g202718203294%_ _%$%g202723203297%_))))
                        (_%$%g202718203294%_ _%$%g202723203297%_))
                    (_%$%g202718203294%_ _%$%g202723203297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g202718203294%_
                                                     _%$%g202723203297%_))
                                                (_%$%g202718203294%_
                                                 _%$%g202723203297%_))
                                            (_%$%g202718203294%_
                                             _%$%g202723203297%_))))
                                    (_%$%g202718203294%_
                                     _%$%g202723203297%_))))
                            (_%$%g202718203294%_ _%$%g202723203297%_))
                        (_%$%g202718203294%_ _%$%g202723203297%_))))
                (_%$%g202718203294%_ _%$%g202723203297%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g202718203294%_
                                                     _%$%g202723203297%_))
                                                (_%$%g202718203294%_
                                                 _%$%g202723203297%_))))
                                        (_%$%g202718203294%_
                                         _%$%g202723203297%_))))
                                (_%$%g202718203294%_ _%$%g202723203297%_))))
                        (_%$%g202718203294%_ _%$%g202723203297%_))))
                 (_%$%g202716203605%_
                  (lambda (_%$%g202723203418%_)
                    (if (gx#stx-pair? _%$%g202723203418%_)
                        (let ((_%$%e202772203420%_
                               (gx#stx-e _%$%g202723203418%_)))
                          (let ((_%$%hd202773203423%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202772203420%_)))
                                (_%$%tl202774203425%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202772203420%_))))
                            (if (gx#stx-pair? _%$%tl202774203425%_)
                                (let ((_%$%e202775203428%_
                                       (gx#stx-e _%$%tl202774203425%_)))
                                  (let ((_%$%hd202776203431%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202775203428%_)))
                                        (_%$%tl202777203433%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202775203428%_))))
                                    (if (gx#stx-pair? _%$%hd202776203431%_)
                                        (let ((_%$%e202778203436%_
                                               (gx#stx-e
                                                _%$%hd202776203431%_)))
                                          (let ((_%$%hd202779203439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202778203436%_)))
                                                (_%$%tl202780203441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202778203436%_))))
                                            (if (gx#identifier?
                                                 _%$%hd202779203439%_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd202779203439%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl202780203441%_)
                                                        (let ((_%$%e202781203444%_
                                                               (gx#stx-e
                                                                _%$%tl202780203441%_)))
                                                          (let ((_%$%hd202782203447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e202781203444%_)))
                        (_%$%tl202783203449%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e202781203444%_))))
                    (if (gx#stx-null? _%$%tl202783203449%_)
                        (if (gx#stx-pair? _%$%tl202777203433%_)
                            (let ((_%$%e202784203452%_
                                   (gx#stx-e _%$%tl202777203433%_)))
                              (let ((_%$%hd202785203455%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e202784203452%_)))
                                    (_%$%tl202786203457%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e202784203452%_))))
                                (if (gx#stx-pair? _%$%hd202785203455%_)
                                    (let ((_%$%e202787203460%_
                                           (gx#stx-e _%$%hd202785203455%_)))
                                      (let ((_%$%hd202788203463%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e202787203460%_)))
                                            (_%$%tl202789203465%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e202787203460%_))))
                                        (if (gx#identifier?
                                             _%$%hd202788203463%_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd202788203463%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl202789203465%_)
                                                    (let ((_%$%e202790203468%_
                                                           (gx#stx-e
                                                            _%$%tl202789203465%_)))
                                                      (let ((_%$%hd202791203471%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e202790203468%_)))
                    (_%$%tl202792203473%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e202790203468%_))))
                (if (gx#stx-null? _%$%tl202792203473%_)
                    (if (gx#stx-pair? _%$%tl202786203457%_)
                        (let ((_%$%e202793203476%_
                               (gx#stx-e _%$%tl202786203457%_)))
                          (let ((_%$%hd202794203479%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202793203476%_)))
                                (_%$%tl202795203481%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202793203476%_))))
                            (if (gx#stx-pair? _%$%hd202794203479%_)
                                (let ((_%$%e202796203484%_
                                       (gx#stx-e _%$%hd202794203479%_)))
                                  (let ((_%$%hd202797203487%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202796203484%_)))
                                        (_%$%tl202798203489%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202796203484%_))))
                                    (if (gx#identifier? _%$%hd202797203487%_)
                                        (if (gx#stx-eq?
                                             '%#ref
                                             _%$%hd202797203487%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl202798203489%_)
                                                (let ((_%$%e202799203492%_
                                                       (gx#stx-e
                                                        _%$%tl202798203489%_)))
                                                  (let ((_%$%hd202800203495%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e202799203492%_)))
                                                        (_%$%tl202801203497%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e202799203492%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl202801203497%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl202795203481%_)
                                                            (let ((_%$%e202802203500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%$%tl202795203481%_)))
                      (let ((_%$%hd202803203503%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e202802203500%_)))
                            (_%$%tl202804203505%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e202802203500%_))))
                        (if (gx#stx-pair? _%$%hd202803203503%_)
                            (let ((_%$%e202805203508%_
                                   (gx#stx-e _%$%hd202803203503%_)))
                              (let ((_%$%hd202806203511%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e202805203508%_)))
                                    (_%$%tl202807203513%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e202805203508%_))))
                                (if (gx#identifier? _%$%hd202806203511%_)
                                    (if (gx#stx-eq?
                                         '%#quote
                                         _%$%hd202806203511%_)
                                        (if (gx#stx-pair? _%$%tl202807203513%_)
                                            (let ((_%$%e202808203516%_
                                                   (gx#stx-e
                                                    _%$%tl202807203513%_)))
                                              (let ((_%$%hd202809203519%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e202808203516%_)))
                                                    (_%$%tl202810203521%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e202808203516%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl202810203521%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl202804203505%_)
                                                        (let ((_g208023_
                                                               (gx#syntax-split-splice
                                                                _%$%tl202804203505%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g208024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g208023_)
                                 (##values-length _g208023_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g208024_ 2)))
                          (error "Context expects 2 values" _g208024_)))
                    (let ((_%$%target202811203524%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g208023_ 0)))
                          (_%$%tl202813203526%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g208023_ 1))))
                      (if (gx#stx-null? _%$%tl202813203526%_)
                          (letrec ((_%$%loop202814203529%_
                                    (lambda (_%$%hd202812203532%_
                                             _%$%args202818203534%_)
                                      (if (gx#stx-pair? _%$%hd202812203532%_)
                                          (let ((_%$%e202815203536%_
                                                 (gx#stx-e
                                                  _%$%hd202812203532%_)))
                                            (let ((_%$%lp-hd202816203539%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e202815203536%_)))
                                                  (_%$%lp-tl202817203541%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e202815203536%_))))
                                              (_%$%loop202814203529%_
                                               _%$%lp-tl202817203541%_
                                               (cons _%$%lp-hd202816203539%_
                                                     _%$%args202818203534%_))))
                                          (let ((_%$%args202819203544%_
                                                 (reverse _%$%args202818203534%_)))
                                            ((lambda (_%$%g202767203546%_
                                                      _%$%g202768203547%_
                                                      _%$%g202769203548%_
                                                      _%$%g202770203549%_
                                                      _%$%g202771203550%_)
                                               (if (and (gxc#runtime-identifier=?
                                                         _%$%g202771203550%_
                                                         'apply)
                                                        (gxc#runtime-identifier=?
                                                         _%$%g202770203549%_
                                                         'call-method)
                                                        (gx#free-identifier=?
                                                         _%$%g202769203548%_
                                                         (slot-ref
                                                          _%self202711%_
                                                          'receiver)))
                                                   (let ((_%$method203602%_
                                                          (hash-ref
                                                           (slot-ref
                                                            _%self202711%_
                                                            'methods)
                                                           (gx#stx-e
                                                            _%$%g202768203547%_)))
                                                         (_%args203603%_
                                                          (map (lambda (_%$%g203590203592%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e _%self202711%_ _%$%g203590203592%_))
                       (foldr (lambda (_%$%g203594203597%_ _%$%g203595203599%_)
                                (cons _%$%g203594203597%_ _%$%g203595203599%_))
                              '()
                              _%$%g202767203546%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'apply '()))
                          (cons (_%force-e202714%_ _%$method203602%_)
                                (cons (cons '%#ref
                                            (cons (slot-ref
                                                   _%self202711%_
                                                   'receiver)
                                                  '()))
                                      _%args203603%_))))
              _%stx202712%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g202717203415%_
                                                    _%$%g202723203418%_)))
                                             _%$%args202819203544%_
                                             _%$%hd202809203519%_
                                             _%$%hd202800203495%_
                                             _%$%hd202791203471%_
                                             _%$%hd202782203447%_))))))
                            (_%$%loop202814203529%_
                             _%$%target202811203524%_
                             '()))
                          (_%$%g202717203415%_ _%$%g202723203418%_)))))
                (_%$%g202717203415%_ _%$%g202723203418%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g202717203415%_
                                                     _%$%g202723203418%_))))
                                            (_%$%g202717203415%_
                                             _%$%g202723203418%_))
                                        (_%$%g202717203415%_
                                         _%$%g202723203418%_))
                                    (_%$%g202717203415%_
                                     _%$%g202723203418%_))))
                            (_%$%g202717203415%_ _%$%g202723203418%_))))
                    (_%$%g202717203415%_ _%$%g202723203418%_))
                (_%$%g202717203415%_ _%$%g202723203418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g202717203415%_
                                                 _%$%g202723203418%_))
                                            (_%$%g202717203415%_
                                             _%$%g202723203418%_))
                                        (_%$%g202717203415%_
                                         _%$%g202723203418%_))))
                                (_%$%g202717203415%_ _%$%g202723203418%_))))
                        (_%$%g202717203415%_ _%$%g202723203418%_))
                    (_%$%g202717203415%_ _%$%g202723203418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g202717203415%_
                                                     _%$%g202723203418%_))
                                                (_%$%g202717203415%_
                                                 _%$%g202723203418%_))
                                            (_%$%g202717203415%_
                                             _%$%g202723203418%_))))
                                    (_%$%g202717203415%_
                                     _%$%g202723203418%_))))
                            (_%$%g202717203415%_ _%$%g202723203418%_))
                        (_%$%g202717203415%_ _%$%g202723203418%_))))
                (_%$%g202717203415%_ _%$%g202723203418%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g202717203415%_
                                                     _%$%g202723203418%_))
                                                (_%$%g202717203415%_
                                                 _%$%g202723203418%_))))
                                        (_%$%g202717203415%_
                                         _%$%g202723203418%_))))
                                (_%$%g202717203415%_ _%$%g202723203418%_))))
                        (_%$%g202717203415%_ _%$%g202723203418%_))))
                 (_%$%g202715203763%_
                  (lambda (_%$%g202723203608%_)
                    (if (gx#stx-pair? _%$%g202723203608%_)
                        (let ((_%$%e202728203610%_
                               (gx#stx-e _%$%g202723203608%_)))
                          (let ((_%$%hd202729203613%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202728203610%_)))
                                (_%$%tl202730203615%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202728203610%_))))
                            (if (gx#stx-pair? _%$%tl202730203615%_)
                                (let ((_%$%e202731203618%_
                                       (gx#stx-e _%$%tl202730203615%_)))
                                  (let ((_%$%hd202732203621%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202731203618%_)))
                                        (_%$%tl202733203623%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202731203618%_))))
                                    (if (gx#stx-pair? _%$%hd202732203621%_)
                                        (let ((_%$%e202734203626%_
                                               (gx#stx-e
                                                _%$%hd202732203621%_)))
                                          (let ((_%$%hd202735203629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202734203626%_)))
                                                (_%$%tl202736203631%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202734203626%_))))
                                            (if (gx#identifier?
                                                 _%$%hd202735203629%_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd202735203629%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl202736203631%_)
                                                        (let ((_%$%e202737203634%_
                                                               (gx#stx-e
                                                                _%$%tl202736203631%_)))
                                                          (let ((_%$%hd202738203637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e202737203634%_)))
                        (_%$%tl202739203639%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e202737203634%_))))
                    (if (gx#stx-null? _%$%tl202739203639%_)
                        (if (gx#stx-pair? _%$%tl202733203623%_)
                            (let ((_%$%e202740203642%_
                                   (gx#stx-e _%$%tl202733203623%_)))
                              (let ((_%$%hd202741203645%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e202740203642%_)))
                                    (_%$%tl202742203647%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e202740203642%_))))
                                (if (gx#stx-pair? _%$%hd202741203645%_)
                                    (let ((_%$%e202743203650%_
                                           (gx#stx-e _%$%hd202741203645%_)))
                                      (let ((_%$%hd202744203653%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e202743203650%_)))
                                            (_%$%tl202745203655%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e202743203650%_))))
                                        (if (gx#identifier?
                                             _%$%hd202744203653%_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd202744203653%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl202745203655%_)
                                                    (let ((_%$%e202746203658%_
                                                           (gx#stx-e
                                                            _%$%tl202745203655%_)))
                                                      (let ((_%$%hd202747203661%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e202746203658%_)))
                    (_%$%tl202748203663%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e202746203658%_))))
                (if (gx#stx-null? _%$%tl202748203663%_)
                    (if (gx#stx-pair? _%$%tl202742203647%_)
                        (let ((_%$%e202749203666%_
                               (gx#stx-e _%$%tl202742203647%_)))
                          (let ((_%$%hd202750203669%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202749203666%_)))
                                (_%$%tl202751203671%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202749203666%_))))
                            (if (gx#stx-pair? _%$%hd202750203669%_)
                                (let ((_%$%e202752203674%_
                                       (gx#stx-e _%$%hd202750203669%_)))
                                  (let ((_%$%hd202753203677%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202752203674%_)))
                                        (_%$%tl202754203679%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202752203674%_))))
                                    (if (gx#identifier? _%$%hd202753203677%_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _%$%hd202753203677%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl202754203679%_)
                                                (let ((_%$%e202755203682%_
                                                       (gx#stx-e
                                                        _%$%tl202754203679%_)))
                                                  (let ((_%$%hd202756203685%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e202755203682%_)))
                                                        (_%$%tl202757203687%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e202755203682%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl202757203687%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl202751203671%_)
                                                            (let ((_g208025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%$%tl202751203671%_ '0)))
                      (begin
                        (let ((_g208026_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g208025_)
                                     (##values-length _g208025_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g208026_ 2)))
                              (error "Context expects 2 values" _g208026_)))
                        (let ((_%$%target202758203690%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g208025_ 0)))
                              (_%$%tl202760203692%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g208025_ 1))))
                          (if (gx#stx-null? _%$%tl202760203692%_)
                              (letrec ((_%$%loop202761203695%_
                                        (lambda (_%$%hd202759203698%_
                                                 _%$%args202765203700%_)
                                          (if (gx#stx-pair?
                                               _%$%hd202759203698%_)
                                              (let ((_%$%e202762203702%_
                                                     (gx#stx-e
                                                      _%$%hd202759203698%_)))
                                                (let ((_%$%lp-hd202763203705%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e202762203702%_)))
                                                      (_%$%lp-tl202764203707%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e202762203702%_))))
                                                  (_%$%loop202761203695%_
                                                   _%$%lp-tl202764203707%_
                                                   (cons _%$%lp-hd202763203705%_
                                                         _%$%args202765203700%_))))
                                              (let ((_%$%args202766203710%_
                                                     (reverse _%$%args202765203700%_)))
                                                ((lambda (_%$%g202724203712%_
                                                          _%$%g202725203713%_
                                                          _%$%g202726203714%_
                                                          _%$%g202727203715%_)
                                                   (if (and (gxc#runtime-identifier=?
                                                             _%$%g202727203715%_
                                                             'call-method)
                                                            (gx#free-identifier=?
                                                             _%$%g202726203714%_
                                                             (slot-ref
                                                              _%self202711%_
                                                              'receiver)))
                                                       (let ((_%$method203760%_
                                                              (hash-ref
                                                               (slot-ref
                                                                _%self202711%_
                                                                'methods)
                                                               (gx#stx-e
                                                                _%$%g202725203713%_)))
                                                             (_%args203761%_
                                                              (map (lambda (_%$%g203748203750%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#compile-e
                              _%self202711%_
                              _%$%g203748203750%_))
                           (foldr (lambda (_%$%g203752203755%_
                                           _%$%g203753203757%_)
                                    (cons _%$%g203752203755%_
                                          _%$%g203753203757%_))
                                  '()
                                  _%$%g202724203712%_))))
                 (gxc#xform-wrap-source
                  (cons '%#call
                        (cons (_%force-e202714%_ _%$method203760%_)
                              (cons (cons '%#ref
                                          (cons (slot-ref
                                                 _%self202711%_
                                                 'receiver)
                                                '()))
                                    _%args203761%_)))
                  _%stx202712%_))
               (_%$%g202716203605%_ _%$%g202723203608%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%args202766203710%_
                                                 _%$%hd202756203685%_
                                                 _%$%hd202747203661%_
                                                 _%$%hd202738203637%_))))))
                                (_%$%loop202761203695%_
                                 _%$%target202758203690%_
                                 '()))
                              (_%$%g202716203605%_ _%$%g202723203608%_)))))
                    (_%$%g202716203605%_ _%$%g202723203608%_))
                (_%$%g202716203605%_ _%$%g202723203608%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g202716203605%_
                                                 _%$%g202723203608%_))
                                            (_%$%g202716203605%_
                                             _%$%g202723203608%_))
                                        (_%$%g202716203605%_
                                         _%$%g202723203608%_))))
                                (_%$%g202716203605%_ _%$%g202723203608%_))))
                        (_%$%g202716203605%_ _%$%g202723203608%_))
                    (_%$%g202716203605%_ _%$%g202723203608%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g202716203605%_
                                                     _%$%g202723203608%_))
                                                (_%$%g202716203605%_
                                                 _%$%g202723203608%_))
                                            (_%$%g202716203605%_
                                             _%$%g202723203608%_))))
                                    (_%$%g202716203605%_
                                     _%$%g202723203608%_))))
                            (_%$%g202716203605%_ _%$%g202723203608%_))
                        (_%$%g202716203605%_ _%$%g202723203608%_))))
                (_%$%g202716203605%_ _%$%g202723203608%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g202716203605%_
                                                     _%$%g202723203608%_))
                                                (_%$%g202716203605%_
                                                 _%$%g202723203608%_))))
                                        (_%$%g202716203605%_
                                         _%$%g202723203608%_))))
                                (_%$%g202716203605%_ _%$%g202723203608%_))))
                        (_%$%g202716203605%_ _%$%g202723203608%_)))))
            (_%$%g202715203763%_ _%stx202712%_)))))))
