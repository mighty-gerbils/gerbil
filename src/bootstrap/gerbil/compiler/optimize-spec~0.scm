(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1779289646)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp237221 (list gxc#::identity::t))
            (__tmp237220 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp237221
         '()
         __tmp237220
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args236018%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args236018%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp237222
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
        (__make-atomic-promise __tmp237222)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx236010%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self236013%_
                (let ((__obj237213
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj237213))
               (__tmp237223
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self236013%_ _%stx236010%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp237223
           gxc#current-compile-method
           _%self236013%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp237225 (list gxc#::false::t))
            (__tmp237224 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp237225
         '()
         __tmp237224
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args236007%_
        (apply make-instance gxc#::extract-receiver::t _%$args236007%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp237226
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
        (__make-atomic-promise __tmp237226)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx235999%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self236002%_
                (let ((__obj237215
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj237215))
               (__tmp237227
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self236002%_ _%stx235999%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp237227
           gxc#current-compile-method
           _%self236002%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp237229 (list gxc#::void::t))
            (__tmp237228 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp237229
         '(receiver methods slots)
         __tmp237228
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args235996%_
        (apply make-instance gxc#::collect-object-refs::t _%$args235996%_)))
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
      (let ((__tmp237230
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
        (__make-atomic-promise __tmp237230)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords235965%_
               _%receiver235960235966%_
               _%methods235961235967%_
               _%slots235962235968%_
               _%stx235969%_)
        (let* ((_%receiver235972%_
                (if (eq? _%receiver235960235966%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver235960235966%_))
               (_%methods235974%_
                (if (eq? _%methods235961235967%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods235961235967%_))
               (_%slots235976%_
                (if (eq? _%slots235962235968%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots235962235968%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self235978%_
                  (let ((__obj237217
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
                       __obj237217
                       _%receiver235972%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj237217
                       _%methods235974%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj237217
                       _%slots235976%_
                       '3
                       '#f
                       '#f))
                    __obj237217))
                 (__tmp237231
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self235978%_ _%stx235969%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp237231
             gxc#current-compile-method
             _%self235978%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords235985%_ . _%args235986%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords235985%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235985%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235985%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235985%_
                  'slots:
                  absent-value))
               _%args235986%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args235963235992%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args235963235992%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp237233 (list gxc#::basic-xform-expression::t))
            (__tmp237232 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp237233
         '(receiver klass methods slots)
         __tmp237232
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args235956%_
        (apply make-instance gxc#::subst-object-refs::t _%$args235956%_)))
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
      (let ((__tmp237234
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
        (__make-atomic-promise __tmp237234)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords235922%_
               _%receiver235916235923%_
               _%klass235917235924%_
               _%methods235918235925%_
               _%slots235919235926%_
               _%stx235927%_)
        (let* ((_%receiver235930%_
                (if (eq? _%receiver235916235923%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver235916235923%_))
               (_%klass235932%_
                (if (eq? _%klass235917235924%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass235917235924%_))
               (_%methods235934%_
                (if (eq? _%methods235918235925%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods235918235925%_))
               (_%slots235936%_
                (if (eq? _%slots235919235926%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots235919235926%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self235938%_
                  (let ((__obj237219
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
                       __obj237219
                       _%receiver235930%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj237219
                       _%klass235932%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj237219
                       _%methods235934%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj237219
                       _%slots235936%_
                       '4
                       '#f
                       '#f))
                    __obj237219))
                 (__tmp237235
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self235938%_ _%stx235927%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp237235
             gxc#current-compile-method
             _%self235938%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords235945%_ . _%args235946%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords235945%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235945%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235945%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235945%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235945%_
                  'slots:
                  absent-value))
               _%args235946%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args235920235952%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args235920235952%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self233047%_ _%stx233048%_)
        (letrec ((_%generate-method-bind233050%_
                  (lambda (_%$klass235908%_
                           _%$method-table235909%_
                           _%id235910%_
                           _%$id235911%_)
                    (let ((_%$tmp235913%_
                           (let ((__tmp237236
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp237236))))
                      (cons (cons _%$id235911%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp235913%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table235909%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id235910%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp235913%_ '()))
                    (cons (cons '%#ref (cons _%$tmp235913%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id235910%_
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
                 (_%generate-slot-bind233051%_
                  (lambda (_%$klass235902%_ _%id235903%_ _%$id235904%_)
                    (let ((_%$tmp235906%_
                           (let ((__tmp237237
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp237237))))
                      (cons (cons _%$id235904%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp235906%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass235902%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id235903%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp235906%_ '()))
                        (cons (cons '%#ref (cons _%$tmp235906%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id235903%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl233052%_
                  (lambda (_%$klass235896%_
                           _%$method-table235897%_
                           _%methods-bind235898%_
                           _%slots-bind235899%_
                           _%specializer-impl235900%_)
                    (let ((__tmp237238
                           (cons '%#lambda
                                 (cons (cons _%$klass235896%_
                                             (cons _%$method-table235897%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind235899%_
                                                            _%methods-bind235898%_))
                                                         (cons _%specializer-impl235900%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp237238 _%stx233048%_))))
                 (_%generate-specializer-def233053%_
                  (lambda (_%id235892%_
                           _%specializer-id235893%_
                           _%specializer-impl235894%_)
                    (let ((__tmp237239
                           (cons '%#begin
                                 (cons _%stx233048%_
                                       (cons (let ((__tmp237240
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id235893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl235894%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp237240
                                                _%stx233048%_))
                                             (cons (let ((__tmp237241
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id235892%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id235893%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp237241
                                                      _%stx233048%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp237239 _%stx233048%_)))))
          (let* ((_%__stx236107236108%_ _%stx233048%_)
                 (_%g233056233076%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx236107236108%_)))))
            (let ((_%__kont236109236110%_
                   (lambda (_%g233058233120%_ _%g233059233121%_)
                     (let ((_%method-calls233140%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs233141%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty233142%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?233144%_
                                 (lambda ()
                                   (if (let ((__tmp237242
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls233140%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp237242))
                                       (let ((__tmp237243
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs233141%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp237243))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g233058233120%_))
                             (let* ((_%__stx236021236022%_ _%g233058233120%_)
                                    (_%g233528233546%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx236021236022%_)))))
                               (let ((_%__kont236023236024%_
                                      (lambda (_%g233530233582%_
                                               _%g233531233583%_
                                               _%g233532233584%_)
                                        (let ((_%receiver233604%_
                                               (let ((_%$e233601%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g233530233582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e233601%_
                                                     _%$e233601%_
                                                     _%g233532233584%_))))
                                          (for-each
                                           (lambda (_%g233605233607%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver233604%_
                                              _%method-calls233140%_
                                              _%slot-refs233141%_
                                              _%g233605233607%_))
                                           _%g233530233582%_)
                                          (if (_%no-specializer?233144%_)
                                              _%stx233048%_
                                              (let* ((_%specializer-id233616%_
                                                      (let* ((_%id233610%_
                                                              (let ((__tmp237244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g233059233121%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp237244 '"::specialize")))
                     (_%specializer-id233613%_
                      (let ((__tmp237245
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx233048%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id233610%_ __tmp237245))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id233613%_))
                _%specializer-id233613%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass233618%_
                                                      (let ((__tmp237246
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp237246)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table233620%_
                                                      (let ((__tmp237247
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp237247)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods233622%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls233140%_)))
                                                     (_%$methods233626%_
                                                      (let ((__tmp237248
                                                             (lambda (_%id233624%_)
                                                               (let ((__tmp237249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id233624%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp237249)))))
                (declare (not safe))
                (##map __tmp237248 _%methods233622%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_233635%_
                                                      (let ((__tmp237250
                                                             (lambda (_%g233627233630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233628233632%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls233140%_
                          _%g233627233630%_
                          _%g233628233632%_)))))
                (declare (not safe))
                (##for-each __tmp237250 _%methods233622%_ _%$methods233626%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind233645%_
                                                      (let ((__tmp237251
                                                             (lambda (_%g233637233640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233638233642%_)
                       (_%generate-method-bind233050%_
                        _%$klass233618%_
                        _%$method-table233620%_
                        _%g233637233640%_
                        _%g233638233642%_))))
                (declare (not safe))
                (##map __tmp237251 _%methods233622%_ _%$methods233626%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots233647%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs233141%_)))
                                                     (_%$slots233651%_
                                                      (let ((__tmp237252
                                                             (lambda (_%id233649%_)
                                                               (let ((__tmp237253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id233649%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp237253)))))
                (declare (not safe))
                (##map __tmp237252 _%slots233647%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_233660%_
                                                      (let ((__tmp237254
                                                             (lambda (_%g233652233655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233653233657%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs233141%_
                          _%g233652233655%_
                          _%g233653233657%_)))))
                (declare (not safe))
                (##for-each __tmp237254 _%slots233647%_ _%$slots233651%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind233669%_
                                                      (let ((__tmp237255
                                                             (lambda (_%g233661233664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233662233666%_)
                       (_%generate-slot-bind233051%_
                        _%$klass233618%_
                        _%g233661233664%_
                        _%g233662233666%_))))
                (declare (not safe))
                (##map __tmp237255 _%slots233647%_ _%$slots233651%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body233675%_
                                                      (map (lambda (_%g233670233672%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver233604%_
                                                              _%$klass233618%_
                                                              _%method-calls233140%_
                                                              _%slot-refs233141%_
                                                              _%g233670233672%_))
                                                           _%g233530233582%_))
                                                     (_%specializer-impl233677%_
                                                      (let ((__tmp237256
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g233532233584%_ _%g233531233583%_)
                                 _%specializer-body233675%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp237256 _%stx233048%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl233679%_
                                                      (_%generate-specializer-impl233052%_
                                                       _%$klass233618%_
                                                       _%$method-table233620%_
                                                       _%methods-bind233645%_
                                                       _%slots-bind233669%_
                                                       _%specializer-impl233677%_)))
                                                (let ((__tmp237258
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g233059233121%_)))
                                                      (__tmp237257
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id233616%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp237258
                                                   '" => "
                                                   __tmp237257))
                                                (_%generate-specializer-def233053%_
                                                 _%g233059233121%_
                                                 _%specializer-id233616%_
                                                 _%specializer-impl233679%_))))))
                                     (_%__kont236025236026%_
                                      (lambda () _%stx233048%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx236021236022%_))
                                     (let ((_%e233533233558%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx236021236022%_))))
                                       (let ((_%tl233535233563%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e233533233558%_)))
                                             (_%hd233534233561%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e233533233558%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl233535233563%_))
                                             (let ((_%e233536233566%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl233535233563%_))))
                                               (let ((_%tl233538233571%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e233536233566%_)))
                                                     (_%hd233537233569%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e233536233566%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd233537233569%_))
                                                     (let ((_%e233539233574%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd233537233569%_))))
                                                       (let ((_%tl233541233579%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e233539233574%_)))
                     (_%hd233540233577%_
                      (let () (declare (not safe)) (##car _%e233539233574%_))))
                 (_%__kont236023236024%_
                  _%tl233538233571%_
                  _%tl233541233579%_
                  _%hd233540233577%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont236025236026%_))))
                                             (_%__kont236025236026%_))))
                                     (_%__kont236025236026%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g233058233120%_))
                                 (let* ((_%g233686233705%_
                                         (lambda (_%g233687233702%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g233687233702%_))))
                                        (_%g233685234001%_
                                         (lambda (_%g233687233708%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g233687233708%_))
                                               (let ((_%e233689233710%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g233687233708%_))))
                                                 (let ((_%hd233690233713%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e233689233710%_)))
                                                       (_%tl233691233715%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e233689233710%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl233691233715%_))
                                                       (let ((_g237259_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl233691233715%_ '0))))
                 (begin
                   (let ((_g237260_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g237259_)
                                (##values-length _g237259_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g237260_ 2)))
                         (error "Context expects 2 values" _g237260_)))
                   (let ((_%target233692233718%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g237259_ 0)))
                         (_%tl233694233720%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g237259_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl233694233720%_))
                         (letrec ((_%loop233695233723%_
                                   (lambda (_%hd233693233726%_
                                            _%clause233699233728%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd233693233726%_))
                                         (let ((_%e233696233730%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd233693233726%_))))
                                           (let ((_%lp-hd233697233733%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e233696233730%_)))
                                                 (_%lp-tl233698233735%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e233696233730%_))))
                                             (_%loop233695233723%_
                                              _%lp-tl233698233735%_
                                              (cons _%lp-hd233697233733%_
                                                    _%clause233699233728%_))))
                                         (let ((_%clause233700233738%_
                                                (reverse _%clause233699233728%_)))
                                           (for-each
                                            (lambda (_%clause233754%_)
                                              (let* ((_%__stx236047236048%_
                                                      _%clause233754%_)
                                                     (_%g233757233772%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx236047236048%_)))))
                                                (let ((_%__kont236049236050%_
                                                       (lambda (_%g233759233800%_
                                                                _%g233760233801%_
                                                                _%g233761233802%_)
                                                         (let ((_%receiver233821%_
                                                                (let ((_%$e233818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gxc#apply-extract-receiver
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f '%#begin))
                                      _%g233759233800%_))))
                          (if _%$e233818%_ _%$e233818%_ _%g233761233802%_))))
                   (for-each
                    (lambda (_%g233822233824%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver233821%_
                       _%method-calls233140%_
                       _%slot-refs233141%_
                       _%g233822233824%_))
                    _%g233759233800%_))))
              (_%__kont236051236052%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx236047236048%_))
                                                      (let ((_%e233762233784%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx236047236048%_))))
                (let ((_%tl233764233789%_
                       (let () (declare (not safe)) (##cdr _%e233762233784%_)))
                      (_%hd233763233787%_
                       (let ()
                         (declare (not safe))
                         (##car _%e233762233784%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd233763233787%_))
                      (let ((_%e233765233792%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd233763233787%_))))
                        (let ((_%tl233767233797%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e233765233792%_)))
                              (_%hd233766233795%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e233765233792%_))))
                          (_%__kont236049236050%_
                           _%tl233764233789%_
                           _%tl233767233797%_
                           _%hd233766233795%_)))
                      '#!void)))
              '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((__tmp237261
                                                   (lambda (_%g233829233832%_
                                                            _%g233830233834%_)
                                                     (cons _%g233829233832%_
                                                           _%g233830233834%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp237261
                                               '()
                                               _%clause233700233738%_)))
                                           (if (_%no-specializer?233144%_)
                                               _%stx233048%_
                                               (let* ((_%specializer-id233843%_
                                                       (let* ((_%id233837%_
                                                               (let ((__tmp237262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g233059233121%_))))
                         (declare (not safe))
                         (make-symbol__1 __tmp237262 '"::specialize")))
                      (_%specializer-id233840%_
                       (let ((__tmp237263
                              (let ()
                                (declare (not safe))
                                (gx#stx-source _%stx233048%_))))
                         (declare (not safe))
                         (gx#core-quote-syntax__1 _%id233837%_ __tmp237263))))
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _%specializer-id233840%_))
                 _%specializer-id233840%_))
              (_%$klass233845%_
               (let ((__tmp237264
                      (let () (declare (not safe)) (##gensym '__klass))))
                 (declare (not safe))
                 (make-symbol__0 __tmp237264)))
              (_%$method-table233847%_
               (let ((__tmp237265
                      (let ()
                        (declare (not safe))
                        (##gensym '__method-table))))
                 (declare (not safe))
                 (make-symbol__0 __tmp237265)))
              (_%methods233849%_
               (let ()
                 (declare (not safe))
                 (__hash-keys _%method-calls233140%_)))
              (_%$methods233853%_
               (let ((__tmp237266
                      (lambda (_%id233851%_)
                        (let ((__tmp237267 (gensym _%id233851%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp237267)))))
                 (declare (not safe))
                 (##map __tmp237266 _%methods233849%_)))
              (_%_233862%_
               (let ((__tmp237268
                      (lambda (_%g233854233857%_ _%g233855233859%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%method-calls233140%_
                           _%g233854233857%_
                           _%g233855233859%_)))))
                 (declare (not safe))
                 (##for-each
                  __tmp237268
                  _%methods233849%_
                  _%$methods233853%_)))
              (_%methods-bind233872%_
               (let ((__tmp237269
                      (lambda (_%g233864233867%_ _%g233865233869%_)
                        (_%generate-method-bind233050%_
                         _%$klass233845%_
                         _%$method-table233847%_
                         _%g233864233867%_
                         _%g233865233869%_))))
                 (declare (not safe))
                 (##map __tmp237269 _%methods233849%_ _%$methods233853%_)))
              (_%slots233874%_
               (let () (declare (not safe)) (__hash-keys _%slot-refs233141%_)))
              (_%$slots233878%_
               (let ((__tmp237270
                      (lambda (_%id233876%_)
                        (let ((__tmp237271 (gensym _%id233876%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp237271)))))
                 (declare (not safe))
                 (##map __tmp237270 _%slots233874%_)))
              (_%_233887%_
               (let ((__tmp237272
                      (lambda (_%g233879233882%_ _%g233880233884%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%slot-refs233141%_
                           _%g233879233882%_
                           _%g233880233884%_)))))
                 (declare (not safe))
                 (##for-each __tmp237272 _%slots233874%_ _%$slots233878%_)))
              (_%slots-bind233896%_
               (let ((__tmp237273
                      (lambda (_%g233888233891%_ _%g233889233893%_)
                        (_%generate-slot-bind233051%_
                         _%$klass233845%_
                         _%g233888233891%_
                         _%g233889233893%_))))
                 (declare (not safe))
                 (##map __tmp237273 _%slots233874%_ _%$slots233878%_)))
              (_%specializer-clauses233994%_
               (map (lambda (_%clause233898%_)
                      (let* ((_%__stx236067236068%_ _%clause233898%_)
                             (_%g233901233916%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx236067236068%_)))))
                        (let ((_%__kont236069236070%_
                               (lambda (_%g233903233944%_
                                        _%g233904233945%_
                                        _%g233905233946%_)
                                 (let* ((_%receiver233975%_
                                         (let ((_%$e233972%_
                                                (gxc#apply-extract-receiver
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#begin))
                                                       _%g233903233944%_))))
                                           (if _%$e233972%_
                                               _%$e233972%_
                                               _%g233905233946%_)))
                                        (_%body233981%_
                                         (map (lambda (_%g233976233978%_)
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%receiver233975%_
                                                 _%$klass233845%_
                                                 _%method-calls233140%_
                                                 _%slot-refs233141%_
                                                 _%g233976233978%_))
                                              _%g233903233944%_)))
                                   (cons (cons _%g233905233946%_
                                               _%g233904233945%_)
                                         _%body233981%_))))
                              (_%__kont236071236072%_
                               (lambda () _%clause233898%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx236067236068%_))
                              (let ((_%e233906233928%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx236067236068%_))))
                                (let ((_%tl233908233933%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e233906233928%_)))
                                      (_%hd233907233931%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e233906233928%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd233907233931%_))
                                      (let ((_%e233909233936%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd233907233931%_))))
                                        (let ((_%tl233911233941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e233909233936%_)))
                                              (_%hd233910233939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e233909233936%_))))
                                          (_%__kont236069236070%_
                                           _%tl233908233933%_
                                           _%tl233911233941%_
                                           _%hd233910233939%_)))
                                      (_%__kont236071236072%_))))
                              (_%__kont236071236072%_)))))
                    (let ((__tmp237274
                           (lambda (_%g233986233989%_ _%g233987233991%_)
                             (cons _%g233986233989%_ _%g233987233991%_))))
                      (declare (not safe))
                      (foldr__0 __tmp237274 '() _%clause233700233738%_))))
              (_%specializer-impl233996%_
               (let ((__tmp237275
                      (cons '%#case-lambda _%specializer-clauses233994%_)))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp237275 _%stx233048%_)))
              (_%specializer-impl233998%_
               (_%generate-specializer-impl233052%_
                _%$klass233845%_
                _%$method-table233847%_
                _%methods-bind233872%_
                _%slots-bind233896%_
                _%specializer-impl233996%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp237277
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g233059233121%_)))
                                                       (__tmp237276
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%specializer-id233843%_))))
                                                   (declare (not safe))
                                                   (gxc#verbose
                                                    '"generate method specializer "
                                                    __tmp237277
                                                    '" => "
                                                    __tmp237276))
                                                 (_%generate-specializer-def233053%_
                                                  _%g233059233121%_
                                                  _%specializer-id233843%_
                                                  _%specializer-impl233998%_))))))))
                           (_%loop233695233723%_ _%target233692233718%_ '()))
                         (_%g233686233705%_ _%g233687233708%_)))))
               (_%g233686233705%_ _%g233687233708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g233686233705%_
                                                _%g233687233708%_)))))
                                   (_%g233685234001%_ _%g233058233120%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g233058233120%_))
                                     (let* ((_%g234005234035%_
                                             (lambda (_%g234006234032%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g234006234032%_))))
                                            (_%g234004234662%_
                                             (lambda (_%g234006234038%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g234006234038%_))
                                                   (let ((_%e234010234040%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g234006234038%_))))
                                                     (let ((_%hd234011234043%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e234010234040%_)))
                                                           (_%tl234012234045%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e234010234040%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl234012234045%_))
                                                           (let ((_%e234013234048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl234012234045%_))))
                     (let ((_%hd234014234051%_
                            (let ()
                              (declare (not safe))
                              (##car _%e234013234048%_)))
                           (_%tl234015234053%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e234013234048%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd234014234051%_))
                           (let ((_%e234016234056%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd234014234051%_))))
                             (let ((_%hd234017234059%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e234016234056%_)))
                                   (_%tl234018234061%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e234016234056%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd234017234059%_))
                                   (let ((_%e234019234064%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd234017234059%_))))
                                     (let ((_%hd234020234067%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e234019234064%_)))
                                           (_%tl234021234069%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e234019234064%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd234020234067%_))
                                           (let ((_%e234022234072%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd234020234067%_))))
                                             (let ((_%hd234023234075%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e234022234072%_)))
                                                   (_%tl234024234077%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e234022234072%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl234024234077%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl234021234069%_))
                                                       (let ((_%e234025234080%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl234021234069%_))))
                 (let ((_%hd234026234083%_
                        (let ()
                          (declare (not safe))
                          (##car _%e234025234080%_)))
                       (_%tl234027234085%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e234025234080%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl234027234085%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl234018234061%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl234015234053%_))
                               (let ((_%e234028234088%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl234015234053%_))))
                                 (let ((_%hd234029234091%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e234028234088%_)))
                                       (_%tl234030234093%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e234028234088%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl234030234093%_))
                                       (let ()
                                         (let* ((_%g234122234140%_
                                                 (lambda (_%g234123234137%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g234123234137%_))))
                                                (_%g234121234196%_
                                                 (lambda (_%g234123234143%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g234123234143%_))
                                                       (let ((_%e234127234145%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g234123234143%_))))
                 (let ((_%hd234128234148%_
                        (let ()
                          (declare (not safe))
                          (##car _%e234127234145%_)))
                       (_%tl234129234150%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e234127234145%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl234129234150%_))
                       (let ((_%e234130234153%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl234129234150%_))))
                         (let ((_%hd234131234156%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e234130234153%_)))
                               (_%tl234132234158%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e234130234153%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd234131234156%_))
                               (let ((_%e234133234161%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd234131234156%_))))
                                 (let ((_%hd234134234164%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e234133234161%_)))
                                       (_%tl234135234166%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e234133234161%_))))
                                   (let ((_%receiver234190%_
                                          (let ((_%$e234187%_
                                                 (gxc#apply-extract-receiver
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#begin))
                                                        _%tl234132234158%_))))
                                            (if _%$e234187%_
                                                _%$e234187%_
                                                _%hd234134234164%_))))
                                     (for-each
                                      (lambda (_%g234191234193%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver234190%_
                                         _%method-calls233140%_
                                         _%slot-refs233141%_
                                         _%g234191234193%_))
                                      _%tl234132234158%_))))
                               (_%g234122234140%_ _%g234123234143%_))))
                       (_%g234122234140%_ _%g234123234143%_))))
               (_%g234122234140%_ _%g234123234143%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g234121234196%_
                                            _%hd234026234083%_))
                                         (let* ((_%g234199234218%_
                                                 (lambda (_%g234200234215%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g234200234215%_))))
                                                (_%g234198234340%_
                                                 (lambda (_%g234200234221%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g234200234221%_))
                                                       (let ((_%e234202234223%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g234200234221%_))))
                 (let ((_%hd234203234226%_
                        (let ()
                          (declare (not safe))
                          (##car _%e234202234223%_)))
                       (_%tl234204234228%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e234202234223%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? _%tl234204234228%_))
                       (let ((_g237278_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 _%tl234204234228%_
                                 '0))))
                         (begin
                           (let ((_g237279_
                                  (let ()
                                    (declare (not safe))
                                    (if (##values? _g237278_)
                                        (##values-length _g237278_)
                                        1))))
                             (if (not (let ()
                                        (declare (not safe))
                                        (##fx= _g237279_ 2)))
                                 (error "Context expects 2 values" _g237279_)))
                           (let ((_%target234205234231%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g237278_ 0)))
                                 (_%tl234207234233%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g237278_ 1))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl234207234233%_))
                                 (letrec ((_%loop234208234236%_
                                           (lambda (_%hd234206234239%_
                                                    _%clause234212234241%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd234206234239%_))
                                                 (let ((_%e234209234243%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd234206234239%_))))
                                                   (let ((_%lp-hd234210234246%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e234209234243%_)))
                                                         (_%lp-tl234211234248%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e234209234243%_))))
                                                     (_%loop234208234236%_
                                                      _%lp-tl234211234248%_
                                                      (cons _%lp-hd234210234246%_
                                                            _%clause234212234241%_))))
                                                 (let ((_%clause234213234251%_
                                                        (reverse _%clause234212234241%_)))
                                                   (for-each
                                                    (lambda (_%clause234266%_)
                                                      (let* ((_%g234268234283%_
                                                              (lambda (_%g234269234280%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g234269234280%_))))
                     (_%g234267234330%_
                      (lambda (_%g234269234286%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g234269234286%_))
                            (let ((_%e234273234288%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g234269234286%_))))
                              (let ((_%hd234274234291%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e234273234288%_)))
                                    (_%tl234275234293%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e234273234288%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd234274234291%_))
                                    (let ((_%e234276234296%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd234274234291%_))))
                                      (let ((_%hd234277234299%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e234276234296%_)))
                                            (_%tl234278234301%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e234276234296%_))))
                                        (let ((_%receiver234324%_
                                               (let ((_%$e234321%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%tl234275234293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e234321%_
                                                     _%$e234321%_
                                                     _%hd234277234299%_))))
                                          (for-each
                                           (lambda (_%g234325234327%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver234324%_
                                              _%method-calls233140%_
                                              _%slot-refs233141%_
                                              _%g234325234327%_))
                                           _%tl234275234293%_))))
                                    (_%g234268234283%_ _%g234269234286%_))))
                            (_%g234268234283%_ _%g234269234286%_)))))
                (_%g234267234330%_ _%clause234266%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp237280
                                                           (lambda (_%g234332234335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g234333234337%_)
                     (cons _%g234332234335%_ _%g234333234337%_))))
              (declare (not safe))
              (foldr__0 __tmp237280 '() _%clause234213234251%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%loop234208234236%_
                                    _%target234205234231%_
                                    '()))
                                 (_%g234199234218%_ _%g234200234221%_)))))
                       (_%g234199234218%_ _%g234200234221%_))))
               (_%g234199234218%_ _%g234200234221%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g234198234340%_
                                            _%hd234029234091%_))
                                         (if (_%no-specializer?233144%_)
                                             _%stx233048%_
                                             (let* ((_%specializer-id234349%_
                                                     (let* ((_%id234343%_
                                                             (let ((__tmp237281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g233059233121%_))))
                       (declare (not safe))
                       (make-symbol__1 __tmp237281 '"::specialize")))
                    (_%specializer-id234346%_
                     (let ((__tmp237282
                            (let ()
                              (declare (not safe))
                              (gx#stx-source _%stx233048%_))))
                       (declare (not safe))
                       (gx#core-quote-syntax__1 _%id234343%_ __tmp237282))))
               (let ()
                 (declare (not safe))
                 (gx#core-bind-runtime!__0 _%specializer-id234346%_))
               _%specializer-id234346%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$klass234351%_
                                                     (let ((__tmp237283
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__klass))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp237283)))
                                                    (_%$method-table234353%_
                                                     (let ((__tmp237284
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__method-table))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp237284)))
                                                    (_%methods234355%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%method-calls233140%_)))
                                                    (_%$methods234359%_
                                                     (let ((__tmp237285
                                                            (lambda (_%id234357%_)
                                                              (let ((__tmp237286
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id234357%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp237286)))))
               (declare (not safe))
               (##map __tmp237285 _%methods234355%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_234368%_
                                                     (let ((__tmp237287
                                                            (lambda (_%g234360234363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g234361234365%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%method-calls233140%_
                         _%g234360234363%_
                         _%g234361234365%_)))))
               (declare (not safe))
               (##for-each __tmp237287 _%methods234355%_ _%$methods234359%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%methods-bind234378%_
                                                     (let ((__tmp237288
                                                            (lambda (_%g234370234373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g234371234375%_)
                      (_%generate-method-bind233050%_
                       _%$klass234351%_
                       _%$method-table234353%_
                       _%g234370234373%_
                       _%g234371234375%_))))
               (declare (not safe))
               (##map __tmp237288 _%methods234355%_ _%$methods234359%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots234380%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%slot-refs233141%_)))
                                                    (_%$slots234384%_
                                                     (let ((__tmp237289
                                                            (lambda (_%id234382%_)
                                                              (let ((__tmp237290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id234382%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp237290)))))
               (declare (not safe))
               (##map __tmp237289 _%slots234380%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_234393%_
                                                     (let ((__tmp237291
                                                            (lambda (_%g234385234388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g234386234390%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%slot-refs233141%_
                         _%g234385234388%_
                         _%g234386234390%_)))))
               (declare (not safe))
               (##for-each __tmp237291 _%slots234380%_ _%$slots234384%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots-bind234402%_
                                                     (let ((__tmp237292
                                                            (lambda (_%g234394234397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g234395234399%_)
                      (_%generate-slot-bind233051%_
                       _%$klass234351%_
                       _%g234394234397%_
                       _%g234395234399%_))))
               (declare (not safe))
               (##map __tmp237292 _%slots234380%_ _%$slots234384%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-lambda-expr234494%_
                                                     (let* ((_%g234404234422%_
                                                             (lambda (_%g234405234419%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g234405234419%_))))
                    (_%g234403234491%_
                     (lambda (_%g234405234425%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%g234405234425%_))
                           (let ((_%e234409234427%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%g234405234425%_))))
                             (let ((_%hd234410234430%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e234409234427%_)))
                                   (_%tl234411234432%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e234409234427%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl234411234432%_))
                                   (let ((_%e234412234435%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl234411234432%_))))
                                     (let ((_%hd234413234438%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e234412234435%_)))
                                           (_%tl234414234440%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e234412234435%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd234413234438%_))
                                           (let ((_%e234415234443%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd234413234438%_))))
                                             (let ((_%hd234416234446%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e234415234443%_)))
                                                   (_%tl234417234448%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e234415234443%_))))
                                               (let* ((_%receiver234482%_
                                                       (let ((_%$e234479%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%tl234414234440%_))))
                 (if _%$e234479%_ _%$e234479%_ _%hd234416234446%_)))
              (_%body234488%_
               (map (lambda (_%g234483234485%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver234482%_
                       _%$klass234351%_
                       _%method-calls233140%_
                       _%slot-refs233141%_
                       _%g234483234485%_))
                    _%tl234414234440%_))
              (__tmp237293
               (cons '%#lambda
                     (cons (cons _%hd234416234446%_ _%tl234417234448%_)
                           _%body234488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp237293
                                                  _%hd234026234083%_))))
                                           (_%g234404234422%_
                                            _%g234405234425%_))))
                                   (_%g234404234422%_ _%g234405234425%_))))
                           (_%g234404234422%_ _%g234405234425%_)))))
               (_%g234403234491%_ _%hd234026234083%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-case-lambda-expr234655%_
                                                     (let* ((_%g234496234515%_
                                                             (lambda (_%g234497234512%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g234497234512%_))))
                    (_%g234495234652%_
                     (lambda (_%g234497234518%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%g234497234518%_))
                           (let ((_%e234499234520%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%g234497234518%_))))
                             (let ((_%hd234500234523%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e234499234520%_)))
                                   (_%tl234501234525%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e234499234520%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair/null? _%tl234501234525%_))
                                   (let ((_g237294_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-split-splice
                                             _%tl234501234525%_
                                             '0))))
                                     (begin
                                       (let ((_g237295_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g237294_)
                                                    (##values-length _g237294_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g237295_ 2)))
                                             (error "Context expects 2 values"
                                                    _g237295_)))
                                       (let ((_%target234502234528%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g237294_ 0)))
                                             (_%tl234504234530%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g237294_ 1))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl234504234530%_))
                                             (letrec ((_%loop234505234533%_
                                                       (lambda (_%hd234503234536%_
                                                                _%clause234509234538%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%hd234503234536%_))
                     (let ((_%e234506234540%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%hd234503234536%_))))
                       (let ((_%lp-hd234507234543%_
                              (let ()
                                (declare (not safe))
                                (##car _%e234506234540%_)))
                             (_%lp-tl234508234545%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e234506234540%_))))
                         (_%loop234505234533%_
                          _%lp-tl234508234545%_
                          (cons _%lp-hd234507234543%_
                                _%clause234509234538%_))))
                     (let* ((_%clause234510234548%_
                             (reverse _%clause234509234538%_))
                            (_%clauses234650%_
                             (map (lambda (_%clause234564%_)
                                    (let* ((_%__stx236087236088%_
                                            _%clause234564%_)
                                           (_%g234567234582%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%__stx236087236088%_)))))
                                      (let ((_%__kont236089236090%_
                                             (lambda (_%g234569234610%_
                                                      _%g234570234611%_
                                                      _%g234571234612%_)
                                               (let* ((_%receiver234631%_
                                                       (let ((_%$e234628%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g234569234610%_))))
                 (if _%$e234628%_ _%$e234628%_ _%g234571234612%_)))
              (_%body234637%_
               (map (lambda (_%g234632234634%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver234631%_
                       _%$klass234351%_
                       _%method-calls233140%_
                       _%slot-refs233141%_
                       _%g234632234634%_))
                    _%g234569234610%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g234571234612%_
                                                             _%g234570234611%_)
                                                       _%body234637%_))))
                                            (_%__kont236091236092%_
                                             (lambda () _%clause234564%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%__stx236087236088%_))
                                            (let ((_%e234572234594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%__stx236087236088%_))))
                                              (let ((_%tl234574234599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e234572234594%_)))
                                                    (_%hd234573234597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e234572234594%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd234573234597%_))
                                                    (let ((_%e234575234602%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd234573234597%_))))
                                                      (let ((_%tl234577234607%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e234575234602%_)))
                    (_%hd234576234605%_
                     (let () (declare (not safe)) (##car _%e234575234602%_))))
                (_%__kont236089236090%_
                 _%tl234574234599%_
                 _%tl234577234607%_
                 _%hd234576234605%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont236091236092%_))))
                                            (_%__kont236091236092%_)))))
                                  (let ((__tmp237296
                                         (lambda (_%g234642234645%_
                                                  _%g234643234647%_)
                                           (cons _%g234642234645%_
                                                 _%g234643234647%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp237296
                                     '()
                                     _%clause234510234548%_))))
                            (__tmp237297
                             (cons '%#case-lambda _%clauses234650%_)))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp237297
                        _%hd234029234091%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop234505234533%_
                                                _%target234502234528%_
                                                '()))
                                             (_%g234496234515%_
                                              _%g234497234518%_)))))
                                   (_%g234496234515%_ _%g234497234518%_))))
                           (_%g234496234515%_ _%g234497234518%_)))))
               (_%g234495234652%_ _%hd234029234091%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl234657%_
                                                     (let ((__tmp237298
                                                            (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _%hd234023234075%_ '())
                                            (cons _%specializer-lambda-expr234494%_
                                                  '()))
                                      '())
                                (cons _%specializer-case-lambda-expr234655%_
                                      '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp237298 _%stx233048%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl234659%_
                                                     (_%generate-specializer-impl233052%_
                                                      _%$klass234351%_
                                                      _%$method-table234353%_
                                                      _%methods-bind234378%_
                                                      _%slots-bind234402%_
                                                      _%specializer-impl234657%_)))
                                               (let ((__tmp237300
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g233059233121%_)))
                                                     (__tmp237299
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%specializer-id234349%_))))
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"generate method specializer "
                                                  __tmp237300
                                                  '" => "
                                                  __tmp237299))
                                               (_%generate-specializer-def233053%_
                                                _%g233059233121%_
                                                _%specializer-id234349%_
                                                _%specializer-impl234659%_))))
                                       (_%g234005234035%_ _%g234006234038%_))))
                               (_%g234005234035%_ _%g234006234038%_))
                           (_%g234005234035%_ _%g234006234038%_))
                       (_%g234005234035%_ _%g234006234038%_))))
               (_%g234005234035%_ _%g234006234038%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g234005234035%_
                                                    _%g234006234038%_))))
                                           (_%g234005234035%_
                                            _%g234006234038%_))))
                                   (_%g234005234035%_ _%g234006234038%_))))
                           (_%g234005234035%_ _%g234006234038%_))))
                   (_%g234005234035%_ _%g234006234038%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g234005234035%_
                                                    _%g234006234038%_)))))
                                       (_%g234004234662%_ _%g233058233120%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g233058233120%_))
                                         (let* ((_%g234666234719%_
                                                 (lambda (_%g234667234716%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g234667234716%_))))
                                                (_%g234665235884%_
                                                 (lambda (_%g234667234722%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g234667234722%_))
                                                       (let ((_%e234673234724%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g234667234722%_))))
                 (let ((_%hd234674234727%_
                        (let ()
                          (declare (not safe))
                          (##car _%e234673234724%_)))
                       (_%tl234675234729%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e234673234724%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd234674234727%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd234674234727%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl234675234729%_))
                               (let ((_%e234676234732%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl234675234729%_))))
                                 (let ((_%hd234677234735%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e234676234732%_)))
                                       (_%tl234678234737%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e234676234732%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd234677234735%_))
                                       (let ((_%e234679234740%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd234677234735%_))))
                                         (let ((_%hd234680234743%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e234679234740%_)))
                                               (_%tl234681234745%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e234679234740%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd234680234743%_))
                                               (let ((_%e234682234748%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd234680234743%_))))
                                                 (let ((_%hd234683234751%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e234682234748%_)))
                                                       (_%tl234684234753%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e234682234748%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd234683234751%_))
                                                       (let ((_%e234685234756%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd234683234751%_))))
                 (let ((_%hd234686234759%_
                        (let ()
                          (declare (not safe))
                          (##car _%e234685234756%_)))
                       (_%tl234687234761%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e234685234756%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl234687234761%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl234684234753%_))
                           (let ((_%e234688234764%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl234684234753%_))))
                             (let ((_%hd234689234767%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e234688234764%_)))
                                   (_%tl234690234769%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e234688234764%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd234689234767%_))
                                   (let ((_%e234691234772%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd234689234767%_))))
                                     (let ((_%hd234692234775%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e234691234772%_)))
                                           (_%tl234693234777%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e234691234772%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd234692234775%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd234692234775%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl234693234777%_))
                                                   (let ((_%e234694234780%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl234693234777%_))))
                                                     (let ((_%hd234695234783%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e234694234780%_)))
                                                           (_%tl234696234785%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e234694234780%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd234695234783%_))
                                                           (let ((_%e234697234788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd234695234783%_))))
                     (let ((_%hd234698234791%_
                            (let ()
                              (declare (not safe))
                              (##car _%e234697234788%_)))
                           (_%tl234699234793%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e234697234788%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd234698234791%_))
                           (let ((_%e234700234796%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd234698234791%_))))
                             (let ((_%hd234701234799%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e234700234796%_)))
                                   (_%tl234702234801%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e234700234796%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd234701234799%_))
                                   (let ((_%e234703234804%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd234701234799%_))))
                                     (let ((_%hd234704234807%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e234703234804%_)))
                                           (_%tl234705234809%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e234703234804%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl234705234809%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl234702234801%_))
                                               (let ((_%e234706234812%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl234702234801%_))))
                                                 (let ((_%hd234707234815%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e234706234812%_)))
                                                       (_%tl234708234817%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e234706234812%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl234708234817%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl234699234793%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl234696234785%_))
                       (let ((_%e234709234820%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl234696234785%_))))
                         (let ((_%hd234710234823%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e234709234820%_)))
                               (_%tl234711234825%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e234709234820%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl234711234825%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl234690234769%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl234681234745%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl234678234737%_))
                                           (let ((_%e234712234828%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl234678234737%_))))
                                             (let ((_%hd234713234831%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e234712234828%_)))
                                                   (_%tl234714234833%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e234712234828%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl234714234833%_))
                                                   (let* ((_%g234880234942%_
                                                           (lambda (_%g234881234939%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g234881234939%_))))
                  (_%g234879235881%_
                   (lambda (_%g234881234945%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%g234881234945%_))
                         (let ((_%e234887234947%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%g234881234945%_))))
                           (let ((_%hd234888234950%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e234887234947%_)))
                                 (_%tl234889234952%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e234887234947%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd234888234950%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#lambda
                                        _%hd234888234950%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl234889234952%_))
                                         (let ((_%e234890234955%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl234889234952%_))))
                                           (let ((_%hd234891234958%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e234890234955%_)))
                                                 (_%tl234892234960%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e234890234955%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl234892234960%_))
                                                 (let ((_%e234893234963%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl234892234960%_))))
                                                   (let ((_%hd234894234966%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e234893234963%_)))
                                                         (_%tl234895234968%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e234893234963%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd234894234966%_))
                                                         (let ((_%e234896234971%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd234894234966%_))))
                   (let ((_%hd234897234974%_
                          (let ()
                            (declare (not safe))
                            (##car _%e234896234971%_)))
                         (_%tl234898234976%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e234896234971%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd234897234974%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#call _%hd234897234974%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl234898234976%_))
                                 (let ((_%e234899234979%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl234898234976%_))))
                                   (let ((_%hd234900234982%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e234899234979%_)))
                                         (_%tl234901234984%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e234899234979%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd234900234982%_))
                                         (let ((_%e234902234987%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd234900234982%_))))
                                           (let ((_%hd234903234990%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e234902234987%_)))
                                                 (_%tl234904234992%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e234902234987%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd234903234990%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd234903234990%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl234904234992%_))
                                                         (let ((_%e234905234995%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl234904234992%_))))
                   (let ((_%hd234906234998%_
                          (let ()
                            (declare (not safe))
                            (##car _%e234905234995%_)))
                         (_%tl234907235000%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e234905234995%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl234907235000%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl234901234984%_))
                             (let ((_%e234908235003%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl234901234984%_))))
                               (let ((_%hd234909235006%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e234908235003%_)))
                                     (_%tl234910235008%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e234908235003%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd234909235006%_))
                                     (let ((_%e234911235011%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd234909235006%_))))
                                       (let ((_%hd234912235014%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e234911235011%_)))
                                             (_%tl234913235016%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e234911235011%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%hd234912235014%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#ref
                                                    _%hd234912235014%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl234913235016%_))
                                                     (let ((_%e234914235019%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl234913235016%_))))
                                                       (let ((_%hd234915235022%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e234914235019%_)))
                     (_%tl234916235024%_
                      (let () (declare (not safe)) (##cdr _%e234914235019%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl234916235024%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl234910235008%_))
                         (let ((_%e234917235027%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl234910235008%_))))
                           (let ((_%hd234918235030%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e234917235027%_)))
                                 (_%tl234919235032%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e234917235027%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd234918235030%_))
                                 (let ((_%e234920235035%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%hd234918235030%_))))
                                   (let ((_%hd234921235038%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e234920235035%_)))
                                         (_%tl234922235040%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e234920235035%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd234921235038%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd234921235038%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl234922235040%_))
                                                 (let ((_%e234923235043%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl234922235040%_))))
                                                   (let ((_%hd234924235046%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e234923235043%_)))
                                                         (_%tl234925235048%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e234923235043%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl234925235048%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair/null? _%tl234919235032%_))
                     (if (let ((__tmp237301
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-length _%tl234919235032%_))))
                           (declare (not safe))
                           (##fx>= __tmp237301 '1))
                         (let ((_g237302_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-split-splice
                                   _%tl234919235032%_
                                   '1))))
                           (begin
                             (let ((_g237303_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g237302_)
                                          (##values-length _g237302_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g237303_ 2)))
                                   (error "Context expects 2 values"
                                          _g237303_)))
                             (let ((_%target234926235051%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g237302_ 0)))
                                   (_%tl234928235053%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g237302_ 1))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl234928235053%_))
                                   (let ((_%e234935235056%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl234928235053%_))))
                                     (let ((_%hd234936235059%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e234935235056%_)))
                                           (_%tl234937235061%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e234935235056%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl234937235061%_))
                                           (letrec ((_%loop234929235064%_
                                                     (lambda (_%hd234927235067%_
                                                              _%kw-ref234933235069%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd234927235067%_))
                                                           (let ((_%e234930235071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd234927235067%_))))
                     (let ((_%lp-hd234931235074%_
                            (let ()
                              (declare (not safe))
                              (##car _%e234930235071%_)))
                           (_%lp-tl234932235076%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e234930235071%_))))
                       (_%loop234929235064%_
                        _%lp-tl234932235076%_
                        (cons _%lp-hd234931235074%_ _%kw-ref234933235069%_))))
                   (let ((_%kw-ref234934235079%_
                          (reverse _%kw-ref234933235069%_)))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl234895234968%_))
                         (let* ((_%kw-count235136%_
                                 (length (let ((__tmp237304
                                                (lambda (_%g235128235131%_
                                                         _%g235129235133%_)
                                                  (cons _%g235128235131%_
                                                        _%g235129235133%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp237304
                                            '()
                                            _%kw-ref234934235079%_))))
                                (_%self-index235138%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%kw-count235136%_ '1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#lambda-expr? _%hd234707234815%_))
                               (let* ((_%g235142235156%_
                                       (lambda (_%g235143235153%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g235143235153%_))))
                                      (_%g235141235279%_
                                       (lambda (_%g235143235159%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%g235143235159%_))
                                             (let ((_%e235146235161%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%g235143235159%_))))
                                               (let ((_%hd235147235164%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e235146235161%_)))
                                                     (_%tl235148235166%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e235146235161%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl235148235166%_))
                                                     (let ((_%e235149235169%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl235148235166%_))))
                                                       (let ((_%hd235150235172%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e235149235169%_)))
                     (_%tl235151235174%_
                      (let () (declare (not safe)) (##cdr _%e235149235169%_))))
                 (let* ((_%self235195%_
                         (list-ref _%hd235150235172%_ _%self-index235138%_))
                        (_%receiver235200%_
                         (let ((_%$e235197%_
                                (gxc#apply-extract-receiver
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '%#begin))
                                       _%tl235151235174%_))))
                           (if _%$e235197%_ _%$e235197%_ _%self235195%_))))
                   (for-each
                    (lambda (_%g235202235204%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver235200%_
                       _%method-calls233140%_
                       _%slot-refs233141%_
                       _%g235202235204%_))
                    _%tl235151235174%_)
                   (if (_%no-specializer?233144%_)
                       _%stx233048%_
                       (let* ((_%specializer-id235213%_
                               (let* ((_%id235207%_
                                       (let ((__tmp237305
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _%g233059233121%_))))
                                         (declare (not safe))
                                         (make-symbol__1
                                          __tmp237305
                                          '"::specialize")))
                                      (_%specializer-id235210%_
                                       (let ((__tmp237306
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-source
                                                 _%stx233048%_))))
                                         (declare (not safe))
                                         (gx#core-quote-syntax__1
                                          _%id235207%_
                                          __tmp237306))))
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-bind-runtime!__0
                                    _%specializer-id235210%_))
                                 _%specializer-id235210%_))
                              (_%$klass235215%_
                               (let ((__tmp237307
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__klass))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp237307)))
                              (_%$method-table235217%_
                               (let ((__tmp237308
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__method-table))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp237308)))
                              (_%methods235219%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%method-calls233140%_)))
                              (_%$methods235223%_
                               (let ((__tmp237309
                                      (lambda (_%id235221%_)
                                        (let ((__tmp237310
                                               (gensym _%id235221%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp237310)))))
                                 (declare (not safe))
                                 (##map __tmp237309 _%methods235219%_)))
                              (_%_235232%_
                               (let ((__tmp237311
                                      (lambda (_%g235224235227%_
                                               _%g235225235229%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%method-calls233140%_
                                           _%g235224235227%_
                                           _%g235225235229%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp237311
                                  _%methods235219%_
                                  _%$methods235223%_)))
                              (_%methods-bind235242%_
                               (let ((__tmp237312
                                      (lambda (_%g235234235237%_
                                               _%g235235235239%_)
                                        (_%generate-method-bind233050%_
                                         _%$klass235215%_
                                         _%$method-table235217%_
                                         _%g235234235237%_
                                         _%g235235235239%_))))
                                 (declare (not safe))
                                 (##map __tmp237312
                                        _%methods235219%_
                                        _%$methods235223%_)))
                              (_%slots235244%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%slot-refs233141%_)))
                              (_%$slots235248%_
                               (let ((__tmp237313
                                      (lambda (_%id235246%_)
                                        (let ((__tmp237314
                                               (gensym _%id235246%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp237314)))))
                                 (declare (not safe))
                                 (##map __tmp237313 _%slots235244%_)))
                              (_%_235257%_
                               (let ((__tmp237315
                                      (lambda (_%g235249235252%_
                                               _%g235250235254%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%slot-refs233141%_
                                           _%g235249235252%_
                                           _%g235250235254%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp237315
                                  _%slots235244%_
                                  _%$slots235248%_)))
                              (_%slots-bind235266%_
                               (let ((__tmp237316
                                      (lambda (_%g235258235261%_
                                               _%g235259235263%_)
                                        (_%generate-slot-bind233051%_
                                         _%$klass235215%_
                                         _%g235258235261%_
                                         _%g235259235263%_))))
                                 (declare (not safe))
                                 (##map __tmp237316
                                        _%slots235244%_
                                        _%$slots235248%_)))
                              (_%specializer-impl235274%_
                               (let* ((_%specializer-body235272%_
                                       (map (lambda (_%g235267235269%_)
                                              (gxc#apply-subst-object-refs__%
                                               '#f
                                               _%receiver235200%_
                                               _%$klass235215%_
                                               _%method-calls233140%_
                                               _%slot-refs233141%_
                                               _%g235267235269%_))
                                            _%tl235151235174%_))
                                      (__tmp237317
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _%hd234686234759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#let-values
                                   (cons (cons (cons (cons _%hd234704234807%_
                                                           '())
                                                     (cons (let ((__tmp237318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#lambda
                                (cons _%hd235150235172%_
                                      _%specializer-body235272%_))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp237318 _%hd234707234815%_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%hd234710234823%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%hd234713234831%_
                                                         '())))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp237317
                                  _%stx233048%_)))
                              (_%specializer-impl235276%_
                               (_%generate-specializer-impl233052%_
                                _%$klass235215%_
                                _%$method-table235217%_
                                _%methods-bind235242%_
                                _%slots-bind235266%_
                                _%specializer-impl235274%_)))
                         (let ((__tmp237320
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%g233059233121%_)))
                               (__tmp237319
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%specializer-id235213%_))))
                           (declare (not safe))
                           (gxc#verbose
                            '"generate method specializer "
                            __tmp237320
                            '" => "
                            __tmp237319))
                         (_%generate-specializer-def233053%_
                          _%g233059233121%_
                          _%specializer-id235213%_
                          _%specializer-impl235276%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g235142235156%_
                                                      _%g235143235159%_))))
                                             (_%g235142235156%_
                                              _%g235143235159%_)))))
                                 (_%g235141235279%_ _%hd234707234815%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _%hd234707234815%_))
                                   (let* ((_%g235283235313%_
                                           (lambda (_%g235284235310%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g235284235310%_))))
                                          (_%g235282235877%_
                                           (lambda (_%g235284235316%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%g235284235316%_))
                                                 (let ((_%e235288235318%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g235284235316%_))))
                                                   (let ((_%hd235289235321%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e235288235318%_)))
                                                         (_%tl235290235323%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e235288235318%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl235290235323%_))
                                                         (let ((_%e235291235326%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl235290235323%_))))
                   (let ((_%hd235292235329%_
                          (let ()
                            (declare (not safe))
                            (##car _%e235291235326%_)))
                         (_%tl235293235331%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e235291235326%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd235292235329%_))
                         (let ((_%e235294235334%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd235292235329%_))))
                           (let ((_%hd235295235337%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e235294235334%_)))
                                 (_%tl235296235339%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e235294235334%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd235295235337%_))
                                 (let ((_%e235297235342%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%hd235295235337%_))))
                                   (let ((_%hd235298235345%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e235297235342%_)))
                                         (_%tl235299235347%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e235297235342%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd235298235345%_))
                                         (let ((_%e235300235350%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd235298235345%_))))
                                           (let ((_%hd235301235353%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e235300235350%_)))
                                                 (_%tl235302235355%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e235300235350%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl235302235355%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl235299235347%_))
                                                     (let ((_%e235303235358%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl235299235347%_))))
                                                       (let ((_%hd235304235361%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e235303235358%_)))
                     (_%tl235305235363%_
                      (let () (declare (not safe)) (##cdr _%e235303235358%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl235305235363%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl235296235339%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl235293235331%_))
                             (let ((_%e235306235366%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl235293235331%_))))
                               (let ((_%hd235307235369%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e235306235366%_)))
                                     (_%tl235308235371%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e235306235366%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl235308235371%_))
                                     (let ()
                                       (let* ((_%g235400235414%_
                                               (lambda (_%g235401235411%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g235401235411%_))))
                                              (_%g235399235461%_
                                               (lambda (_%g235401235417%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%g235401235417%_))
                                                     (let ((_%e235404235419%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%g235401235417%_))))
                                                       (let ((_%hd235405235422%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e235404235419%_)))
                     (_%tl235406235424%_
                      (let () (declare (not safe)) (##cdr _%e235404235419%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl235406235424%_))
                     (let ((_%e235407235427%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl235406235424%_))))
                       (let ((_%hd235408235430%_
                              (let ()
                                (declare (not safe))
                                (##car _%e235407235427%_)))
                             (_%tl235409235432%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e235407235427%_))))
                         (let* ((_%self235449%_
                                 (list-ref
                                  _%hd235408235430%_
                                  _%self-index235138%_))
                                (_%receiver235454%_
                                 (let ((_%$e235451%_
                                        (gxc#apply-extract-receiver
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin))
                                               _%tl235409235432%_))))
                                   (if _%$e235451%_
                                       _%$e235451%_
                                       _%self235449%_))))
                           (for-each
                            (lambda (_%g235456235458%_)
                              (gxc#apply-collect-object-refs__%
                               '#f
                               _%receiver235454%_
                               _%method-calls233140%_
                               _%slot-refs233141%_
                               _%g235456235458%_))
                            _%tl235409235432%_))))
                     (_%g235400235414%_ _%g235401235417%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g235400235414%_
                                                      _%g235401235417%_)))))
                                         (_%g235399235461%_
                                          _%hd235304235361%_))
                                       (let* ((_%g235464235483%_
                                               (lambda (_%g235465235480%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g235465235480%_))))
                                              (_%g235463235592%_
                                               (lambda (_%g235465235486%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%g235465235486%_))
                                                     (let ((_%e235467235488%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%g235465235486%_))))
                                                       (let ((_%hd235468235491%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e235467235488%_)))
                     (_%tl235469235493%_
                      (let () (declare (not safe)) (##cdr _%e235467235488%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair/null? _%tl235469235493%_))
                     (let ((_g237321_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-split-splice _%tl235469235493%_ '0))))
                       (begin
                         (let ((_g237322_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g237321_)
                                      (##values-length _g237321_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g237322_ 2)))
                               (error "Context expects 2 values" _g237322_)))
                         (let ((_%target235470235496%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g237321_ 0)))
                               (_%tl235472235498%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g237321_ 1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl235472235498%_))
                               (letrec ((_%loop235473235501%_
                                         (lambda (_%hd235471235504%_
                                                  _%clause235477235506%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd235471235504%_))
                                               (let ((_%e235474235508%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd235471235504%_))))
                                                 (let ((_%lp-hd235475235511%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e235474235508%_)))
                                                       (_%lp-tl235476235513%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e235474235508%_))))
                                                   (_%loop235473235501%_
                                                    _%lp-tl235476235513%_
                                                    (cons _%lp-hd235475235511%_
                                                          _%clause235477235506%_))))
                                               (let ((_%clause235478235516%_
                                                      (reverse _%clause235477235506%_)))
                                                 (for-each
                                                  (lambda (_%clause235531%_)
                                                    (let* ((_%g235533235544%_
                                                            (lambda (_%g235534235541%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g235534235541%_))))
                   (_%g235532235582%_
                    (lambda (_%g235534235547%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g235534235547%_))
                          (let ((_%e235537235549%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g235534235547%_))))
                            (let ((_%hd235538235552%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e235537235549%_)))
                                  (_%tl235539235554%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e235537235549%_))))
                              (let* ((_%self235570%_
                                      (list-ref
                                       _%hd235538235552%_
                                       _%self-index235138%_))
                                     (_%receiver235575%_
                                      (let ((_%$e235572%_
                                             (gxc#apply-extract-receiver
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#begin))
                                                    _%tl235539235554%_))))
                                        (if _%$e235572%_
                                            _%$e235572%_
                                            _%self235570%_))))
                                (for-each
                                 (lambda (_%g235577235579%_)
                                   (gxc#apply-collect-object-refs__%
                                    '#f
                                    _%receiver235575%_
                                    _%method-calls233140%_
                                    _%slot-refs233141%_
                                    _%g235577235579%_))
                                 _%tl235539235554%_))))
                          (_%g235533235544%_ _%g235534235547%_)))))
              (_%g235532235582%_ _%clause235531%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp237323
                                                         (lambda (_%g235584235587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g235585235589%_)
                   (cons _%g235584235587%_ _%g235585235589%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp237323
                                                     '()
                                                     _%clause235478235516%_))))))))
                                 (_%loop235473235501%_
                                  _%target235470235496%_
                                  '()))
                               (_%g235464235483%_ _%g235465235486%_)))))
                     (_%g235464235483%_ _%g235465235486%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g235464235483%_
                                                      _%g235465235486%_)))))
                                         (_%g235463235592%_
                                          _%hd235307235369%_))
                                       (if (_%no-specializer?233144%_)
                                           _%stx233048%_
                                           (let* ((_%specializer-id235601%_
                                                   (let* ((_%id235595%_
                                                           (let ((__tmp237324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g233059233121%_))))
                     (declare (not safe))
                     (make-symbol__1 __tmp237324 '"::specialize")))
                  (_%specializer-id235598%_
                   (let ((__tmp237325
                          (let ()
                            (declare (not safe))
                            (gx#stx-source _%stx233048%_))))
                     (declare (not safe))
                     (gx#core-quote-syntax__1 _%id235595%_ __tmp237325))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#core-bind-runtime!__0
                                                        _%specializer-id235598%_))
                                                     _%specializer-id235598%_))
                                                  (_%$klass235603%_
                                                   (let ((__tmp237326
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__klass))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp237326)))
                                                  (_%$method-table235605%_
                                                   (let ((__tmp237327
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__method-table))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp237327)))
                                                  (_%methods235607%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%method-calls233140%_)))
                                                  (_%$methods235611%_
                                                   (let ((__tmp237328
                                                          (lambda (_%id235609%_)
                                                            (let ((__tmp237329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id235609%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp237329)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp237328
                                                            _%methods235607%_)))
                                                  (_%_235620%_
                                                   (let ((__tmp237330
                                                          (lambda (_%g235612235615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g235613235617%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%method-calls233140%_
                       _%g235612235615%_
                       _%g235613235617%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp237330
                                                      _%methods235607%_
                                                      _%$methods235611%_)))
                                                  (_%methods-bind235630%_
                                                   (let ((__tmp237331
                                                          (lambda (_%g235622235625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g235623235627%_)
                    (_%generate-method-bind233050%_
                     _%$klass235603%_
                     _%$method-table235605%_
                     _%g235622235625%_
                     _%g235623235627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp237331
                                                            _%methods235607%_
                                                            _%$methods235611%_)))
                                                  (_%slots235632%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%slot-refs233141%_)))
                                                  (_%$slots235636%_
                                                   (let ((__tmp237332
                                                          (lambda (_%id235634%_)
                                                            (let ((__tmp237333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id235634%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp237333)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp237332
                                                            _%slots235632%_)))
                                                  (_%_235645%_
                                                   (let ((__tmp237334
                                                          (lambda (_%g235637235640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g235638235642%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%slot-refs233141%_
                       _%g235637235640%_
                       _%g235638235642%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp237334
                                                      _%slots235632%_
                                                      _%$slots235636%_)))
                                                  (_%slots-bind235654%_
                                                   (let ((__tmp237335
                                                          (lambda (_%g235646235649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g235647235651%_)
                    (_%generate-slot-bind233051%_
                     _%$klass235603%_
                     _%g235646235649%_
                     _%g235647235651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp237335
                                                            _%slots235632%_
                                                            _%$slots235636%_)))
                                                  (_%specializer-lambda-expr235732%_
                                                   (let* ((_%g235656235670%_
                                                           (lambda (_%g235657235667%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g235657235667%_))))
                  (_%g235655235729%_
                   (lambda (_%g235657235673%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%g235657235673%_))
                         (let ((_%e235660235675%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%g235657235673%_))))
                           (let ((_%hd235661235678%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e235660235675%_)))
                                 (_%tl235662235680%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e235660235675%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl235662235680%_))
                                 (let ((_%e235663235683%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl235662235680%_))))
                                   (let ((_%hd235664235686%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e235663235683%_)))
                                         (_%tl235665235688%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e235663235683%_))))
                                     (let* ((_%self235715%_
                                             (list-ref
                                              _%hd235664235686%_
                                              _%self-index235138%_))
                                            (_%receiver235720%_
                                             (let ((_%$e235717%_
                                                    (gxc#apply-extract-receiver
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%tl235665235688%_))))
                                               (if _%$e235717%_
                                                   _%$e235717%_
                                                   _%self235715%_)))
                                            (_%body235726%_
                                             (map (lambda (_%g235721235723%_)
                                                    (gxc#apply-subst-object-refs__%
                                                     '#f
                                                     _%receiver235720%_
                                                     _%$klass235603%_
                                                     _%method-calls233140%_
                                                     _%slot-refs233141%_
                                                     _%g235721235723%_))
                                                  _%tl235665235688%_))
                                            (__tmp237336
                                             (cons '%#lambda
                                                   (cons _%hd235664235686%_
                                                         _%body235726%_))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp237336
                                        _%hd235304235361%_))))
                                 (_%g235656235670%_ _%g235657235673%_))))
                         (_%g235656235670%_ _%g235657235673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g235655235729%_
                                                      _%hd235304235361%_)))
                                                  (_%specializer-case-lambda-expr235870%_
                                                   (let* ((_%g235734235753%_
                                                           (lambda (_%g235735235750%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g235735235750%_))))
                  (_%g235733235867%_
                   (lambda (_%g235735235756%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%g235735235756%_))
                         (let ((_%e235737235758%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%g235735235756%_))))
                           (let ((_%hd235738235761%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e235737235758%_)))
                                 (_%tl235739235763%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e235737235758%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair/null? _%tl235739235763%_))
                                 (let ((_g237337_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-split-splice
                                           _%tl235739235763%_
                                           '0))))
                                   (begin
                                     (let ((_g237338_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g237337_)
                                                  (##values-length _g237337_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g237338_ 2)))
                                           (error "Context expects 2 values"
                                                  _g237338_)))
                                     (let ((_%target235740235766%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g237337_ 0)))
                                           (_%tl235742235768%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g237337_ 1))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl235742235768%_))
                                           (letrec ((_%loop235743235771%_
                                                     (lambda (_%hd235741235774%_
                                                              _%clause235747235776%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd235741235774%_))
                                                           (let ((_%e235744235778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd235741235774%_))))
                     (let ((_%lp-hd235745235781%_
                            (let ()
                              (declare (not safe))
                              (##car _%e235744235778%_)))
                           (_%lp-tl235746235783%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e235744235778%_))))
                       (_%loop235743235771%_
                        _%lp-tl235746235783%_
                        (cons _%lp-hd235745235781%_ _%clause235747235776%_))))
                   (let* ((_%clause235748235786%_
                           (reverse _%clause235747235776%_))
                          (_%clauses235865%_
                           (map (lambda (_%clause235802%_)
                                  (let* ((_%g235804235815%_
                                          (lambda (_%g235805235812%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g235805235812%_))))
                                         (_%g235803235855%_
                                          (lambda (_%g235805235818%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g235805235818%_))
                                                (let ((_%e235808235820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g235805235818%_))))
                                                  (let ((_%hd235809235823%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e235808235820%_)))
                                                        (_%tl235810235825%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e235808235820%_))))
                                                    (let* ((_%self235841%_
                                                            (list-ref
                                                             _%hd235809235823%_
                                                             _%self-index235138%_))
                                                           (_%receiver235846%_
                                                            (let ((_%$e235843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-extract-receiver
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#begin))
                                  _%tl235810235825%_))))
                      (if _%$e235843%_ _%$e235843%_ _%self235841%_)))
                   (_%body235852%_
                    (map (lambda (_%g235847235849%_)
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%receiver235846%_
                            _%$klass235603%_
                            _%method-calls233140%_
                            _%slot-refs233141%_
                            _%g235847235849%_))
                         _%tl235810235825%_)))
              (cons _%hd235809235823%_ _%body235852%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g235804235815%_
                                                 _%g235805235818%_)))))
                                    (_%g235803235855%_ _%clause235802%_)))
                                (let ((__tmp237339
                                       (lambda (_%g235857235860%_
                                                _%g235858235862%_)
                                         (cons _%g235857235860%_
                                               _%g235858235862%_))))
                                  (declare (not safe))
                                  (foldr__0
                                   __tmp237339
                                   '()
                                   _%clause235748235786%_))))
                          (__tmp237340
                           (cons '%#case-lambda _%clauses235865%_)))
                     (declare (not safe))
                     (gxc#xform-wrap-source
                      __tmp237340
                      _%hd235307235369%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%loop235743235771%_
                                              _%target235740235766%_
                                              '()))
                                           (_%g235734235753%_
                                            _%g235735235756%_)))))
                                 (_%g235734235753%_ _%g235735235756%_))))
                         (_%g235734235753%_ _%g235735235756%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g235733235867%_
                                                      _%hd235307235369%_)))
                                                  (_%specializer-impl235872%_
                                                   (let ((__tmp237341
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%hd234686234759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons (cons '%#let-values
                                                      (cons (cons (cons (cons _%hd234704234807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (let ((__tmp237342
                                             (cons '%#let-values
                                                   (cons (cons (cons (cons _%hd235301235353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons _%specializer-lambda-expr235732%_ '()))
                       '())
                 (cons _%specializer-case-lambda-expr235870%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp237342
                                         _%stx233048%_))
                                      '()))
                          '())
                    (cons _%hd234710234823%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())
                              (cons _%hd234713234831%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp237341
                                                      _%stx233048%_)))
                                                  (_%specializer-impl235874%_
                                                   (_%generate-specializer-impl233052%_
                                                    _%$klass235603%_
                                                    _%$method-table235605%_
                                                    _%methods-bind235630%_
                                                    _%slots-bind235654%_
                                                    _%specializer-impl235872%_)))
                                             (let ((__tmp237344
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%g233059233121%_)))
                                                   (__tmp237343
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%specializer-id235601%_))))
                                               (declare (not safe))
                                               (gxc#verbose
                                                '"generate method specializer "
                                                __tmp237344
                                                '" => "
                                                __tmp237343))
                                             (_%generate-specializer-def233053%_
                                              _%g233059233121%_
                                              _%specializer-id235601%_
                                              _%specializer-impl235874%_))))
                                     (_%g235283235313%_ _%g235284235316%_))))
                             (_%g235283235313%_ _%g235284235316%_))
                         (_%g235283235313%_ _%g235284235316%_))
                     (_%g235283235313%_ _%g235284235316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g235283235313%_
                                                      _%g235284235316%_))
                                                 (_%g235283235313%_
                                                  _%g235284235316%_))))
                                         (_%g235283235313%_
                                          _%g235284235316%_))))
                                 (_%g235283235313%_ _%g235284235316%_))))
                         (_%g235283235313%_ _%g235284235316%_))))
                 (_%g235283235313%_ _%g235284235316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g235283235313%_
                                                  _%g235284235316%_)))))
                                     (_%g235282235877%_ _%hd234707234815%_))
                                   _%stx233048%_)))
                         (_%g234880234942%_ _%g234881234945%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%loop234929235064%_
                                              _%target234926235051%_
                                              '()))
                                           (_%g234880234942%_
                                            _%g234881234945%_))))
                                   (_%g234880234942%_ _%g234881234945%_)))))
                         (_%g234880234942%_ _%g234881234945%_))
                     (_%g234880234942%_ _%g234881234945%_))
                 (_%g234880234942%_ _%g234881234945%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g234880234942%_
                                                  _%g234881234945%_))
                                             (_%g234880234942%_
                                              _%g234881234945%_))
                                         (_%g234880234942%_
                                          _%g234881234945%_))))
                                 (_%g234880234942%_ _%g234881234945%_))))
                         (_%g234880234942%_ _%g234881234945%_))
                     (_%g234880234942%_ _%g234881234945%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g234880234942%_
                                                      _%g234881234945%_))
                                                 (_%g234880234942%_
                                                  _%g234881234945%_))
                                             (_%g234880234942%_
                                              _%g234881234945%_))))
                                     (_%g234880234942%_ _%g234881234945%_))))
                             (_%g234880234942%_ _%g234881234945%_))
                         (_%g234880234942%_ _%g234881234945%_))))
                 (_%g234880234942%_ _%g234881234945%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g234880234942%_
                                                      _%g234881234945%_))
                                                 (_%g234880234942%_
                                                  _%g234881234945%_))))
                                         (_%g234880234942%_
                                          _%g234881234945%_))))
                                 (_%g234880234942%_ _%g234881234945%_))
                             (_%g234880234942%_ _%g234881234945%_))
                         (_%g234880234942%_ _%g234881234945%_))))
                 (_%g234880234942%_ _%g234881234945%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g234880234942%_
                                                  _%g234881234945%_))))
                                         (_%g234880234942%_ _%g234881234945%_))
                                     (_%g234880234942%_ _%g234881234945%_))
                                 (_%g234880234942%_ _%g234881234945%_))))
                         (_%g234880234942%_ _%g234881234945%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g234879235881%_
                                                      _%hd234710234823%_))
                                                   (_%g234666234719%_
                                                    _%g234667234722%_))))
                                           (_%g234666234719%_
                                            _%g234667234722%_))
                                       (_%g234666234719%_ _%g234667234722%_))
                                   (_%g234666234719%_ _%g234667234722%_))
                               (_%g234666234719%_ _%g234667234722%_))))
                       (_%g234666234719%_ _%g234667234722%_))
                   (_%g234666234719%_ _%g234667234722%_))
               (_%g234666234719%_ _%g234667234722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g234666234719%_
                                                _%g234667234722%_))
                                           (_%g234666234719%_
                                            _%g234667234722%_))))
                                   (_%g234666234719%_ _%g234667234722%_))))
                           (_%g234666234719%_ _%g234667234722%_))))
                   (_%g234666234719%_ _%g234667234722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g234666234719%_
                                                    _%g234667234722%_))
                                               (_%g234666234719%_
                                                _%g234667234722%_))
                                           (_%g234666234719%_
                                            _%g234667234722%_))))
                                   (_%g234666234719%_ _%g234667234722%_))))
                           (_%g234666234719%_ _%g234667234722%_))
                       (_%g234666234719%_ _%g234667234722%_))))
               (_%g234666234719%_ _%g234667234722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g234666234719%_
                                                _%g234667234722%_))))
                                       (_%g234666234719%_ _%g234667234722%_))))
                               (_%g234666234719%_ _%g234667234722%_))
                           (_%g234666234719%_ _%g234667234722%_))
                       (_%g234666234719%_ _%g234667234722%_))))
               (_%g234666234719%_ _%g234667234722%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g234665235884%_
                                            _%g233058233120%_))
                                         _%stx233048%_))))))))
                  (_%__kont236111236112%_ (lambda () _%stx233048%_)))
              (let ((_%__match236140236141%_
                     (lambda (_%e233060233088%_
                              _%hd233061233091%_
                              _%tl233062233093%_
                              _%e233063233096%_
                              _%hd233064233099%_
                              _%tl233065233101%_
                              _%e233066233104%_
                              _%hd233067233107%_
                              _%tl233068233109%_
                              _%e233069233112%_
                              _%hd233070233115%_
                              _%tl233071233117%_)
                       (let ((_%g233058233120%_ _%hd233070233115%_)
                             (_%g233059233121%_ _%hd233067233107%_))
                         (if (let ((__tmp237345
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g233059233121%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp237345))
                             (_%__kont236109236110%_
                              _%g233058233120%_
                              _%g233059233121%_)
                             (_%__kont236111236112%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx236107236108%_))
                    (let ((_%e233060233088%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx236107236108%_))))
                      (let ((_%tl233062233093%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233060233088%_)))
                            (_%hd233061233091%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233060233088%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl233062233093%_))
                            (let ((_%e233063233096%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl233062233093%_))))
                              (let ((_%tl233065233101%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233063233096%_)))
                                    (_%hd233064233099%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233063233096%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd233064233099%_))
                                    (let ((_%e233066233104%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd233064233099%_))))
                                      (let ((_%tl233068233109%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233066233104%_)))
                                            (_%hd233067233107%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233066233104%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl233068233109%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl233065233101%_))
                                                (let ((_%e233069233112%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl233065233101%_))))
                                                  (let ((_%tl233071233117%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e233069233112%_)))
                                                        (_%hd233070233115%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e233069233112%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl233071233117%_))
                                                        (_%__match236140236141%_
                                                         _%e233060233088%_
                                                         _%hd233061233091%_
                                                         _%tl233062233093%_
                                                         _%e233063233096%_
                                                         _%hd233064233099%_
                                                         _%tl233065233101%_
                                                         _%e233066233104%_
                                                         _%hd233067233107%_
                                                         _%tl233068233109%_
                                                         _%e233069233112%_
                                                         _%hd233070233115%_
                                                         _%tl233071233117%_)
                                                        (_%__kont236111236112%_))))
                                                (_%__kont236111236112%_))
                                            (_%__kont236111236112%_))))
                                    (_%__kont236111236112%_))))
                            (_%__kont236111236112%_))))
                    (_%__kont236111236112%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self232900%_ _%stx232901%_)
        (let* ((_%__stx236143236144%_ _%stx232901%_)
               (_%g232904232937%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx236143236144%_)))))
          (let ((_%__kont236145236146%_
                 (lambda (_%g232906233027%_) _%g232906233027%_))
                (_%__kont236147236148%_
                 (lambda (_%g232922232966%_ _%g232923232967%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self232900%_ _%g232922232966%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx236143236144%_))
                (let ((_%e232907232987%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx236143236144%_))))
                  (let ((_%tl232909232992%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232907232987%_)))
                        (_%hd232908232990%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232907232987%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl232909232992%_))
                        (let ((_%e232910232995%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl232909232992%_))))
                          (let ((_%tl232912233000%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e232910232995%_)))
                                (_%hd232911232998%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e232910232995%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd232911232998%_))
                                (let ((_%e232913233003%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd232911232998%_))))
                                  (let ((_%tl232915233008%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e232913233003%_)))
                                        (_%hd232914233006%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e232913233003%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd232914233006%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd232914233006%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl232915233008%_))
                                                (let ((_%e232916233011%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl232915233008%_))))
                                                  (let ((_%tl232918233016%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e232916233011%_)))
                                                        (_%hd232917233014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e232916233011%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl232918233016%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl232912233000%_))
                                                            (let ((_%e232919233019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl232912233000%_))))
                      (let ((_%tl232921233024%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e232919233019%_)))
                            (_%hd232920233022%_
                             (let ()
                               (declare (not safe))
                               (##car _%e232919233019%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl232921233024%_))
                            (_%__kont236145236146%_ _%hd232917233014%_)
                            (let ()
                              (declare (not safe))
                              (_%g232904232937%_)))))
                    (let () (declare (not safe)) (_%g232904232937%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl232912233000%_))
                    (let ((_%e232930232958%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl232912233000%_))))
                      (let ((_%tl232932232963%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e232930232958%_)))
                            (_%hd232931232961%_
                             (let ()
                               (declare (not safe))
                               (##car _%e232930232958%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl232932232963%_))
                            (_%__kont236147236148%_
                             _%hd232931232961%_
                             _%hd232911232998%_)
                            (let ()
                              (declare (not safe))
                              (_%g232904232937%_)))))
                    (let () (declare (not safe)) (_%g232904232937%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl232912233000%_))
                                                    (let ((_%e232930232958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl232912233000%_))))
                                                      (let ((_%tl232932232963%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e232930232958%_)))
                    (_%hd232931232961%_
                     (let () (declare (not safe)) (##car _%e232930232958%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl232932232963%_))
                    (_%__kont236147236148%_
                     _%hd232931232961%_
                     _%hd232911232998%_)
                    (let () (declare (not safe)) (_%g232904232937%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g232904232937%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl232912233000%_))
                                                (let ((_%e232930232958%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl232912233000%_))))
                                                  (let ((_%tl232932232963%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e232930232958%_)))
                                                        (_%hd232931232961%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e232930232958%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl232932232963%_))
                                                        (_%__kont236147236148%_
                                                         _%hd232931232961%_
                                                         _%hd232911232998%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g232904232937%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g232904232937%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl232912233000%_))
                                            (let ((_%e232930232958%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl232912233000%_))))
                                              (let ((_%tl232932232963%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e232930232958%_)))
                                                    (_%hd232931232961%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e232930232958%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl232932232963%_))
                                                    (_%__kont236147236148%_
                                                     _%hd232931232961%_
                                                     _%hd232911232998%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g232904232937%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g232904232937%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl232912233000%_))
                                    (let ((_%e232930232958%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl232912233000%_))))
                                      (let ((_%tl232932232963%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232930232958%_)))
                                            (_%hd232931232961%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232930232958%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl232932232963%_))
                                            (_%__kont236147236148%_
                                             _%hd232931232961%_
                                             _%hd232911232998%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g232904232937%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g232904232937%_))))))
                        (let () (declare (not safe)) (_%g232904232937%_)))))
                (let () (declare (not safe)) (_%g232904232937%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self232816%_ _%stx232817%_)
        (let* ((_%g232819232840%_
                (lambda (_%g232820232837%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g232820232837%_))))
               (_%g232818232897%_
                (lambda (_%g232820232843%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g232820232843%_))
                      (let ((_%e232824232845%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g232820232843%_))))
                        (let ((_%hd232825232848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e232824232845%_)))
                              (_%tl232826232850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e232824232845%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl232826232850%_))
                              (let ((_%e232827232853%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl232826232850%_))))
                                (let ((_%hd232828232856%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e232827232853%_)))
                                      (_%tl232829232858%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e232827232853%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl232829232858%_))
                                      (let ((_%e232830232861%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl232829232858%_))))
                                        (let ((_%hd232831232864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e232830232861%_)))
                                              (_%tl232832232866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e232830232861%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl232832232866%_))
                                              (let ((_%e232833232869%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl232832232866%_))))
                                                (let ((_%hd232834232872%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e232833232869%_)))
                                                      (_%tl232835232874%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e232833232869%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl232835232874%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self232816%_
                                                         _%hd232831232864%_))
                                                      (_%g232819232840%_
                                                       _%g232820232843%_))))
                                              (_%g232819232840%_
                                               _%g232820232843%_))))
                                      (_%g232819232840%_ _%g232820232843%_))))
                              (_%g232819232840%_ _%g232820232843%_))))
                      (_%g232819232840%_ _%g232820232843%_)))))
          (_%g232818232897%_ _%stx232817%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self231781%_ _%stx231782%_)
        (let* ((_%__stx236209236210%_ _%stx231782%_)
               (_%g231790232012%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx236209236210%_)))))
          (let ((_%__kont236211236212%_
                 (lambda (_%g231792232765%_
                          _%g231793232766%_
                          _%g231794232767%_
                          _%g231795232768%_)
                   (let ((__tmp237347
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self231781%_ 'methods)))
                         (__tmp237346
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g231793232766%_))))
                     (declare (not safe))
                     (hash-put! __tmp237347 __tmp237346 '#t))
                   (for-each
                    (lambda (_%g232801232803%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self231781%_ _%g232801232803%_)))
                    (let ((__tmp237348
                           (lambda (_%g232805232808%_ _%g232806232810%_)
                             (cons _%g232805232808%_ _%g232806232810%_))))
                      (declare (not safe))
                      (foldr__0 __tmp237348 '() _%g231792232765%_)))))
                (_%__kont236215236216%_
                 (lambda (_%g231835232602%_
                          _%g231836232603%_
                          _%g231837232604%_
                          _%g231838232605%_
                          _%g231839232606%_)
                   (let ((__tmp237350
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self231781%_ 'methods)))
                         (__tmp237349
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g231836232603%_))))
                     (declare (not safe))
                     (hash-put! __tmp237350 __tmp237349 '#t))
                   (for-each
                    (lambda (_%g232646232648%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self231781%_ _%g232646232648%_)))
                    (let ((__tmp237351
                           (lambda (_%g232650232653%_ _%g232651232655%_)
                             (cons _%g232650232653%_ _%g232651232655%_))))
                      (declare (not safe))
                      (foldr__0 __tmp237351 '() _%g231835232602%_)))))
                (_%__kont236219236220%_
                 (lambda (_%g231888232437%_
                          _%g231889232438%_
                          _%g231890232439%_)
                   (let ((__tmp237353
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self231781%_ 'slots)))
                         (__tmp237352
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g231888232437%_))))
                     (declare (not safe))
                     (hash-put! __tmp237353 __tmp237352 '#t))))
                (_%__kont236221236222%_
                 (lambda (_%g231921232314%_
                          _%g231922232315%_
                          _%g231923232316%_
                          _%g231924232317%_)
                   (let ((__tmp237355
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self231781%_ 'slots)))
                         (__tmp237354
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g231922232315%_))))
                     (declare (not safe))
                     (hash-put! __tmp237355 __tmp237354 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self231781%_ _%g231921232314%_))))
                (_%__kont236223236224%_
                 (lambda (_%g231958232188%_ _%g231959232189%_)
                   (let* ((_%accessor232211%_
                           (let ((__tmp237356
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g231959232189%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp237356)))
                          (_%klass232213%_
                           (let ((__tmp237357
                                  (##structure-ref
                                   _%accessor232211%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx231782%_
                              __tmp237357)))
                          (_%slot232215%_
                           (##structure-ref
                            _%accessor232211%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor232211%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass232213%_
                                    _%slot232215%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass232213%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp237359
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self231781%_ 'slots)))
                               (__tmp237358
                                (##structure-ref
                                 _%accessor232211%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp237359 __tmp237358 '#t))))))
                (_%__kont236225236226%_
                 (lambda (_%g231981232088%_
                          _%g231982232089%_
                          _%g231983232090%_)
                   (let* ((_%mutator232117%_
                           (let ((__tmp237360
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g231983232090%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp237360)))
                          (_%klass232119%_
                           (let ((__tmp237361
                                  (##structure-ref
                                   _%mutator232117%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx231782%_
                              __tmp237361)))
                          (_%slot232121%_
                           (##structure-ref
                            _%mutator232117%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator232117%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass232119%_
                                    _%slot232121%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass232119%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp237362
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self231781%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp237362 _%slot232121%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self231781%_ _%g231981232088%_)))))
                (_%__kont236227236228%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self231781%_ _%stx231782%_)))))
            (let* ((_%__match236708236709%_
                    (lambda (_%e231984232024%_
                             _%hd231985232027%_
                             _%tl231986232029%_
                             _%e231987232032%_
                             _%hd231988232035%_
                             _%tl231989232037%_
                             _%e231990232040%_
                             _%hd231991232043%_
                             _%tl231992232045%_
                             _%e231993232048%_
                             _%hd231994232051%_
                             _%tl231995232053%_
                             _%e231996232056%_
                             _%hd231997232059%_
                             _%tl231998232061%_
                             _%e231999232064%_
                             _%hd232000232067%_
                             _%tl232001232069%_
                             _%e232002232072%_
                             _%hd232003232075%_
                             _%tl232004232077%_
                             _%e232005232080%_
                             _%hd232006232083%_
                             _%tl232007232085%_)
                      (let ((_%g231981232088%_ _%hd232006232083%_)
                            (_%g231982232089%_ _%hd232003232075%_)
                            (_%g231983232090%_ _%hd231994232051%_))
                        (if (and (let ((__tmp237363
                                        (let ((__tmp237364
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g231983232090%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp237364))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp237363
                                    'gxc#!mutator::t))
                                 (let ((__tmp237365
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self231781%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g231982232089%_
                                    __tmp237365)))
                            (_%__kont236225236226%_
                             _%g231981232088%_
                             _%g231982232089%_
                             _%g231983232090%_)
                            (_%__kont236227236228%_)))))
                   (_%__match236706236707%_
                    (lambda (_%e231984232024%_
                             _%hd231985232027%_
                             _%tl231986232029%_
                             _%e231987232032%_
                             _%hd231988232035%_
                             _%tl231989232037%_
                             _%e231990232040%_
                             _%hd231991232043%_
                             _%tl231992232045%_
                             _%e231993232048%_
                             _%hd231994232051%_
                             _%tl231995232053%_
                             _%e231996232056%_
                             _%hd231997232059%_
                             _%tl231998232061%_
                             _%e231999232064%_
                             _%hd232000232067%_
                             _%tl232001232069%_
                             _%e232002232072%_
                             _%hd232003232075%_
                             _%tl232004232077%_
                             _%e232005232080%_
                             _%hd232006232083%_
                             _%tl232007232085%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl232007232085%_))
                          (_%__match236708236709%_
                           _%e231984232024%_
                           _%hd231985232027%_
                           _%tl231986232029%_
                           _%e231987232032%_
                           _%hd231988232035%_
                           _%tl231989232037%_
                           _%e231990232040%_
                           _%hd231991232043%_
                           _%tl231992232045%_
                           _%e231993232048%_
                           _%hd231994232051%_
                           _%tl231995232053%_
                           _%e231996232056%_
                           _%hd231997232059%_
                           _%tl231998232061%_
                           _%e231999232064%_
                           _%hd232000232067%_
                           _%tl232001232069%_
                           _%e232002232072%_
                           _%hd232003232075%_
                           _%tl232004232077%_
                           _%e232005232080%_
                           _%hd232006232083%_
                           _%tl232007232085%_)
                          (_%__kont236227236228%_))))
                   (_%__match236700236701%_
                    (lambda (_%e231984232024%_
                             _%hd231985232027%_
                             _%tl231986232029%_
                             _%e231987232032%_
                             _%hd231988232035%_
                             _%tl231989232037%_
                             _%e231990232040%_
                             _%hd231991232043%_
                             _%tl231992232045%_
                             _%e231993232048%_
                             _%hd231994232051%_
                             _%tl231995232053%_
                             _%e231996232056%_
                             _%hd231997232059%_
                             _%tl231998232061%_
                             _%e231999232064%_
                             _%hd232000232067%_
                             _%tl232001232069%_
                             _%e232002232072%_
                             _%hd232003232075%_
                             _%tl232004232077%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231998232061%_))
                          (let ((_%e232005232080%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl231998232061%_))))
                            (let ((_%tl232007232085%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e232005232080%_)))
                                  (_%hd232006232083%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e232005232080%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl232007232085%_))
                                  (_%__match236708236709%_
                                   _%e231984232024%_
                                   _%hd231985232027%_
                                   _%tl231986232029%_
                                   _%e231987232032%_
                                   _%hd231988232035%_
                                   _%tl231989232037%_
                                   _%e231990232040%_
                                   _%hd231991232043%_
                                   _%tl231992232045%_
                                   _%e231993232048%_
                                   _%hd231994232051%_
                                   _%tl231995232053%_
                                   _%e231996232056%_
                                   _%hd231997232059%_
                                   _%tl231998232061%_
                                   _%e231999232064%_
                                   _%hd232000232067%_
                                   _%tl232001232069%_
                                   _%e232002232072%_
                                   _%hd232003232075%_
                                   _%tl232004232077%_
                                   _%e232005232080%_
                                   _%hd232006232083%_
                                   _%tl232007232085%_)
                                  (_%__kont236227236228%_))))
                          (_%__kont236227236228%_))))
                   (_%__match236646236647%_
                    (lambda (_%e231960232132%_
                             _%hd231961232135%_
                             _%tl231962232137%_
                             _%e231963232140%_
                             _%hd231964232143%_
                             _%tl231965232145%_
                             _%e231966232148%_
                             _%hd231967232151%_
                             _%tl231968232153%_
                             _%e231969232156%_
                             _%hd231970232159%_
                             _%tl231971232161%_
                             _%e231972232164%_
                             _%hd231973232167%_
                             _%tl231974232169%_
                             _%e231975232172%_
                             _%hd231976232175%_
                             _%tl231977232177%_
                             _%e231978232180%_
                             _%hd231979232183%_
                             _%tl231980232185%_)
                      (let ((_%g231958232188%_ _%hd231979232183%_)
                            (_%g231959232189%_ _%hd231970232159%_))
                        (if (and (let ((__tmp237366
                                        (let ((__tmp237367
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g231959232189%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp237367))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp237366
                                    'gxc#!accessor::t))
                                 (let ((__tmp237368
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self231781%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g231958232188%_
                                    __tmp237368)))
                            (_%__kont236223236224%_
                             _%g231958232188%_
                             _%g231959232189%_)
                            (_%__kont236227236228%_)))))
                   (_%__match236644236645%_
                    (lambda (_%e231960232132%_
                             _%hd231961232135%_
                             _%tl231962232137%_
                             _%e231963232140%_
                             _%hd231964232143%_
                             _%tl231965232145%_
                             _%e231966232148%_
                             _%hd231967232151%_
                             _%tl231968232153%_
                             _%e231969232156%_
                             _%hd231970232159%_
                             _%tl231971232161%_
                             _%e231972232164%_
                             _%hd231973232167%_
                             _%tl231974232169%_
                             _%e231975232172%_
                             _%hd231976232175%_
                             _%tl231977232177%_
                             _%e231978232180%_
                             _%hd231979232183%_
                             _%tl231980232185%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl231974232169%_))
                          (_%__match236646236647%_
                           _%e231960232132%_
                           _%hd231961232135%_
                           _%tl231962232137%_
                           _%e231963232140%_
                           _%hd231964232143%_
                           _%tl231965232145%_
                           _%e231966232148%_
                           _%hd231967232151%_
                           _%tl231968232153%_
                           _%e231969232156%_
                           _%hd231970232159%_
                           _%tl231971232161%_
                           _%e231972232164%_
                           _%hd231973232167%_
                           _%tl231974232169%_
                           _%e231975232172%_
                           _%hd231976232175%_
                           _%tl231977232177%_
                           _%e231978232180%_
                           _%hd231979232183%_
                           _%tl231980232185%_)
                          (_%__match236700236701%_
                           _%e231960232132%_
                           _%hd231961232135%_
                           _%tl231962232137%_
                           _%e231963232140%_
                           _%hd231964232143%_
                           _%tl231965232145%_
                           _%e231966232148%_
                           _%hd231967232151%_
                           _%tl231968232153%_
                           _%e231969232156%_
                           _%hd231970232159%_
                           _%tl231971232161%_
                           _%e231972232164%_
                           _%hd231973232167%_
                           _%tl231974232169%_
                           _%e231975232172%_
                           _%hd231976232175%_
                           _%tl231977232177%_
                           _%e231978232180%_
                           _%hd231979232183%_
                           _%tl231980232185%_))))
                   (_%__match236590236591%_
                    (lambda (_%e231925232226%_
                             _%hd231926232229%_
                             _%tl231927232231%_
                             _%e231928232234%_
                             _%hd231929232237%_
                             _%tl231930232239%_
                             _%e231931232242%_
                             _%hd231932232245%_
                             _%tl231933232247%_
                             _%e231934232250%_
                             _%hd231935232253%_
                             _%tl231936232255%_
                             _%e231937232258%_
                             _%hd231938232261%_
                             _%tl231939232263%_
                             _%e231940232266%_
                             _%hd231941232269%_
                             _%tl231942232271%_
                             _%e231943232274%_
                             _%hd231944232277%_
                             _%tl231945232279%_
                             _%e231946232282%_
                             _%hd231947232285%_
                             _%tl231948232287%_
                             _%e231949232290%_
                             _%hd231950232293%_
                             _%tl231951232295%_
                             _%e231952232298%_
                             _%hd231953232301%_
                             _%tl231954232303%_
                             _%e231955232306%_
                             _%hd231956232309%_
                             _%tl231957232311%_)
                      (let ((_%g231921232314%_ _%hd231956232309%_)
                            (_%g231922232315%_ _%hd231953232301%_)
                            (_%g231923232316%_ _%hd231944232277%_)
                            (_%g231924232317%_ _%hd231935232253%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g231924232317%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g231924232317%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp237369
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self231781%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g231923232316%_
                                    __tmp237369)))
                            (_%__kont236221236222%_
                             _%g231921232314%_
                             _%g231922232315%_
                             _%g231923232316%_
                             _%g231924232317%_)
                            (_%__kont236227236228%_)))))
                   (_%__match236582236583%_
                    (lambda (_%e231925232226%_
                             _%hd231926232229%_
                             _%tl231927232231%_
                             _%e231928232234%_
                             _%hd231929232237%_
                             _%tl231930232239%_
                             _%e231931232242%_
                             _%hd231932232245%_
                             _%tl231933232247%_
                             _%e231934232250%_
                             _%hd231935232253%_
                             _%tl231936232255%_
                             _%e231937232258%_
                             _%hd231938232261%_
                             _%tl231939232263%_
                             _%e231940232266%_
                             _%hd231941232269%_
                             _%tl231942232271%_
                             _%e231943232274%_
                             _%hd231944232277%_
                             _%tl231945232279%_
                             _%e231946232282%_
                             _%hd231947232285%_
                             _%tl231948232287%_
                             _%e231949232290%_
                             _%hd231950232293%_
                             _%tl231951232295%_
                             _%e231952232298%_
                             _%hd231953232301%_
                             _%tl231954232303%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231948232287%_))
                          (let ((_%e231955232306%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl231948232287%_))))
                            (let ((_%tl231957232311%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231955232306%_)))
                                  (_%hd231956232309%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231955232306%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl231957232311%_))
                                  (_%__match236590236591%_
                                   _%e231925232226%_
                                   _%hd231926232229%_
                                   _%tl231927232231%_
                                   _%e231928232234%_
                                   _%hd231929232237%_
                                   _%tl231930232239%_
                                   _%e231931232242%_
                                   _%hd231932232245%_
                                   _%tl231933232247%_
                                   _%e231934232250%_
                                   _%hd231935232253%_
                                   _%tl231936232255%_
                                   _%e231937232258%_
                                   _%hd231938232261%_
                                   _%tl231939232263%_
                                   _%e231940232266%_
                                   _%hd231941232269%_
                                   _%tl231942232271%_
                                   _%e231943232274%_
                                   _%hd231944232277%_
                                   _%tl231945232279%_
                                   _%e231946232282%_
                                   _%hd231947232285%_
                                   _%tl231948232287%_
                                   _%e231949232290%_
                                   _%hd231950232293%_
                                   _%tl231951232295%_
                                   _%e231952232298%_
                                   _%hd231953232301%_
                                   _%tl231954232303%_
                                   _%e231955232306%_
                                   _%hd231956232309%_
                                   _%tl231957232311%_)
                                  (_%__kont236227236228%_))))
                          (_%__match236706236707%_
                           _%e231925232226%_
                           _%hd231926232229%_
                           _%tl231927232231%_
                           _%e231928232234%_
                           _%hd231929232237%_
                           _%tl231930232239%_
                           _%e231931232242%_
                           _%hd231932232245%_
                           _%tl231933232247%_
                           _%e231934232250%_
                           _%hd231935232253%_
                           _%tl231936232255%_
                           _%e231937232258%_
                           _%hd231938232261%_
                           _%tl231939232263%_
                           _%e231940232266%_
                           _%hd231941232269%_
                           _%tl231942232271%_
                           _%e231943232274%_
                           _%hd231944232277%_
                           _%tl231945232279%_
                           _%e231946232282%_
                           _%hd231947232285%_
                           _%tl231948232287%_))))
                   (_%__match236504236505%_
                    (lambda (_%e231891232357%_
                             _%hd231892232360%_
                             _%tl231893232362%_
                             _%e231894232365%_
                             _%hd231895232368%_
                             _%tl231896232370%_
                             _%e231897232373%_
                             _%hd231898232376%_
                             _%tl231899232378%_
                             _%e231900232381%_
                             _%hd231901232384%_
                             _%tl231902232386%_
                             _%e231903232389%_
                             _%hd231904232392%_
                             _%tl231905232394%_
                             _%e231906232397%_
                             _%hd231907232400%_
                             _%tl231908232402%_
                             _%e231909232405%_
                             _%hd231910232408%_
                             _%tl231911232410%_
                             _%e231912232413%_
                             _%hd231913232416%_
                             _%tl231914232418%_
                             _%e231915232421%_
                             _%hd231916232424%_
                             _%tl231917232426%_
                             _%e231918232429%_
                             _%hd231919232432%_
                             _%tl231920232434%_)
                      (let ((_%g231888232437%_ _%hd231919232432%_)
                            (_%g231889232438%_ _%hd231910232408%_)
                            (_%g231890232439%_ _%hd231901232384%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g231890232439%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g231890232439%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp237370
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self231781%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g231889232438%_
                                    __tmp237370)))
                            (_%__kont236219236220%_
                             _%g231888232437%_
                             _%g231889232438%_
                             _%g231890232439%_)
                            (_%__match236708236709%_
                             _%e231891232357%_
                             _%hd231892232360%_
                             _%tl231893232362%_
                             _%e231894232365%_
                             _%hd231895232368%_
                             _%tl231896232370%_
                             _%e231897232373%_
                             _%hd231898232376%_
                             _%tl231899232378%_
                             _%e231900232381%_
                             _%hd231901232384%_
                             _%tl231902232386%_
                             _%e231903232389%_
                             _%hd231904232392%_
                             _%tl231905232394%_
                             _%e231906232397%_
                             _%hd231907232400%_
                             _%tl231908232402%_
                             _%e231909232405%_
                             _%hd231910232408%_
                             _%tl231911232410%_
                             _%e231912232413%_
                             _%hd231913232416%_
                             _%tl231914232418%_)))))
                   (_%__match236502236503%_
                    (lambda (_%e231891232357%_
                             _%hd231892232360%_
                             _%tl231893232362%_
                             _%e231894232365%_
                             _%hd231895232368%_
                             _%tl231896232370%_
                             _%e231897232373%_
                             _%hd231898232376%_
                             _%tl231899232378%_
                             _%e231900232381%_
                             _%hd231901232384%_
                             _%tl231902232386%_
                             _%e231903232389%_
                             _%hd231904232392%_
                             _%tl231905232394%_
                             _%e231906232397%_
                             _%hd231907232400%_
                             _%tl231908232402%_
                             _%e231909232405%_
                             _%hd231910232408%_
                             _%tl231911232410%_
                             _%e231912232413%_
                             _%hd231913232416%_
                             _%tl231914232418%_
                             _%e231915232421%_
                             _%hd231916232424%_
                             _%tl231917232426%_
                             _%e231918232429%_
                             _%hd231919232432%_
                             _%tl231920232434%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl231914232418%_))
                          (_%__match236504236505%_
                           _%e231891232357%_
                           _%hd231892232360%_
                           _%tl231893232362%_
                           _%e231894232365%_
                           _%hd231895232368%_
                           _%tl231896232370%_
                           _%e231897232373%_
                           _%hd231898232376%_
                           _%tl231899232378%_
                           _%e231900232381%_
                           _%hd231901232384%_
                           _%tl231902232386%_
                           _%e231903232389%_
                           _%hd231904232392%_
                           _%tl231905232394%_
                           _%e231906232397%_
                           _%hd231907232400%_
                           _%tl231908232402%_
                           _%e231909232405%_
                           _%hd231910232408%_
                           _%tl231911232410%_
                           _%e231912232413%_
                           _%hd231913232416%_
                           _%tl231914232418%_
                           _%e231915232421%_
                           _%hd231916232424%_
                           _%tl231917232426%_
                           _%e231918232429%_
                           _%hd231919232432%_
                           _%tl231920232434%_)
                          (_%__match236582236583%_
                           _%e231891232357%_
                           _%hd231892232360%_
                           _%tl231893232362%_
                           _%e231894232365%_
                           _%hd231895232368%_
                           _%tl231896232370%_
                           _%e231897232373%_
                           _%hd231898232376%_
                           _%tl231899232378%_
                           _%e231900232381%_
                           _%hd231901232384%_
                           _%tl231902232386%_
                           _%e231903232389%_
                           _%hd231904232392%_
                           _%tl231905232394%_
                           _%e231906232397%_
                           _%hd231907232400%_
                           _%tl231908232402%_
                           _%e231909232405%_
                           _%hd231910232408%_
                           _%tl231911232410%_
                           _%e231912232413%_
                           _%hd231913232416%_
                           _%tl231914232418%_
                           _%e231915232421%_
                           _%hd231916232424%_
                           _%tl231917232426%_
                           _%e231918232429%_
                           _%hd231919232432%_
                           _%tl231920232434%_))))
                   (_%__match236492236493%_
                    (lambda (_%e231891232357%_
                             _%hd231892232360%_
                             _%tl231893232362%_
                             _%e231894232365%_
                             _%hd231895232368%_
                             _%tl231896232370%_
                             _%e231897232373%_
                             _%hd231898232376%_
                             _%tl231899232378%_
                             _%e231900232381%_
                             _%hd231901232384%_
                             _%tl231902232386%_
                             _%e231903232389%_
                             _%hd231904232392%_
                             _%tl231905232394%_
                             _%e231906232397%_
                             _%hd231907232400%_
                             _%tl231908232402%_
                             _%e231909232405%_
                             _%hd231910232408%_
                             _%tl231911232410%_
                             _%e231912232413%_
                             _%hd231913232416%_
                             _%tl231914232418%_
                             _%e231915232421%_
                             _%hd231916232424%_
                             _%tl231917232426%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd231916232424%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl231917232426%_))
                              (let ((_%e231918232429%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl231917232426%_))))
                                (let ((_%tl231920232434%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e231918232429%_)))
                                      (_%hd231919232432%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e231918232429%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl231920232434%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl231914232418%_))
                                          (_%__match236504236505%_
                                           _%e231891232357%_
                                           _%hd231892232360%_
                                           _%tl231893232362%_
                                           _%e231894232365%_
                                           _%hd231895232368%_
                                           _%tl231896232370%_
                                           _%e231897232373%_
                                           _%hd231898232376%_
                                           _%tl231899232378%_
                                           _%e231900232381%_
                                           _%hd231901232384%_
                                           _%tl231902232386%_
                                           _%e231903232389%_
                                           _%hd231904232392%_
                                           _%tl231905232394%_
                                           _%e231906232397%_
                                           _%hd231907232400%_
                                           _%tl231908232402%_
                                           _%e231909232405%_
                                           _%hd231910232408%_
                                           _%tl231911232410%_
                                           _%e231912232413%_
                                           _%hd231913232416%_
                                           _%tl231914232418%_
                                           _%e231915232421%_
                                           _%hd231916232424%_
                                           _%tl231917232426%_
                                           _%e231918232429%_
                                           _%hd231919232432%_
                                           _%tl231920232434%_)
                                          (_%__match236582236583%_
                                           _%e231891232357%_
                                           _%hd231892232360%_
                                           _%tl231893232362%_
                                           _%e231894232365%_
                                           _%hd231895232368%_
                                           _%tl231896232370%_
                                           _%e231897232373%_
                                           _%hd231898232376%_
                                           _%tl231899232378%_
                                           _%e231900232381%_
                                           _%hd231901232384%_
                                           _%tl231902232386%_
                                           _%e231903232389%_
                                           _%hd231904232392%_
                                           _%tl231905232394%_
                                           _%e231906232397%_
                                           _%hd231907232400%_
                                           _%tl231908232402%_
                                           _%e231909232405%_
                                           _%hd231910232408%_
                                           _%tl231911232410%_
                                           _%e231912232413%_
                                           _%hd231913232416%_
                                           _%tl231914232418%_
                                           _%e231915232421%_
                                           _%hd231916232424%_
                                           _%tl231917232426%_
                                           _%e231918232429%_
                                           _%hd231919232432%_
                                           _%tl231920232434%_))
                                      (_%__match236706236707%_
                                       _%e231891232357%_
                                       _%hd231892232360%_
                                       _%tl231893232362%_
                                       _%e231894232365%_
                                       _%hd231895232368%_
                                       _%tl231896232370%_
                                       _%e231897232373%_
                                       _%hd231898232376%_
                                       _%tl231899232378%_
                                       _%e231900232381%_
                                       _%hd231901232384%_
                                       _%tl231902232386%_
                                       _%e231903232389%_
                                       _%hd231904232392%_
                                       _%tl231905232394%_
                                       _%e231906232397%_
                                       _%hd231907232400%_
                                       _%tl231908232402%_
                                       _%e231909232405%_
                                       _%hd231910232408%_
                                       _%tl231911232410%_
                                       _%e231912232413%_
                                       _%hd231913232416%_
                                       _%tl231914232418%_))))
                              (_%__match236706236707%_
                               _%e231891232357%_
                               _%hd231892232360%_
                               _%tl231893232362%_
                               _%e231894232365%_
                               _%hd231895232368%_
                               _%tl231896232370%_
                               _%e231897232373%_
                               _%hd231898232376%_
                               _%tl231899232378%_
                               _%e231900232381%_
                               _%hd231901232384%_
                               _%tl231902232386%_
                               _%e231903232389%_
                               _%hd231904232392%_
                               _%tl231905232394%_
                               _%e231906232397%_
                               _%hd231907232400%_
                               _%tl231908232402%_
                               _%e231909232405%_
                               _%hd231910232408%_
                               _%tl231911232410%_
                               _%e231912232413%_
                               _%hd231913232416%_
                               _%tl231914232418%_))
                          (_%__match236706236707%_
                           _%e231891232357%_
                           _%hd231892232360%_
                           _%tl231893232362%_
                           _%e231894232365%_
                           _%hd231895232368%_
                           _%tl231896232370%_
                           _%e231897232373%_
                           _%hd231898232376%_
                           _%tl231899232378%_
                           _%e231900232381%_
                           _%hd231901232384%_
                           _%tl231902232386%_
                           _%e231903232389%_
                           _%hd231904232392%_
                           _%tl231905232394%_
                           _%e231906232397%_
                           _%hd231907232400%_
                           _%tl231908232402%_
                           _%e231909232405%_
                           _%hd231910232408%_
                           _%tl231911232410%_
                           _%e231912232413%_
                           _%hd231913232416%_
                           _%tl231914232418%_))))
                   (_%__match236424236425%_
                    (lambda (_%e231840232476%_
                             _%hd231841232479%_
                             _%tl231842232481%_
                             _%e231843232484%_
                             _%hd231844232487%_
                             _%tl231845232489%_
                             _%e231846232492%_
                             _%hd231847232495%_
                             _%tl231848232497%_
                             _%e231849232500%_
                             _%hd231850232503%_
                             _%tl231851232505%_
                             _%e231852232508%_
                             _%hd231853232511%_
                             _%tl231854232513%_
                             _%e231855232516%_
                             _%hd231856232519%_
                             _%tl231857232521%_
                             _%e231858232524%_
                             _%hd231859232527%_
                             _%tl231860232529%_
                             _%e231861232532%_
                             _%hd231862232535%_
                             _%tl231863232537%_
                             _%e231864232540%_
                             _%hd231865232543%_
                             _%tl231866232545%_
                             _%e231867232548%_
                             _%hd231868232551%_
                             _%tl231869232553%_
                             _%e231870232556%_
                             _%hd231871232559%_
                             _%tl231872232561%_
                             _%e231873232564%_
                             _%hd231874232567%_
                             _%tl231875232569%_
                             _%e231876232572%_
                             _%hd231877232575%_
                             _%tl231878232577%_
                             _%__splice236217236218%_
                             _%target231879232580%_
                             _%tl231881232582%_)
                      (letrec ((_%loop231882232585%_
                                (lambda (_%hd231880232588%_
                                         _%args231886232590%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd231880232588%_))
                                      (let ((_%e231883232592%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd231880232588%_))))
                                        (let ((_%lp-tl231885232597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231883232592%_)))
                                              (_%lp-hd231884232595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231883232592%_))))
                                          (_%loop231882232585%_
                                           _%lp-tl231885232597%_
                                           (cons _%lp-hd231884232595%_
                                                 _%args231886232590%_))))
                                      (let ((_%args231887232600%_
                                             (reverse _%args231886232590%_)))
                                        (let ((_%g231835232602%_
                                               _%args231887232600%_)
                                              (_%g231836232603%_
                                               _%hd231877232575%_)
                                              (_%g231837232604%_
                                               _%hd231868232551%_)
                                              (_%g231838232605%_
                                               _%hd231859232527%_)
                                              (_%g231839232606%_
                                               _%hd231850232503%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g231839232606%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g231838232605%_
                                                      'call-method))
                                                   (let ((__tmp237371
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self231781%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g231837232604%_
                                                      __tmp237371)))
                                              (_%__kont236215236216%_
                                               _%g231835232602%_
                                               _%g231836232603%_
                                               _%g231837232604%_
                                               _%g231838232605%_
                                               _%g231839232606%_)
                                              (_%__kont236227236228%_))))))))
                        (_%loop231882232585%_ _%target231879232580%_ '()))))
                   (_%__match236382236383%_
                    (lambda (_%e231840232476%_
                             _%hd231841232479%_
                             _%tl231842232481%_
                             _%e231843232484%_
                             _%hd231844232487%_
                             _%tl231845232489%_
                             _%e231846232492%_
                             _%hd231847232495%_
                             _%tl231848232497%_
                             _%e231849232500%_
                             _%hd231850232503%_
                             _%tl231851232505%_
                             _%e231852232508%_
                             _%hd231853232511%_
                             _%tl231854232513%_
                             _%e231855232516%_
                             _%hd231856232519%_
                             _%tl231857232521%_
                             _%e231858232524%_
                             _%hd231859232527%_
                             _%tl231860232529%_
                             _%e231861232532%_
                             _%hd231862232535%_
                             _%tl231863232537%_
                             _%e231864232540%_
                             _%hd231865232543%_
                             _%tl231866232545%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd231865232543%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl231866232545%_))
                              (let ((_%e231867232548%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl231866232545%_))))
                                (let ((_%tl231869232553%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e231867232548%_)))
                                      (_%hd231868232551%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e231867232548%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl231869232553%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl231863232537%_))
                                          (let ((_%e231870232556%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl231863232537%_))))
                                            (let ((_%tl231872232561%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e231870232556%_)))
                                                  (_%hd231871232559%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e231870232556%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd231871232559%_))
                                                  (let ((_%e231873232564%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd231871232559%_))))
                                                    (let ((_%tl231875232569%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231873232564%_)))
                                                          (_%hd231874232567%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231873232564%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd231874232567%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd231874232567%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231875232569%_))
                          (let ((_%e231876232572%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl231875232569%_))))
                            (let ((_%tl231878232577%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231876232572%_)))
                                  (_%hd231877232575%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231876232572%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl231878232577%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl231872232561%_))
                                      (let ((_%__splice236217236218%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl231872232561%_
                                                '0))))
                                        (let ((_%tl231881232582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice236217236218%_
                                                  '1)))
                                              (_%target231879232580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice236217236218%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl231881232582%_))
                                              (_%__match236424236425%_
                                               _%e231840232476%_
                                               _%hd231841232479%_
                                               _%tl231842232481%_
                                               _%e231843232484%_
                                               _%hd231844232487%_
                                               _%tl231845232489%_
                                               _%e231846232492%_
                                               _%hd231847232495%_
                                               _%tl231848232497%_
                                               _%e231849232500%_
                                               _%hd231850232503%_
                                               _%tl231851232505%_
                                               _%e231852232508%_
                                               _%hd231853232511%_
                                               _%tl231854232513%_
                                               _%e231855232516%_
                                               _%hd231856232519%_
                                               _%tl231857232521%_
                                               _%e231858232524%_
                                               _%hd231859232527%_
                                               _%tl231860232529%_
                                               _%e231861232532%_
                                               _%hd231862232535%_
                                               _%tl231863232537%_
                                               _%e231864232540%_
                                               _%hd231865232543%_
                                               _%tl231866232545%_
                                               _%e231867232548%_
                                               _%hd231868232551%_
                                               _%tl231869232553%_
                                               _%e231870232556%_
                                               _%hd231871232559%_
                                               _%tl231872232561%_
                                               _%e231873232564%_
                                               _%hd231874232567%_
                                               _%tl231875232569%_
                                               _%e231876232572%_
                                               _%hd231877232575%_
                                               _%tl231878232577%_
                                               _%__splice236217236218%_
                                               _%target231879232580%_
                                               _%tl231881232582%_)
                                              (_%__kont236227236228%_))))
                                      (_%__kont236227236228%_))
                                  (_%__kont236227236228%_))))
                          (_%__kont236227236228%_))
                      (_%__kont236227236228%_))
                  (_%__kont236227236228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont236227236228%_))))
                                          (_%__match236706236707%_
                                           _%e231840232476%_
                                           _%hd231841232479%_
                                           _%tl231842232481%_
                                           _%e231843232484%_
                                           _%hd231844232487%_
                                           _%tl231845232489%_
                                           _%e231846232492%_
                                           _%hd231847232495%_
                                           _%tl231848232497%_
                                           _%e231849232500%_
                                           _%hd231850232503%_
                                           _%tl231851232505%_
                                           _%e231852232508%_
                                           _%hd231853232511%_
                                           _%tl231854232513%_
                                           _%e231855232516%_
                                           _%hd231856232519%_
                                           _%tl231857232521%_
                                           _%e231858232524%_
                                           _%hd231859232527%_
                                           _%tl231860232529%_
                                           _%e231861232532%_
                                           _%hd231862232535%_
                                           _%tl231863232537%_))
                                      (_%__match236706236707%_
                                       _%e231840232476%_
                                       _%hd231841232479%_
                                       _%tl231842232481%_
                                       _%e231843232484%_
                                       _%hd231844232487%_
                                       _%tl231845232489%_
                                       _%e231846232492%_
                                       _%hd231847232495%_
                                       _%tl231848232497%_
                                       _%e231849232500%_
                                       _%hd231850232503%_
                                       _%tl231851232505%_
                                       _%e231852232508%_
                                       _%hd231853232511%_
                                       _%tl231854232513%_
                                       _%e231855232516%_
                                       _%hd231856232519%_
                                       _%tl231857232521%_
                                       _%e231858232524%_
                                       _%hd231859232527%_
                                       _%tl231860232529%_
                                       _%e231861232532%_
                                       _%hd231862232535%_
                                       _%tl231863232537%_))))
                              (_%__match236706236707%_
                               _%e231840232476%_
                               _%hd231841232479%_
                               _%tl231842232481%_
                               _%e231843232484%_
                               _%hd231844232487%_
                               _%tl231845232489%_
                               _%e231846232492%_
                               _%hd231847232495%_
                               _%tl231848232497%_
                               _%e231849232500%_
                               _%hd231850232503%_
                               _%tl231851232505%_
                               _%e231852232508%_
                               _%hd231853232511%_
                               _%tl231854232513%_
                               _%e231855232516%_
                               _%hd231856232519%_
                               _%tl231857232521%_
                               _%e231858232524%_
                               _%hd231859232527%_
                               _%tl231860232529%_
                               _%e231861232532%_
                               _%hd231862232535%_
                               _%tl231863232537%_))
                          (_%__match236492236493%_
                           _%e231840232476%_
                           _%hd231841232479%_
                           _%tl231842232481%_
                           _%e231843232484%_
                           _%hd231844232487%_
                           _%tl231845232489%_
                           _%e231846232492%_
                           _%hd231847232495%_
                           _%tl231848232497%_
                           _%e231849232500%_
                           _%hd231850232503%_
                           _%tl231851232505%_
                           _%e231852232508%_
                           _%hd231853232511%_
                           _%tl231854232513%_
                           _%e231855232516%_
                           _%hd231856232519%_
                           _%tl231857232521%_
                           _%e231858232524%_
                           _%hd231859232527%_
                           _%tl231860232529%_
                           _%e231861232532%_
                           _%hd231862232535%_
                           _%tl231863232537%_
                           _%e231864232540%_
                           _%hd231865232543%_
                           _%tl231866232545%_))))
                   (_%__match236314236315%_
                    (lambda (_%e231796232663%_
                             _%hd231797232666%_
                             _%tl231798232668%_
                             _%e231799232671%_
                             _%hd231800232674%_
                             _%tl231801232676%_
                             _%e231802232679%_
                             _%hd231803232682%_
                             _%tl231804232684%_
                             _%e231805232687%_
                             _%hd231806232690%_
                             _%tl231807232692%_
                             _%e231808232695%_
                             _%hd231809232698%_
                             _%tl231810232700%_
                             _%e231811232703%_
                             _%hd231812232706%_
                             _%tl231813232708%_
                             _%e231814232711%_
                             _%hd231815232714%_
                             _%tl231816232716%_
                             _%e231817232719%_
                             _%hd231818232722%_
                             _%tl231819232724%_
                             _%e231820232727%_
                             _%hd231821232730%_
                             _%tl231822232732%_
                             _%e231823232735%_
                             _%hd231824232738%_
                             _%tl231825232740%_
                             _%__splice236213236214%_
                             _%target231826232743%_
                             _%tl231828232745%_)
                      (letrec ((_%loop231829232748%_
                                (lambda (_%hd231827232751%_
                                         _%args231833232753%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd231827232751%_))
                                      (let ((_%e231830232755%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd231827232751%_))))
                                        (let ((_%lp-tl231832232760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231830232755%_)))
                                              (_%lp-hd231831232758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231830232755%_))))
                                          (_%loop231829232748%_
                                           _%lp-tl231832232760%_
                                           (cons _%lp-hd231831232758%_
                                                 _%args231833232753%_))))
                                      (let ((_%args231834232763%_
                                             (reverse _%args231833232753%_)))
                                        (let ((_%g231792232765%_
                                               _%args231834232763%_)
                                              (_%g231793232766%_
                                               _%hd231824232738%_)
                                              (_%g231794232767%_
                                               _%hd231815232714%_)
                                              (_%g231795232768%_
                                               _%hd231806232690%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g231795232768%_
                                                      'call-method))
                                                   (let ((__tmp237372
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self231781%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g231794232767%_
                                                      __tmp237372)))
                                              (_%__kont236211236212%_
                                               _%g231792232765%_
                                               _%g231793232766%_
                                               _%g231794232767%_
                                               _%g231795232768%_)
                                              (_%__match236502236503%_
                                               _%e231796232663%_
                                               _%hd231797232666%_
                                               _%tl231798232668%_
                                               _%e231799232671%_
                                               _%hd231800232674%_
                                               _%tl231801232676%_
                                               _%e231802232679%_
                                               _%hd231803232682%_
                                               _%tl231804232684%_
                                               _%e231805232687%_
                                               _%hd231806232690%_
                                               _%tl231807232692%_
                                               _%e231808232695%_
                                               _%hd231809232698%_
                                               _%tl231810232700%_
                                               _%e231811232703%_
                                               _%hd231812232706%_
                                               _%tl231813232708%_
                                               _%e231814232711%_
                                               _%hd231815232714%_
                                               _%tl231816232716%_
                                               _%e231817232719%_
                                               _%hd231818232722%_
                                               _%tl231819232724%_
                                               _%e231820232727%_
                                               _%hd231821232730%_
                                               _%tl231822232732%_
                                               _%e231823232735%_
                                               _%hd231824232738%_
                                               _%tl231825232740%_))))))))
                        (_%loop231829232748%_ _%target231826232743%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx236209236210%_))
                  (let ((_%e231796232663%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx236209236210%_))))
                    (let ((_%tl231798232668%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e231796232663%_)))
                          (_%hd231797232666%_
                           (let ()
                             (declare (not safe))
                             (##car _%e231796232663%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231798232668%_))
                          (let ((_%e231799232671%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl231798232668%_))))
                            (let ((_%tl231801232676%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231799232671%_)))
                                  (_%hd231800232674%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231799232671%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd231800232674%_))
                                  (let ((_%e231802232679%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd231800232674%_))))
                                    (let ((_%tl231804232684%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e231802232679%_)))
                                          (_%hd231803232682%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e231802232679%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd231803232682%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd231803232682%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl231804232684%_))
                                                  (let ((_%e231805232687%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl231804232684%_))))
                                                    (let ((_%tl231807232692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231805232687%_)))
                                                          (_%hd231806232690%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231805232687%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl231807232692%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl231801232676%_))
                      (let ((_%e231808232695%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl231801232676%_))))
                        (let ((_%tl231810232700%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231808232695%_)))
                              (_%hd231809232698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231808232695%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd231809232698%_))
                              (let ((_%e231811232703%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd231809232698%_))))
                                (let ((_%tl231813232708%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e231811232703%_)))
                                      (_%hd231812232706%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e231811232703%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd231812232706%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd231812232706%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231813232708%_))
                                              (let ((_%e231814232711%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl231813232708%_))))
                                                (let ((_%tl231816232716%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231814232711%_)))
                                                      (_%hd231815232714%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231814232711%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl231816232716%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl231810232700%_))
                                                          (let ((_%e231817232719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl231810232700%_))))
                    (let ((_%tl231819232724%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e231817232719%_)))
                          (_%hd231818232722%_
                           (let ()
                             (declare (not safe))
                             (##car _%e231817232719%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd231818232722%_))
                          (let ((_%e231820232727%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd231818232722%_))))
                            (let ((_%tl231822232732%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231820232727%_)))
                                  (_%hd231821232730%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231820232727%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd231821232730%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd231821232730%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl231822232732%_))
                                          (let ((_%e231823232735%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl231822232732%_))))
                                            (let ((_%tl231825232740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e231823232735%_)))
                                                  (_%hd231824232738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e231823232735%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl231825232740%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl231819232724%_))
                                                      (let ((_%__splice236213236214%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl231819232724%_
                        '0))))
                (let ((_%tl231828232745%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice236213236214%_ '1)))
                      (_%target231826232743%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice236213236214%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl231828232745%_))
                      (_%__match236314236315%_
                       _%e231796232663%_
                       _%hd231797232666%_
                       _%tl231798232668%_
                       _%e231799232671%_
                       _%hd231800232674%_
                       _%tl231801232676%_
                       _%e231802232679%_
                       _%hd231803232682%_
                       _%tl231804232684%_
                       _%e231805232687%_
                       _%hd231806232690%_
                       _%tl231807232692%_
                       _%e231808232695%_
                       _%hd231809232698%_
                       _%tl231810232700%_
                       _%e231811232703%_
                       _%hd231812232706%_
                       _%tl231813232708%_
                       _%e231814232711%_
                       _%hd231815232714%_
                       _%tl231816232716%_
                       _%e231817232719%_
                       _%hd231818232722%_
                       _%tl231819232724%_
                       _%e231820232727%_
                       _%hd231821232730%_
                       _%tl231822232732%_
                       _%e231823232735%_
                       _%hd231824232738%_
                       _%tl231825232740%_
                       _%__splice236213236214%_
                       _%target231826232743%_
                       _%tl231828232745%_)
                      (_%__match236502236503%_
                       _%e231796232663%_
                       _%hd231797232666%_
                       _%tl231798232668%_
                       _%e231799232671%_
                       _%hd231800232674%_
                       _%tl231801232676%_
                       _%e231802232679%_
                       _%hd231803232682%_
                       _%tl231804232684%_
                       _%e231805232687%_
                       _%hd231806232690%_
                       _%tl231807232692%_
                       _%e231808232695%_
                       _%hd231809232698%_
                       _%tl231810232700%_
                       _%e231811232703%_
                       _%hd231812232706%_
                       _%tl231813232708%_
                       _%e231814232711%_
                       _%hd231815232714%_
                       _%tl231816232716%_
                       _%e231817232719%_
                       _%hd231818232722%_
                       _%tl231819232724%_
                       _%e231820232727%_
                       _%hd231821232730%_
                       _%tl231822232732%_
                       _%e231823232735%_
                       _%hd231824232738%_
                       _%tl231825232740%_))))
              (_%__match236502236503%_
               _%e231796232663%_
               _%hd231797232666%_
               _%tl231798232668%_
               _%e231799232671%_
               _%hd231800232674%_
               _%tl231801232676%_
               _%e231802232679%_
               _%hd231803232682%_
               _%tl231804232684%_
               _%e231805232687%_
               _%hd231806232690%_
               _%tl231807232692%_
               _%e231808232695%_
               _%hd231809232698%_
               _%tl231810232700%_
               _%e231811232703%_
               _%hd231812232706%_
               _%tl231813232708%_
               _%e231814232711%_
               _%hd231815232714%_
               _%tl231816232716%_
               _%e231817232719%_
               _%hd231818232722%_
               _%tl231819232724%_
               _%e231820232727%_
               _%hd231821232730%_
               _%tl231822232732%_
               _%e231823232735%_
               _%hd231824232738%_
               _%tl231825232740%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match236706236707%_
                                                   _%e231796232663%_
                                                   _%hd231797232666%_
                                                   _%tl231798232668%_
                                                   _%e231799232671%_
                                                   _%hd231800232674%_
                                                   _%tl231801232676%_
                                                   _%e231802232679%_
                                                   _%hd231803232682%_
                                                   _%tl231804232684%_
                                                   _%e231805232687%_
                                                   _%hd231806232690%_
                                                   _%tl231807232692%_
                                                   _%e231808232695%_
                                                   _%hd231809232698%_
                                                   _%tl231810232700%_
                                                   _%e231811232703%_
                                                   _%hd231812232706%_
                                                   _%tl231813232708%_
                                                   _%e231814232711%_
                                                   _%hd231815232714%_
                                                   _%tl231816232716%_
                                                   _%e231817232719%_
                                                   _%hd231818232722%_
                                                   _%tl231819232724%_))))
                                          (_%__match236706236707%_
                                           _%e231796232663%_
                                           _%hd231797232666%_
                                           _%tl231798232668%_
                                           _%e231799232671%_
                                           _%hd231800232674%_
                                           _%tl231801232676%_
                                           _%e231802232679%_
                                           _%hd231803232682%_
                                           _%tl231804232684%_
                                           _%e231805232687%_
                                           _%hd231806232690%_
                                           _%tl231807232692%_
                                           _%e231808232695%_
                                           _%hd231809232698%_
                                           _%tl231810232700%_
                                           _%e231811232703%_
                                           _%hd231812232706%_
                                           _%tl231813232708%_
                                           _%e231814232711%_
                                           _%hd231815232714%_
                                           _%tl231816232716%_
                                           _%e231817232719%_
                                           _%hd231818232722%_
                                           _%tl231819232724%_))
                                      (_%__match236382236383%_
                                       _%e231796232663%_
                                       _%hd231797232666%_
                                       _%tl231798232668%_
                                       _%e231799232671%_
                                       _%hd231800232674%_
                                       _%tl231801232676%_
                                       _%e231802232679%_
                                       _%hd231803232682%_
                                       _%tl231804232684%_
                                       _%e231805232687%_
                                       _%hd231806232690%_
                                       _%tl231807232692%_
                                       _%e231808232695%_
                                       _%hd231809232698%_
                                       _%tl231810232700%_
                                       _%e231811232703%_
                                       _%hd231812232706%_
                                       _%tl231813232708%_
                                       _%e231814232711%_
                                       _%hd231815232714%_
                                       _%tl231816232716%_
                                       _%e231817232719%_
                                       _%hd231818232722%_
                                       _%tl231819232724%_
                                       _%e231820232727%_
                                       _%hd231821232730%_
                                       _%tl231822232732%_))
                                  (_%__match236706236707%_
                                   _%e231796232663%_
                                   _%hd231797232666%_
                                   _%tl231798232668%_
                                   _%e231799232671%_
                                   _%hd231800232674%_
                                   _%tl231801232676%_
                                   _%e231802232679%_
                                   _%hd231803232682%_
                                   _%tl231804232684%_
                                   _%e231805232687%_
                                   _%hd231806232690%_
                                   _%tl231807232692%_
                                   _%e231808232695%_
                                   _%hd231809232698%_
                                   _%tl231810232700%_
                                   _%e231811232703%_
                                   _%hd231812232706%_
                                   _%tl231813232708%_
                                   _%e231814232711%_
                                   _%hd231815232714%_
                                   _%tl231816232716%_
                                   _%e231817232719%_
                                   _%hd231818232722%_
                                   _%tl231819232724%_))))
                          (_%__match236706236707%_
                           _%e231796232663%_
                           _%hd231797232666%_
                           _%tl231798232668%_
                           _%e231799232671%_
                           _%hd231800232674%_
                           _%tl231801232676%_
                           _%e231802232679%_
                           _%hd231803232682%_
                           _%tl231804232684%_
                           _%e231805232687%_
                           _%hd231806232690%_
                           _%tl231807232692%_
                           _%e231808232695%_
                           _%hd231809232698%_
                           _%tl231810232700%_
                           _%e231811232703%_
                           _%hd231812232706%_
                           _%tl231813232708%_
                           _%e231814232711%_
                           _%hd231815232714%_
                           _%tl231816232716%_
                           _%e231817232719%_
                           _%hd231818232722%_
                           _%tl231819232724%_))))
                  (_%__match236644236645%_
                   _%e231796232663%_
                   _%hd231797232666%_
                   _%tl231798232668%_
                   _%e231799232671%_
                   _%hd231800232674%_
                   _%tl231801232676%_
                   _%e231802232679%_
                   _%hd231803232682%_
                   _%tl231804232684%_
                   _%e231805232687%_
                   _%hd231806232690%_
                   _%tl231807232692%_
                   _%e231808232695%_
                   _%hd231809232698%_
                   _%tl231810232700%_
                   _%e231811232703%_
                   _%hd231812232706%_
                   _%tl231813232708%_
                   _%e231814232711%_
                   _%hd231815232714%_
                   _%tl231816232716%_))
              (_%__kont236227236228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont236227236228%_))
                                          (_%__kont236227236228%_))
                                      (_%__kont236227236228%_))))
                              (_%__kont236227236228%_))))
                      (_%__kont236227236228%_))
                  (_%__kont236227236228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont236227236228%_))
                                              (_%__kont236227236228%_))
                                          (_%__kont236227236228%_))))
                                  (_%__kont236227236228%_))))
                          (_%__kont236227236228%_))))
                  (_%__kont236227236228%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self230724%_ _%stx230725%_)
        (letrec ((_%force-e230727%_
                  (lambda (_%target231779%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target231779%_ '()))
                                      '()))))))
          (let* ((_%__stx236711236712%_ _%stx230725%_)
                 (_%g230735230957%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx236711236712%_)))))
            (let ((_%__kont236713236714%_
                   (lambda (_%g230737231725%_
                            _%g230738231726%_
                            _%g230739231727%_
                            _%g230740231728%_)
                     (let ((_%$method231773%_
                            (let ((__tmp237374
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self230724%_ 'methods)))
                                  (__tmp237373
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g230738231726%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp237374 __tmp237373)))
                           (_%args231774%_
                            (map (lambda (_%g231761231763%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self230724%_
                                      _%g231761231763%_)))
                                 (let ((__tmp237375
                                        (lambda (_%g231765231768%_
                                                 _%g231766231770%_)
                                          (cons _%g231765231768%_
                                                _%g231766231770%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp237375
                                    '()
                                    _%g230737231725%_)))))
                       (let ((__tmp237376
                              (cons '%#call
                                    (cons (_%force-e230727%_ _%$method231773%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self230724%_
                                                               'receiver))
                                                            '()))
                                                _%args231774%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp237376 _%stx230725%_)))))
                  (_%__kont236717236718%_
                   (lambda (_%g230780231559%_
                            _%g230781231560%_
                            _%g230782231561%_
                            _%g230783231562%_
                            _%g230784231563%_)
                     (let ((_%$method231615%_
                            (let ((__tmp237378
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self230724%_ 'methods)))
                                  (__tmp237377
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g230781231560%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp237378 __tmp237377)))
                           (_%args231616%_
                            (map (lambda (_%g231603231605%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self230724%_
                                      _%g231603231605%_)))
                                 (let ((__tmp237379
                                        (lambda (_%g231607231610%_
                                                 _%g231608231612%_)
                                          (cons _%g231607231610%_
                                                _%g231608231612%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp237379
                                    '()
                                    _%g230780231559%_)))))
                       (let ((__tmp237380
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e230727%_
                                                 _%$method231615%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self230724%_ 'receiver))
                          '()))
              _%args231616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp237380 _%stx230725%_)))))
                  (_%__kont236721236722%_
                   (lambda (_%g230833231392%_
                            _%g230834231393%_
                            _%g230835231394%_)
                     (let* ((_%$field231426%_
                             (let ((__tmp237382
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self230724%_ 'slots)))
                                   (__tmp237381
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g230833231392%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp237382 __tmp237381)))
                            (__tmp237383
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self230724%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field231426%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self230724%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp237383 _%stx230725%_))))
                  (_%__kont236723236724%_
                   (lambda (_%g230866231266%_
                            _%g230867231267%_
                            _%g230868231268%_
                            _%g230869231269%_)
                     (let ((_%$field231304%_
                            (let ((__tmp237385
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self230724%_ 'slots)))
                                  (__tmp237384
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g230867231267%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp237385 __tmp237384)))
                           (_%expr231305%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self230724%_
                               _%g230866231266%_))))
                       (let ((__tmp237386
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self230724%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field231304%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self230724%_ 'receiver))
                          '()))
              (cons _%expr231305%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp237386 _%stx230725%_)))))
                  (_%__kont236725236726%_
                   (lambda (_%g230903231138%_ _%g230904231139%_)
                     (let* ((_%accessor231161%_
                             (let ((__tmp237387
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g230904231139%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp237387)))
                            (_%klass231163%_
                             (let ((__tmp237388
                                    (##structure-ref
                                     _%accessor231161%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx230725%_
                                __tmp237388)))
                            (_%slot231165%_
                             (##structure-ref
                              _%accessor231161%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor231161%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass231163%_
                                      _%slot231165%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass231163%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx230725%_
                           (let* ((_%$field231171%_
                                   (let ((__tmp237389
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self230724%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp237389 _%slot231165%_)))
                                  (__tmp237390
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self230724%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field231171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self230724%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp237390
                              _%stx230725%_))))))
                  (_%__kont236727236728%_
                   (lambda (_%g230926231033%_
                            _%g230927231034%_
                            _%g230928231035%_)
                     (let* ((_%mutator231063%_
                             (let ((__tmp237391
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g230928231035%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp237391)))
                            (_%klass231065%_
                             (let ((__tmp237392
                                    (##structure-ref
                                     _%mutator231063%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx230725%_
                                __tmp237392)))
                            (_%slot231067%_
                             (##structure-ref
                              _%mutator231063%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr231069%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self230724%_
                                _%g230926231033%_))))
                       (if (if (##structure-ref
                                _%mutator231063%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass231065%_
                                      _%slot231067%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass231065%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp237393
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g230928231035%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g230927231034%_
                                                                '()))
                                                    (cons _%expr231069%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp237393 _%stx230725%_))
                           (let* ((_%$field231075%_
                                   (let ((__tmp237394
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self230724%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp237394 _%slot231067%_)))
                                  (__tmp237395
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self230724%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field231075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self230724%_ 'receiver))
                               '()))
                   (cons _%expr231069%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp237395
                              _%stx230725%_))))))
                  (_%__kont236729236730%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self230724%_ _%stx230725%_)))))
              (let* ((_%__match237210237211%_
                      (lambda (_%e230929230969%_
                               _%hd230930230972%_
                               _%tl230931230974%_
                               _%e230932230977%_
                               _%hd230933230980%_
                               _%tl230934230982%_
                               _%e230935230985%_
                               _%hd230936230988%_
                               _%tl230937230990%_
                               _%e230938230993%_
                               _%hd230939230996%_
                               _%tl230940230998%_
                               _%e230941231001%_
                               _%hd230942231004%_
                               _%tl230943231006%_
                               _%e230944231009%_
                               _%hd230945231012%_
                               _%tl230946231014%_
                               _%e230947231017%_
                               _%hd230948231020%_
                               _%tl230949231022%_
                               _%e230950231025%_
                               _%hd230951231028%_
                               _%tl230952231030%_)
                        (let ((_%g230926231033%_ _%hd230951231028%_)
                              (_%g230927231034%_ _%hd230948231020%_)
                              (_%g230928231035%_ _%hd230939230996%_))
                          (if (and (let ((__tmp237396
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self230724%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g230927231034%_
                                      __tmp237396))
                                   (let ((__tmp237397
                                          (let ((__tmp237398
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g230928231035%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp237398))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp237397
                                      'gxc#!mutator::t)))
                              (_%__kont236727236728%_
                               _%g230926231033%_
                               _%g230927231034%_
                               _%g230928231035%_)
                              (_%__kont236729236730%_)))))
                     (_%__match237208237209%_
                      (lambda (_%e230929230969%_
                               _%hd230930230972%_
                               _%tl230931230974%_
                               _%e230932230977%_
                               _%hd230933230980%_
                               _%tl230934230982%_
                               _%e230935230985%_
                               _%hd230936230988%_
                               _%tl230937230990%_
                               _%e230938230993%_
                               _%hd230939230996%_
                               _%tl230940230998%_
                               _%e230941231001%_
                               _%hd230942231004%_
                               _%tl230943231006%_
                               _%e230944231009%_
                               _%hd230945231012%_
                               _%tl230946231014%_
                               _%e230947231017%_
                               _%hd230948231020%_
                               _%tl230949231022%_
                               _%e230950231025%_
                               _%hd230951231028%_
                               _%tl230952231030%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl230952231030%_))
                            (_%__match237210237211%_
                             _%e230929230969%_
                             _%hd230930230972%_
                             _%tl230931230974%_
                             _%e230932230977%_
                             _%hd230933230980%_
                             _%tl230934230982%_
                             _%e230935230985%_
                             _%hd230936230988%_
                             _%tl230937230990%_
                             _%e230938230993%_
                             _%hd230939230996%_
                             _%tl230940230998%_
                             _%e230941231001%_
                             _%hd230942231004%_
                             _%tl230943231006%_
                             _%e230944231009%_
                             _%hd230945231012%_
                             _%tl230946231014%_
                             _%e230947231017%_
                             _%hd230948231020%_
                             _%tl230949231022%_
                             _%e230950231025%_
                             _%hd230951231028%_
                             _%tl230952231030%_)
                            (_%__kont236729236730%_))))
                     (_%__match237202237203%_
                      (lambda (_%e230929230969%_
                               _%hd230930230972%_
                               _%tl230931230974%_
                               _%e230932230977%_
                               _%hd230933230980%_
                               _%tl230934230982%_
                               _%e230935230985%_
                               _%hd230936230988%_
                               _%tl230937230990%_
                               _%e230938230993%_
                               _%hd230939230996%_
                               _%tl230940230998%_
                               _%e230941231001%_
                               _%hd230942231004%_
                               _%tl230943231006%_
                               _%e230944231009%_
                               _%hd230945231012%_
                               _%tl230946231014%_
                               _%e230947231017%_
                               _%hd230948231020%_
                               _%tl230949231022%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230943231006%_))
                            (let ((_%e230950231025%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl230943231006%_))))
                              (let ((_%tl230952231030%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230950231025%_)))
                                    (_%hd230951231028%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230950231025%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl230952231030%_))
                                    (_%__match237210237211%_
                                     _%e230929230969%_
                                     _%hd230930230972%_
                                     _%tl230931230974%_
                                     _%e230932230977%_
                                     _%hd230933230980%_
                                     _%tl230934230982%_
                                     _%e230935230985%_
                                     _%hd230936230988%_
                                     _%tl230937230990%_
                                     _%e230938230993%_
                                     _%hd230939230996%_
                                     _%tl230940230998%_
                                     _%e230941231001%_
                                     _%hd230942231004%_
                                     _%tl230943231006%_
                                     _%e230944231009%_
                                     _%hd230945231012%_
                                     _%tl230946231014%_
                                     _%e230947231017%_
                                     _%hd230948231020%_
                                     _%tl230949231022%_
                                     _%e230950231025%_
                                     _%hd230951231028%_
                                     _%tl230952231030%_)
                                    (_%__kont236729236730%_))))
                            (_%__kont236729236730%_))))
                     (_%__match237148237149%_
                      (lambda (_%e230905231082%_
                               _%hd230906231085%_
                               _%tl230907231087%_
                               _%e230908231090%_
                               _%hd230909231093%_
                               _%tl230910231095%_
                               _%e230911231098%_
                               _%hd230912231101%_
                               _%tl230913231103%_
                               _%e230914231106%_
                               _%hd230915231109%_
                               _%tl230916231111%_
                               _%e230917231114%_
                               _%hd230918231117%_
                               _%tl230919231119%_
                               _%e230920231122%_
                               _%hd230921231125%_
                               _%tl230922231127%_
                               _%e230923231130%_
                               _%hd230924231133%_
                               _%tl230925231135%_)
                        (let ((_%g230903231138%_ _%hd230924231133%_)
                              (_%g230904231139%_ _%hd230915231109%_))
                          (if (and (let ((__tmp237399
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self230724%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g230903231138%_
                                      __tmp237399))
                                   (let ((__tmp237400
                                          (let ((__tmp237401
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g230904231139%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp237401))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp237400
                                      'gxc#!accessor::t)))
                              (_%__kont236725236726%_
                               _%g230903231138%_
                               _%g230904231139%_)
                              (_%__kont236729236730%_)))))
                     (_%__match237146237147%_
                      (lambda (_%e230905231082%_
                               _%hd230906231085%_
                               _%tl230907231087%_
                               _%e230908231090%_
                               _%hd230909231093%_
                               _%tl230910231095%_
                               _%e230911231098%_
                               _%hd230912231101%_
                               _%tl230913231103%_
                               _%e230914231106%_
                               _%hd230915231109%_
                               _%tl230916231111%_
                               _%e230917231114%_
                               _%hd230918231117%_
                               _%tl230919231119%_
                               _%e230920231122%_
                               _%hd230921231125%_
                               _%tl230922231127%_
                               _%e230923231130%_
                               _%hd230924231133%_
                               _%tl230925231135%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl230919231119%_))
                            (_%__match237148237149%_
                             _%e230905231082%_
                             _%hd230906231085%_
                             _%tl230907231087%_
                             _%e230908231090%_
                             _%hd230909231093%_
                             _%tl230910231095%_
                             _%e230911231098%_
                             _%hd230912231101%_
                             _%tl230913231103%_
                             _%e230914231106%_
                             _%hd230915231109%_
                             _%tl230916231111%_
                             _%e230917231114%_
                             _%hd230918231117%_
                             _%tl230919231119%_
                             _%e230920231122%_
                             _%hd230921231125%_
                             _%tl230922231127%_
                             _%e230923231130%_
                             _%hd230924231133%_
                             _%tl230925231135%_)
                            (_%__match237202237203%_
                             _%e230905231082%_
                             _%hd230906231085%_
                             _%tl230907231087%_
                             _%e230908231090%_
                             _%hd230909231093%_
                             _%tl230910231095%_
                             _%e230911231098%_
                             _%hd230912231101%_
                             _%tl230913231103%_
                             _%e230914231106%_
                             _%hd230915231109%_
                             _%tl230916231111%_
                             _%e230917231114%_
                             _%hd230918231117%_
                             _%tl230919231119%_
                             _%e230920231122%_
                             _%hd230921231125%_
                             _%tl230922231127%_
                             _%e230923231130%_
                             _%hd230924231133%_
                             _%tl230925231135%_))))
                     (_%__match237092237093%_
                      (lambda (_%e230870231178%_
                               _%hd230871231181%_
                               _%tl230872231183%_
                               _%e230873231186%_
                               _%hd230874231189%_
                               _%tl230875231191%_
                               _%e230876231194%_
                               _%hd230877231197%_
                               _%tl230878231199%_
                               _%e230879231202%_
                               _%hd230880231205%_
                               _%tl230881231207%_
                               _%e230882231210%_
                               _%hd230883231213%_
                               _%tl230884231215%_
                               _%e230885231218%_
                               _%hd230886231221%_
                               _%tl230887231223%_
                               _%e230888231226%_
                               _%hd230889231229%_
                               _%tl230890231231%_
                               _%e230891231234%_
                               _%hd230892231237%_
                               _%tl230893231239%_
                               _%e230894231242%_
                               _%hd230895231245%_
                               _%tl230896231247%_
                               _%e230897231250%_
                               _%hd230898231253%_
                               _%tl230899231255%_
                               _%e230900231258%_
                               _%hd230901231261%_
                               _%tl230902231263%_)
                        (let ((_%g230866231266%_ _%hd230901231261%_)
                              (_%g230867231267%_ _%hd230898231253%_)
                              (_%g230868231268%_ _%hd230889231229%_)
                              (_%g230869231269%_ _%hd230880231205%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g230869231269%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g230869231269%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp237402
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self230724%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g230868231268%_
                                      __tmp237402)))
                              (_%__kont236723236724%_
                               _%g230866231266%_
                               _%g230867231267%_
                               _%g230868231268%_
                               _%g230869231269%_)
                              (_%__kont236729236730%_)))))
                     (_%__match237084237085%_
                      (lambda (_%e230870231178%_
                               _%hd230871231181%_
                               _%tl230872231183%_
                               _%e230873231186%_
                               _%hd230874231189%_
                               _%tl230875231191%_
                               _%e230876231194%_
                               _%hd230877231197%_
                               _%tl230878231199%_
                               _%e230879231202%_
                               _%hd230880231205%_
                               _%tl230881231207%_
                               _%e230882231210%_
                               _%hd230883231213%_
                               _%tl230884231215%_
                               _%e230885231218%_
                               _%hd230886231221%_
                               _%tl230887231223%_
                               _%e230888231226%_
                               _%hd230889231229%_
                               _%tl230890231231%_
                               _%e230891231234%_
                               _%hd230892231237%_
                               _%tl230893231239%_
                               _%e230894231242%_
                               _%hd230895231245%_
                               _%tl230896231247%_
                               _%e230897231250%_
                               _%hd230898231253%_
                               _%tl230899231255%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230893231239%_))
                            (let ((_%e230900231258%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl230893231239%_))))
                              (let ((_%tl230902231263%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230900231258%_)))
                                    (_%hd230901231261%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230900231258%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl230902231263%_))
                                    (_%__match237092237093%_
                                     _%e230870231178%_
                                     _%hd230871231181%_
                                     _%tl230872231183%_
                                     _%e230873231186%_
                                     _%hd230874231189%_
                                     _%tl230875231191%_
                                     _%e230876231194%_
                                     _%hd230877231197%_
                                     _%tl230878231199%_
                                     _%e230879231202%_
                                     _%hd230880231205%_
                                     _%tl230881231207%_
                                     _%e230882231210%_
                                     _%hd230883231213%_
                                     _%tl230884231215%_
                                     _%e230885231218%_
                                     _%hd230886231221%_
                                     _%tl230887231223%_
                                     _%e230888231226%_
                                     _%hd230889231229%_
                                     _%tl230890231231%_
                                     _%e230891231234%_
                                     _%hd230892231237%_
                                     _%tl230893231239%_
                                     _%e230894231242%_
                                     _%hd230895231245%_
                                     _%tl230896231247%_
                                     _%e230897231250%_
                                     _%hd230898231253%_
                                     _%tl230899231255%_
                                     _%e230900231258%_
                                     _%hd230901231261%_
                                     _%tl230902231263%_)
                                    (_%__kont236729236730%_))))
                            (_%__match237208237209%_
                             _%e230870231178%_
                             _%hd230871231181%_
                             _%tl230872231183%_
                             _%e230873231186%_
                             _%hd230874231189%_
                             _%tl230875231191%_
                             _%e230876231194%_
                             _%hd230877231197%_
                             _%tl230878231199%_
                             _%e230879231202%_
                             _%hd230880231205%_
                             _%tl230881231207%_
                             _%e230882231210%_
                             _%hd230883231213%_
                             _%tl230884231215%_
                             _%e230885231218%_
                             _%hd230886231221%_
                             _%tl230887231223%_
                             _%e230888231226%_
                             _%hd230889231229%_
                             _%tl230890231231%_
                             _%e230891231234%_
                             _%hd230892231237%_
                             _%tl230893231239%_))))
                     (_%__match237006237007%_
                      (lambda (_%e230836231312%_
                               _%hd230837231315%_
                               _%tl230838231317%_
                               _%e230839231320%_
                               _%hd230840231323%_
                               _%tl230841231325%_
                               _%e230842231328%_
                               _%hd230843231331%_
                               _%tl230844231333%_
                               _%e230845231336%_
                               _%hd230846231339%_
                               _%tl230847231341%_
                               _%e230848231344%_
                               _%hd230849231347%_
                               _%tl230850231349%_
                               _%e230851231352%_
                               _%hd230852231355%_
                               _%tl230853231357%_
                               _%e230854231360%_
                               _%hd230855231363%_
                               _%tl230856231365%_
                               _%e230857231368%_
                               _%hd230858231371%_
                               _%tl230859231373%_
                               _%e230860231376%_
                               _%hd230861231379%_
                               _%tl230862231381%_
                               _%e230863231384%_
                               _%hd230864231387%_
                               _%tl230865231389%_)
                        (let ((_%g230833231392%_ _%hd230864231387%_)
                              (_%g230834231393%_ _%hd230855231363%_)
                              (_%g230835231394%_ _%hd230846231339%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g230835231394%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g230835231394%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp237403
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self230724%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g230834231393%_
                                      __tmp237403)))
                              (_%__kont236721236722%_
                               _%g230833231392%_
                               _%g230834231393%_
                               _%g230835231394%_)
                              (_%__match237210237211%_
                               _%e230836231312%_
                               _%hd230837231315%_
                               _%tl230838231317%_
                               _%e230839231320%_
                               _%hd230840231323%_
                               _%tl230841231325%_
                               _%e230842231328%_
                               _%hd230843231331%_
                               _%tl230844231333%_
                               _%e230845231336%_
                               _%hd230846231339%_
                               _%tl230847231341%_
                               _%e230848231344%_
                               _%hd230849231347%_
                               _%tl230850231349%_
                               _%e230851231352%_
                               _%hd230852231355%_
                               _%tl230853231357%_
                               _%e230854231360%_
                               _%hd230855231363%_
                               _%tl230856231365%_
                               _%e230857231368%_
                               _%hd230858231371%_
                               _%tl230859231373%_)))))
                     (_%__match237004237005%_
                      (lambda (_%e230836231312%_
                               _%hd230837231315%_
                               _%tl230838231317%_
                               _%e230839231320%_
                               _%hd230840231323%_
                               _%tl230841231325%_
                               _%e230842231328%_
                               _%hd230843231331%_
                               _%tl230844231333%_
                               _%e230845231336%_
                               _%hd230846231339%_
                               _%tl230847231341%_
                               _%e230848231344%_
                               _%hd230849231347%_
                               _%tl230850231349%_
                               _%e230851231352%_
                               _%hd230852231355%_
                               _%tl230853231357%_
                               _%e230854231360%_
                               _%hd230855231363%_
                               _%tl230856231365%_
                               _%e230857231368%_
                               _%hd230858231371%_
                               _%tl230859231373%_
                               _%e230860231376%_
                               _%hd230861231379%_
                               _%tl230862231381%_
                               _%e230863231384%_
                               _%hd230864231387%_
                               _%tl230865231389%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl230859231373%_))
                            (_%__match237006237007%_
                             _%e230836231312%_
                             _%hd230837231315%_
                             _%tl230838231317%_
                             _%e230839231320%_
                             _%hd230840231323%_
                             _%tl230841231325%_
                             _%e230842231328%_
                             _%hd230843231331%_
                             _%tl230844231333%_
                             _%e230845231336%_
                             _%hd230846231339%_
                             _%tl230847231341%_
                             _%e230848231344%_
                             _%hd230849231347%_
                             _%tl230850231349%_
                             _%e230851231352%_
                             _%hd230852231355%_
                             _%tl230853231357%_
                             _%e230854231360%_
                             _%hd230855231363%_
                             _%tl230856231365%_
                             _%e230857231368%_
                             _%hd230858231371%_
                             _%tl230859231373%_
                             _%e230860231376%_
                             _%hd230861231379%_
                             _%tl230862231381%_
                             _%e230863231384%_
                             _%hd230864231387%_
                             _%tl230865231389%_)
                            (_%__match237084237085%_
                             _%e230836231312%_
                             _%hd230837231315%_
                             _%tl230838231317%_
                             _%e230839231320%_
                             _%hd230840231323%_
                             _%tl230841231325%_
                             _%e230842231328%_
                             _%hd230843231331%_
                             _%tl230844231333%_
                             _%e230845231336%_
                             _%hd230846231339%_
                             _%tl230847231341%_
                             _%e230848231344%_
                             _%hd230849231347%_
                             _%tl230850231349%_
                             _%e230851231352%_
                             _%hd230852231355%_
                             _%tl230853231357%_
                             _%e230854231360%_
                             _%hd230855231363%_
                             _%tl230856231365%_
                             _%e230857231368%_
                             _%hd230858231371%_
                             _%tl230859231373%_
                             _%e230860231376%_
                             _%hd230861231379%_
                             _%tl230862231381%_
                             _%e230863231384%_
                             _%hd230864231387%_
                             _%tl230865231389%_))))
                     (_%__match236994236995%_
                      (lambda (_%e230836231312%_
                               _%hd230837231315%_
                               _%tl230838231317%_
                               _%e230839231320%_
                               _%hd230840231323%_
                               _%tl230841231325%_
                               _%e230842231328%_
                               _%hd230843231331%_
                               _%tl230844231333%_
                               _%e230845231336%_
                               _%hd230846231339%_
                               _%tl230847231341%_
                               _%e230848231344%_
                               _%hd230849231347%_
                               _%tl230850231349%_
                               _%e230851231352%_
                               _%hd230852231355%_
                               _%tl230853231357%_
                               _%e230854231360%_
                               _%hd230855231363%_
                               _%tl230856231365%_
                               _%e230857231368%_
                               _%hd230858231371%_
                               _%tl230859231373%_
                               _%e230860231376%_
                               _%hd230861231379%_
                               _%tl230862231381%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd230861231379%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl230862231381%_))
                                (let ((_%e230863231384%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl230862231381%_))))
                                  (let ((_%tl230865231389%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230863231384%_)))
                                        (_%hd230864231387%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230863231384%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl230865231389%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl230859231373%_))
                                            (_%__match237006237007%_
                                             _%e230836231312%_
                                             _%hd230837231315%_
                                             _%tl230838231317%_
                                             _%e230839231320%_
                                             _%hd230840231323%_
                                             _%tl230841231325%_
                                             _%e230842231328%_
                                             _%hd230843231331%_
                                             _%tl230844231333%_
                                             _%e230845231336%_
                                             _%hd230846231339%_
                                             _%tl230847231341%_
                                             _%e230848231344%_
                                             _%hd230849231347%_
                                             _%tl230850231349%_
                                             _%e230851231352%_
                                             _%hd230852231355%_
                                             _%tl230853231357%_
                                             _%e230854231360%_
                                             _%hd230855231363%_
                                             _%tl230856231365%_
                                             _%e230857231368%_
                                             _%hd230858231371%_
                                             _%tl230859231373%_
                                             _%e230860231376%_
                                             _%hd230861231379%_
                                             _%tl230862231381%_
                                             _%e230863231384%_
                                             _%hd230864231387%_
                                             _%tl230865231389%_)
                                            (_%__match237084237085%_
                                             _%e230836231312%_
                                             _%hd230837231315%_
                                             _%tl230838231317%_
                                             _%e230839231320%_
                                             _%hd230840231323%_
                                             _%tl230841231325%_
                                             _%e230842231328%_
                                             _%hd230843231331%_
                                             _%tl230844231333%_
                                             _%e230845231336%_
                                             _%hd230846231339%_
                                             _%tl230847231341%_
                                             _%e230848231344%_
                                             _%hd230849231347%_
                                             _%tl230850231349%_
                                             _%e230851231352%_
                                             _%hd230852231355%_
                                             _%tl230853231357%_
                                             _%e230854231360%_
                                             _%hd230855231363%_
                                             _%tl230856231365%_
                                             _%e230857231368%_
                                             _%hd230858231371%_
                                             _%tl230859231373%_
                                             _%e230860231376%_
                                             _%hd230861231379%_
                                             _%tl230862231381%_
                                             _%e230863231384%_
                                             _%hd230864231387%_
                                             _%tl230865231389%_))
                                        (_%__match237208237209%_
                                         _%e230836231312%_
                                         _%hd230837231315%_
                                         _%tl230838231317%_
                                         _%e230839231320%_
                                         _%hd230840231323%_
                                         _%tl230841231325%_
                                         _%e230842231328%_
                                         _%hd230843231331%_
                                         _%tl230844231333%_
                                         _%e230845231336%_
                                         _%hd230846231339%_
                                         _%tl230847231341%_
                                         _%e230848231344%_
                                         _%hd230849231347%_
                                         _%tl230850231349%_
                                         _%e230851231352%_
                                         _%hd230852231355%_
                                         _%tl230853231357%_
                                         _%e230854231360%_
                                         _%hd230855231363%_
                                         _%tl230856231365%_
                                         _%e230857231368%_
                                         _%hd230858231371%_
                                         _%tl230859231373%_))))
                                (_%__match237208237209%_
                                 _%e230836231312%_
                                 _%hd230837231315%_
                                 _%tl230838231317%_
                                 _%e230839231320%_
                                 _%hd230840231323%_
                                 _%tl230841231325%_
                                 _%e230842231328%_
                                 _%hd230843231331%_
                                 _%tl230844231333%_
                                 _%e230845231336%_
                                 _%hd230846231339%_
                                 _%tl230847231341%_
                                 _%e230848231344%_
                                 _%hd230849231347%_
                                 _%tl230850231349%_
                                 _%e230851231352%_
                                 _%hd230852231355%_
                                 _%tl230853231357%_
                                 _%e230854231360%_
                                 _%hd230855231363%_
                                 _%tl230856231365%_
                                 _%e230857231368%_
                                 _%hd230858231371%_
                                 _%tl230859231373%_))
                            (_%__match237208237209%_
                             _%e230836231312%_
                             _%hd230837231315%_
                             _%tl230838231317%_
                             _%e230839231320%_
                             _%hd230840231323%_
                             _%tl230841231325%_
                             _%e230842231328%_
                             _%hd230843231331%_
                             _%tl230844231333%_
                             _%e230845231336%_
                             _%hd230846231339%_
                             _%tl230847231341%_
                             _%e230848231344%_
                             _%hd230849231347%_
                             _%tl230850231349%_
                             _%e230851231352%_
                             _%hd230852231355%_
                             _%tl230853231357%_
                             _%e230854231360%_
                             _%hd230855231363%_
                             _%tl230856231365%_
                             _%e230857231368%_
                             _%hd230858231371%_
                             _%tl230859231373%_))))
                     (_%__match236926236927%_
                      (lambda (_%e230785231433%_
                               _%hd230786231436%_
                               _%tl230787231438%_
                               _%e230788231441%_
                               _%hd230789231444%_
                               _%tl230790231446%_
                               _%e230791231449%_
                               _%hd230792231452%_
                               _%tl230793231454%_
                               _%e230794231457%_
                               _%hd230795231460%_
                               _%tl230796231462%_
                               _%e230797231465%_
                               _%hd230798231468%_
                               _%tl230799231470%_
                               _%e230800231473%_
                               _%hd230801231476%_
                               _%tl230802231478%_
                               _%e230803231481%_
                               _%hd230804231484%_
                               _%tl230805231486%_
                               _%e230806231489%_
                               _%hd230807231492%_
                               _%tl230808231494%_
                               _%e230809231497%_
                               _%hd230810231500%_
                               _%tl230811231502%_
                               _%e230812231505%_
                               _%hd230813231508%_
                               _%tl230814231510%_
                               _%e230815231513%_
                               _%hd230816231516%_
                               _%tl230817231518%_
                               _%e230818231521%_
                               _%hd230819231524%_
                               _%tl230820231526%_
                               _%e230821231529%_
                               _%hd230822231532%_
                               _%tl230823231534%_
                               _%__splice236719236720%_
                               _%target230824231537%_
                               _%tl230826231539%_)
                        (letrec ((_%loop230827231542%_
                                  (lambda (_%hd230825231545%_
                                           _%args230831231547%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd230825231545%_))
                                        (let ((_%e230828231549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd230825231545%_))))
                                          (let ((_%lp-tl230830231554%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e230828231549%_)))
                                                (_%lp-hd230829231552%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e230828231549%_))))
                                            (_%loop230827231542%_
                                             _%lp-tl230830231554%_
                                             (cons _%lp-hd230829231552%_
                                                   _%args230831231547%_))))
                                        (let ((_%args230832231557%_
                                               (reverse _%args230831231547%_)))
                                          (let ((_%g230780231559%_
                                                 _%args230832231557%_)
                                                (_%g230781231560%_
                                                 _%hd230822231532%_)
                                                (_%g230782231561%_
                                                 _%hd230813231508%_)
                                                (_%g230783231562%_
                                                 _%hd230804231484%_)
                                                (_%g230784231563%_
                                                 _%hd230795231460%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g230784231563%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g230783231562%_
                                                        'call-method))
                                                     (let ((__tmp237404
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self230724%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g230782231561%_
                                                        __tmp237404)))
                                                (_%__kont236717236718%_
                                                 _%g230780231559%_
                                                 _%g230781231560%_
                                                 _%g230782231561%_
                                                 _%g230783231562%_
                                                 _%g230784231563%_)
                                                (_%__kont236729236730%_))))))))
                          (_%loop230827231542%_ _%target230824231537%_ '()))))
                     (_%__match236884236885%_
                      (lambda (_%e230785231433%_
                               _%hd230786231436%_
                               _%tl230787231438%_
                               _%e230788231441%_
                               _%hd230789231444%_
                               _%tl230790231446%_
                               _%e230791231449%_
                               _%hd230792231452%_
                               _%tl230793231454%_
                               _%e230794231457%_
                               _%hd230795231460%_
                               _%tl230796231462%_
                               _%e230797231465%_
                               _%hd230798231468%_
                               _%tl230799231470%_
                               _%e230800231473%_
                               _%hd230801231476%_
                               _%tl230802231478%_
                               _%e230803231481%_
                               _%hd230804231484%_
                               _%tl230805231486%_
                               _%e230806231489%_
                               _%hd230807231492%_
                               _%tl230808231494%_
                               _%e230809231497%_
                               _%hd230810231500%_
                               _%tl230811231502%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd230810231500%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl230811231502%_))
                                (let ((_%e230812231505%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl230811231502%_))))
                                  (let ((_%tl230814231510%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230812231505%_)))
                                        (_%hd230813231508%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230812231505%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl230814231510%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl230808231494%_))
                                            (let ((_%e230815231513%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl230808231494%_))))
                                              (let ((_%tl230817231518%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e230815231513%_)))
                                                    (_%hd230816231516%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e230815231513%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd230816231516%_))
                                                    (let ((_%e230818231521%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd230816231516%_))))
                                                      (let ((_%tl230820231526%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e230818231521%_)))
                    (_%hd230819231524%_
                     (let () (declare (not safe)) (##car _%e230818231521%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd230819231524%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd230819231524%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230820231526%_))
                            (let ((_%e230821231529%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl230820231526%_))))
                              (let ((_%tl230823231534%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230821231529%_)))
                                    (_%hd230822231532%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230821231529%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl230823231534%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl230817231518%_))
                                        (let ((_%__splice236719236720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl230817231518%_
                                                  '0))))
                                          (let ((_%tl230826231539%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice236719236720%_
                                                    '1)))
                                                (_%target230824231537%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice236719236720%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl230826231539%_))
                                                (_%__match236926236927%_
                                                 _%e230785231433%_
                                                 _%hd230786231436%_
                                                 _%tl230787231438%_
                                                 _%e230788231441%_
                                                 _%hd230789231444%_
                                                 _%tl230790231446%_
                                                 _%e230791231449%_
                                                 _%hd230792231452%_
                                                 _%tl230793231454%_
                                                 _%e230794231457%_
                                                 _%hd230795231460%_
                                                 _%tl230796231462%_
                                                 _%e230797231465%_
                                                 _%hd230798231468%_
                                                 _%tl230799231470%_
                                                 _%e230800231473%_
                                                 _%hd230801231476%_
                                                 _%tl230802231478%_
                                                 _%e230803231481%_
                                                 _%hd230804231484%_
                                                 _%tl230805231486%_
                                                 _%e230806231489%_
                                                 _%hd230807231492%_
                                                 _%tl230808231494%_
                                                 _%e230809231497%_
                                                 _%hd230810231500%_
                                                 _%tl230811231502%_
                                                 _%e230812231505%_
                                                 _%hd230813231508%_
                                                 _%tl230814231510%_
                                                 _%e230815231513%_
                                                 _%hd230816231516%_
                                                 _%tl230817231518%_
                                                 _%e230818231521%_
                                                 _%hd230819231524%_
                                                 _%tl230820231526%_
                                                 _%e230821231529%_
                                                 _%hd230822231532%_
                                                 _%tl230823231534%_
                                                 _%__splice236719236720%_
                                                 _%target230824231537%_
                                                 _%tl230826231539%_)
                                                (_%__kont236729236730%_))))
                                        (_%__kont236729236730%_))
                                    (_%__kont236729236730%_))))
                            (_%__kont236729236730%_))
                        (_%__kont236729236730%_))
                    (_%__kont236729236730%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont236729236730%_))))
                                            (_%__match237208237209%_
                                             _%e230785231433%_
                                             _%hd230786231436%_
                                             _%tl230787231438%_
                                             _%e230788231441%_
                                             _%hd230789231444%_
                                             _%tl230790231446%_
                                             _%e230791231449%_
                                             _%hd230792231452%_
                                             _%tl230793231454%_
                                             _%e230794231457%_
                                             _%hd230795231460%_
                                             _%tl230796231462%_
                                             _%e230797231465%_
                                             _%hd230798231468%_
                                             _%tl230799231470%_
                                             _%e230800231473%_
                                             _%hd230801231476%_
                                             _%tl230802231478%_
                                             _%e230803231481%_
                                             _%hd230804231484%_
                                             _%tl230805231486%_
                                             _%e230806231489%_
                                             _%hd230807231492%_
                                             _%tl230808231494%_))
                                        (_%__match237208237209%_
                                         _%e230785231433%_
                                         _%hd230786231436%_
                                         _%tl230787231438%_
                                         _%e230788231441%_
                                         _%hd230789231444%_
                                         _%tl230790231446%_
                                         _%e230791231449%_
                                         _%hd230792231452%_
                                         _%tl230793231454%_
                                         _%e230794231457%_
                                         _%hd230795231460%_
                                         _%tl230796231462%_
                                         _%e230797231465%_
                                         _%hd230798231468%_
                                         _%tl230799231470%_
                                         _%e230800231473%_
                                         _%hd230801231476%_
                                         _%tl230802231478%_
                                         _%e230803231481%_
                                         _%hd230804231484%_
                                         _%tl230805231486%_
                                         _%e230806231489%_
                                         _%hd230807231492%_
                                         _%tl230808231494%_))))
                                (_%__match237208237209%_
                                 _%e230785231433%_
                                 _%hd230786231436%_
                                 _%tl230787231438%_
                                 _%e230788231441%_
                                 _%hd230789231444%_
                                 _%tl230790231446%_
                                 _%e230791231449%_
                                 _%hd230792231452%_
                                 _%tl230793231454%_
                                 _%e230794231457%_
                                 _%hd230795231460%_
                                 _%tl230796231462%_
                                 _%e230797231465%_
                                 _%hd230798231468%_
                                 _%tl230799231470%_
                                 _%e230800231473%_
                                 _%hd230801231476%_
                                 _%tl230802231478%_
                                 _%e230803231481%_
                                 _%hd230804231484%_
                                 _%tl230805231486%_
                                 _%e230806231489%_
                                 _%hd230807231492%_
                                 _%tl230808231494%_))
                            (_%__match236994236995%_
                             _%e230785231433%_
                             _%hd230786231436%_
                             _%tl230787231438%_
                             _%e230788231441%_
                             _%hd230789231444%_
                             _%tl230790231446%_
                             _%e230791231449%_
                             _%hd230792231452%_
                             _%tl230793231454%_
                             _%e230794231457%_
                             _%hd230795231460%_
                             _%tl230796231462%_
                             _%e230797231465%_
                             _%hd230798231468%_
                             _%tl230799231470%_
                             _%e230800231473%_
                             _%hd230801231476%_
                             _%tl230802231478%_
                             _%e230803231481%_
                             _%hd230804231484%_
                             _%tl230805231486%_
                             _%e230806231489%_
                             _%hd230807231492%_
                             _%tl230808231494%_
                             _%e230809231497%_
                             _%hd230810231500%_
                             _%tl230811231502%_))))
                     (_%__match236816236817%_
                      (lambda (_%e230741231623%_
                               _%hd230742231626%_
                               _%tl230743231628%_
                               _%e230744231631%_
                               _%hd230745231634%_
                               _%tl230746231636%_
                               _%e230747231639%_
                               _%hd230748231642%_
                               _%tl230749231644%_
                               _%e230750231647%_
                               _%hd230751231650%_
                               _%tl230752231652%_
                               _%e230753231655%_
                               _%hd230754231658%_
                               _%tl230755231660%_
                               _%e230756231663%_
                               _%hd230757231666%_
                               _%tl230758231668%_
                               _%e230759231671%_
                               _%hd230760231674%_
                               _%tl230761231676%_
                               _%e230762231679%_
                               _%hd230763231682%_
                               _%tl230764231684%_
                               _%e230765231687%_
                               _%hd230766231690%_
                               _%tl230767231692%_
                               _%e230768231695%_
                               _%hd230769231698%_
                               _%tl230770231700%_
                               _%__splice236715236716%_
                               _%target230771231703%_
                               _%tl230773231705%_)
                        (letrec ((_%loop230774231708%_
                                  (lambda (_%hd230772231711%_
                                           _%args230778231713%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd230772231711%_))
                                        (let ((_%e230775231715%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd230772231711%_))))
                                          (let ((_%lp-tl230777231720%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e230775231715%_)))
                                                (_%lp-hd230776231718%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e230775231715%_))))
                                            (_%loop230774231708%_
                                             _%lp-tl230777231720%_
                                             (cons _%lp-hd230776231718%_
                                                   _%args230778231713%_))))
                                        (let ((_%args230779231723%_
                                               (reverse _%args230778231713%_)))
                                          (let ((_%g230737231725%_
                                                 _%args230779231723%_)
                                                (_%g230738231726%_
                                                 _%hd230769231698%_)
                                                (_%g230739231727%_
                                                 _%hd230760231674%_)
                                                (_%g230740231728%_
                                                 _%hd230751231650%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g230740231728%_
                                                        'call-method))
                                                     (let ((__tmp237405
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self230724%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g230739231727%_
                                                        __tmp237405)))
                                                (_%__kont236713236714%_
                                                 _%g230737231725%_
                                                 _%g230738231726%_
                                                 _%g230739231727%_
                                                 _%g230740231728%_)
                                                (_%__match237004237005%_
                                                 _%e230741231623%_
                                                 _%hd230742231626%_
                                                 _%tl230743231628%_
                                                 _%e230744231631%_
                                                 _%hd230745231634%_
                                                 _%tl230746231636%_
                                                 _%e230747231639%_
                                                 _%hd230748231642%_
                                                 _%tl230749231644%_
                                                 _%e230750231647%_
                                                 _%hd230751231650%_
                                                 _%tl230752231652%_
                                                 _%e230753231655%_
                                                 _%hd230754231658%_
                                                 _%tl230755231660%_
                                                 _%e230756231663%_
                                                 _%hd230757231666%_
                                                 _%tl230758231668%_
                                                 _%e230759231671%_
                                                 _%hd230760231674%_
                                                 _%tl230761231676%_
                                                 _%e230762231679%_
                                                 _%hd230763231682%_
                                                 _%tl230764231684%_
                                                 _%e230765231687%_
                                                 _%hd230766231690%_
                                                 _%tl230767231692%_
                                                 _%e230768231695%_
                                                 _%hd230769231698%_
                                                 _%tl230770231700%_))))))))
                          (_%loop230774231708%_ _%target230771231703%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx236711236712%_))
                    (let ((_%e230741231623%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx236711236712%_))))
                      (let ((_%tl230743231628%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230741231623%_)))
                            (_%hd230742231626%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230741231623%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230743231628%_))
                            (let ((_%e230744231631%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl230743231628%_))))
                              (let ((_%tl230746231636%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230744231631%_)))
                                    (_%hd230745231634%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230744231631%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd230745231634%_))
                                    (let ((_%e230747231639%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd230745231634%_))))
                                      (let ((_%tl230749231644%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e230747231639%_)))
                                            (_%hd230748231642%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e230747231639%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd230748231642%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd230748231642%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl230749231644%_))
                                                    (let ((_%e230750231647%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl230749231644%_))))
                                                      (let ((_%tl230752231652%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e230750231647%_)))
                    (_%hd230751231650%_
                     (let () (declare (not safe)) (##car _%e230750231647%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl230752231652%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl230746231636%_))
                        (let ((_%e230753231655%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl230746231636%_))))
                          (let ((_%tl230755231660%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230753231655%_)))
                                (_%hd230754231658%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230753231655%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd230754231658%_))
                                (let ((_%e230756231663%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd230754231658%_))))
                                  (let ((_%tl230758231668%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230756231663%_)))
                                        (_%hd230757231666%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230756231663%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd230757231666%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd230757231666%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl230758231668%_))
                                                (let ((_%e230759231671%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl230758231668%_))))
                                                  (let ((_%tl230761231676%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e230759231671%_)))
                                                        (_%hd230760231674%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e230759231671%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl230761231676%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl230755231660%_))
                                                            (let ((_%e230762231679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl230755231660%_))))
                      (let ((_%tl230764231684%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230762231679%_)))
                            (_%hd230763231682%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230762231679%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd230763231682%_))
                            (let ((_%e230765231687%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd230763231682%_))))
                              (let ((_%tl230767231692%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230765231687%_)))
                                    (_%hd230766231690%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230765231687%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd230766231690%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd230766231690%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl230767231692%_))
                                            (let ((_%e230768231695%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl230767231692%_))))
                                              (let ((_%tl230770231700%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e230768231695%_)))
                                                    (_%hd230769231698%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e230768231695%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl230770231700%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl230764231684%_))
                                                        (let ((_%__splice236715236716%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl230764231684%_
                          '0))))
                  (let ((_%tl230773231705%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice236715236716%_ '1)))
                        (_%target230771231703%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice236715236716%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl230773231705%_))
                        (_%__match236816236817%_
                         _%e230741231623%_
                         _%hd230742231626%_
                         _%tl230743231628%_
                         _%e230744231631%_
                         _%hd230745231634%_
                         _%tl230746231636%_
                         _%e230747231639%_
                         _%hd230748231642%_
                         _%tl230749231644%_
                         _%e230750231647%_
                         _%hd230751231650%_
                         _%tl230752231652%_
                         _%e230753231655%_
                         _%hd230754231658%_
                         _%tl230755231660%_
                         _%e230756231663%_
                         _%hd230757231666%_
                         _%tl230758231668%_
                         _%e230759231671%_
                         _%hd230760231674%_
                         _%tl230761231676%_
                         _%e230762231679%_
                         _%hd230763231682%_
                         _%tl230764231684%_
                         _%e230765231687%_
                         _%hd230766231690%_
                         _%tl230767231692%_
                         _%e230768231695%_
                         _%hd230769231698%_
                         _%tl230770231700%_
                         _%__splice236715236716%_
                         _%target230771231703%_
                         _%tl230773231705%_)
                        (_%__match237004237005%_
                         _%e230741231623%_
                         _%hd230742231626%_
                         _%tl230743231628%_
                         _%e230744231631%_
                         _%hd230745231634%_
                         _%tl230746231636%_
                         _%e230747231639%_
                         _%hd230748231642%_
                         _%tl230749231644%_
                         _%e230750231647%_
                         _%hd230751231650%_
                         _%tl230752231652%_
                         _%e230753231655%_
                         _%hd230754231658%_
                         _%tl230755231660%_
                         _%e230756231663%_
                         _%hd230757231666%_
                         _%tl230758231668%_
                         _%e230759231671%_
                         _%hd230760231674%_
                         _%tl230761231676%_
                         _%e230762231679%_
                         _%hd230763231682%_
                         _%tl230764231684%_
                         _%e230765231687%_
                         _%hd230766231690%_
                         _%tl230767231692%_
                         _%e230768231695%_
                         _%hd230769231698%_
                         _%tl230770231700%_))))
                (_%__match237004237005%_
                 _%e230741231623%_
                 _%hd230742231626%_
                 _%tl230743231628%_
                 _%e230744231631%_
                 _%hd230745231634%_
                 _%tl230746231636%_
                 _%e230747231639%_
                 _%hd230748231642%_
                 _%tl230749231644%_
                 _%e230750231647%_
                 _%hd230751231650%_
                 _%tl230752231652%_
                 _%e230753231655%_
                 _%hd230754231658%_
                 _%tl230755231660%_
                 _%e230756231663%_
                 _%hd230757231666%_
                 _%tl230758231668%_
                 _%e230759231671%_
                 _%hd230760231674%_
                 _%tl230761231676%_
                 _%e230762231679%_
                 _%hd230763231682%_
                 _%tl230764231684%_
                 _%e230765231687%_
                 _%hd230766231690%_
                 _%tl230767231692%_
                 _%e230768231695%_
                 _%hd230769231698%_
                 _%tl230770231700%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match237208237209%_
                                                     _%e230741231623%_
                                                     _%hd230742231626%_
                                                     _%tl230743231628%_
                                                     _%e230744231631%_
                                                     _%hd230745231634%_
                                                     _%tl230746231636%_
                                                     _%e230747231639%_
                                                     _%hd230748231642%_
                                                     _%tl230749231644%_
                                                     _%e230750231647%_
                                                     _%hd230751231650%_
                                                     _%tl230752231652%_
                                                     _%e230753231655%_
                                                     _%hd230754231658%_
                                                     _%tl230755231660%_
                                                     _%e230756231663%_
                                                     _%hd230757231666%_
                                                     _%tl230758231668%_
                                                     _%e230759231671%_
                                                     _%hd230760231674%_
                                                     _%tl230761231676%_
                                                     _%e230762231679%_
                                                     _%hd230763231682%_
                                                     _%tl230764231684%_))))
                                            (_%__match237208237209%_
                                             _%e230741231623%_
                                             _%hd230742231626%_
                                             _%tl230743231628%_
                                             _%e230744231631%_
                                             _%hd230745231634%_
                                             _%tl230746231636%_
                                             _%e230747231639%_
                                             _%hd230748231642%_
                                             _%tl230749231644%_
                                             _%e230750231647%_
                                             _%hd230751231650%_
                                             _%tl230752231652%_
                                             _%e230753231655%_
                                             _%hd230754231658%_
                                             _%tl230755231660%_
                                             _%e230756231663%_
                                             _%hd230757231666%_
                                             _%tl230758231668%_
                                             _%e230759231671%_
                                             _%hd230760231674%_
                                             _%tl230761231676%_
                                             _%e230762231679%_
                                             _%hd230763231682%_
                                             _%tl230764231684%_))
                                        (_%__match236884236885%_
                                         _%e230741231623%_
                                         _%hd230742231626%_
                                         _%tl230743231628%_
                                         _%e230744231631%_
                                         _%hd230745231634%_
                                         _%tl230746231636%_
                                         _%e230747231639%_
                                         _%hd230748231642%_
                                         _%tl230749231644%_
                                         _%e230750231647%_
                                         _%hd230751231650%_
                                         _%tl230752231652%_
                                         _%e230753231655%_
                                         _%hd230754231658%_
                                         _%tl230755231660%_
                                         _%e230756231663%_
                                         _%hd230757231666%_
                                         _%tl230758231668%_
                                         _%e230759231671%_
                                         _%hd230760231674%_
                                         _%tl230761231676%_
                                         _%e230762231679%_
                                         _%hd230763231682%_
                                         _%tl230764231684%_
                                         _%e230765231687%_
                                         _%hd230766231690%_
                                         _%tl230767231692%_))
                                    (_%__match237208237209%_
                                     _%e230741231623%_
                                     _%hd230742231626%_
                                     _%tl230743231628%_
                                     _%e230744231631%_
                                     _%hd230745231634%_
                                     _%tl230746231636%_
                                     _%e230747231639%_
                                     _%hd230748231642%_
                                     _%tl230749231644%_
                                     _%e230750231647%_
                                     _%hd230751231650%_
                                     _%tl230752231652%_
                                     _%e230753231655%_
                                     _%hd230754231658%_
                                     _%tl230755231660%_
                                     _%e230756231663%_
                                     _%hd230757231666%_
                                     _%tl230758231668%_
                                     _%e230759231671%_
                                     _%hd230760231674%_
                                     _%tl230761231676%_
                                     _%e230762231679%_
                                     _%hd230763231682%_
                                     _%tl230764231684%_))))
                            (_%__match237208237209%_
                             _%e230741231623%_
                             _%hd230742231626%_
                             _%tl230743231628%_
                             _%e230744231631%_
                             _%hd230745231634%_
                             _%tl230746231636%_
                             _%e230747231639%_
                             _%hd230748231642%_
                             _%tl230749231644%_
                             _%e230750231647%_
                             _%hd230751231650%_
                             _%tl230752231652%_
                             _%e230753231655%_
                             _%hd230754231658%_
                             _%tl230755231660%_
                             _%e230756231663%_
                             _%hd230757231666%_
                             _%tl230758231668%_
                             _%e230759231671%_
                             _%hd230760231674%_
                             _%tl230761231676%_
                             _%e230762231679%_
                             _%hd230763231682%_
                             _%tl230764231684%_))))
                    (_%__match237146237147%_
                     _%e230741231623%_
                     _%hd230742231626%_
                     _%tl230743231628%_
                     _%e230744231631%_
                     _%hd230745231634%_
                     _%tl230746231636%_
                     _%e230747231639%_
                     _%hd230748231642%_
                     _%tl230749231644%_
                     _%e230750231647%_
                     _%hd230751231650%_
                     _%tl230752231652%_
                     _%e230753231655%_
                     _%hd230754231658%_
                     _%tl230755231660%_
                     _%e230756231663%_
                     _%hd230757231666%_
                     _%tl230758231668%_
                     _%e230759231671%_
                     _%hd230760231674%_
                     _%tl230761231676%_))
                (_%__kont236729236730%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont236729236730%_))
                                            (_%__kont236729236730%_))
                                        (_%__kont236729236730%_))))
                                (_%__kont236729236730%_))))
                        (_%__kont236729236730%_))
                    (_%__kont236729236730%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont236729236730%_))
                                                (_%__kont236729236730%_))
                                            (_%__kont236729236730%_))))
                                    (_%__kont236729236730%_))))
                            (_%__kont236729236730%_))))
                    (_%__kont236729236730%_))))))))))
