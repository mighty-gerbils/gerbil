(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1769382899)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp190140 (list gxc#::identity::t))
            (__tmp190139 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp190140
         '()
         __tmp190139
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args188937%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args188937%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp190141
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
        (__make-atomic-promise __tmp190141)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx188929%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self188932%_
                (let ((__obj190132
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj190132))
               (__tmp190142
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self188932%_ _%stx188929%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp190142
           gxc#current-compile-method
           _%self188932%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp190144 (list gxc#::false::t))
            (__tmp190143 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp190144
         '()
         __tmp190143
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args188926%_
        (apply make-instance gxc#::extract-receiver::t _%$args188926%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp190145
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
        (__make-atomic-promise __tmp190145)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx188918%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self188921%_
                (let ((__obj190134
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj190134))
               (__tmp190146
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self188921%_ _%stx188918%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp190146
           gxc#current-compile-method
           _%self188921%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp190148 (list gxc#::void::t))
            (__tmp190147 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp190148
         '(receiver methods slots)
         __tmp190147
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args188915%_
        (apply make-instance gxc#::collect-object-refs::t _%$args188915%_)))
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
      (let ((__tmp190149
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
        (__make-atomic-promise __tmp190149)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords188884%_
               _%receiver188879188885%_
               _%methods188880188886%_
               _%slots188881188887%_
               _%stx188888%_)
        (let* ((_%receiver188891%_
                (if (eq? _%receiver188879188885%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver188879188885%_))
               (_%methods188893%_
                (if (eq? _%methods188880188886%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods188880188886%_))
               (_%slots188895%_
                (if (eq? _%slots188881188887%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots188881188887%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self188897%_
                  (let ((__obj190136
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
                       __obj190136
                       _%receiver188891%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj190136
                       _%methods188893%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj190136
                       _%slots188895%_
                       '3
                       '#f
                       '#f))
                    __obj190136))
                 (__tmp190150
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self188897%_ _%stx188888%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp190150
             gxc#current-compile-method
             _%self188897%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords188904%_ . _%args188905%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords188904%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188904%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188904%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188904%_
                  'slots:
                  absent-value))
               _%args188905%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args188882188911%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args188882188911%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp190152 (list gxc#::basic-xform-expression::t))
            (__tmp190151 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp190152
         '(receiver klass methods slots)
         __tmp190151
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args188875%_
        (apply make-instance gxc#::subst-object-refs::t _%$args188875%_)))
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
      (let ((__tmp190153
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
        (__make-atomic-promise __tmp190153)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords188841%_
               _%receiver188835188842%_
               _%klass188836188843%_
               _%methods188837188844%_
               _%slots188838188845%_
               _%stx188846%_)
        (let* ((_%receiver188849%_
                (if (eq? _%receiver188835188842%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver188835188842%_))
               (_%klass188851%_
                (if (eq? _%klass188836188843%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass188836188843%_))
               (_%methods188853%_
                (if (eq? _%methods188837188844%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods188837188844%_))
               (_%slots188855%_
                (if (eq? _%slots188838188845%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots188838188845%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self188857%_
                  (let ((__obj190138
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
                       __obj190138
                       _%receiver188849%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj190138
                       _%klass188851%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj190138
                       _%methods188853%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj190138
                       _%slots188855%_
                       '4
                       '#f
                       '#f))
                    __obj190138))
                 (__tmp190154
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self188857%_ _%stx188846%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp190154
             gxc#current-compile-method
             _%self188857%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords188864%_ . _%args188865%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords188864%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188864%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188864%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188864%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188864%_
                  'slots:
                  absent-value))
               _%args188865%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args188839188871%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args188839188871%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self185966%_ _%stx185967%_)
        (letrec ((_%generate-method-bind185969%_
                  (lambda (_%$klass188827%_
                           _%$method-table188828%_
                           _%id188829%_
                           _%$id188830%_)
                    (let ((_%$tmp188832%_
                           (let ((__tmp190155
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190155))))
                      (cons (cons _%$id188830%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp188832%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table188828%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id188829%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp188832%_ '()))
                    (cons (cons '%#ref (cons _%$tmp188832%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id188829%_
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
                 (_%generate-slot-bind185970%_
                  (lambda (_%$klass188821%_ _%id188822%_ _%$id188823%_)
                    (let ((_%$tmp188825%_
                           (let ((__tmp190156
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190156))))
                      (cons (cons _%$id188823%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp188825%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass188821%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id188822%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp188825%_ '()))
                        (cons (cons '%#ref (cons _%$tmp188825%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id188822%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl185971%_
                  (lambda (_%$klass188815%_
                           _%$method-table188816%_
                           _%methods-bind188817%_
                           _%slots-bind188818%_
                           _%specializer-impl188819%_)
                    (let ((__tmp190157
                           (cons '%#lambda
                                 (cons (cons _%$klass188815%_
                                             (cons _%$method-table188816%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind188818%_
                                                            _%methods-bind188817%_))
                                                         (cons _%specializer-impl188819%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp190157 _%stx185967%_))))
                 (_%generate-specializer-def185972%_
                  (lambda (_%id188811%_
                           _%specializer-id188812%_
                           _%specializer-impl188813%_)
                    (let ((__tmp190158
                           (cons '%#begin
                                 (cons _%stx185967%_
                                       (cons (let ((__tmp190159
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id188812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl188813%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp190159
                                                _%stx185967%_))
                                             (cons (let ((__tmp190160
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id188811%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id188812%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp190160
                                                      _%stx185967%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp190158 _%stx185967%_)))))
          (let* ((_%__stx189026189027%_ _%stx185967%_)
                 (_%g185975185995%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx189026189027%_)))))
            (let ((_%__kont189028189029%_
                   (lambda (_%g185977186039%_ _%g185978186040%_)
                     (let ((_%method-calls186059%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs186060%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty186061%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?186063%_
                                 (lambda ()
                                   (if (let ((__tmp190161
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls186059%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp190161))
                                       (let ((__tmp190162
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs186060%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp190162))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g185977186039%_))
                             (let* ((_%__stx188940188941%_ _%g185977186039%_)
                                    (_%g186447186465%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx188940188941%_)))))
                               (let ((_%__kont188942188943%_
                                      (lambda (_%g186449186501%_
                                               _%g186450186502%_
                                               _%g186451186503%_)
                                        (let ((_%receiver186523%_
                                               (let ((_%$e186520%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g186449186501%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e186520%_
                                                     _%$e186520%_
                                                     _%g186451186503%_))))
                                          (for-each
                                           (lambda (_%g186524186526%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver186523%_
                                              _%method-calls186059%_
                                              _%slot-refs186060%_
                                              _%g186524186526%_))
                                           _%g186449186501%_)
                                          (if (_%no-specializer?186063%_)
                                              _%stx185967%_
                                              (let* ((_%specializer-id186535%_
                                                      (let* ((_%id186529%_
                                                              (let ((__tmp190163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g185978186040%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp190163 '"::specialize")))
                     (_%specializer-id186532%_
                      (let ((__tmp190164
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx185967%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id186529%_ __tmp190164))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id186532%_))
                _%specializer-id186532%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass186537%_
                                                      (let ((__tmp190165
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp190165)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table186539%_
                                                      (let ((__tmp190166
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp190166)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods186541%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls186059%_)))
                                                     (_%$methods186545%_
                                                      (let ((__tmp190167
                                                             (lambda (_%id186543%_)
                                                               (let ((__tmp190168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id186543%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190168)))))
                (declare (not safe))
                (##map __tmp190167 _%methods186541%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_186554%_
                                                      (let ((__tmp190169
                                                             (lambda (_%g186546186549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186547186551%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls186059%_
                          _%g186546186549%_
                          _%g186547186551%_)))))
                (declare (not safe))
                (##for-each __tmp190169 _%methods186541%_ _%$methods186545%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind186564%_
                                                      (let ((__tmp190170
                                                             (lambda (_%g186556186559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186557186561%_)
                       (_%generate-method-bind185969%_
                        _%$klass186537%_
                        _%$method-table186539%_
                        _%g186556186559%_
                        _%g186557186561%_))))
                (declare (not safe))
                (##map __tmp190170 _%methods186541%_ _%$methods186545%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots186566%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs186060%_)))
                                                     (_%$slots186570%_
                                                      (let ((__tmp190171
                                                             (lambda (_%id186568%_)
                                                               (let ((__tmp190172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id186568%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190172)))))
                (declare (not safe))
                (##map __tmp190171 _%slots186566%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_186579%_
                                                      (let ((__tmp190173
                                                             (lambda (_%g186571186574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186572186576%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs186060%_
                          _%g186571186574%_
                          _%g186572186576%_)))))
                (declare (not safe))
                (##for-each __tmp190173 _%slots186566%_ _%$slots186570%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind186588%_
                                                      (let ((__tmp190174
                                                             (lambda (_%g186580186583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186581186585%_)
                       (_%generate-slot-bind185970%_
                        _%$klass186537%_
                        _%g186580186583%_
                        _%g186581186585%_))))
                (declare (not safe))
                (##map __tmp190174 _%slots186566%_ _%$slots186570%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body186594%_
                                                      (map (lambda (_%g186589186591%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver186523%_
                                                              _%$klass186537%_
                                                              _%method-calls186059%_
                                                              _%slot-refs186060%_
                                                              _%g186589186591%_))
                                                           _%g186449186501%_))
                                                     (_%specializer-impl186596%_
                                                      (let ((__tmp190175
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g186451186503%_ _%g186450186502%_)
                                 _%specializer-body186594%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp190175 _%stx185967%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl186598%_
                                                      (_%generate-specializer-impl185971%_
                                                       _%$klass186537%_
                                                       _%$method-table186539%_
                                                       _%methods-bind186564%_
                                                       _%slots-bind186588%_
                                                       _%specializer-impl186596%_)))
                                                (let ((__tmp190177
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g185978186040%_)))
                                                      (__tmp190176
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id186535%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp190177
                                                   '" => "
                                                   __tmp190176))
                                                (_%generate-specializer-def185972%_
                                                 _%g185978186040%_
                                                 _%specializer-id186535%_
                                                 _%specializer-impl186598%_))))))
                                     (_%__kont188944188945%_
                                      (lambda () _%stx185967%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx188940188941%_))
                                     (let ((_%e186452186477%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx188940188941%_))))
                                       (let ((_%tl186454186482%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e186452186477%_)))
                                             (_%hd186453186480%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e186452186477%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl186454186482%_))
                                             (let ((_%e186455186485%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl186454186482%_))))
                                               (let ((_%tl186457186490%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e186455186485%_)))
                                                     (_%hd186456186488%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e186455186485%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd186456186488%_))
                                                     (let ((_%e186458186493%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd186456186488%_))))
                                                       (let ((_%tl186460186498%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e186458186493%_)))
                     (_%hd186459186496%_
                      (let () (declare (not safe)) (##car _%e186458186493%_))))
                 (_%__kont188942188943%_
                  _%tl186457186490%_
                  _%tl186460186498%_
                  _%hd186459186496%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont188944188945%_))))
                                             (_%__kont188944188945%_))))
                                     (_%__kont188944188945%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g185977186039%_))
                                 (let* ((_%g186605186624%_
                                         (lambda (_%g186606186621%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g186606186621%_))))
                                        (_%g186604186920%_
                                         (lambda (_%g186606186627%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g186606186627%_))
                                               (let ((_%e186608186629%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g186606186627%_))))
                                                 (let ((_%hd186609186632%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e186608186629%_)))
                                                       (_%tl186610186634%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e186608186629%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl186610186634%_))
                                                       (let ((_g190178_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl186610186634%_ '0))))
                 (begin
                   (let ((_g190179_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g190178_)
                                (##values-length _g190178_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g190179_ 2)))
                         (error "Context expects 2 values" _g190179_)))
                   (let ((_%target186611186637%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g190178_ 0)))
                         (_%tl186613186639%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g190178_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl186613186639%_))
                         (letrec ((_%loop186614186642%_
                                   (lambda (_%hd186612186645%_
                                            _%clause186618186647%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd186612186645%_))
                                         (let ((_%e186615186649%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd186612186645%_))))
                                           (let ((_%lp-hd186616186652%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e186615186649%_)))
                                                 (_%lp-tl186617186654%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e186615186649%_))))
                                             (_%loop186614186642%_
                                              _%lp-tl186617186654%_
                                              (cons _%lp-hd186616186652%_
                                                    _%clause186618186647%_))))
                                         (let ((_%clause186619186657%_
                                                (reverse _%clause186618186647%_)))
                                           ((lambda (_%g186607186659%_)
                                              (for-each
                                               (lambda (_%clause186673%_)
                                                 (let* ((_%__stx188966188967%_
                                                         _%clause186673%_)
                                                        (_%g186676186691%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx188966188967%_)))))
                                                   (let ((_%__kont188968188969%_
                                                          (lambda (_%g186678186719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g186679186720%_
                           _%g186680186721%_)
                    (let ((_%receiver186740%_
                           (let ((_%$e186737%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g186678186719%_))))
                             (if _%$e186737%_
                                 _%$e186737%_
                                 _%g186680186721%_))))
                      (for-each
                       (lambda (_%g186741186743%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver186740%_
                          _%method-calls186059%_
                          _%slot-refs186060%_
                          _%g186741186743%_))
                       _%g186678186719%_))))
                 (_%__kont188970188971%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx188966188967%_))
                                                         (let ((_%e186681186703%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx188966188967%_))))
                   (let ((_%tl186683186708%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e186681186703%_)))
                         (_%hd186682186706%_
                          (let ()
                            (declare (not safe))
                            (##car _%e186681186703%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd186682186706%_))
                         (let ((_%e186684186711%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd186682186706%_))))
                           (let ((_%tl186686186716%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e186684186711%_)))
                                 (_%hd186685186714%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e186684186711%_))))
                             (_%__kont188968188969%_
                              _%tl186683186708%_
                              _%tl186686186716%_
                              _%hd186685186714%_)))
                         (_%__kont188970188971%_))))
                 (_%__kont188970188971%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp190180
                                                      (lambda (_%g186748186751%_
                                                               _%g186749186753%_)
                                                        (cons _%g186748186751%_
                                                              _%g186749186753%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp190180
                                                  '()
                                                  _%g186607186659%_)))
                                              (if (_%no-specializer?186063%_)
                                                  _%stx185967%_
                                                  (let* ((_%specializer-id186762%_
                                                          (let* ((_%id186756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp190181
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g185978186040%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp190181 '"::specialize")))
                         (_%specializer-id186759%_
                          (let ((__tmp190182
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx185967%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id186756%_
                             __tmp190182))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id186759%_))
                    _%specializer-id186759%_))
                 (_%$klass186764%_
                  (let ((__tmp190183
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190183)))
                 (_%$method-table186766%_
                  (let ((__tmp190184
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190184)))
                 (_%methods186768%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls186059%_)))
                 (_%$methods186772%_
                  (let ((__tmp190185
                         (lambda (_%id186770%_)
                           (let ((__tmp190186 (gensym _%id186770%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190186)))))
                    (declare (not safe))
                    (##map __tmp190185 _%methods186768%_)))
                 (_%_186781%_
                  (let ((__tmp190187
                         (lambda (_%g186773186776%_ _%g186774186778%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls186059%_
                              _%g186773186776%_
                              _%g186774186778%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp190187
                     _%methods186768%_
                     _%$methods186772%_)))
                 (_%methods-bind186791%_
                  (let ((__tmp190188
                         (lambda (_%g186783186786%_ _%g186784186788%_)
                           (_%generate-method-bind185969%_
                            _%$klass186764%_
                            _%$method-table186766%_
                            _%g186783186786%_
                            _%g186784186788%_))))
                    (declare (not safe))
                    (##map __tmp190188 _%methods186768%_ _%$methods186772%_)))
                 (_%slots186793%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs186060%_)))
                 (_%$slots186797%_
                  (let ((__tmp190189
                         (lambda (_%id186795%_)
                           (let ((__tmp190190 (gensym _%id186795%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190190)))))
                    (declare (not safe))
                    (##map __tmp190189 _%slots186793%_)))
                 (_%_186806%_
                  (let ((__tmp190191
                         (lambda (_%g186798186801%_ _%g186799186803%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs186060%_
                              _%g186798186801%_
                              _%g186799186803%_)))))
                    (declare (not safe))
                    (##for-each __tmp190191 _%slots186793%_ _%$slots186797%_)))
                 (_%slots-bind186815%_
                  (let ((__tmp190192
                         (lambda (_%g186807186810%_ _%g186808186812%_)
                           (_%generate-slot-bind185970%_
                            _%$klass186764%_
                            _%g186807186810%_
                            _%g186808186812%_))))
                    (declare (not safe))
                    (##map __tmp190192 _%slots186793%_ _%$slots186797%_)))
                 (_%specializer-clauses186913%_
                  (map (lambda (_%clause186817%_)
                         (let* ((_%__stx188986188987%_ _%clause186817%_)
                                (_%g186820186835%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx188986188987%_)))))
                           (let ((_%__kont188988188989%_
                                  (lambda (_%g186822186863%_
                                           _%g186823186864%_
                                           _%g186824186865%_)
                                    (let* ((_%receiver186894%_
                                            (let ((_%$e186891%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g186822186863%_))))
                                              (if _%$e186891%_
                                                  _%$e186891%_
                                                  _%g186824186865%_)))
                                           (_%body186900%_
                                            (map (lambda (_%g186895186897%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver186894%_
                                                    _%$klass186764%_
                                                    _%method-calls186059%_
                                                    _%slot-refs186060%_
                                                    _%g186895186897%_))
                                                 _%g186822186863%_)))
                                      (cons (cons _%g186824186865%_
                                                  _%g186823186864%_)
                                            _%body186900%_))))
                                 (_%__kont188990188991%_
                                  (lambda () _%clause186817%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx188986188987%_))
                                 (let ((_%e186825186847%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx188986188987%_))))
                                   (let ((_%tl186827186852%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e186825186847%_)))
                                         (_%hd186826186850%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e186825186847%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd186826186850%_))
                                         (let ((_%e186828186855%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd186826186850%_))))
                                           (let ((_%tl186830186860%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e186828186855%_)))
                                                 (_%hd186829186858%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e186828186855%_))))
                                             (_%__kont188988188989%_
                                              _%tl186827186852%_
                                              _%tl186830186860%_
                                              _%hd186829186858%_)))
                                         (_%__kont188990188991%_))))
                                 (_%__kont188990188991%_)))))
                       (let ((__tmp190193
                              (lambda (_%g186905186908%_ _%g186906186910%_)
                                (cons _%g186905186908%_ _%g186906186910%_))))
                         (declare (not safe))
                         (__foldr1 __tmp190193 '() _%g186607186659%_))))
                 (_%specializer-impl186915%_
                  (let ((__tmp190194
                         (cons '%#case-lambda _%specializer-clauses186913%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp190194 _%stx185967%_)))
                 (_%specializer-impl186917%_
                  (_%generate-specializer-impl185971%_
                   _%$klass186764%_
                   _%$method-table186766%_
                   _%methods-bind186791%_
                   _%slots-bind186815%_
                   _%specializer-impl186915%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp190196
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g185978186040%_)))
                                                          (__tmp190195
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id186762%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp190196
                                                       '" => "
                                                       __tmp190195))
                                                    (_%generate-specializer-def185972%_
                                                     _%g185978186040%_
                                                     _%specializer-id186762%_
                                                     _%specializer-impl186917%_))))
                                            _%clause186619186657%_))))))
                           (_%loop186614186642%_ _%target186611186637%_ '()))
                         (_%g186605186624%_ _%g186606186627%_)))))
               (_%g186605186624%_ _%g186606186627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g186605186624%_
                                                _%g186606186627%_)))))
                                   (_%g186604186920%_ _%g185977186039%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g185977186039%_))
                                     (let* ((_%g186924186954%_
                                             (lambda (_%g186925186951%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g186925186951%_))))
                                            (_%g186923187581%_
                                             (lambda (_%g186925186957%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g186925186957%_))
                                                   (let ((_%e186929186959%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g186925186957%_))))
                                                     (let ((_%hd186930186962%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e186929186959%_)))
                                                           (_%tl186931186964%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e186929186959%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl186931186964%_))
                                                           (let ((_%e186932186967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl186931186964%_))))
                     (let ((_%hd186933186970%_
                            (let ()
                              (declare (not safe))
                              (##car _%e186932186967%_)))
                           (_%tl186934186972%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e186932186967%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd186933186970%_))
                           (let ((_%e186935186975%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd186933186970%_))))
                             (let ((_%hd186936186978%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e186935186975%_)))
                                   (_%tl186937186980%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e186935186975%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd186936186978%_))
                                   (let ((_%e186938186983%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd186936186978%_))))
                                     (let ((_%hd186939186986%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e186938186983%_)))
                                           (_%tl186940186988%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e186938186983%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd186939186986%_))
                                           (let ((_%e186941186991%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd186939186986%_))))
                                             (let ((_%hd186942186994%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e186941186991%_)))
                                                   (_%tl186943186996%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e186941186991%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl186943186996%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl186940186988%_))
                                                       (let ((_%e186944186999%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl186940186988%_))))
                 (let ((_%hd186945187002%_
                        (let ()
                          (declare (not safe))
                          (##car _%e186944186999%_)))
                       (_%tl186946187004%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e186944186999%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl186946187004%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl186937186980%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl186934186972%_))
                               (let ((_%e186947187007%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl186934186972%_))))
                                 (let ((_%hd186948187010%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e186947187007%_)))
                                       (_%tl186949187012%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e186947187007%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl186949187012%_))
                                       ((lambda (_%g186926187015%_
                                                 _%g186927187016%_
                                                 _%g186928187017%_)
                                          (let* ((_%g187041187059%_
                                                  (lambda (_%g187042187056%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g187042187056%_))))
                                                 (_%g187040187115%_
                                                  (lambda (_%g187042187062%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g187042187062%_))
                                                        (let ((_%e187046187064%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g187042187062%_))))
                  (let ((_%hd187047187067%_
                         (let ()
                           (declare (not safe))
                           (##car _%e187046187064%_)))
                        (_%tl187048187069%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e187046187064%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl187048187069%_))
                        (let ((_%e187049187072%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl187048187069%_))))
                          (let ((_%hd187050187075%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e187049187072%_)))
                                (_%tl187051187077%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e187049187072%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd187050187075%_))
                                (let ((_%e187052187080%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd187050187075%_))))
                                  (let ((_%hd187053187083%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e187052187080%_)))
                                        (_%tl187054187085%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e187052187080%_))))
                                    ((lambda (_%g187043187088%_
                                              _%g187044187089%_
                                              _%g187045187090%_)
                                       (let ((_%receiver187109%_
                                              (let ((_%$e187106%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g187043187088%_))))
                                                (if _%$e187106%_
                                                    _%$e187106%_
                                                    _%g187045187090%_))))
                                         (for-each
                                          (lambda (_%g187110187112%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver187109%_
                                             _%method-calls186059%_
                                             _%slot-refs186060%_
                                             _%g187110187112%_))
                                          _%g187043187088%_)))
                                     _%tl187051187077%_
                                     _%tl187054187085%_
                                     _%hd187053187083%_)))
                                (_%g187041187059%_ _%g187042187062%_))))
                        (_%g187041187059%_ _%g187042187062%_))))
                (_%g187041187059%_ _%g187042187062%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g187040187115%_
                                             _%g186927187016%_))
                                          (let* ((_%g187118187137%_
                                                  (lambda (_%g187119187134%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g187119187134%_))))
                                                 (_%g187117187259%_
                                                  (lambda (_%g187119187140%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g187119187140%_))
                                                        (let ((_%e187121187142%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g187119187140%_))))
                  (let ((_%hd187122187145%_
                         (let ()
                           (declare (not safe))
                           (##car _%e187121187142%_)))
                        (_%tl187123187147%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e187121187142%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl187123187147%_))
                        (let ((_g190197_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl187123187147%_
                                  '0))))
                          (begin
                            (let ((_g190198_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g190197_)
                                         (##values-length _g190197_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g190198_ 2)))
                                  (error "Context expects 2 values"
                                         _g190198_)))
                            (let ((_%target187124187150%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190197_ 0)))
                                  (_%tl187126187152%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190197_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl187126187152%_))
                                  (letrec ((_%loop187127187155%_
                                            (lambda (_%hd187125187158%_
                                                     _%clause187131187160%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd187125187158%_))
                                                  (let ((_%e187128187162%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd187125187158%_))))
                                                    (let ((_%lp-hd187129187165%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187128187162%_)))
                                                          (_%lp-tl187130187167%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187128187162%_))))
                                                      (_%loop187127187155%_
                                                       _%lp-tl187130187167%_
                                                       (cons _%lp-hd187129187165%_
                                                             _%clause187131187160%_))))
                                                  (let ((_%clause187132187170%_
                                                         (reverse _%clause187131187160%_)))
                                                    ((lambda (_%g187120187172%_)
                                                       (for-each
                                                        (lambda (_%clause187185%_)
                                                          (let* ((_%g187187187202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g187188187199%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g187188187199%_))))
                         (_%g187186187249%_
                          (lambda (_%g187188187205%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g187188187205%_))
                                (let ((_%e187192187207%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g187188187205%_))))
                                  (let ((_%hd187193187210%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e187192187207%_)))
                                        (_%tl187194187212%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e187192187207%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd187193187210%_))
                                        (let ((_%e187195187215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd187193187210%_))))
                                          (let ((_%hd187196187218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e187195187215%_)))
                                                (_%tl187197187220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e187195187215%_))))
                                            ((lambda (_%g187189187223%_
                                                      _%g187190187224%_
                                                      _%g187191187225%_)
                                               (let ((_%receiver187243%_
                                                      (let ((_%$e187240%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g187189187223%_))))
                (if _%$e187240%_ _%$e187240%_ _%g187191187225%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g187244187246%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver187243%_
                                                     _%method-calls186059%_
                                                     _%slot-refs186060%_
                                                     _%g187244187246%_))
                                                  _%g187189187223%_)))
                                             _%tl187194187212%_
                                             _%tl187197187220%_
                                             _%hd187196187218%_)))
                                        (_%g187187187202%_
                                         _%g187188187205%_))))
                                (_%g187187187202%_ _%g187188187205%_)))))
                    (_%g187186187249%_ _%clause187185%_)))
                (let ((__tmp190199
                       (lambda (_%g187251187254%_ _%g187252187256%_)
                         (cons _%g187251187254%_ _%g187252187256%_))))
                  (declare (not safe))
                  (__foldr1 __tmp190199 '() _%g187120187172%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause187132187170%_))))))
                                    (_%loop187127187155%_
                                     _%target187124187150%_
                                     '()))
                                  (_%g187118187137%_ _%g187119187140%_)))))
                        (_%g187118187137%_ _%g187119187140%_))))
                (_%g187118187137%_ _%g187119187140%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g187117187259%_
                                             _%g186926187015%_))
                                          (if (_%no-specializer?186063%_)
                                              _%stx185967%_
                                              (let* ((_%specializer-id187268%_
                                                      (let* ((_%id187262%_
                                                              (let ((__tmp190200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g185978186040%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp190200 '"::specialize")))
                     (_%specializer-id187265%_
                      (let ((__tmp190201
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx185967%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id187262%_ __tmp190201))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id187265%_))
                _%specializer-id187265%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass187270%_
                                                      (let ((__tmp190202
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp190202)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table187272%_
                                                      (let ((__tmp190203
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp190203)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods187274%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls186059%_)))
                                                     (_%$methods187278%_
                                                      (let ((__tmp190204
                                                             (lambda (_%id187276%_)
                                                               (let ((__tmp190205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id187276%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190205)))))
                (declare (not safe))
                (##map __tmp190204 _%methods187274%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_187287%_
                                                      (let ((__tmp190206
                                                             (lambda (_%g187279187282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187280187284%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls186059%_
                          _%g187279187282%_
                          _%g187280187284%_)))))
                (declare (not safe))
                (##for-each __tmp190206 _%methods187274%_ _%$methods187278%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind187297%_
                                                      (let ((__tmp190207
                                                             (lambda (_%g187289187292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187290187294%_)
                       (_%generate-method-bind185969%_
                        _%$klass187270%_
                        _%$method-table187272%_
                        _%g187289187292%_
                        _%g187290187294%_))))
                (declare (not safe))
                (##map __tmp190207 _%methods187274%_ _%$methods187278%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots187299%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs186060%_)))
                                                     (_%$slots187303%_
                                                      (let ((__tmp190208
                                                             (lambda (_%id187301%_)
                                                               (let ((__tmp190209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id187301%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190209)))))
                (declare (not safe))
                (##map __tmp190208 _%slots187299%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_187312%_
                                                      (let ((__tmp190210
                                                             (lambda (_%g187304187307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187305187309%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs186060%_
                          _%g187304187307%_
                          _%g187305187309%_)))))
                (declare (not safe))
                (##for-each __tmp190210 _%slots187299%_ _%$slots187303%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind187321%_
                                                      (let ((__tmp190211
                                                             (lambda (_%g187313187316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187314187318%_)
                       (_%generate-slot-bind185970%_
                        _%$klass187270%_
                        _%g187313187316%_
                        _%g187314187318%_))))
                (declare (not safe))
                (##map __tmp190211 _%slots187299%_ _%$slots187303%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr187413%_
                                                      (let* ((_%g187323187341%_
                                                              (lambda (_%g187324187338%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187324187338%_))))
                     (_%g187322187410%_
                      (lambda (_%g187324187344%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187324187344%_))
                            (let ((_%e187328187346%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187324187344%_))))
                              (let ((_%hd187329187349%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187328187346%_)))
                                    (_%tl187330187351%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187328187346%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl187330187351%_))
                                    (let ((_%e187331187354%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl187330187351%_))))
                                      (let ((_%hd187332187357%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187331187354%_)))
                                            (_%tl187333187359%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187331187354%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd187332187357%_))
                                            (let ((_%e187334187362%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd187332187357%_))))
                                              (let ((_%hd187335187365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187334187362%_)))
                                                    (_%tl187336187367%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187334187362%_))))
                                                ((lambda (_%g187325187370%_
                                                          _%g187326187371%_
                                                          _%g187327187372%_)
                                                   (let* ((_%receiver187401%_
                                                           (let ((_%$e187398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g187325187370%_))))
                     (if _%$e187398%_ _%$e187398%_ _%g187327187372%_)))
                  (_%body187407%_
                   (map (lambda (_%g187402187404%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver187401%_
                           _%$klass187270%_
                           _%method-calls186059%_
                           _%slot-refs186060%_
                           _%g187402187404%_))
                        _%g187325187370%_))
                  (__tmp190212
                   (cons '%#lambda
                         (cons (cons _%g187327187372%_ _%g187326187371%_)
                               _%body187407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp190212
                                                      _%g186927187016%_)))
                                                 _%tl187333187359%_
                                                 _%tl187336187367%_
                                                 _%hd187335187365%_)))
                                            (_%g187323187341%_
                                             _%g187324187344%_))))
                                    (_%g187323187341%_ _%g187324187344%_))))
                            (_%g187323187341%_ _%g187324187344%_)))))
                (_%g187322187410%_ _%g186927187016%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr187574%_
                                                      (let* ((_%g187415187434%_
                                                              (lambda (_%g187416187431%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187416187431%_))))
                     (_%g187414187571%_
                      (lambda (_%g187416187437%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187416187437%_))
                            (let ((_%e187418187439%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187416187437%_))))
                              (let ((_%hd187419187442%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187418187439%_)))
                                    (_%tl187420187444%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187418187439%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl187420187444%_))
                                    (let ((_g190213_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl187420187444%_
                                              '0))))
                                      (begin
                                        (let ((_g190214_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g190213_)
                                                     (##values-length
                                                      _g190213_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g190214_ 2)))
                                              (error "Context expects 2 values"
                                                     _g190214_)))
                                        (let ((_%target187421187447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g190213_ 0)))
                                              (_%tl187423187449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g190213_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187423187449%_))
                                              (letrec ((_%loop187424187452%_
                                                        (lambda (_%hd187422187455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause187428187457%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd187422187455%_))
                      (let ((_%e187425187459%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd187422187455%_))))
                        (let ((_%lp-hd187426187462%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187425187459%_)))
                              (_%lp-tl187427187464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187425187459%_))))
                          (_%loop187424187452%_
                           _%lp-tl187427187464%_
                           (cons _%lp-hd187426187462%_
                                 _%clause187428187457%_))))
                      (let ((_%clause187429187467%_
                             (reverse _%clause187428187457%_)))
                        ((lambda (_%g187417187469%_)
                           (let* ((_%clauses187569%_
                                   (map (lambda (_%clause187483%_)
                                          (let* ((_%__stx189006189007%_
                                                  _%clause187483%_)
                                                 (_%g187486187501%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx189006189007%_)))))
                                            (let ((_%__kont189008189009%_
                                                   (lambda (_%g187488187529%_
                                                            _%g187489187530%_
                                                            _%g187490187531%_)
                                                     (let* ((_%receiver187550%_
                                                             (let ((_%$e187547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g187488187529%_))))
                       (if _%$e187547%_ _%$e187547%_ _%g187490187531%_)))
                    (_%body187556%_
                     (map (lambda (_%g187551187553%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver187550%_
                             _%$klass187270%_
                             _%method-calls186059%_
                             _%slot-refs186060%_
                             _%g187551187553%_))
                          _%g187488187529%_)))
               (cons (cons _%g187490187531%_ _%g187489187530%_)
                     _%body187556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189010189011%_
                                                   (lambda ()
                                                     _%clause187483%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx189006189007%_))
                                                  (let ((_%e187491187513%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx189006189007%_))))
                                                    (let ((_%tl187493187518%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187491187513%_)))
                                                          (_%hd187492187516%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187491187513%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd187492187516%_))
                                                          (let ((_%e187494187521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd187492187516%_))))
                    (let ((_%tl187496187526%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187494187521%_)))
                          (_%hd187495187524%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187494187521%_))))
                      (_%__kont189008189009%_
                       _%tl187493187518%_
                       _%tl187496187526%_
                       _%hd187495187524%_)))
                  (_%__kont189010189011%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189010189011%_)))))
                                        (let ((__tmp190215
                                               (lambda (_%g187561187564%_
                                                        _%g187562187566%_)
                                                 (cons _%g187561187564%_
                                                       _%g187562187566%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp190215
                                           '()
                                           _%g187417187469%_))))
                                  (__tmp190216
                                   (cons '%#case-lambda _%clauses187569%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp190216
                              _%g186926187015%_)))
                         _%clause187429187467%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop187424187452%_
                                                 _%target187421187447%_
                                                 '()))
                                              (_%g187415187434%_
                                               _%g187416187437%_)))))
                                    (_%g187415187434%_ _%g187416187437%_))))
                            (_%g187415187434%_ _%g187416187437%_)))))
                (_%g187414187571%_ _%g186926187015%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl187576%_
                                                      (let ((__tmp190217
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g186928187017%_ '())
                                             (cons _%specializer-lambda-expr187413%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr187574%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp190217 _%stx185967%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl187578%_
                                                      (_%generate-specializer-impl185971%_
                                                       _%$klass187270%_
                                                       _%$method-table187272%_
                                                       _%methods-bind187297%_
                                                       _%slots-bind187321%_
                                                       _%specializer-impl187576%_)))
                                                (let ((__tmp190219
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g185978186040%_)))
                                                      (__tmp190218
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id187268%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp190219
                                                   '" => "
                                                   __tmp190218))
                                                (_%generate-specializer-def185972%_
                                                 _%g185978186040%_
                                                 _%specializer-id187268%_
                                                 _%specializer-impl187578%_))))
                                        _%hd186948187010%_
                                        _%hd186945187002%_
                                        _%hd186942186994%_)
                                       (_%g186924186954%_ _%g186925186957%_))))
                               (_%g186924186954%_ _%g186925186957%_))
                           (_%g186924186954%_ _%g186925186957%_))
                       (_%g186924186954%_ _%g186925186957%_))))
               (_%g186924186954%_ _%g186925186957%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g186924186954%_
                                                    _%g186925186957%_))))
                                           (_%g186924186954%_
                                            _%g186925186957%_))))
                                   (_%g186924186954%_ _%g186925186957%_))))
                           (_%g186924186954%_ _%g186925186957%_))))
                   (_%g186924186954%_ _%g186925186957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g186924186954%_
                                                    _%g186925186957%_)))))
                                       (_%g186923187581%_ _%g185977186039%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g185977186039%_))
                                         (let* ((_%g187585187638%_
                                                 (lambda (_%g187586187635%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g187586187635%_))))
                                                (_%g187584188803%_
                                                 (lambda (_%g187586187641%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g187586187641%_))
                                                       (let ((_%e187592187643%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g187586187641%_))))
                 (let ((_%hd187593187646%_
                        (let ()
                          (declare (not safe))
                          (##car _%e187592187643%_)))
                       (_%tl187594187648%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e187592187643%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd187593187646%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd187593187646%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl187594187648%_))
                               (let ((_%e187595187651%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl187594187648%_))))
                                 (let ((_%hd187596187654%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e187595187651%_)))
                                       (_%tl187597187656%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e187595187651%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd187596187654%_))
                                       (let ((_%e187598187659%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd187596187654%_))))
                                         (let ((_%hd187599187662%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e187598187659%_)))
                                               (_%tl187600187664%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e187598187659%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd187599187662%_))
                                               (let ((_%e187601187667%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd187599187662%_))))
                                                 (let ((_%hd187602187670%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e187601187667%_)))
                                                       (_%tl187603187672%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e187601187667%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd187602187670%_))
                                                       (let ((_%e187604187675%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd187602187670%_))))
                 (let ((_%hd187605187678%_
                        (let ()
                          (declare (not safe))
                          (##car _%e187604187675%_)))
                       (_%tl187606187680%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e187604187675%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl187606187680%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl187603187672%_))
                           (let ((_%e187607187683%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl187603187672%_))))
                             (let ((_%hd187608187686%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e187607187683%_)))
                                   (_%tl187609187688%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e187607187683%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd187608187686%_))
                                   (let ((_%e187610187691%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd187608187686%_))))
                                     (let ((_%hd187611187694%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e187610187691%_)))
                                           (_%tl187612187696%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e187610187691%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd187611187694%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd187611187694%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl187612187696%_))
                                                   (let ((_%e187613187699%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl187612187696%_))))
                                                     (let ((_%hd187614187702%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e187613187699%_)))
                                                           (_%tl187615187704%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e187613187699%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd187614187702%_))
                                                           (let ((_%e187616187707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd187614187702%_))))
                     (let ((_%hd187617187710%_
                            (let ()
                              (declare (not safe))
                              (##car _%e187616187707%_)))
                           (_%tl187618187712%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e187616187707%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd187617187710%_))
                           (let ((_%e187619187715%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd187617187710%_))))
                             (let ((_%hd187620187718%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e187619187715%_)))
                                   (_%tl187621187720%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e187619187715%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd187620187718%_))
                                   (let ((_%e187622187723%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd187620187718%_))))
                                     (let ((_%hd187623187726%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e187622187723%_)))
                                           (_%tl187624187728%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e187622187723%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl187624187728%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl187621187720%_))
                                               (let ((_%e187625187731%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl187621187720%_))))
                                                 (let ((_%hd187626187734%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e187625187731%_)))
                                                       (_%tl187627187736%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e187625187731%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl187627187736%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl187618187712%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl187615187704%_))
                       (let ((_%e187628187739%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl187615187704%_))))
                         (let ((_%hd187629187742%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e187628187739%_)))
                               (_%tl187630187744%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e187628187739%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl187630187744%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl187609187688%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl187600187664%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl187597187656%_))
                                           (let ((_%e187631187747%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl187597187656%_))))
                                             (let ((_%hd187632187750%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e187631187747%_)))
                                                   (_%tl187633187752%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e187631187747%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl187633187752%_))
                                                   ((lambda (_%g187587187755%_
                                                             _%g187588187756%_
                                                             _%g187589187757%_
                                                             _%g187590187758%_
                                                             _%g187591187759%_)
                                                      (let* ((_%g187799187861%_
                                                              (lambda (_%g187800187858%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187800187858%_))))
                     (_%g187798188800%_
                      (lambda (_%g187800187864%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187800187864%_))
                            (let ((_%e187806187866%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187800187864%_))))
                              (let ((_%hd187807187869%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187806187866%_)))
                                    (_%tl187808187871%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187806187866%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd187807187869%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd187807187869%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl187808187871%_))
                                            (let ((_%e187809187874%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl187808187871%_))))
                                              (let ((_%hd187810187877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187809187874%_)))
                                                    (_%tl187811187879%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187809187874%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl187811187879%_))
                                                    (let ((_%e187812187882%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl187811187879%_))))
                                                      (let ((_%hd187813187885%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e187812187882%_)))
                    (_%tl187814187887%_
                     (let () (declare (not safe)) (##cdr _%e187812187882%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd187813187885%_))
                    (let ((_%e187815187890%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd187813187885%_))))
                      (let ((_%hd187816187893%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187815187890%_)))
                            (_%tl187817187895%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187815187890%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd187816187893%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd187816187893%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl187817187895%_))
                                    (let ((_%e187818187898%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl187817187895%_))))
                                      (let ((_%hd187819187901%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187818187898%_)))
                                            (_%tl187820187903%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187818187898%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd187819187901%_))
                                            (let ((_%e187821187906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd187819187901%_))))
                                              (let ((_%hd187822187909%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187821187906%_)))
                                                    (_%tl187823187911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187821187906%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd187822187909%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd187822187909%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl187823187911%_))
                                                            (let ((_%e187824187914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl187823187911%_))))
                      (let ((_%hd187825187917%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187824187914%_)))
                            (_%tl187826187919%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187824187914%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl187826187919%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl187820187903%_))
                                (let ((_%e187827187922%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl187820187903%_))))
                                  (let ((_%hd187828187925%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e187827187922%_)))
                                        (_%tl187829187927%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e187827187922%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd187828187925%_))
                                        (let ((_%e187830187930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd187828187925%_))))
                                          (let ((_%hd187831187933%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e187830187930%_)))
                                                (_%tl187832187935%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e187830187930%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd187831187933%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd187831187933%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl187832187935%_))
                                                        (let ((_%e187833187938%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl187832187935%_))))
                  (let ((_%hd187834187941%_
                         (let ()
                           (declare (not safe))
                           (##car _%e187833187938%_)))
                        (_%tl187835187943%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e187833187938%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl187835187943%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl187829187927%_))
                            (let ((_%e187836187946%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl187829187927%_))))
                              (let ((_%hd187837187949%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187836187946%_)))
                                    (_%tl187838187951%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187836187946%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd187837187949%_))
                                    (let ((_%e187839187954%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd187837187949%_))))
                                      (let ((_%hd187840187957%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187839187954%_)))
                                            (_%tl187841187959%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187839187954%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd187840187957%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd187840187957%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl187841187959%_))
                                                    (let ((_%e187842187962%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl187841187959%_))))
                                                      (let ((_%hd187843187965%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e187842187962%_)))
                    (_%tl187844187967%_
                     (let () (declare (not safe)) (##cdr _%e187842187962%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl187844187967%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl187838187951%_))
                        (if (let ((__tmp190220
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl187838187951%_))))
                              (declare (not safe))
                              (##fx>= __tmp190220 '1))
                            (let ((_g190221_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl187838187951%_
                                      '1))))
                              (begin
                                (let ((_g190222_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g190221_)
                                             (##values-length _g190221_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g190222_ 2)))
                                      (error "Context expects 2 values"
                                             _g190222_)))
                                (let ((_%target187845187970%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190221_ 0)))
                                      (_%tl187847187972%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190221_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187847187972%_))
                                      (let ((_%e187854187975%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187847187972%_))))
                                        (let ((_%hd187855187978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187854187975%_)))
                                              (_%tl187856187980%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187854187975%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187856187980%_))
                                              (letrec ((_%loop187848187983%_
                                                        (lambda (_%hd187846187986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref187852187988%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd187846187986%_))
                      (let ((_%e187849187990%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd187846187986%_))))
                        (let ((_%lp-hd187850187993%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187849187990%_)))
                              (_%lp-tl187851187995%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187849187990%_))))
                          (_%loop187848187983%_
                           _%lp-tl187851187995%_
                           (cons _%lp-hd187850187993%_
                                 _%kw-ref187852187988%_))))
                      (let ((_%kw-ref187853187998%_
                             (reverse _%kw-ref187852187988%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl187814187887%_))
                            ((lambda (_%g187801188000%_
                                      _%g187802188001%_
                                      _%g187803188002%_
                                      _%g187804188003%_
                                      _%g187805188004%_)
                               (let* ((_%kw-count188055%_
                                       (length (let ((__tmp190223
                                                      (lambda (_%g188047188050%_
                                                               _%g188048188052%_)
                                                        (cons _%g188047188050%_
                                                              _%g188048188052%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp190223
                                                  '()
                                                  _%g187802188001%_))))
                                      (_%self-index188057%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count188055%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g187589187757%_))
                                     (let* ((_%g188061188075%_
                                             (lambda (_%g188062188072%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g188062188072%_))))
                                            (_%g188060188198%_
                                             (lambda (_%g188062188078%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g188062188078%_))
                                                   (let ((_%e188065188080%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g188062188078%_))))
                                                     (let ((_%hd188066188083%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e188065188080%_)))
                                                           (_%tl188067188085%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e188065188080%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl188067188085%_))
                                                           (let ((_%e188068188088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl188067188085%_))))
                     (let ((_%hd188069188091%_
                            (let ()
                              (declare (not safe))
                              (##car _%e188068188088%_)))
                           (_%tl188070188093%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e188068188088%_))))
                       ((lambda (_%g188063188096%_ _%g188064188097%_)
                          (let* ((_%self188114%_
                                  (list-ref
                                   _%g188064188097%_
                                   _%self-index188057%_))
                                 (_%receiver188119%_
                                  (let ((_%$e188116%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g188063188096%_))))
                                    (if _%$e188116%_
                                        _%$e188116%_
                                        _%self188114%_))))
                            (for-each
                             (lambda (_%g188121188123%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver188119%_
                                _%method-calls186059%_
                                _%slot-refs186060%_
                                _%g188121188123%_))
                             _%g188063188096%_)
                            (if (_%no-specializer?186063%_)
                                _%stx185967%_
                                (let* ((_%specializer-id188132%_
                                        (let* ((_%id188126%_
                                                (let ((__tmp190224
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g185978186040%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp190224
                                                   '"::specialize")))
                                               (_%specializer-id188129%_
                                                (let ((__tmp190225
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx185967%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id188126%_
                                                   __tmp190225))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id188129%_))
                                          _%specializer-id188129%_))
                                       (_%$klass188134%_
                                        (let ((__tmp190226
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp190226)))
                                       (_%$method-table188136%_
                                        (let ((__tmp190227
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp190227)))
                                       (_%methods188138%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls186059%_)))
                                       (_%$methods188142%_
                                        (let ((__tmp190228
                                               (lambda (_%id188140%_)
                                                 (let ((__tmp190229
                                                        (gensym _%id188140%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp190229)))))
                                          (declare (not safe))
                                          (##map __tmp190228
                                                 _%methods188138%_)))
                                       (_%_188151%_
                                        (let ((__tmp190230
                                               (lambda (_%g188143188146%_
                                                        _%g188144188148%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls186059%_
                                                    _%g188143188146%_
                                                    _%g188144188148%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp190230
                                           _%methods188138%_
                                           _%$methods188142%_)))
                                       (_%methods-bind188161%_
                                        (let ((__tmp190231
                                               (lambda (_%g188153188156%_
                                                        _%g188154188158%_)
                                                 (_%generate-method-bind185969%_
                                                  _%$klass188134%_
                                                  _%$method-table188136%_
                                                  _%g188153188156%_
                                                  _%g188154188158%_))))
                                          (declare (not safe))
                                          (##map __tmp190231
                                                 _%methods188138%_
                                                 _%$methods188142%_)))
                                       (_%slots188163%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs186060%_)))
                                       (_%$slots188167%_
                                        (let ((__tmp190232
                                               (lambda (_%id188165%_)
                                                 (let ((__tmp190233
                                                        (gensym _%id188165%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp190233)))))
                                          (declare (not safe))
                                          (##map __tmp190232 _%slots188163%_)))
                                       (_%_188176%_
                                        (let ((__tmp190234
                                               (lambda (_%g188168188171%_
                                                        _%g188169188173%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs186060%_
                                                    _%g188168188171%_
                                                    _%g188169188173%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp190234
                                           _%slots188163%_
                                           _%$slots188167%_)))
                                       (_%slots-bind188185%_
                                        (let ((__tmp190235
                                               (lambda (_%g188177188180%_
                                                        _%g188178188182%_)
                                                 (_%generate-slot-bind185970%_
                                                  _%$klass188134%_
                                                  _%g188177188180%_
                                                  _%g188178188182%_))))
                                          (declare (not safe))
                                          (##map __tmp190235
                                                 _%slots188163%_
                                                 _%$slots188167%_)))
                                       (_%specializer-impl188193%_
                                        (let* ((_%specializer-body188191%_
                                                (map (lambda (_%g188186188188%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver188119%_
                                                        _%$klass188134%_
                                                        _%method-calls186059%_
                                                        _%slot-refs186060%_
                                                        _%g188186188188%_))
                                                     _%g188063188096%_))
                                               (__tmp190236
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g187591187759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g187590187758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp190237
                                   (cons '%#lambda
                                         (cons _%g188064188097%_
                                               _%specializer-body188191%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp190237
                               _%g187589187757%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g187588187756%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g187587187755%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp190236
                                           _%stx185967%_)))
                                       (_%specializer-impl188195%_
                                        (_%generate-specializer-impl185971%_
                                         _%$klass188134%_
                                         _%$method-table188136%_
                                         _%methods-bind188161%_
                                         _%slots-bind188185%_
                                         _%specializer-impl188193%_)))
                                  (let ((__tmp190239
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g185978186040%_)))
                                        (__tmp190238
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id188132%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp190239
                                     '" => "
                                     __tmp190238))
                                  (_%generate-specializer-def185972%_
                                   _%g185978186040%_
                                   _%specializer-id188132%_
                                   _%specializer-impl188195%_)))))
                        _%tl188070188093%_
                        _%hd188069188091%_)))
                   (_%g188061188075%_ _%g188062188078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g188061188075%_
                                                    _%g188062188078%_)))))
                                       (_%g188060188198%_ _%g187589187757%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g187589187757%_))
                                         (let* ((_%g188202188232%_
                                                 (lambda (_%g188203188229%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g188203188229%_))))
                                                (_%g188201188796%_
                                                 (lambda (_%g188203188235%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g188203188235%_))
                                                       (let ((_%e188207188237%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g188203188235%_))))
                 (let ((_%hd188208188240%_
                        (let ()
                          (declare (not safe))
                          (##car _%e188207188237%_)))
                       (_%tl188209188242%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e188207188237%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl188209188242%_))
                       (let ((_%e188210188245%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl188209188242%_))))
                         (let ((_%hd188211188248%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e188210188245%_)))
                               (_%tl188212188250%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e188210188245%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd188211188248%_))
                               (let ((_%e188213188253%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd188211188248%_))))
                                 (let ((_%hd188214188256%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e188213188253%_)))
                                       (_%tl188215188258%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e188213188253%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd188214188256%_))
                                       (let ((_%e188216188261%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd188214188256%_))))
                                         (let ((_%hd188217188264%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e188216188261%_)))
                                               (_%tl188218188266%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e188216188261%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd188217188264%_))
                                               (let ((_%e188219188269%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd188217188264%_))))
                                                 (let ((_%hd188220188272%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e188219188269%_)))
                                                       (_%tl188221188274%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e188219188269%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl188221188274%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl188218188266%_))
                                                           (let ((_%e188222188277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl188218188266%_))))
                     (let ((_%hd188223188280%_
                            (let ()
                              (declare (not safe))
                              (##car _%e188222188277%_)))
                           (_%tl188224188282%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e188222188277%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl188224188282%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl188215188258%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl188212188250%_))
                                   (let ((_%e188225188285%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl188212188250%_))))
                                     (let ((_%hd188226188288%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e188225188285%_)))
                                           (_%tl188227188290%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e188225188285%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl188227188290%_))
                                           ((lambda (_%g188204188293%_
                                                     _%g188205188294%_
                                                     _%g188206188295%_)
                                              (let* ((_%g188319188333%_
                                                      (lambda (_%g188320188330%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g188320188330%_))))
                                                     (_%g188318188380%_
                                                      (lambda (_%g188320188336%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g188320188336%_))
                                                            (let ((_%e188323188338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g188320188336%_))))
                      (let ((_%hd188324188341%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188323188338%_)))
                            (_%tl188325188343%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188323188338%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl188325188343%_))
                            (let ((_%e188326188346%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl188325188343%_))))
                              (let ((_%hd188327188349%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e188326188346%_)))
                                    (_%tl188328188351%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e188326188346%_))))
                                ((lambda (_%g188321188354%_ _%g188322188355%_)
                                   (let* ((_%self188368%_
                                           (list-ref
                                            _%g188322188355%_
                                            _%self-index188057%_))
                                          (_%receiver188373%_
                                           (let ((_%$e188370%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g188321188354%_))))
                                             (if _%$e188370%_
                                                 _%$e188370%_
                                                 _%self188368%_))))
                                     (for-each
                                      (lambda (_%g188375188377%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver188373%_
                                         _%method-calls186059%_
                                         _%slot-refs186060%_
                                         _%g188375188377%_))
                                      _%g188321188354%_)))
                                 _%tl188328188351%_
                                 _%hd188327188349%_)))
                            (_%g188319188333%_ _%g188320188336%_))))
                    (_%g188319188333%_ _%g188320188336%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g188318188380%_
                                                 _%g188205188294%_))
                                              (let* ((_%g188383188402%_
                                                      (lambda (_%g188384188399%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g188384188399%_))))
                                                     (_%g188382188511%_
                                                      (lambda (_%g188384188405%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g188384188405%_))
                                                            (let ((_%e188386188407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g188384188405%_))))
                      (let ((_%hd188387188410%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188386188407%_)))
                            (_%tl188388188412%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188386188407%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl188388188412%_))
                            (let ((_g190240_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl188388188412%_
                                      '0))))
                              (begin
                                (let ((_g190241_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g190240_)
                                             (##values-length _g190240_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g190241_ 2)))
                                      (error "Context expects 2 values"
                                             _g190241_)))
                                (let ((_%target188389188415%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190240_ 0)))
                                      (_%tl188391188417%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190240_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl188391188417%_))
                                      (letrec ((_%loop188392188420%_
                                                (lambda (_%hd188390188423%_
                                                         _%clause188396188425%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd188390188423%_))
                                                      (let ((_%e188393188427%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd188390188423%_))))
                (let ((_%lp-hd188394188430%_
                       (let () (declare (not safe)) (##car _%e188393188427%_)))
                      (_%lp-tl188395188432%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e188393188427%_))))
                  (_%loop188392188420%_
                   _%lp-tl188395188432%_
                   (cons _%lp-hd188394188430%_ _%clause188396188425%_))))
              (let ((_%clause188397188435%_ (reverse _%clause188396188425%_)))
                ((lambda (_%g188385188437%_)
                   (for-each
                    (lambda (_%clause188450%_)
                      (let* ((_%g188452188463%_
                              (lambda (_%g188453188460%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g188453188460%_))))
                             (_%g188451188501%_
                              (lambda (_%g188453188466%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g188453188466%_))
                                    (let ((_%e188456188468%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g188453188466%_))))
                                      (let ((_%hd188457188471%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e188456188468%_)))
                                            (_%tl188458188473%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e188456188468%_))))
                                        ((lambda (_%g188454188476%_
                                                  _%g188455188477%_)
                                           (let* ((_%self188489%_
                                                   (list-ref
                                                    _%g188455188477%_
                                                    _%self-index188057%_))
                                                  (_%receiver188494%_
                                                   (let ((_%$e188491%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g188454188476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e188491%_
                                                         _%$e188491%_
                                                         _%self188489%_))))
                                             (for-each
                                              (lambda (_%g188496188498%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver188494%_
                                                 _%method-calls186059%_
                                                 _%slot-refs186060%_
                                                 _%g188496188498%_))
                                              _%g188454188476%_)))
                                         _%tl188458188473%_
                                         _%hd188457188471%_)))
                                    (_%g188452188463%_ _%g188453188466%_)))))
                        (_%g188451188501%_ _%clause188450%_)))
                    (let ((__tmp190242
                           (lambda (_%g188503188506%_ _%g188504188508%_)
                             (cons _%g188503188506%_ _%g188504188508%_))))
                      (declare (not safe))
                      (__foldr1 __tmp190242 '() _%g188385188437%_))))
                 _%clause188397188435%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop188392188420%_
                                         _%target188389188415%_
                                         '()))
                                      (_%g188383188402%_ _%g188384188405%_)))))
                            (_%g188383188402%_ _%g188384188405%_))))
                    (_%g188383188402%_ _%g188384188405%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g188382188511%_
                                                 _%g188204188293%_))
                                              (if (_%no-specializer?186063%_)
                                                  _%stx185967%_
                                                  (let* ((_%specializer-id188520%_
                                                          (let* ((_%id188514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp190243
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g185978186040%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp190243 '"::specialize")))
                         (_%specializer-id188517%_
                          (let ((__tmp190244
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx185967%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id188514%_
                             __tmp190244))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id188517%_))
                    _%specializer-id188517%_))
                 (_%$klass188522%_
                  (let ((__tmp190245
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190245)))
                 (_%$method-table188524%_
                  (let ((__tmp190246
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190246)))
                 (_%methods188526%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls186059%_)))
                 (_%$methods188530%_
                  (let ((__tmp190247
                         (lambda (_%id188528%_)
                           (let ((__tmp190248 (gensym _%id188528%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190248)))))
                    (declare (not safe))
                    (##map __tmp190247 _%methods188526%_)))
                 (_%_188539%_
                  (let ((__tmp190249
                         (lambda (_%g188531188534%_ _%g188532188536%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls186059%_
                              _%g188531188534%_
                              _%g188532188536%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp190249
                     _%methods188526%_
                     _%$methods188530%_)))
                 (_%methods-bind188549%_
                  (let ((__tmp190250
                         (lambda (_%g188541188544%_ _%g188542188546%_)
                           (_%generate-method-bind185969%_
                            _%$klass188522%_
                            _%$method-table188524%_
                            _%g188541188544%_
                            _%g188542188546%_))))
                    (declare (not safe))
                    (##map __tmp190250 _%methods188526%_ _%$methods188530%_)))
                 (_%slots188551%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs186060%_)))
                 (_%$slots188555%_
                  (let ((__tmp190251
                         (lambda (_%id188553%_)
                           (let ((__tmp190252 (gensym _%id188553%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190252)))))
                    (declare (not safe))
                    (##map __tmp190251 _%slots188551%_)))
                 (_%_188564%_
                  (let ((__tmp190253
                         (lambda (_%g188556188559%_ _%g188557188561%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs186060%_
                              _%g188556188559%_
                              _%g188557188561%_)))))
                    (declare (not safe))
                    (##for-each __tmp190253 _%slots188551%_ _%$slots188555%_)))
                 (_%slots-bind188573%_
                  (let ((__tmp190254
                         (lambda (_%g188565188568%_ _%g188566188570%_)
                           (_%generate-slot-bind185970%_
                            _%$klass188522%_
                            _%g188565188568%_
                            _%g188566188570%_))))
                    (declare (not safe))
                    (##map __tmp190254 _%slots188551%_ _%$slots188555%_)))
                 (_%specializer-lambda-expr188651%_
                  (let* ((_%g188575188589%_
                          (lambda (_%g188576188586%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g188576188586%_))))
                         (_%g188574188648%_
                          (lambda (_%g188576188592%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g188576188592%_))
                                (let ((_%e188579188594%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g188576188592%_))))
                                  (let ((_%hd188580188597%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188579188594%_)))
                                        (_%tl188581188599%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188579188594%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl188581188599%_))
                                        (let ((_%e188582188602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl188581188599%_))))
                                          (let ((_%hd188583188605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e188582188602%_)))
                                                (_%tl188584188607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e188582188602%_))))
                                            ((lambda (_%g188577188610%_
                                                      _%g188578188611%_)
                                               (let* ((_%self188634%_
                                                       (list-ref
                                                        _%g188578188611%_
                                                        _%self-index188057%_))
                                                      (_%receiver188639%_
                                                       (let ((_%$e188636%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g188577188610%_))))
                 (if _%$e188636%_ _%$e188636%_ _%self188634%_)))
              (_%body188645%_
               (map (lambda (_%g188640188642%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver188639%_
                       _%$klass188522%_
                       _%method-calls186059%_
                       _%slot-refs186060%_
                       _%g188640188642%_))
                    _%g188577188610%_))
              (__tmp190255
               (cons '%#lambda (cons _%g188578188611%_ _%body188645%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190255
                                                  _%g188205188294%_)))
                                             _%tl188584188607%_
                                             _%hd188583188605%_)))
                                        (_%g188575188589%_
                                         _%g188576188592%_))))
                                (_%g188575188589%_ _%g188576188592%_)))))
                    (_%g188574188648%_ _%g188205188294%_)))
                 (_%specializer-case-lambda-expr188789%_
                  (let* ((_%g188653188672%_
                          (lambda (_%g188654188669%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g188654188669%_))))
                         (_%g188652188786%_
                          (lambda (_%g188654188675%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g188654188675%_))
                                (let ((_%e188656188677%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g188654188675%_))))
                                  (let ((_%hd188657188680%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188656188677%_)))
                                        (_%tl188658188682%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188656188677%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl188658188682%_))
                                        (let ((_g190256_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl188658188682%_
                                                  '0))))
                                          (begin
                                            (let ((_g190257_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g190256_)
                                                         (##values-length
                                                          _g190256_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g190257_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g190257_)))
                                            (let ((_%target188659188685%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g190256_
                                                      0)))
                                                  (_%tl188661188687%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g190256_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl188661188687%_))
                                                  (letrec ((_%loop188662188690%_
                                                            (lambda (_%hd188660188693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause188666188695%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd188660188693%_))
                          (let ((_%e188663188697%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd188660188693%_))))
                            (let ((_%lp-hd188664188700%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188663188697%_)))
                                  (_%lp-tl188665188702%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188663188697%_))))
                              (_%loop188662188690%_
                               _%lp-tl188665188702%_
                               (cons _%lp-hd188664188700%_
                                     _%clause188666188695%_))))
                          (let ((_%clause188667188705%_
                                 (reverse _%clause188666188695%_)))
                            ((lambda (_%g188655188707%_)
                               (let* ((_%clauses188784%_
                                       (map (lambda (_%clause188721%_)
                                              (let* ((_%g188723188734%_
                                                      (lambda (_%g188724188731%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g188724188731%_))))
                                                     (_%g188722188774%_
                                                      (lambda (_%g188724188737%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g188724188737%_))
                                                            (let ((_%e188727188739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g188724188737%_))))
                      (let ((_%hd188728188742%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188727188739%_)))
                            (_%tl188729188744%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188727188739%_))))
                        ((lambda (_%g188725188747%_ _%g188726188748%_)
                           (let* ((_%self188760%_
                                   (list-ref
                                    _%g188726188748%_
                                    _%self-index188057%_))
                                  (_%receiver188765%_
                                   (let ((_%$e188762%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g188725188747%_))))
                                     (if _%$e188762%_
                                         _%$e188762%_
                                         _%self188760%_)))
                                  (_%body188771%_
                                   (map (lambda (_%g188766188768%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver188765%_
                                           _%$klass188522%_
                                           _%method-calls186059%_
                                           _%slot-refs186060%_
                                           _%g188766188768%_))
                                        _%g188725188747%_)))
                             (cons _%g188726188748%_ _%body188771%_)))
                         _%tl188729188744%_
                         _%hd188728188742%_)))
                    (_%g188723188734%_ _%g188724188737%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g188722188774%_
                                                 _%clause188721%_)))
                                            (let ((__tmp190258
                                                   (lambda (_%g188776188779%_
                                                            _%g188777188781%_)
                                                     (cons _%g188776188779%_
                                                           _%g188777188781%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp190258
                                               '()
                                               _%g188655188707%_))))
                                      (__tmp190259
                                       (cons '%#case-lambda
                                             _%clauses188784%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp190259
                                  _%g188204188293%_)))
                             _%clause188667188705%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop188662188690%_
                                                     _%target188659188685%_
                                                     '()))
                                                  (_%g188653188672%_
                                                   _%g188654188675%_)))))
                                        (_%g188653188672%_
                                         _%g188654188675%_))))
                                (_%g188653188672%_ _%g188654188675%_)))))
                    (_%g188652188786%_ _%g188204188293%_)))
                 (_%specializer-impl188791%_
                  (let ((__tmp190260
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g187591187759%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g187590187758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp190261
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g188206188295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr188651%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr188789%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp190261
                                                _%stx185967%_))
                                             '()))
                                 '())
                           (cons _%g187588187756%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g187587187755%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp190260 _%stx185967%_)))
                 (_%specializer-impl188793%_
                  (_%generate-specializer-impl185971%_
                   _%$klass188522%_
                   _%$method-table188524%_
                   _%methods-bind188549%_
                   _%slots-bind188573%_
                   _%specializer-impl188791%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp190263
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g185978186040%_)))
                                                          (__tmp190262
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id188520%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp190263
                                                       '" => "
                                                       __tmp190262))
                                                    (_%generate-specializer-def185972%_
                                                     _%g185978186040%_
                                                     _%specializer-id188520%_
                                                     _%specializer-impl188793%_))))
                                            _%hd188226188288%_
                                            _%hd188223188280%_
                                            _%hd188220188272%_)
                                           (_%g188202188232%_
                                            _%g188203188235%_))))
                                   (_%g188202188232%_ _%g188203188235%_))
                               (_%g188202188232%_ _%g188203188235%_))
                           (_%g188202188232%_ _%g188203188235%_))))
                   (_%g188202188232%_ _%g188203188235%_))
               (_%g188202188232%_ _%g188203188235%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g188202188232%_
                                                _%g188203188235%_))))
                                       (_%g188202188232%_ _%g188203188235%_))))
                               (_%g188202188232%_ _%g188203188235%_))))
                       (_%g188202188232%_ _%g188203188235%_))))
               (_%g188202188232%_ _%g188203188235%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g188201188796%_
                                            _%g187589187757%_))
                                         _%stx185967%_))))
                             _%hd187855187978%_
                             _%kw-ref187853187998%_
                             _%hd187843187965%_
                             _%hd187834187941%_
                             _%hd187825187917%_)
                            (_%g187799187861%_ _%g187800187864%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop187848187983%_
                                                 _%target187845187970%_
                                                 '()))
                                              (_%g187799187861%_
                                               _%g187800187864%_))))
                                      (_%g187799187861%_ _%g187800187864%_)))))
                            (_%g187799187861%_ _%g187800187864%_))
                        (_%g187799187861%_ _%g187800187864%_))
                    (_%g187799187861%_ _%g187800187864%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187799187861%_
                                                     _%g187800187864%_))
                                                (_%g187799187861%_
                                                 _%g187800187864%_))
                                            (_%g187799187861%_
                                             _%g187800187864%_))))
                                    (_%g187799187861%_ _%g187800187864%_))))
                            (_%g187799187861%_ _%g187800187864%_))
                        (_%g187799187861%_ _%g187800187864%_))))
                (_%g187799187861%_ _%g187800187864%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187799187861%_
                                                     _%g187800187864%_))
                                                (_%g187799187861%_
                                                 _%g187800187864%_))))
                                        (_%g187799187861%_
                                         _%g187800187864%_))))
                                (_%g187799187861%_ _%g187800187864%_))
                            (_%g187799187861%_ _%g187800187864%_))))
                    (_%g187799187861%_ _%g187800187864%_))
                (_%g187799187861%_ _%g187800187864%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187799187861%_
                                                     _%g187800187864%_))))
                                            (_%g187799187861%_
                                             _%g187800187864%_))))
                                    (_%g187799187861%_ _%g187800187864%_))
                                (_%g187799187861%_ _%g187800187864%_))
                            (_%g187799187861%_ _%g187800187864%_))))
                    (_%g187799187861%_ _%g187800187864%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187799187861%_
                                                     _%g187800187864%_))))
                                            (_%g187799187861%_
                                             _%g187800187864%_))
                                        (_%g187799187861%_ _%g187800187864%_))
                                    (_%g187799187861%_ _%g187800187864%_))))
                            (_%g187799187861%_ _%g187800187864%_)))))
                (_%g187798188800%_ _%g187588187756%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd187632187750%_
                                                    _%hd187629187742%_
                                                    _%hd187626187734%_
                                                    _%hd187623187726%_
                                                    _%hd187605187678%_)
                                                   (_%g187585187638%_
                                                    _%g187586187641%_))))
                                           (_%g187585187638%_
                                            _%g187586187641%_))
                                       (_%g187585187638%_ _%g187586187641%_))
                                   (_%g187585187638%_ _%g187586187641%_))
                               (_%g187585187638%_ _%g187586187641%_))))
                       (_%g187585187638%_ _%g187586187641%_))
                   (_%g187585187638%_ _%g187586187641%_))
               (_%g187585187638%_ _%g187586187641%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g187585187638%_
                                                _%g187586187641%_))
                                           (_%g187585187638%_
                                            _%g187586187641%_))))
                                   (_%g187585187638%_ _%g187586187641%_))))
                           (_%g187585187638%_ _%g187586187641%_))))
                   (_%g187585187638%_ _%g187586187641%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g187585187638%_
                                                    _%g187586187641%_))
                                               (_%g187585187638%_
                                                _%g187586187641%_))
                                           (_%g187585187638%_
                                            _%g187586187641%_))))
                                   (_%g187585187638%_ _%g187586187641%_))))
                           (_%g187585187638%_ _%g187586187641%_))
                       (_%g187585187638%_ _%g187586187641%_))))
               (_%g187585187638%_ _%g187586187641%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g187585187638%_
                                                _%g187586187641%_))))
                                       (_%g187585187638%_ _%g187586187641%_))))
                               (_%g187585187638%_ _%g187586187641%_))
                           (_%g187585187638%_ _%g187586187641%_))
                       (_%g187585187638%_ _%g187586187641%_))))
               (_%g187585187638%_ _%g187586187641%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g187584188803%_
                                            _%g185977186039%_))
                                         _%stx185967%_))))))))
                  (_%__kont189030189031%_ (lambda () _%stx185967%_)))
              (let ((_%__match189059189060%_
                     (lambda (_%e185979186007%_
                              _%hd185980186010%_
                              _%tl185981186012%_
                              _%e185982186015%_
                              _%hd185983186018%_
                              _%tl185984186020%_
                              _%e185985186023%_
                              _%hd185986186026%_
                              _%tl185987186028%_
                              _%e185988186031%_
                              _%hd185989186034%_
                              _%tl185990186036%_)
                       (let ((_%g185977186039%_ _%hd185989186034%_)
                             (_%g185978186040%_ _%hd185986186026%_))
                         (if (let ((__tmp190264
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g185978186040%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp190264))
                             (_%__kont189028189029%_
                              _%g185977186039%_
                              _%g185978186040%_)
                             (_%__kont189030189031%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx189026189027%_))
                    (let ((_%e185979186007%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx189026189027%_))))
                      (let ((_%tl185981186012%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e185979186007%_)))
                            (_%hd185980186010%_
                             (let ()
                               (declare (not safe))
                               (##car _%e185979186007%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl185981186012%_))
                            (let ((_%e185982186015%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl185981186012%_))))
                              (let ((_%tl185984186020%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e185982186015%_)))
                                    (_%hd185983186018%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e185982186015%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd185983186018%_))
                                    (let ((_%e185985186023%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd185983186018%_))))
                                      (let ((_%tl185987186028%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185985186023%_)))
                                            (_%hd185986186026%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185985186023%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl185987186028%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl185984186020%_))
                                                (let ((_%e185988186031%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl185984186020%_))))
                                                  (let ((_%tl185990186036%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e185988186031%_)))
                                                        (_%hd185989186034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e185988186031%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185990186036%_))
                                                        (_%__match189059189060%_
                                                         _%e185979186007%_
                                                         _%hd185980186010%_
                                                         _%tl185981186012%_
                                                         _%e185982186015%_
                                                         _%hd185983186018%_
                                                         _%tl185984186020%_
                                                         _%e185985186023%_
                                                         _%hd185986186026%_
                                                         _%tl185987186028%_
                                                         _%e185988186031%_
                                                         _%hd185989186034%_
                                                         _%tl185990186036%_)
                                                        (_%__kont189030189031%_))))
                                                (_%__kont189030189031%_))
                                            (_%__kont189030189031%_))))
                                    (_%__kont189030189031%_))))
                            (_%__kont189030189031%_))))
                    (_%__kont189030189031%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self185819%_ _%stx185820%_)
        (let* ((_%__stx189062189063%_ _%stx185820%_)
               (_%g185823185856%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189062189063%_)))))
          (let ((_%__kont189064189065%_
                 (lambda (_%g185825185946%_) _%g185825185946%_))
                (_%__kont189066189067%_
                 (lambda (_%g185841185885%_ _%g185842185886%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self185819%_ _%g185841185885%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx189062189063%_))
                (let ((_%e185826185906%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx189062189063%_))))
                  (let ((_%tl185828185911%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e185826185906%_)))
                        (_%hd185827185909%_
                         (let ()
                           (declare (not safe))
                           (##car _%e185826185906%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl185828185911%_))
                        (let ((_%e185829185914%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl185828185911%_))))
                          (let ((_%tl185831185919%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e185829185914%_)))
                                (_%hd185830185917%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e185829185914%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd185830185917%_))
                                (let ((_%e185832185922%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd185830185917%_))))
                                  (let ((_%tl185834185927%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e185832185922%_)))
                                        (_%hd185833185925%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e185832185922%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd185833185925%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd185833185925%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl185834185927%_))
                                                (let ((_%e185835185930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl185834185927%_))))
                                                  (let ((_%tl185837185935%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e185835185930%_)))
                                                        (_%hd185836185933%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e185835185930%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185837185935%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl185831185919%_))
                                                            (let ((_%e185838185938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl185831185919%_))))
                      (let ((_%tl185840185943%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e185838185938%_)))
                            (_%hd185839185941%_
                             (let ()
                               (declare (not safe))
                               (##car _%e185838185938%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl185840185943%_))
                            (_%__kont189064189065%_ _%hd185836185933%_)
                            (let ()
                              (declare (not safe))
                              (_%g185823185856%_)))))
                    (let () (declare (not safe)) (_%g185823185856%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl185831185919%_))
                    (let ((_%e185849185877%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl185831185919%_))))
                      (let ((_%tl185851185882%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e185849185877%_)))
                            (_%hd185850185880%_
                             (let ()
                               (declare (not safe))
                               (##car _%e185849185877%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl185851185882%_))
                            (_%__kont189066189067%_
                             _%hd185850185880%_
                             _%hd185830185917%_)
                            (let ()
                              (declare (not safe))
                              (_%g185823185856%_)))))
                    (let () (declare (not safe)) (_%g185823185856%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl185831185919%_))
                                                    (let ((_%e185849185877%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl185831185919%_))))
                                                      (let ((_%tl185851185882%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e185849185877%_)))
                    (_%hd185850185880%_
                     (let () (declare (not safe)) (##car _%e185849185877%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl185851185882%_))
                    (_%__kont189066189067%_
                     _%hd185850185880%_
                     _%hd185830185917%_)
                    (let () (declare (not safe)) (_%g185823185856%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g185823185856%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl185831185919%_))
                                                (let ((_%e185849185877%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl185831185919%_))))
                                                  (let ((_%tl185851185882%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e185849185877%_)))
                                                        (_%hd185850185880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e185849185877%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185851185882%_))
                                                        (_%__kont189066189067%_
                                                         _%hd185850185880%_
                                                         _%hd185830185917%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g185823185856%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g185823185856%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl185831185919%_))
                                            (let ((_%e185849185877%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl185831185919%_))))
                                              (let ((_%tl185851185882%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e185849185877%_)))
                                                    (_%hd185850185880%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e185849185877%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl185851185882%_))
                                                    (_%__kont189066189067%_
                                                     _%hd185850185880%_
                                                     _%hd185830185917%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g185823185856%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g185823185856%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl185831185919%_))
                                    (let ((_%e185849185877%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl185831185919%_))))
                                      (let ((_%tl185851185882%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185849185877%_)))
                                            (_%hd185850185880%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185849185877%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl185851185882%_))
                                            (_%__kont189066189067%_
                                             _%hd185850185880%_
                                             _%hd185830185917%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g185823185856%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g185823185856%_))))))
                        (let () (declare (not safe)) (_%g185823185856%_)))))
                (let () (declare (not safe)) (_%g185823185856%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self185735%_ _%stx185736%_)
        (let* ((_%g185738185759%_
                (lambda (_%g185739185756%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g185739185756%_))))
               (_%g185737185816%_
                (lambda (_%g185739185762%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g185739185762%_))
                      (let ((_%e185743185764%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g185739185762%_))))
                        (let ((_%hd185744185767%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e185743185764%_)))
                              (_%tl185745185769%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e185743185764%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl185745185769%_))
                              (let ((_%e185746185772%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl185745185769%_))))
                                (let ((_%hd185747185775%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e185746185772%_)))
                                      (_%tl185748185777%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e185746185772%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl185748185777%_))
                                      (let ((_%e185749185780%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl185748185777%_))))
                                        (let ((_%hd185750185783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185749185780%_)))
                                              (_%tl185751185785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185749185780%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl185751185785%_))
                                              (let ((_%e185752185788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl185751185785%_))))
                                                (let ((_%hd185753185791%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e185752185788%_)))
                                                      (_%tl185754185793%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e185752185788%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl185754185793%_))
                                                      ((lambda (_%g185740185796%_
                                                                _%g185741185797%_
                                                                _%g185742185798%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self185735%_
                                                            _%g185741185797%_)))
                                                       _%hd185753185791%_
                                                       _%hd185750185783%_
                                                       _%hd185747185775%_)
                                                      (_%g185738185759%_
                                                       _%g185739185762%_))))
                                              (_%g185738185759%_
                                               _%g185739185762%_))))
                                      (_%g185738185759%_ _%g185739185762%_))))
                              (_%g185738185759%_ _%g185739185762%_))))
                      (_%g185738185759%_ _%g185739185762%_)))))
          (_%g185737185816%_ _%stx185736%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self184700%_ _%stx184701%_)
        (let* ((_%__stx189128189129%_ _%stx184701%_)
               (_%g184709184931%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189128189129%_)))))
          (let ((_%__kont189130189131%_
                 (lambda (_%g184711185684%_
                          _%g184712185685%_
                          _%g184713185686%_
                          _%g184714185687%_)
                   (let ((__tmp190266
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184700%_ 'methods)))
                         (__tmp190265
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g184712185685%_))))
                     (declare (not safe))
                     (hash-put! __tmp190266 __tmp190265 '#t))
                   (for-each
                    (lambda (_%g185720185722%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self184700%_ _%g185720185722%_)))
                    (let ((__tmp190267
                           (lambda (_%g185724185727%_ _%g185725185729%_)
                             (cons _%g185724185727%_ _%g185725185729%_))))
                      (declare (not safe))
                      (__foldr1 __tmp190267 '() _%g184711185684%_)))))
                (_%__kont189134189135%_
                 (lambda (_%g184754185521%_
                          _%g184755185522%_
                          _%g184756185523%_
                          _%g184757185524%_
                          _%g184758185525%_)
                   (let ((__tmp190269
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184700%_ 'methods)))
                         (__tmp190268
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g184755185522%_))))
                     (declare (not safe))
                     (hash-put! __tmp190269 __tmp190268 '#t))
                   (for-each
                    (lambda (_%g185565185567%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self184700%_ _%g185565185567%_)))
                    (let ((__tmp190270
                           (lambda (_%g185569185572%_ _%g185570185574%_)
                             (cons _%g185569185572%_ _%g185570185574%_))))
                      (declare (not safe))
                      (__foldr1 __tmp190270 '() _%g184754185521%_)))))
                (_%__kont189138189139%_
                 (lambda (_%g184807185356%_
                          _%g184808185357%_
                          _%g184809185358%_)
                   (let ((__tmp190272
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184700%_ 'slots)))
                         (__tmp190271
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g184807185356%_))))
                     (declare (not safe))
                     (hash-put! __tmp190272 __tmp190271 '#t))))
                (_%__kont189140189141%_
                 (lambda (_%g184840185233%_
                          _%g184841185234%_
                          _%g184842185235%_
                          _%g184843185236%_)
                   (let ((__tmp190274
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184700%_ 'slots)))
                         (__tmp190273
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g184841185234%_))))
                     (declare (not safe))
                     (hash-put! __tmp190274 __tmp190273 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self184700%_ _%g184840185233%_))))
                (_%__kont189142189143%_
                 (lambda (_%g184877185107%_ _%g184878185108%_)
                   (let* ((_%accessor185130%_
                           (let ((__tmp190275
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g184878185108%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp190275)))
                          (_%klass185132%_
                           (let ((__tmp190276
                                  (##structure-ref
                                   _%accessor185130%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx184701%_
                              __tmp190276)))
                          (_%slot185134%_
                           (##structure-ref
                            _%accessor185130%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor185130%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass185132%_
                                    _%slot185134%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass185132%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp190278
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self184700%_ 'slots)))
                               (__tmp190277
                                (##structure-ref
                                 _%accessor185130%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp190278 __tmp190277 '#t))))))
                (_%__kont189144189145%_
                 (lambda (_%g184900185007%_
                          _%g184901185008%_
                          _%g184902185009%_)
                   (let* ((_%mutator185036%_
                           (let ((__tmp190279
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g184902185009%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp190279)))
                          (_%klass185038%_
                           (let ((__tmp190280
                                  (##structure-ref
                                   _%mutator185036%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx184701%_
                              __tmp190280)))
                          (_%slot185040%_
                           (##structure-ref
                            _%mutator185036%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator185036%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass185038%_
                                    _%slot185040%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass185038%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp190281
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self184700%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp190281 _%slot185040%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self184700%_ _%g184900185007%_)))))
                (_%__kont189146189147%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self184700%_ _%stx184701%_)))))
            (let* ((_%__match189627189628%_
                    (lambda (_%e184903184943%_
                             _%hd184904184946%_
                             _%tl184905184948%_
                             _%e184906184951%_
                             _%hd184907184954%_
                             _%tl184908184956%_
                             _%e184909184959%_
                             _%hd184910184962%_
                             _%tl184911184964%_
                             _%e184912184967%_
                             _%hd184913184970%_
                             _%tl184914184972%_
                             _%e184915184975%_
                             _%hd184916184978%_
                             _%tl184917184980%_
                             _%e184918184983%_
                             _%hd184919184986%_
                             _%tl184920184988%_
                             _%e184921184991%_
                             _%hd184922184994%_
                             _%tl184923184996%_
                             _%e184924184999%_
                             _%hd184925185002%_
                             _%tl184926185004%_)
                      (let ((_%g184900185007%_ _%hd184925185002%_)
                            (_%g184901185008%_ _%hd184922184994%_)
                            (_%g184902185009%_ _%hd184913184970%_))
                        (if (and (let ((__tmp190282
                                        (let ((__tmp190283
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g184902185009%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp190283))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp190282
                                    'gxc#!mutator::t))
                                 (let ((__tmp190284
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184700%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g184901185008%_
                                    __tmp190284)))
                            (_%__kont189144189145%_
                             _%g184900185007%_
                             _%g184901185008%_
                             _%g184902185009%_)
                            (_%__kont189146189147%_)))))
                   (_%__match189625189626%_
                    (lambda (_%e184903184943%_
                             _%hd184904184946%_
                             _%tl184905184948%_
                             _%e184906184951%_
                             _%hd184907184954%_
                             _%tl184908184956%_
                             _%e184909184959%_
                             _%hd184910184962%_
                             _%tl184911184964%_
                             _%e184912184967%_
                             _%hd184913184970%_
                             _%tl184914184972%_
                             _%e184915184975%_
                             _%hd184916184978%_
                             _%tl184917184980%_
                             _%e184918184983%_
                             _%hd184919184986%_
                             _%tl184920184988%_
                             _%e184921184991%_
                             _%hd184922184994%_
                             _%tl184923184996%_
                             _%e184924184999%_
                             _%hd184925185002%_
                             _%tl184926185004%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl184926185004%_))
                          (_%__match189627189628%_
                           _%e184903184943%_
                           _%hd184904184946%_
                           _%tl184905184948%_
                           _%e184906184951%_
                           _%hd184907184954%_
                           _%tl184908184956%_
                           _%e184909184959%_
                           _%hd184910184962%_
                           _%tl184911184964%_
                           _%e184912184967%_
                           _%hd184913184970%_
                           _%tl184914184972%_
                           _%e184915184975%_
                           _%hd184916184978%_
                           _%tl184917184980%_
                           _%e184918184983%_
                           _%hd184919184986%_
                           _%tl184920184988%_
                           _%e184921184991%_
                           _%hd184922184994%_
                           _%tl184923184996%_
                           _%e184924184999%_
                           _%hd184925185002%_
                           _%tl184926185004%_)
                          (_%__kont189146189147%_))))
                   (_%__match189619189620%_
                    (lambda (_%e184903184943%_
                             _%hd184904184946%_
                             _%tl184905184948%_
                             _%e184906184951%_
                             _%hd184907184954%_
                             _%tl184908184956%_
                             _%e184909184959%_
                             _%hd184910184962%_
                             _%tl184911184964%_
                             _%e184912184967%_
                             _%hd184913184970%_
                             _%tl184914184972%_
                             _%e184915184975%_
                             _%hd184916184978%_
                             _%tl184917184980%_
                             _%e184918184983%_
                             _%hd184919184986%_
                             _%tl184920184988%_
                             _%e184921184991%_
                             _%hd184922184994%_
                             _%tl184923184996%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184917184980%_))
                          (let ((_%e184924184999%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184917184980%_))))
                            (let ((_%tl184926185004%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184924184999%_)))
                                  (_%hd184925185002%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184924184999%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl184926185004%_))
                                  (_%__match189627189628%_
                                   _%e184903184943%_
                                   _%hd184904184946%_
                                   _%tl184905184948%_
                                   _%e184906184951%_
                                   _%hd184907184954%_
                                   _%tl184908184956%_
                                   _%e184909184959%_
                                   _%hd184910184962%_
                                   _%tl184911184964%_
                                   _%e184912184967%_
                                   _%hd184913184970%_
                                   _%tl184914184972%_
                                   _%e184915184975%_
                                   _%hd184916184978%_
                                   _%tl184917184980%_
                                   _%e184918184983%_
                                   _%hd184919184986%_
                                   _%tl184920184988%_
                                   _%e184921184991%_
                                   _%hd184922184994%_
                                   _%tl184923184996%_
                                   _%e184924184999%_
                                   _%hd184925185002%_
                                   _%tl184926185004%_)
                                  (_%__kont189146189147%_))))
                          (_%__kont189146189147%_))))
                   (_%__match189565189566%_
                    (lambda (_%e184879185051%_
                             _%hd184880185054%_
                             _%tl184881185056%_
                             _%e184882185059%_
                             _%hd184883185062%_
                             _%tl184884185064%_
                             _%e184885185067%_
                             _%hd184886185070%_
                             _%tl184887185072%_
                             _%e184888185075%_
                             _%hd184889185078%_
                             _%tl184890185080%_
                             _%e184891185083%_
                             _%hd184892185086%_
                             _%tl184893185088%_
                             _%e184894185091%_
                             _%hd184895185094%_
                             _%tl184896185096%_
                             _%e184897185099%_
                             _%hd184898185102%_
                             _%tl184899185104%_)
                      (let ((_%g184877185107%_ _%hd184898185102%_)
                            (_%g184878185108%_ _%hd184889185078%_))
                        (if (and (let ((__tmp190285
                                        (let ((__tmp190286
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g184878185108%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp190286))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp190285
                                    'gxc#!accessor::t))
                                 (let ((__tmp190287
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184700%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g184877185107%_
                                    __tmp190287)))
                            (_%__kont189142189143%_
                             _%g184877185107%_
                             _%g184878185108%_)
                            (_%__kont189146189147%_)))))
                   (_%__match189563189564%_
                    (lambda (_%e184879185051%_
                             _%hd184880185054%_
                             _%tl184881185056%_
                             _%e184882185059%_
                             _%hd184883185062%_
                             _%tl184884185064%_
                             _%e184885185067%_
                             _%hd184886185070%_
                             _%tl184887185072%_
                             _%e184888185075%_
                             _%hd184889185078%_
                             _%tl184890185080%_
                             _%e184891185083%_
                             _%hd184892185086%_
                             _%tl184893185088%_
                             _%e184894185091%_
                             _%hd184895185094%_
                             _%tl184896185096%_
                             _%e184897185099%_
                             _%hd184898185102%_
                             _%tl184899185104%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl184893185088%_))
                          (_%__match189565189566%_
                           _%e184879185051%_
                           _%hd184880185054%_
                           _%tl184881185056%_
                           _%e184882185059%_
                           _%hd184883185062%_
                           _%tl184884185064%_
                           _%e184885185067%_
                           _%hd184886185070%_
                           _%tl184887185072%_
                           _%e184888185075%_
                           _%hd184889185078%_
                           _%tl184890185080%_
                           _%e184891185083%_
                           _%hd184892185086%_
                           _%tl184893185088%_
                           _%e184894185091%_
                           _%hd184895185094%_
                           _%tl184896185096%_
                           _%e184897185099%_
                           _%hd184898185102%_
                           _%tl184899185104%_)
                          (_%__match189619189620%_
                           _%e184879185051%_
                           _%hd184880185054%_
                           _%tl184881185056%_
                           _%e184882185059%_
                           _%hd184883185062%_
                           _%tl184884185064%_
                           _%e184885185067%_
                           _%hd184886185070%_
                           _%tl184887185072%_
                           _%e184888185075%_
                           _%hd184889185078%_
                           _%tl184890185080%_
                           _%e184891185083%_
                           _%hd184892185086%_
                           _%tl184893185088%_
                           _%e184894185091%_
                           _%hd184895185094%_
                           _%tl184896185096%_
                           _%e184897185099%_
                           _%hd184898185102%_
                           _%tl184899185104%_))))
                   (_%__match189509189510%_
                    (lambda (_%e184844185145%_
                             _%hd184845185148%_
                             _%tl184846185150%_
                             _%e184847185153%_
                             _%hd184848185156%_
                             _%tl184849185158%_
                             _%e184850185161%_
                             _%hd184851185164%_
                             _%tl184852185166%_
                             _%e184853185169%_
                             _%hd184854185172%_
                             _%tl184855185174%_
                             _%e184856185177%_
                             _%hd184857185180%_
                             _%tl184858185182%_
                             _%e184859185185%_
                             _%hd184860185188%_
                             _%tl184861185190%_
                             _%e184862185193%_
                             _%hd184863185196%_
                             _%tl184864185198%_
                             _%e184865185201%_
                             _%hd184866185204%_
                             _%tl184867185206%_
                             _%e184868185209%_
                             _%hd184869185212%_
                             _%tl184870185214%_
                             _%e184871185217%_
                             _%hd184872185220%_
                             _%tl184873185222%_
                             _%e184874185225%_
                             _%hd184875185228%_
                             _%tl184876185230%_)
                      (let ((_%g184840185233%_ _%hd184875185228%_)
                            (_%g184841185234%_ _%hd184872185220%_)
                            (_%g184842185235%_ _%hd184863185196%_)
                            (_%g184843185236%_ _%hd184854185172%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g184843185236%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g184843185236%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp190288
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184700%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g184842185235%_
                                    __tmp190288)))
                            (_%__kont189140189141%_
                             _%g184840185233%_
                             _%g184841185234%_
                             _%g184842185235%_
                             _%g184843185236%_)
                            (_%__kont189146189147%_)))))
                   (_%__match189501189502%_
                    (lambda (_%e184844185145%_
                             _%hd184845185148%_
                             _%tl184846185150%_
                             _%e184847185153%_
                             _%hd184848185156%_
                             _%tl184849185158%_
                             _%e184850185161%_
                             _%hd184851185164%_
                             _%tl184852185166%_
                             _%e184853185169%_
                             _%hd184854185172%_
                             _%tl184855185174%_
                             _%e184856185177%_
                             _%hd184857185180%_
                             _%tl184858185182%_
                             _%e184859185185%_
                             _%hd184860185188%_
                             _%tl184861185190%_
                             _%e184862185193%_
                             _%hd184863185196%_
                             _%tl184864185198%_
                             _%e184865185201%_
                             _%hd184866185204%_
                             _%tl184867185206%_
                             _%e184868185209%_
                             _%hd184869185212%_
                             _%tl184870185214%_
                             _%e184871185217%_
                             _%hd184872185220%_
                             _%tl184873185222%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184867185206%_))
                          (let ((_%e184874185225%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184867185206%_))))
                            (let ((_%tl184876185230%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184874185225%_)))
                                  (_%hd184875185228%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184874185225%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl184876185230%_))
                                  (_%__match189509189510%_
                                   _%e184844185145%_
                                   _%hd184845185148%_
                                   _%tl184846185150%_
                                   _%e184847185153%_
                                   _%hd184848185156%_
                                   _%tl184849185158%_
                                   _%e184850185161%_
                                   _%hd184851185164%_
                                   _%tl184852185166%_
                                   _%e184853185169%_
                                   _%hd184854185172%_
                                   _%tl184855185174%_
                                   _%e184856185177%_
                                   _%hd184857185180%_
                                   _%tl184858185182%_
                                   _%e184859185185%_
                                   _%hd184860185188%_
                                   _%tl184861185190%_
                                   _%e184862185193%_
                                   _%hd184863185196%_
                                   _%tl184864185198%_
                                   _%e184865185201%_
                                   _%hd184866185204%_
                                   _%tl184867185206%_
                                   _%e184868185209%_
                                   _%hd184869185212%_
                                   _%tl184870185214%_
                                   _%e184871185217%_
                                   _%hd184872185220%_
                                   _%tl184873185222%_
                                   _%e184874185225%_
                                   _%hd184875185228%_
                                   _%tl184876185230%_)
                                  (_%__kont189146189147%_))))
                          (_%__match189625189626%_
                           _%e184844185145%_
                           _%hd184845185148%_
                           _%tl184846185150%_
                           _%e184847185153%_
                           _%hd184848185156%_
                           _%tl184849185158%_
                           _%e184850185161%_
                           _%hd184851185164%_
                           _%tl184852185166%_
                           _%e184853185169%_
                           _%hd184854185172%_
                           _%tl184855185174%_
                           _%e184856185177%_
                           _%hd184857185180%_
                           _%tl184858185182%_
                           _%e184859185185%_
                           _%hd184860185188%_
                           _%tl184861185190%_
                           _%e184862185193%_
                           _%hd184863185196%_
                           _%tl184864185198%_
                           _%e184865185201%_
                           _%hd184866185204%_
                           _%tl184867185206%_))))
                   (_%__match189423189424%_
                    (lambda (_%e184810185276%_
                             _%hd184811185279%_
                             _%tl184812185281%_
                             _%e184813185284%_
                             _%hd184814185287%_
                             _%tl184815185289%_
                             _%e184816185292%_
                             _%hd184817185295%_
                             _%tl184818185297%_
                             _%e184819185300%_
                             _%hd184820185303%_
                             _%tl184821185305%_
                             _%e184822185308%_
                             _%hd184823185311%_
                             _%tl184824185313%_
                             _%e184825185316%_
                             _%hd184826185319%_
                             _%tl184827185321%_
                             _%e184828185324%_
                             _%hd184829185327%_
                             _%tl184830185329%_
                             _%e184831185332%_
                             _%hd184832185335%_
                             _%tl184833185337%_
                             _%e184834185340%_
                             _%hd184835185343%_
                             _%tl184836185345%_
                             _%e184837185348%_
                             _%hd184838185351%_
                             _%tl184839185353%_)
                      (let ((_%g184807185356%_ _%hd184838185351%_)
                            (_%g184808185357%_ _%hd184829185327%_)
                            (_%g184809185358%_ _%hd184820185303%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g184809185358%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g184809185358%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp190289
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184700%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g184808185357%_
                                    __tmp190289)))
                            (_%__kont189138189139%_
                             _%g184807185356%_
                             _%g184808185357%_
                             _%g184809185358%_)
                            (_%__match189627189628%_
                             _%e184810185276%_
                             _%hd184811185279%_
                             _%tl184812185281%_
                             _%e184813185284%_
                             _%hd184814185287%_
                             _%tl184815185289%_
                             _%e184816185292%_
                             _%hd184817185295%_
                             _%tl184818185297%_
                             _%e184819185300%_
                             _%hd184820185303%_
                             _%tl184821185305%_
                             _%e184822185308%_
                             _%hd184823185311%_
                             _%tl184824185313%_
                             _%e184825185316%_
                             _%hd184826185319%_
                             _%tl184827185321%_
                             _%e184828185324%_
                             _%hd184829185327%_
                             _%tl184830185329%_
                             _%e184831185332%_
                             _%hd184832185335%_
                             _%tl184833185337%_)))))
                   (_%__match189421189422%_
                    (lambda (_%e184810185276%_
                             _%hd184811185279%_
                             _%tl184812185281%_
                             _%e184813185284%_
                             _%hd184814185287%_
                             _%tl184815185289%_
                             _%e184816185292%_
                             _%hd184817185295%_
                             _%tl184818185297%_
                             _%e184819185300%_
                             _%hd184820185303%_
                             _%tl184821185305%_
                             _%e184822185308%_
                             _%hd184823185311%_
                             _%tl184824185313%_
                             _%e184825185316%_
                             _%hd184826185319%_
                             _%tl184827185321%_
                             _%e184828185324%_
                             _%hd184829185327%_
                             _%tl184830185329%_
                             _%e184831185332%_
                             _%hd184832185335%_
                             _%tl184833185337%_
                             _%e184834185340%_
                             _%hd184835185343%_
                             _%tl184836185345%_
                             _%e184837185348%_
                             _%hd184838185351%_
                             _%tl184839185353%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl184833185337%_))
                          (_%__match189423189424%_
                           _%e184810185276%_
                           _%hd184811185279%_
                           _%tl184812185281%_
                           _%e184813185284%_
                           _%hd184814185287%_
                           _%tl184815185289%_
                           _%e184816185292%_
                           _%hd184817185295%_
                           _%tl184818185297%_
                           _%e184819185300%_
                           _%hd184820185303%_
                           _%tl184821185305%_
                           _%e184822185308%_
                           _%hd184823185311%_
                           _%tl184824185313%_
                           _%e184825185316%_
                           _%hd184826185319%_
                           _%tl184827185321%_
                           _%e184828185324%_
                           _%hd184829185327%_
                           _%tl184830185329%_
                           _%e184831185332%_
                           _%hd184832185335%_
                           _%tl184833185337%_
                           _%e184834185340%_
                           _%hd184835185343%_
                           _%tl184836185345%_
                           _%e184837185348%_
                           _%hd184838185351%_
                           _%tl184839185353%_)
                          (_%__match189501189502%_
                           _%e184810185276%_
                           _%hd184811185279%_
                           _%tl184812185281%_
                           _%e184813185284%_
                           _%hd184814185287%_
                           _%tl184815185289%_
                           _%e184816185292%_
                           _%hd184817185295%_
                           _%tl184818185297%_
                           _%e184819185300%_
                           _%hd184820185303%_
                           _%tl184821185305%_
                           _%e184822185308%_
                           _%hd184823185311%_
                           _%tl184824185313%_
                           _%e184825185316%_
                           _%hd184826185319%_
                           _%tl184827185321%_
                           _%e184828185324%_
                           _%hd184829185327%_
                           _%tl184830185329%_
                           _%e184831185332%_
                           _%hd184832185335%_
                           _%tl184833185337%_
                           _%e184834185340%_
                           _%hd184835185343%_
                           _%tl184836185345%_
                           _%e184837185348%_
                           _%hd184838185351%_
                           _%tl184839185353%_))))
                   (_%__match189411189412%_
                    (lambda (_%e184810185276%_
                             _%hd184811185279%_
                             _%tl184812185281%_
                             _%e184813185284%_
                             _%hd184814185287%_
                             _%tl184815185289%_
                             _%e184816185292%_
                             _%hd184817185295%_
                             _%tl184818185297%_
                             _%e184819185300%_
                             _%hd184820185303%_
                             _%tl184821185305%_
                             _%e184822185308%_
                             _%hd184823185311%_
                             _%tl184824185313%_
                             _%e184825185316%_
                             _%hd184826185319%_
                             _%tl184827185321%_
                             _%e184828185324%_
                             _%hd184829185327%_
                             _%tl184830185329%_
                             _%e184831185332%_
                             _%hd184832185335%_
                             _%tl184833185337%_
                             _%e184834185340%_
                             _%hd184835185343%_
                             _%tl184836185345%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd184835185343%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl184836185345%_))
                              (let ((_%e184837185348%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl184836185345%_))))
                                (let ((_%tl184839185353%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e184837185348%_)))
                                      (_%hd184838185351%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e184837185348%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl184839185353%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl184833185337%_))
                                          (_%__match189423189424%_
                                           _%e184810185276%_
                                           _%hd184811185279%_
                                           _%tl184812185281%_
                                           _%e184813185284%_
                                           _%hd184814185287%_
                                           _%tl184815185289%_
                                           _%e184816185292%_
                                           _%hd184817185295%_
                                           _%tl184818185297%_
                                           _%e184819185300%_
                                           _%hd184820185303%_
                                           _%tl184821185305%_
                                           _%e184822185308%_
                                           _%hd184823185311%_
                                           _%tl184824185313%_
                                           _%e184825185316%_
                                           _%hd184826185319%_
                                           _%tl184827185321%_
                                           _%e184828185324%_
                                           _%hd184829185327%_
                                           _%tl184830185329%_
                                           _%e184831185332%_
                                           _%hd184832185335%_
                                           _%tl184833185337%_
                                           _%e184834185340%_
                                           _%hd184835185343%_
                                           _%tl184836185345%_
                                           _%e184837185348%_
                                           _%hd184838185351%_
                                           _%tl184839185353%_)
                                          (_%__match189501189502%_
                                           _%e184810185276%_
                                           _%hd184811185279%_
                                           _%tl184812185281%_
                                           _%e184813185284%_
                                           _%hd184814185287%_
                                           _%tl184815185289%_
                                           _%e184816185292%_
                                           _%hd184817185295%_
                                           _%tl184818185297%_
                                           _%e184819185300%_
                                           _%hd184820185303%_
                                           _%tl184821185305%_
                                           _%e184822185308%_
                                           _%hd184823185311%_
                                           _%tl184824185313%_
                                           _%e184825185316%_
                                           _%hd184826185319%_
                                           _%tl184827185321%_
                                           _%e184828185324%_
                                           _%hd184829185327%_
                                           _%tl184830185329%_
                                           _%e184831185332%_
                                           _%hd184832185335%_
                                           _%tl184833185337%_
                                           _%e184834185340%_
                                           _%hd184835185343%_
                                           _%tl184836185345%_
                                           _%e184837185348%_
                                           _%hd184838185351%_
                                           _%tl184839185353%_))
                                      (_%__match189625189626%_
                                       _%e184810185276%_
                                       _%hd184811185279%_
                                       _%tl184812185281%_
                                       _%e184813185284%_
                                       _%hd184814185287%_
                                       _%tl184815185289%_
                                       _%e184816185292%_
                                       _%hd184817185295%_
                                       _%tl184818185297%_
                                       _%e184819185300%_
                                       _%hd184820185303%_
                                       _%tl184821185305%_
                                       _%e184822185308%_
                                       _%hd184823185311%_
                                       _%tl184824185313%_
                                       _%e184825185316%_
                                       _%hd184826185319%_
                                       _%tl184827185321%_
                                       _%e184828185324%_
                                       _%hd184829185327%_
                                       _%tl184830185329%_
                                       _%e184831185332%_
                                       _%hd184832185335%_
                                       _%tl184833185337%_))))
                              (_%__match189625189626%_
                               _%e184810185276%_
                               _%hd184811185279%_
                               _%tl184812185281%_
                               _%e184813185284%_
                               _%hd184814185287%_
                               _%tl184815185289%_
                               _%e184816185292%_
                               _%hd184817185295%_
                               _%tl184818185297%_
                               _%e184819185300%_
                               _%hd184820185303%_
                               _%tl184821185305%_
                               _%e184822185308%_
                               _%hd184823185311%_
                               _%tl184824185313%_
                               _%e184825185316%_
                               _%hd184826185319%_
                               _%tl184827185321%_
                               _%e184828185324%_
                               _%hd184829185327%_
                               _%tl184830185329%_
                               _%e184831185332%_
                               _%hd184832185335%_
                               _%tl184833185337%_))
                          (_%__match189625189626%_
                           _%e184810185276%_
                           _%hd184811185279%_
                           _%tl184812185281%_
                           _%e184813185284%_
                           _%hd184814185287%_
                           _%tl184815185289%_
                           _%e184816185292%_
                           _%hd184817185295%_
                           _%tl184818185297%_
                           _%e184819185300%_
                           _%hd184820185303%_
                           _%tl184821185305%_
                           _%e184822185308%_
                           _%hd184823185311%_
                           _%tl184824185313%_
                           _%e184825185316%_
                           _%hd184826185319%_
                           _%tl184827185321%_
                           _%e184828185324%_
                           _%hd184829185327%_
                           _%tl184830185329%_
                           _%e184831185332%_
                           _%hd184832185335%_
                           _%tl184833185337%_))))
                   (_%__match189343189344%_
                    (lambda (_%e184759185395%_
                             _%hd184760185398%_
                             _%tl184761185400%_
                             _%e184762185403%_
                             _%hd184763185406%_
                             _%tl184764185408%_
                             _%e184765185411%_
                             _%hd184766185414%_
                             _%tl184767185416%_
                             _%e184768185419%_
                             _%hd184769185422%_
                             _%tl184770185424%_
                             _%e184771185427%_
                             _%hd184772185430%_
                             _%tl184773185432%_
                             _%e184774185435%_
                             _%hd184775185438%_
                             _%tl184776185440%_
                             _%e184777185443%_
                             _%hd184778185446%_
                             _%tl184779185448%_
                             _%e184780185451%_
                             _%hd184781185454%_
                             _%tl184782185456%_
                             _%e184783185459%_
                             _%hd184784185462%_
                             _%tl184785185464%_
                             _%e184786185467%_
                             _%hd184787185470%_
                             _%tl184788185472%_
                             _%e184789185475%_
                             _%hd184790185478%_
                             _%tl184791185480%_
                             _%e184792185483%_
                             _%hd184793185486%_
                             _%tl184794185488%_
                             _%e184795185491%_
                             _%hd184796185494%_
                             _%tl184797185496%_
                             _%__splice189136189137%_
                             _%target184798185499%_
                             _%tl184800185501%_)
                      (letrec ((_%loop184801185504%_
                                (lambda (_%hd184799185507%_
                                         _%args184805185509%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd184799185507%_))
                                      (let ((_%e184802185511%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd184799185507%_))))
                                        (let ((_%lp-tl184804185516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e184802185511%_)))
                                              (_%lp-hd184803185514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e184802185511%_))))
                                          (_%loop184801185504%_
                                           _%lp-tl184804185516%_
                                           (cons _%lp-hd184803185514%_
                                                 _%args184805185509%_))))
                                      (let ((_%args184806185519%_
                                             (reverse _%args184805185509%_)))
                                        (let ((_%g184754185521%_
                                               _%args184806185519%_)
                                              (_%g184755185522%_
                                               _%hd184796185494%_)
                                              (_%g184756185523%_
                                               _%hd184787185470%_)
                                              (_%g184757185524%_
                                               _%hd184778185446%_)
                                              (_%g184758185525%_
                                               _%hd184769185422%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g184758185525%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g184757185524%_
                                                      'call-method))
                                                   (let ((__tmp190290
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self184700%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g184756185523%_
                                                      __tmp190290)))
                                              (_%__kont189134189135%_
                                               _%g184754185521%_
                                               _%g184755185522%_
                                               _%g184756185523%_
                                               _%g184757185524%_
                                               _%g184758185525%_)
                                              (_%__kont189146189147%_))))))))
                        (_%loop184801185504%_ _%target184798185499%_ '()))))
                   (_%__match189301189302%_
                    (lambda (_%e184759185395%_
                             _%hd184760185398%_
                             _%tl184761185400%_
                             _%e184762185403%_
                             _%hd184763185406%_
                             _%tl184764185408%_
                             _%e184765185411%_
                             _%hd184766185414%_
                             _%tl184767185416%_
                             _%e184768185419%_
                             _%hd184769185422%_
                             _%tl184770185424%_
                             _%e184771185427%_
                             _%hd184772185430%_
                             _%tl184773185432%_
                             _%e184774185435%_
                             _%hd184775185438%_
                             _%tl184776185440%_
                             _%e184777185443%_
                             _%hd184778185446%_
                             _%tl184779185448%_
                             _%e184780185451%_
                             _%hd184781185454%_
                             _%tl184782185456%_
                             _%e184783185459%_
                             _%hd184784185462%_
                             _%tl184785185464%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd184784185462%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl184785185464%_))
                              (let ((_%e184786185467%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl184785185464%_))))
                                (let ((_%tl184788185472%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e184786185467%_)))
                                      (_%hd184787185470%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e184786185467%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl184788185472%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl184782185456%_))
                                          (let ((_%e184789185475%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl184782185456%_))))
                                            (let ((_%tl184791185480%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e184789185475%_)))
                                                  (_%hd184790185478%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e184789185475%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd184790185478%_))
                                                  (let ((_%e184792185483%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd184790185478%_))))
                                                    (let ((_%tl184794185488%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e184792185483%_)))
                                                          (_%hd184793185486%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e184792185483%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd184793185486%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd184793185486%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184794185488%_))
                          (let ((_%e184795185491%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184794185488%_))))
                            (let ((_%tl184797185496%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184795185491%_)))
                                  (_%hd184796185494%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184795185491%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl184797185496%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl184791185480%_))
                                      (let ((_%__splice189136189137%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl184791185480%_
                                                '0))))
                                        (let ((_%tl184800185501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189136189137%_
                                                  '1)))
                                              (_%target184798185499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189136189137%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl184800185501%_))
                                              (_%__match189343189344%_
                                               _%e184759185395%_
                                               _%hd184760185398%_
                                               _%tl184761185400%_
                                               _%e184762185403%_
                                               _%hd184763185406%_
                                               _%tl184764185408%_
                                               _%e184765185411%_
                                               _%hd184766185414%_
                                               _%tl184767185416%_
                                               _%e184768185419%_
                                               _%hd184769185422%_
                                               _%tl184770185424%_
                                               _%e184771185427%_
                                               _%hd184772185430%_
                                               _%tl184773185432%_
                                               _%e184774185435%_
                                               _%hd184775185438%_
                                               _%tl184776185440%_
                                               _%e184777185443%_
                                               _%hd184778185446%_
                                               _%tl184779185448%_
                                               _%e184780185451%_
                                               _%hd184781185454%_
                                               _%tl184782185456%_
                                               _%e184783185459%_
                                               _%hd184784185462%_
                                               _%tl184785185464%_
                                               _%e184786185467%_
                                               _%hd184787185470%_
                                               _%tl184788185472%_
                                               _%e184789185475%_
                                               _%hd184790185478%_
                                               _%tl184791185480%_
                                               _%e184792185483%_
                                               _%hd184793185486%_
                                               _%tl184794185488%_
                                               _%e184795185491%_
                                               _%hd184796185494%_
                                               _%tl184797185496%_
                                               _%__splice189136189137%_
                                               _%target184798185499%_
                                               _%tl184800185501%_)
                                              (_%__kont189146189147%_))))
                                      (_%__kont189146189147%_))
                                  (_%__kont189146189147%_))))
                          (_%__kont189146189147%_))
                      (_%__kont189146189147%_))
                  (_%__kont189146189147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189146189147%_))))
                                          (_%__match189625189626%_
                                           _%e184759185395%_
                                           _%hd184760185398%_
                                           _%tl184761185400%_
                                           _%e184762185403%_
                                           _%hd184763185406%_
                                           _%tl184764185408%_
                                           _%e184765185411%_
                                           _%hd184766185414%_
                                           _%tl184767185416%_
                                           _%e184768185419%_
                                           _%hd184769185422%_
                                           _%tl184770185424%_
                                           _%e184771185427%_
                                           _%hd184772185430%_
                                           _%tl184773185432%_
                                           _%e184774185435%_
                                           _%hd184775185438%_
                                           _%tl184776185440%_
                                           _%e184777185443%_
                                           _%hd184778185446%_
                                           _%tl184779185448%_
                                           _%e184780185451%_
                                           _%hd184781185454%_
                                           _%tl184782185456%_))
                                      (_%__match189625189626%_
                                       _%e184759185395%_
                                       _%hd184760185398%_
                                       _%tl184761185400%_
                                       _%e184762185403%_
                                       _%hd184763185406%_
                                       _%tl184764185408%_
                                       _%e184765185411%_
                                       _%hd184766185414%_
                                       _%tl184767185416%_
                                       _%e184768185419%_
                                       _%hd184769185422%_
                                       _%tl184770185424%_
                                       _%e184771185427%_
                                       _%hd184772185430%_
                                       _%tl184773185432%_
                                       _%e184774185435%_
                                       _%hd184775185438%_
                                       _%tl184776185440%_
                                       _%e184777185443%_
                                       _%hd184778185446%_
                                       _%tl184779185448%_
                                       _%e184780185451%_
                                       _%hd184781185454%_
                                       _%tl184782185456%_))))
                              (_%__match189625189626%_
                               _%e184759185395%_
                               _%hd184760185398%_
                               _%tl184761185400%_
                               _%e184762185403%_
                               _%hd184763185406%_
                               _%tl184764185408%_
                               _%e184765185411%_
                               _%hd184766185414%_
                               _%tl184767185416%_
                               _%e184768185419%_
                               _%hd184769185422%_
                               _%tl184770185424%_
                               _%e184771185427%_
                               _%hd184772185430%_
                               _%tl184773185432%_
                               _%e184774185435%_
                               _%hd184775185438%_
                               _%tl184776185440%_
                               _%e184777185443%_
                               _%hd184778185446%_
                               _%tl184779185448%_
                               _%e184780185451%_
                               _%hd184781185454%_
                               _%tl184782185456%_))
                          (_%__match189411189412%_
                           _%e184759185395%_
                           _%hd184760185398%_
                           _%tl184761185400%_
                           _%e184762185403%_
                           _%hd184763185406%_
                           _%tl184764185408%_
                           _%e184765185411%_
                           _%hd184766185414%_
                           _%tl184767185416%_
                           _%e184768185419%_
                           _%hd184769185422%_
                           _%tl184770185424%_
                           _%e184771185427%_
                           _%hd184772185430%_
                           _%tl184773185432%_
                           _%e184774185435%_
                           _%hd184775185438%_
                           _%tl184776185440%_
                           _%e184777185443%_
                           _%hd184778185446%_
                           _%tl184779185448%_
                           _%e184780185451%_
                           _%hd184781185454%_
                           _%tl184782185456%_
                           _%e184783185459%_
                           _%hd184784185462%_
                           _%tl184785185464%_))))
                   (_%__match189233189234%_
                    (lambda (_%e184715185582%_
                             _%hd184716185585%_
                             _%tl184717185587%_
                             _%e184718185590%_
                             _%hd184719185593%_
                             _%tl184720185595%_
                             _%e184721185598%_
                             _%hd184722185601%_
                             _%tl184723185603%_
                             _%e184724185606%_
                             _%hd184725185609%_
                             _%tl184726185611%_
                             _%e184727185614%_
                             _%hd184728185617%_
                             _%tl184729185619%_
                             _%e184730185622%_
                             _%hd184731185625%_
                             _%tl184732185627%_
                             _%e184733185630%_
                             _%hd184734185633%_
                             _%tl184735185635%_
                             _%e184736185638%_
                             _%hd184737185641%_
                             _%tl184738185643%_
                             _%e184739185646%_
                             _%hd184740185649%_
                             _%tl184741185651%_
                             _%e184742185654%_
                             _%hd184743185657%_
                             _%tl184744185659%_
                             _%__splice189132189133%_
                             _%target184745185662%_
                             _%tl184747185664%_)
                      (letrec ((_%loop184748185667%_
                                (lambda (_%hd184746185670%_
                                         _%args184752185672%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd184746185670%_))
                                      (let ((_%e184749185674%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd184746185670%_))))
                                        (let ((_%lp-tl184751185679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e184749185674%_)))
                                              (_%lp-hd184750185677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e184749185674%_))))
                                          (_%loop184748185667%_
                                           _%lp-tl184751185679%_
                                           (cons _%lp-hd184750185677%_
                                                 _%args184752185672%_))))
                                      (let ((_%args184753185682%_
                                             (reverse _%args184752185672%_)))
                                        (let ((_%g184711185684%_
                                               _%args184753185682%_)
                                              (_%g184712185685%_
                                               _%hd184743185657%_)
                                              (_%g184713185686%_
                                               _%hd184734185633%_)
                                              (_%g184714185687%_
                                               _%hd184725185609%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g184714185687%_
                                                      'call-method))
                                                   (let ((__tmp190291
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self184700%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g184713185686%_
                                                      __tmp190291)))
                                              (_%__kont189130189131%_
                                               _%g184711185684%_
                                               _%g184712185685%_
                                               _%g184713185686%_
                                               _%g184714185687%_)
                                              (_%__match189421189422%_
                                               _%e184715185582%_
                                               _%hd184716185585%_
                                               _%tl184717185587%_
                                               _%e184718185590%_
                                               _%hd184719185593%_
                                               _%tl184720185595%_
                                               _%e184721185598%_
                                               _%hd184722185601%_
                                               _%tl184723185603%_
                                               _%e184724185606%_
                                               _%hd184725185609%_
                                               _%tl184726185611%_
                                               _%e184727185614%_
                                               _%hd184728185617%_
                                               _%tl184729185619%_
                                               _%e184730185622%_
                                               _%hd184731185625%_
                                               _%tl184732185627%_
                                               _%e184733185630%_
                                               _%hd184734185633%_
                                               _%tl184735185635%_
                                               _%e184736185638%_
                                               _%hd184737185641%_
                                               _%tl184738185643%_
                                               _%e184739185646%_
                                               _%hd184740185649%_
                                               _%tl184741185651%_
                                               _%e184742185654%_
                                               _%hd184743185657%_
                                               _%tl184744185659%_))))))))
                        (_%loop184748185667%_ _%target184745185662%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189128189129%_))
                  (let ((_%e184715185582%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189128189129%_))))
                    (let ((_%tl184717185587%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e184715185582%_)))
                          (_%hd184716185585%_
                           (let ()
                             (declare (not safe))
                             (##car _%e184715185582%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184717185587%_))
                          (let ((_%e184718185590%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184717185587%_))))
                            (let ((_%tl184720185595%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184718185590%_)))
                                  (_%hd184719185593%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184718185590%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd184719185593%_))
                                  (let ((_%e184721185598%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd184719185593%_))))
                                    (let ((_%tl184723185603%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e184721185598%_)))
                                          (_%hd184722185601%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e184721185598%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd184722185601%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd184722185601%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl184723185603%_))
                                                  (let ((_%e184724185606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl184723185603%_))))
                                                    (let ((_%tl184726185611%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e184724185606%_)))
                                                          (_%hd184725185609%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e184724185606%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl184726185611%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl184720185595%_))
                      (let ((_%e184727185614%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl184720185595%_))))
                        (let ((_%tl184729185619%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e184727185614%_)))
                              (_%hd184728185617%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e184727185614%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd184728185617%_))
                              (let ((_%e184730185622%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd184728185617%_))))
                                (let ((_%tl184732185627%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e184730185622%_)))
                                      (_%hd184731185625%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e184730185622%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd184731185625%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd184731185625%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl184732185627%_))
                                              (let ((_%e184733185630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl184732185627%_))))
                                                (let ((_%tl184735185635%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e184733185630%_)))
                                                      (_%hd184734185633%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e184733185630%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl184735185635%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl184729185619%_))
                                                          (let ((_%e184736185638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl184729185619%_))))
                    (let ((_%tl184738185643%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e184736185638%_)))
                          (_%hd184737185641%_
                           (let ()
                             (declare (not safe))
                             (##car _%e184736185638%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd184737185641%_))
                          (let ((_%e184739185646%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd184737185641%_))))
                            (let ((_%tl184741185651%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184739185646%_)))
                                  (_%hd184740185649%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184739185646%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd184740185649%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd184740185649%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl184741185651%_))
                                          (let ((_%e184742185654%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl184741185651%_))))
                                            (let ((_%tl184744185659%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e184742185654%_)))
                                                  (_%hd184743185657%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e184742185654%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl184744185659%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl184738185643%_))
                                                      (let ((_%__splice189132189133%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl184738185643%_
                        '0))))
                (let ((_%tl184747185664%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189132189133%_ '1)))
                      (_%target184745185662%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189132189133%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl184747185664%_))
                      (_%__match189233189234%_
                       _%e184715185582%_
                       _%hd184716185585%_
                       _%tl184717185587%_
                       _%e184718185590%_
                       _%hd184719185593%_
                       _%tl184720185595%_
                       _%e184721185598%_
                       _%hd184722185601%_
                       _%tl184723185603%_
                       _%e184724185606%_
                       _%hd184725185609%_
                       _%tl184726185611%_
                       _%e184727185614%_
                       _%hd184728185617%_
                       _%tl184729185619%_
                       _%e184730185622%_
                       _%hd184731185625%_
                       _%tl184732185627%_
                       _%e184733185630%_
                       _%hd184734185633%_
                       _%tl184735185635%_
                       _%e184736185638%_
                       _%hd184737185641%_
                       _%tl184738185643%_
                       _%e184739185646%_
                       _%hd184740185649%_
                       _%tl184741185651%_
                       _%e184742185654%_
                       _%hd184743185657%_
                       _%tl184744185659%_
                       _%__splice189132189133%_
                       _%target184745185662%_
                       _%tl184747185664%_)
                      (_%__match189421189422%_
                       _%e184715185582%_
                       _%hd184716185585%_
                       _%tl184717185587%_
                       _%e184718185590%_
                       _%hd184719185593%_
                       _%tl184720185595%_
                       _%e184721185598%_
                       _%hd184722185601%_
                       _%tl184723185603%_
                       _%e184724185606%_
                       _%hd184725185609%_
                       _%tl184726185611%_
                       _%e184727185614%_
                       _%hd184728185617%_
                       _%tl184729185619%_
                       _%e184730185622%_
                       _%hd184731185625%_
                       _%tl184732185627%_
                       _%e184733185630%_
                       _%hd184734185633%_
                       _%tl184735185635%_
                       _%e184736185638%_
                       _%hd184737185641%_
                       _%tl184738185643%_
                       _%e184739185646%_
                       _%hd184740185649%_
                       _%tl184741185651%_
                       _%e184742185654%_
                       _%hd184743185657%_
                       _%tl184744185659%_))))
              (_%__match189421189422%_
               _%e184715185582%_
               _%hd184716185585%_
               _%tl184717185587%_
               _%e184718185590%_
               _%hd184719185593%_
               _%tl184720185595%_
               _%e184721185598%_
               _%hd184722185601%_
               _%tl184723185603%_
               _%e184724185606%_
               _%hd184725185609%_
               _%tl184726185611%_
               _%e184727185614%_
               _%hd184728185617%_
               _%tl184729185619%_
               _%e184730185622%_
               _%hd184731185625%_
               _%tl184732185627%_
               _%e184733185630%_
               _%hd184734185633%_
               _%tl184735185635%_
               _%e184736185638%_
               _%hd184737185641%_
               _%tl184738185643%_
               _%e184739185646%_
               _%hd184740185649%_
               _%tl184741185651%_
               _%e184742185654%_
               _%hd184743185657%_
               _%tl184744185659%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match189625189626%_
                                                   _%e184715185582%_
                                                   _%hd184716185585%_
                                                   _%tl184717185587%_
                                                   _%e184718185590%_
                                                   _%hd184719185593%_
                                                   _%tl184720185595%_
                                                   _%e184721185598%_
                                                   _%hd184722185601%_
                                                   _%tl184723185603%_
                                                   _%e184724185606%_
                                                   _%hd184725185609%_
                                                   _%tl184726185611%_
                                                   _%e184727185614%_
                                                   _%hd184728185617%_
                                                   _%tl184729185619%_
                                                   _%e184730185622%_
                                                   _%hd184731185625%_
                                                   _%tl184732185627%_
                                                   _%e184733185630%_
                                                   _%hd184734185633%_
                                                   _%tl184735185635%_
                                                   _%e184736185638%_
                                                   _%hd184737185641%_
                                                   _%tl184738185643%_))))
                                          (_%__match189625189626%_
                                           _%e184715185582%_
                                           _%hd184716185585%_
                                           _%tl184717185587%_
                                           _%e184718185590%_
                                           _%hd184719185593%_
                                           _%tl184720185595%_
                                           _%e184721185598%_
                                           _%hd184722185601%_
                                           _%tl184723185603%_
                                           _%e184724185606%_
                                           _%hd184725185609%_
                                           _%tl184726185611%_
                                           _%e184727185614%_
                                           _%hd184728185617%_
                                           _%tl184729185619%_
                                           _%e184730185622%_
                                           _%hd184731185625%_
                                           _%tl184732185627%_
                                           _%e184733185630%_
                                           _%hd184734185633%_
                                           _%tl184735185635%_
                                           _%e184736185638%_
                                           _%hd184737185641%_
                                           _%tl184738185643%_))
                                      (_%__match189301189302%_
                                       _%e184715185582%_
                                       _%hd184716185585%_
                                       _%tl184717185587%_
                                       _%e184718185590%_
                                       _%hd184719185593%_
                                       _%tl184720185595%_
                                       _%e184721185598%_
                                       _%hd184722185601%_
                                       _%tl184723185603%_
                                       _%e184724185606%_
                                       _%hd184725185609%_
                                       _%tl184726185611%_
                                       _%e184727185614%_
                                       _%hd184728185617%_
                                       _%tl184729185619%_
                                       _%e184730185622%_
                                       _%hd184731185625%_
                                       _%tl184732185627%_
                                       _%e184733185630%_
                                       _%hd184734185633%_
                                       _%tl184735185635%_
                                       _%e184736185638%_
                                       _%hd184737185641%_
                                       _%tl184738185643%_
                                       _%e184739185646%_
                                       _%hd184740185649%_
                                       _%tl184741185651%_))
                                  (_%__match189625189626%_
                                   _%e184715185582%_
                                   _%hd184716185585%_
                                   _%tl184717185587%_
                                   _%e184718185590%_
                                   _%hd184719185593%_
                                   _%tl184720185595%_
                                   _%e184721185598%_
                                   _%hd184722185601%_
                                   _%tl184723185603%_
                                   _%e184724185606%_
                                   _%hd184725185609%_
                                   _%tl184726185611%_
                                   _%e184727185614%_
                                   _%hd184728185617%_
                                   _%tl184729185619%_
                                   _%e184730185622%_
                                   _%hd184731185625%_
                                   _%tl184732185627%_
                                   _%e184733185630%_
                                   _%hd184734185633%_
                                   _%tl184735185635%_
                                   _%e184736185638%_
                                   _%hd184737185641%_
                                   _%tl184738185643%_))))
                          (_%__match189625189626%_
                           _%e184715185582%_
                           _%hd184716185585%_
                           _%tl184717185587%_
                           _%e184718185590%_
                           _%hd184719185593%_
                           _%tl184720185595%_
                           _%e184721185598%_
                           _%hd184722185601%_
                           _%tl184723185603%_
                           _%e184724185606%_
                           _%hd184725185609%_
                           _%tl184726185611%_
                           _%e184727185614%_
                           _%hd184728185617%_
                           _%tl184729185619%_
                           _%e184730185622%_
                           _%hd184731185625%_
                           _%tl184732185627%_
                           _%e184733185630%_
                           _%hd184734185633%_
                           _%tl184735185635%_
                           _%e184736185638%_
                           _%hd184737185641%_
                           _%tl184738185643%_))))
                  (_%__match189563189564%_
                   _%e184715185582%_
                   _%hd184716185585%_
                   _%tl184717185587%_
                   _%e184718185590%_
                   _%hd184719185593%_
                   _%tl184720185595%_
                   _%e184721185598%_
                   _%hd184722185601%_
                   _%tl184723185603%_
                   _%e184724185606%_
                   _%hd184725185609%_
                   _%tl184726185611%_
                   _%e184727185614%_
                   _%hd184728185617%_
                   _%tl184729185619%_
                   _%e184730185622%_
                   _%hd184731185625%_
                   _%tl184732185627%_
                   _%e184733185630%_
                   _%hd184734185633%_
                   _%tl184735185635%_))
              (_%__kont189146189147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont189146189147%_))
                                          (_%__kont189146189147%_))
                                      (_%__kont189146189147%_))))
                              (_%__kont189146189147%_))))
                      (_%__kont189146189147%_))
                  (_%__kont189146189147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189146189147%_))
                                              (_%__kont189146189147%_))
                                          (_%__kont189146189147%_))))
                                  (_%__kont189146189147%_))))
                          (_%__kont189146189147%_))))
                  (_%__kont189146189147%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self183643%_ _%stx183644%_)
        (letrec ((_%force-e183646%_
                  (lambda (_%target184698%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target184698%_ '()))
                                      '()))))))
          (let* ((_%__stx189630189631%_ _%stx183644%_)
                 (_%g183654183876%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx189630189631%_)))))
            (let ((_%__kont189632189633%_
                   (lambda (_%g183656184644%_
                            _%g183657184645%_
                            _%g183658184646%_
                            _%g183659184647%_)
                     (let ((_%$method184692%_
                            (let ((__tmp190293
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self183643%_ 'methods)))
                                  (__tmp190292
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g183657184645%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp190293 __tmp190292)))
                           (_%args184693%_
                            (map (lambda (_%g184680184682%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self183643%_
                                      _%g184680184682%_)))
                                 (let ((__tmp190294
                                        (lambda (_%g184684184687%_
                                                 _%g184685184689%_)
                                          (cons _%g184684184687%_
                                                _%g184685184689%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp190294
                                    '()
                                    _%g183656184644%_)))))
                       (let ((__tmp190295
                              (cons '%#call
                                    (cons (_%force-e183646%_ _%$method184692%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self183643%_
                                                               'receiver))
                                                            '()))
                                                _%args184693%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190295 _%stx183644%_)))))
                  (_%__kont189636189637%_
                   (lambda (_%g183699184478%_
                            _%g183700184479%_
                            _%g183701184480%_
                            _%g183702184481%_
                            _%g183703184482%_)
                     (let ((_%$method184534%_
                            (let ((__tmp190297
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self183643%_ 'methods)))
                                  (__tmp190296
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g183700184479%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp190297 __tmp190296)))
                           (_%args184535%_
                            (map (lambda (_%g184522184524%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self183643%_
                                      _%g184522184524%_)))
                                 (let ((__tmp190298
                                        (lambda (_%g184526184529%_
                                                 _%g184527184531%_)
                                          (cons _%g184526184529%_
                                                _%g184527184531%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp190298
                                    '()
                                    _%g183699184478%_)))))
                       (let ((__tmp190299
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e183646%_
                                                 _%$method184534%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self183643%_ 'receiver))
                          '()))
              _%args184535%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190299 _%stx183644%_)))))
                  (_%__kont189640189641%_
                   (lambda (_%g183752184311%_
                            _%g183753184312%_
                            _%g183754184313%_)
                     (let* ((_%$field184345%_
                             (let ((__tmp190301
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self183643%_ 'slots)))
                                   (__tmp190300
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g183752184311%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp190301 __tmp190300)))
                            (__tmp190302
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self183643%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field184345%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self183643%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp190302 _%stx183644%_))))
                  (_%__kont189642189643%_
                   (lambda (_%g183785184185%_
                            _%g183786184186%_
                            _%g183787184187%_
                            _%g183788184188%_)
                     (let ((_%$field184223%_
                            (let ((__tmp190304
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self183643%_ 'slots)))
                                  (__tmp190303
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g183786184186%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp190304 __tmp190303)))
                           (_%expr184224%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self183643%_
                               _%g183785184185%_))))
                       (let ((__tmp190305
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self183643%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field184223%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self183643%_ 'receiver))
                          '()))
              (cons _%expr184224%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190305 _%stx183644%_)))))
                  (_%__kont189644189645%_
                   (lambda (_%g183822184057%_ _%g183823184058%_)
                     (let* ((_%accessor184080%_
                             (let ((__tmp190306
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g183823184058%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp190306)))
                            (_%klass184082%_
                             (let ((__tmp190307
                                    (##structure-ref
                                     _%accessor184080%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx183644%_
                                __tmp190307)))
                            (_%slot184084%_
                             (##structure-ref
                              _%accessor184080%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor184080%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass184082%_
                                      _%slot184084%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass184082%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx183644%_
                           (let* ((_%$field184090%_
                                   (let ((__tmp190308
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183643%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp190308 _%slot184084%_)))
                                  (__tmp190309
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self183643%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field184090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self183643%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp190309
                              _%stx183644%_))))))
                  (_%__kont189646189647%_
                   (lambda (_%g183845183952%_
                            _%g183846183953%_
                            _%g183847183954%_)
                     (let* ((_%mutator183982%_
                             (let ((__tmp190310
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g183847183954%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp190310)))
                            (_%klass183984%_
                             (let ((__tmp190311
                                    (##structure-ref
                                     _%mutator183982%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx183644%_
                                __tmp190311)))
                            (_%slot183986%_
                             (##structure-ref
                              _%mutator183982%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr183988%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self183643%_
                                _%g183845183952%_))))
                       (if (if (##structure-ref
                                _%mutator183982%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass183984%_
                                      _%slot183986%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass183984%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp190312
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g183847183954%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g183846183953%_
                                                                '()))
                                                    (cons _%expr183988%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190312 _%stx183644%_))
                           (let* ((_%$field183994%_
                                   (let ((__tmp190313
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183643%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp190313 _%slot183986%_)))
                                  (__tmp190314
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self183643%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field183994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self183643%_ 'receiver))
                               '()))
                   (cons _%expr183988%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp190314
                              _%stx183644%_))))))
                  (_%__kont189648189649%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self183643%_ _%stx183644%_)))))
              (let* ((_%__match190129190130%_
                      (lambda (_%e183848183888%_
                               _%hd183849183891%_
                               _%tl183850183893%_
                               _%e183851183896%_
                               _%hd183852183899%_
                               _%tl183853183901%_
                               _%e183854183904%_
                               _%hd183855183907%_
                               _%tl183856183909%_
                               _%e183857183912%_
                               _%hd183858183915%_
                               _%tl183859183917%_
                               _%e183860183920%_
                               _%hd183861183923%_
                               _%tl183862183925%_
                               _%e183863183928%_
                               _%hd183864183931%_
                               _%tl183865183933%_
                               _%e183866183936%_
                               _%hd183867183939%_
                               _%tl183868183941%_
                               _%e183869183944%_
                               _%hd183870183947%_
                               _%tl183871183949%_)
                        (let ((_%g183845183952%_ _%hd183870183947%_)
                              (_%g183846183953%_ _%hd183867183939%_)
                              (_%g183847183954%_ _%hd183858183915%_))
                          (if (and (let ((__tmp190315
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183643%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g183846183953%_
                                      __tmp190315))
                                   (let ((__tmp190316
                                          (let ((__tmp190317
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g183847183954%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp190317))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp190316
                                      'gxc#!mutator::t)))
                              (_%__kont189646189647%_
                               _%g183845183952%_
                               _%g183846183953%_
                               _%g183847183954%_)
                              (_%__kont189648189649%_)))))
                     (_%__match190127190128%_
                      (lambda (_%e183848183888%_
                               _%hd183849183891%_
                               _%tl183850183893%_
                               _%e183851183896%_
                               _%hd183852183899%_
                               _%tl183853183901%_
                               _%e183854183904%_
                               _%hd183855183907%_
                               _%tl183856183909%_
                               _%e183857183912%_
                               _%hd183858183915%_
                               _%tl183859183917%_
                               _%e183860183920%_
                               _%hd183861183923%_
                               _%tl183862183925%_
                               _%e183863183928%_
                               _%hd183864183931%_
                               _%tl183865183933%_
                               _%e183866183936%_
                               _%hd183867183939%_
                               _%tl183868183941%_
                               _%e183869183944%_
                               _%hd183870183947%_
                               _%tl183871183949%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183871183949%_))
                            (_%__match190129190130%_
                             _%e183848183888%_
                             _%hd183849183891%_
                             _%tl183850183893%_
                             _%e183851183896%_
                             _%hd183852183899%_
                             _%tl183853183901%_
                             _%e183854183904%_
                             _%hd183855183907%_
                             _%tl183856183909%_
                             _%e183857183912%_
                             _%hd183858183915%_
                             _%tl183859183917%_
                             _%e183860183920%_
                             _%hd183861183923%_
                             _%tl183862183925%_
                             _%e183863183928%_
                             _%hd183864183931%_
                             _%tl183865183933%_
                             _%e183866183936%_
                             _%hd183867183939%_
                             _%tl183868183941%_
                             _%e183869183944%_
                             _%hd183870183947%_
                             _%tl183871183949%_)
                            (_%__kont189648189649%_))))
                     (_%__match190121190122%_
                      (lambda (_%e183848183888%_
                               _%hd183849183891%_
                               _%tl183850183893%_
                               _%e183851183896%_
                               _%hd183852183899%_
                               _%tl183853183901%_
                               _%e183854183904%_
                               _%hd183855183907%_
                               _%tl183856183909%_
                               _%e183857183912%_
                               _%hd183858183915%_
                               _%tl183859183917%_
                               _%e183860183920%_
                               _%hd183861183923%_
                               _%tl183862183925%_
                               _%e183863183928%_
                               _%hd183864183931%_
                               _%tl183865183933%_
                               _%e183866183936%_
                               _%hd183867183939%_
                               _%tl183868183941%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183862183925%_))
                            (let ((_%e183869183944%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183862183925%_))))
                              (let ((_%tl183871183949%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183869183944%_)))
                                    (_%hd183870183947%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183869183944%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl183871183949%_))
                                    (_%__match190129190130%_
                                     _%e183848183888%_
                                     _%hd183849183891%_
                                     _%tl183850183893%_
                                     _%e183851183896%_
                                     _%hd183852183899%_
                                     _%tl183853183901%_
                                     _%e183854183904%_
                                     _%hd183855183907%_
                                     _%tl183856183909%_
                                     _%e183857183912%_
                                     _%hd183858183915%_
                                     _%tl183859183917%_
                                     _%e183860183920%_
                                     _%hd183861183923%_
                                     _%tl183862183925%_
                                     _%e183863183928%_
                                     _%hd183864183931%_
                                     _%tl183865183933%_
                                     _%e183866183936%_
                                     _%hd183867183939%_
                                     _%tl183868183941%_
                                     _%e183869183944%_
                                     _%hd183870183947%_
                                     _%tl183871183949%_)
                                    (_%__kont189648189649%_))))
                            (_%__kont189648189649%_))))
                     (_%__match190067190068%_
                      (lambda (_%e183824184001%_
                               _%hd183825184004%_
                               _%tl183826184006%_
                               _%e183827184009%_
                               _%hd183828184012%_
                               _%tl183829184014%_
                               _%e183830184017%_
                               _%hd183831184020%_
                               _%tl183832184022%_
                               _%e183833184025%_
                               _%hd183834184028%_
                               _%tl183835184030%_
                               _%e183836184033%_
                               _%hd183837184036%_
                               _%tl183838184038%_
                               _%e183839184041%_
                               _%hd183840184044%_
                               _%tl183841184046%_
                               _%e183842184049%_
                               _%hd183843184052%_
                               _%tl183844184054%_)
                        (let ((_%g183822184057%_ _%hd183843184052%_)
                              (_%g183823184058%_ _%hd183834184028%_))
                          (if (and (let ((__tmp190318
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183643%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g183822184057%_
                                      __tmp190318))
                                   (let ((__tmp190319
                                          (let ((__tmp190320
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g183823184058%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp190320))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp190319
                                      'gxc#!accessor::t)))
                              (_%__kont189644189645%_
                               _%g183822184057%_
                               _%g183823184058%_)
                              (_%__kont189648189649%_)))))
                     (_%__match190065190066%_
                      (lambda (_%e183824184001%_
                               _%hd183825184004%_
                               _%tl183826184006%_
                               _%e183827184009%_
                               _%hd183828184012%_
                               _%tl183829184014%_
                               _%e183830184017%_
                               _%hd183831184020%_
                               _%tl183832184022%_
                               _%e183833184025%_
                               _%hd183834184028%_
                               _%tl183835184030%_
                               _%e183836184033%_
                               _%hd183837184036%_
                               _%tl183838184038%_
                               _%e183839184041%_
                               _%hd183840184044%_
                               _%tl183841184046%_
                               _%e183842184049%_
                               _%hd183843184052%_
                               _%tl183844184054%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183838184038%_))
                            (_%__match190067190068%_
                             _%e183824184001%_
                             _%hd183825184004%_
                             _%tl183826184006%_
                             _%e183827184009%_
                             _%hd183828184012%_
                             _%tl183829184014%_
                             _%e183830184017%_
                             _%hd183831184020%_
                             _%tl183832184022%_
                             _%e183833184025%_
                             _%hd183834184028%_
                             _%tl183835184030%_
                             _%e183836184033%_
                             _%hd183837184036%_
                             _%tl183838184038%_
                             _%e183839184041%_
                             _%hd183840184044%_
                             _%tl183841184046%_
                             _%e183842184049%_
                             _%hd183843184052%_
                             _%tl183844184054%_)
                            (_%__match190121190122%_
                             _%e183824184001%_
                             _%hd183825184004%_
                             _%tl183826184006%_
                             _%e183827184009%_
                             _%hd183828184012%_
                             _%tl183829184014%_
                             _%e183830184017%_
                             _%hd183831184020%_
                             _%tl183832184022%_
                             _%e183833184025%_
                             _%hd183834184028%_
                             _%tl183835184030%_
                             _%e183836184033%_
                             _%hd183837184036%_
                             _%tl183838184038%_
                             _%e183839184041%_
                             _%hd183840184044%_
                             _%tl183841184046%_
                             _%e183842184049%_
                             _%hd183843184052%_
                             _%tl183844184054%_))))
                     (_%__match190011190012%_
                      (lambda (_%e183789184097%_
                               _%hd183790184100%_
                               _%tl183791184102%_
                               _%e183792184105%_
                               _%hd183793184108%_
                               _%tl183794184110%_
                               _%e183795184113%_
                               _%hd183796184116%_
                               _%tl183797184118%_
                               _%e183798184121%_
                               _%hd183799184124%_
                               _%tl183800184126%_
                               _%e183801184129%_
                               _%hd183802184132%_
                               _%tl183803184134%_
                               _%e183804184137%_
                               _%hd183805184140%_
                               _%tl183806184142%_
                               _%e183807184145%_
                               _%hd183808184148%_
                               _%tl183809184150%_
                               _%e183810184153%_
                               _%hd183811184156%_
                               _%tl183812184158%_
                               _%e183813184161%_
                               _%hd183814184164%_
                               _%tl183815184166%_
                               _%e183816184169%_
                               _%hd183817184172%_
                               _%tl183818184174%_
                               _%e183819184177%_
                               _%hd183820184180%_
                               _%tl183821184182%_)
                        (let ((_%g183785184185%_ _%hd183820184180%_)
                              (_%g183786184186%_ _%hd183817184172%_)
                              (_%g183787184187%_ _%hd183808184148%_)
                              (_%g183788184188%_ _%hd183799184124%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g183788184188%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g183788184188%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp190321
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183643%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g183787184187%_
                                      __tmp190321)))
                              (_%__kont189642189643%_
                               _%g183785184185%_
                               _%g183786184186%_
                               _%g183787184187%_
                               _%g183788184188%_)
                              (_%__kont189648189649%_)))))
                     (_%__match190003190004%_
                      (lambda (_%e183789184097%_
                               _%hd183790184100%_
                               _%tl183791184102%_
                               _%e183792184105%_
                               _%hd183793184108%_
                               _%tl183794184110%_
                               _%e183795184113%_
                               _%hd183796184116%_
                               _%tl183797184118%_
                               _%e183798184121%_
                               _%hd183799184124%_
                               _%tl183800184126%_
                               _%e183801184129%_
                               _%hd183802184132%_
                               _%tl183803184134%_
                               _%e183804184137%_
                               _%hd183805184140%_
                               _%tl183806184142%_
                               _%e183807184145%_
                               _%hd183808184148%_
                               _%tl183809184150%_
                               _%e183810184153%_
                               _%hd183811184156%_
                               _%tl183812184158%_
                               _%e183813184161%_
                               _%hd183814184164%_
                               _%tl183815184166%_
                               _%e183816184169%_
                               _%hd183817184172%_
                               _%tl183818184174%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183812184158%_))
                            (let ((_%e183819184177%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183812184158%_))))
                              (let ((_%tl183821184182%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183819184177%_)))
                                    (_%hd183820184180%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183819184177%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl183821184182%_))
                                    (_%__match190011190012%_
                                     _%e183789184097%_
                                     _%hd183790184100%_
                                     _%tl183791184102%_
                                     _%e183792184105%_
                                     _%hd183793184108%_
                                     _%tl183794184110%_
                                     _%e183795184113%_
                                     _%hd183796184116%_
                                     _%tl183797184118%_
                                     _%e183798184121%_
                                     _%hd183799184124%_
                                     _%tl183800184126%_
                                     _%e183801184129%_
                                     _%hd183802184132%_
                                     _%tl183803184134%_
                                     _%e183804184137%_
                                     _%hd183805184140%_
                                     _%tl183806184142%_
                                     _%e183807184145%_
                                     _%hd183808184148%_
                                     _%tl183809184150%_
                                     _%e183810184153%_
                                     _%hd183811184156%_
                                     _%tl183812184158%_
                                     _%e183813184161%_
                                     _%hd183814184164%_
                                     _%tl183815184166%_
                                     _%e183816184169%_
                                     _%hd183817184172%_
                                     _%tl183818184174%_
                                     _%e183819184177%_
                                     _%hd183820184180%_
                                     _%tl183821184182%_)
                                    (_%__kont189648189649%_))))
                            (_%__match190127190128%_
                             _%e183789184097%_
                             _%hd183790184100%_
                             _%tl183791184102%_
                             _%e183792184105%_
                             _%hd183793184108%_
                             _%tl183794184110%_
                             _%e183795184113%_
                             _%hd183796184116%_
                             _%tl183797184118%_
                             _%e183798184121%_
                             _%hd183799184124%_
                             _%tl183800184126%_
                             _%e183801184129%_
                             _%hd183802184132%_
                             _%tl183803184134%_
                             _%e183804184137%_
                             _%hd183805184140%_
                             _%tl183806184142%_
                             _%e183807184145%_
                             _%hd183808184148%_
                             _%tl183809184150%_
                             _%e183810184153%_
                             _%hd183811184156%_
                             _%tl183812184158%_))))
                     (_%__match189925189926%_
                      (lambda (_%e183755184231%_
                               _%hd183756184234%_
                               _%tl183757184236%_
                               _%e183758184239%_
                               _%hd183759184242%_
                               _%tl183760184244%_
                               _%e183761184247%_
                               _%hd183762184250%_
                               _%tl183763184252%_
                               _%e183764184255%_
                               _%hd183765184258%_
                               _%tl183766184260%_
                               _%e183767184263%_
                               _%hd183768184266%_
                               _%tl183769184268%_
                               _%e183770184271%_
                               _%hd183771184274%_
                               _%tl183772184276%_
                               _%e183773184279%_
                               _%hd183774184282%_
                               _%tl183775184284%_
                               _%e183776184287%_
                               _%hd183777184290%_
                               _%tl183778184292%_
                               _%e183779184295%_
                               _%hd183780184298%_
                               _%tl183781184300%_
                               _%e183782184303%_
                               _%hd183783184306%_
                               _%tl183784184308%_)
                        (let ((_%g183752184311%_ _%hd183783184306%_)
                              (_%g183753184312%_ _%hd183774184282%_)
                              (_%g183754184313%_ _%hd183765184258%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g183754184313%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g183754184313%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp190322
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183643%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g183753184312%_
                                      __tmp190322)))
                              (_%__kont189640189641%_
                               _%g183752184311%_
                               _%g183753184312%_
                               _%g183754184313%_)
                              (_%__match190129190130%_
                               _%e183755184231%_
                               _%hd183756184234%_
                               _%tl183757184236%_
                               _%e183758184239%_
                               _%hd183759184242%_
                               _%tl183760184244%_
                               _%e183761184247%_
                               _%hd183762184250%_
                               _%tl183763184252%_
                               _%e183764184255%_
                               _%hd183765184258%_
                               _%tl183766184260%_
                               _%e183767184263%_
                               _%hd183768184266%_
                               _%tl183769184268%_
                               _%e183770184271%_
                               _%hd183771184274%_
                               _%tl183772184276%_
                               _%e183773184279%_
                               _%hd183774184282%_
                               _%tl183775184284%_
                               _%e183776184287%_
                               _%hd183777184290%_
                               _%tl183778184292%_)))))
                     (_%__match189923189924%_
                      (lambda (_%e183755184231%_
                               _%hd183756184234%_
                               _%tl183757184236%_
                               _%e183758184239%_
                               _%hd183759184242%_
                               _%tl183760184244%_
                               _%e183761184247%_
                               _%hd183762184250%_
                               _%tl183763184252%_
                               _%e183764184255%_
                               _%hd183765184258%_
                               _%tl183766184260%_
                               _%e183767184263%_
                               _%hd183768184266%_
                               _%tl183769184268%_
                               _%e183770184271%_
                               _%hd183771184274%_
                               _%tl183772184276%_
                               _%e183773184279%_
                               _%hd183774184282%_
                               _%tl183775184284%_
                               _%e183776184287%_
                               _%hd183777184290%_
                               _%tl183778184292%_
                               _%e183779184295%_
                               _%hd183780184298%_
                               _%tl183781184300%_
                               _%e183782184303%_
                               _%hd183783184306%_
                               _%tl183784184308%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183778184292%_))
                            (_%__match189925189926%_
                             _%e183755184231%_
                             _%hd183756184234%_
                             _%tl183757184236%_
                             _%e183758184239%_
                             _%hd183759184242%_
                             _%tl183760184244%_
                             _%e183761184247%_
                             _%hd183762184250%_
                             _%tl183763184252%_
                             _%e183764184255%_
                             _%hd183765184258%_
                             _%tl183766184260%_
                             _%e183767184263%_
                             _%hd183768184266%_
                             _%tl183769184268%_
                             _%e183770184271%_
                             _%hd183771184274%_
                             _%tl183772184276%_
                             _%e183773184279%_
                             _%hd183774184282%_
                             _%tl183775184284%_
                             _%e183776184287%_
                             _%hd183777184290%_
                             _%tl183778184292%_
                             _%e183779184295%_
                             _%hd183780184298%_
                             _%tl183781184300%_
                             _%e183782184303%_
                             _%hd183783184306%_
                             _%tl183784184308%_)
                            (_%__match190003190004%_
                             _%e183755184231%_
                             _%hd183756184234%_
                             _%tl183757184236%_
                             _%e183758184239%_
                             _%hd183759184242%_
                             _%tl183760184244%_
                             _%e183761184247%_
                             _%hd183762184250%_
                             _%tl183763184252%_
                             _%e183764184255%_
                             _%hd183765184258%_
                             _%tl183766184260%_
                             _%e183767184263%_
                             _%hd183768184266%_
                             _%tl183769184268%_
                             _%e183770184271%_
                             _%hd183771184274%_
                             _%tl183772184276%_
                             _%e183773184279%_
                             _%hd183774184282%_
                             _%tl183775184284%_
                             _%e183776184287%_
                             _%hd183777184290%_
                             _%tl183778184292%_
                             _%e183779184295%_
                             _%hd183780184298%_
                             _%tl183781184300%_
                             _%e183782184303%_
                             _%hd183783184306%_
                             _%tl183784184308%_))))
                     (_%__match189913189914%_
                      (lambda (_%e183755184231%_
                               _%hd183756184234%_
                               _%tl183757184236%_
                               _%e183758184239%_
                               _%hd183759184242%_
                               _%tl183760184244%_
                               _%e183761184247%_
                               _%hd183762184250%_
                               _%tl183763184252%_
                               _%e183764184255%_
                               _%hd183765184258%_
                               _%tl183766184260%_
                               _%e183767184263%_
                               _%hd183768184266%_
                               _%tl183769184268%_
                               _%e183770184271%_
                               _%hd183771184274%_
                               _%tl183772184276%_
                               _%e183773184279%_
                               _%hd183774184282%_
                               _%tl183775184284%_
                               _%e183776184287%_
                               _%hd183777184290%_
                               _%tl183778184292%_
                               _%e183779184295%_
                               _%hd183780184298%_
                               _%tl183781184300%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd183780184298%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl183781184300%_))
                                (let ((_%e183782184303%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl183781184300%_))))
                                  (let ((_%tl183784184308%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183782184303%_)))
                                        (_%hd183783184306%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183782184303%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl183784184308%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl183778184292%_))
                                            (_%__match189925189926%_
                                             _%e183755184231%_
                                             _%hd183756184234%_
                                             _%tl183757184236%_
                                             _%e183758184239%_
                                             _%hd183759184242%_
                                             _%tl183760184244%_
                                             _%e183761184247%_
                                             _%hd183762184250%_
                                             _%tl183763184252%_
                                             _%e183764184255%_
                                             _%hd183765184258%_
                                             _%tl183766184260%_
                                             _%e183767184263%_
                                             _%hd183768184266%_
                                             _%tl183769184268%_
                                             _%e183770184271%_
                                             _%hd183771184274%_
                                             _%tl183772184276%_
                                             _%e183773184279%_
                                             _%hd183774184282%_
                                             _%tl183775184284%_
                                             _%e183776184287%_
                                             _%hd183777184290%_
                                             _%tl183778184292%_
                                             _%e183779184295%_
                                             _%hd183780184298%_
                                             _%tl183781184300%_
                                             _%e183782184303%_
                                             _%hd183783184306%_
                                             _%tl183784184308%_)
                                            (_%__match190003190004%_
                                             _%e183755184231%_
                                             _%hd183756184234%_
                                             _%tl183757184236%_
                                             _%e183758184239%_
                                             _%hd183759184242%_
                                             _%tl183760184244%_
                                             _%e183761184247%_
                                             _%hd183762184250%_
                                             _%tl183763184252%_
                                             _%e183764184255%_
                                             _%hd183765184258%_
                                             _%tl183766184260%_
                                             _%e183767184263%_
                                             _%hd183768184266%_
                                             _%tl183769184268%_
                                             _%e183770184271%_
                                             _%hd183771184274%_
                                             _%tl183772184276%_
                                             _%e183773184279%_
                                             _%hd183774184282%_
                                             _%tl183775184284%_
                                             _%e183776184287%_
                                             _%hd183777184290%_
                                             _%tl183778184292%_
                                             _%e183779184295%_
                                             _%hd183780184298%_
                                             _%tl183781184300%_
                                             _%e183782184303%_
                                             _%hd183783184306%_
                                             _%tl183784184308%_))
                                        (_%__match190127190128%_
                                         _%e183755184231%_
                                         _%hd183756184234%_
                                         _%tl183757184236%_
                                         _%e183758184239%_
                                         _%hd183759184242%_
                                         _%tl183760184244%_
                                         _%e183761184247%_
                                         _%hd183762184250%_
                                         _%tl183763184252%_
                                         _%e183764184255%_
                                         _%hd183765184258%_
                                         _%tl183766184260%_
                                         _%e183767184263%_
                                         _%hd183768184266%_
                                         _%tl183769184268%_
                                         _%e183770184271%_
                                         _%hd183771184274%_
                                         _%tl183772184276%_
                                         _%e183773184279%_
                                         _%hd183774184282%_
                                         _%tl183775184284%_
                                         _%e183776184287%_
                                         _%hd183777184290%_
                                         _%tl183778184292%_))))
                                (_%__match190127190128%_
                                 _%e183755184231%_
                                 _%hd183756184234%_
                                 _%tl183757184236%_
                                 _%e183758184239%_
                                 _%hd183759184242%_
                                 _%tl183760184244%_
                                 _%e183761184247%_
                                 _%hd183762184250%_
                                 _%tl183763184252%_
                                 _%e183764184255%_
                                 _%hd183765184258%_
                                 _%tl183766184260%_
                                 _%e183767184263%_
                                 _%hd183768184266%_
                                 _%tl183769184268%_
                                 _%e183770184271%_
                                 _%hd183771184274%_
                                 _%tl183772184276%_
                                 _%e183773184279%_
                                 _%hd183774184282%_
                                 _%tl183775184284%_
                                 _%e183776184287%_
                                 _%hd183777184290%_
                                 _%tl183778184292%_))
                            (_%__match190127190128%_
                             _%e183755184231%_
                             _%hd183756184234%_
                             _%tl183757184236%_
                             _%e183758184239%_
                             _%hd183759184242%_
                             _%tl183760184244%_
                             _%e183761184247%_
                             _%hd183762184250%_
                             _%tl183763184252%_
                             _%e183764184255%_
                             _%hd183765184258%_
                             _%tl183766184260%_
                             _%e183767184263%_
                             _%hd183768184266%_
                             _%tl183769184268%_
                             _%e183770184271%_
                             _%hd183771184274%_
                             _%tl183772184276%_
                             _%e183773184279%_
                             _%hd183774184282%_
                             _%tl183775184284%_
                             _%e183776184287%_
                             _%hd183777184290%_
                             _%tl183778184292%_))))
                     (_%__match189845189846%_
                      (lambda (_%e183704184352%_
                               _%hd183705184355%_
                               _%tl183706184357%_
                               _%e183707184360%_
                               _%hd183708184363%_
                               _%tl183709184365%_
                               _%e183710184368%_
                               _%hd183711184371%_
                               _%tl183712184373%_
                               _%e183713184376%_
                               _%hd183714184379%_
                               _%tl183715184381%_
                               _%e183716184384%_
                               _%hd183717184387%_
                               _%tl183718184389%_
                               _%e183719184392%_
                               _%hd183720184395%_
                               _%tl183721184397%_
                               _%e183722184400%_
                               _%hd183723184403%_
                               _%tl183724184405%_
                               _%e183725184408%_
                               _%hd183726184411%_
                               _%tl183727184413%_
                               _%e183728184416%_
                               _%hd183729184419%_
                               _%tl183730184421%_
                               _%e183731184424%_
                               _%hd183732184427%_
                               _%tl183733184429%_
                               _%e183734184432%_
                               _%hd183735184435%_
                               _%tl183736184437%_
                               _%e183737184440%_
                               _%hd183738184443%_
                               _%tl183739184445%_
                               _%e183740184448%_
                               _%hd183741184451%_
                               _%tl183742184453%_
                               _%__splice189638189639%_
                               _%target183743184456%_
                               _%tl183745184458%_)
                        (letrec ((_%loop183746184461%_
                                  (lambda (_%hd183744184464%_
                                           _%args183750184466%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd183744184464%_))
                                        (let ((_%e183747184468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd183744184464%_))))
                                          (let ((_%lp-tl183749184473%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183747184468%_)))
                                                (_%lp-hd183748184471%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183747184468%_))))
                                            (_%loop183746184461%_
                                             _%lp-tl183749184473%_
                                             (cons _%lp-hd183748184471%_
                                                   _%args183750184466%_))))
                                        (let ((_%args183751184476%_
                                               (reverse _%args183750184466%_)))
                                          (let ((_%g183699184478%_
                                                 _%args183751184476%_)
                                                (_%g183700184479%_
                                                 _%hd183741184451%_)
                                                (_%g183701184480%_
                                                 _%hd183732184427%_)
                                                (_%g183702184481%_
                                                 _%hd183723184403%_)
                                                (_%g183703184482%_
                                                 _%hd183714184379%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g183703184482%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g183702184481%_
                                                        'call-method))
                                                     (let ((__tmp190323
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self183643%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g183701184480%_
                                                        __tmp190323)))
                                                (_%__kont189636189637%_
                                                 _%g183699184478%_
                                                 _%g183700184479%_
                                                 _%g183701184480%_
                                                 _%g183702184481%_
                                                 _%g183703184482%_)
                                                (_%__kont189648189649%_))))))))
                          (_%loop183746184461%_ _%target183743184456%_ '()))))
                     (_%__match189803189804%_
                      (lambda (_%e183704184352%_
                               _%hd183705184355%_
                               _%tl183706184357%_
                               _%e183707184360%_
                               _%hd183708184363%_
                               _%tl183709184365%_
                               _%e183710184368%_
                               _%hd183711184371%_
                               _%tl183712184373%_
                               _%e183713184376%_
                               _%hd183714184379%_
                               _%tl183715184381%_
                               _%e183716184384%_
                               _%hd183717184387%_
                               _%tl183718184389%_
                               _%e183719184392%_
                               _%hd183720184395%_
                               _%tl183721184397%_
                               _%e183722184400%_
                               _%hd183723184403%_
                               _%tl183724184405%_
                               _%e183725184408%_
                               _%hd183726184411%_
                               _%tl183727184413%_
                               _%e183728184416%_
                               _%hd183729184419%_
                               _%tl183730184421%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd183729184419%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl183730184421%_))
                                (let ((_%e183731184424%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl183730184421%_))))
                                  (let ((_%tl183733184429%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183731184424%_)))
                                        (_%hd183732184427%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183731184424%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl183733184429%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl183727184413%_))
                                            (let ((_%e183734184432%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl183727184413%_))))
                                              (let ((_%tl183736184437%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183734184432%_)))
                                                    (_%hd183735184435%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183734184432%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd183735184435%_))
                                                    (let ((_%e183737184440%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd183735184435%_))))
                                                      (let ((_%tl183739184445%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e183737184440%_)))
                    (_%hd183738184443%_
                     (let () (declare (not safe)) (##car _%e183737184440%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd183738184443%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd183738184443%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183739184445%_))
                            (let ((_%e183740184448%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183739184445%_))))
                              (let ((_%tl183742184453%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183740184448%_)))
                                    (_%hd183741184451%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183740184448%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl183742184453%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl183736184437%_))
                                        (let ((_%__splice189638189639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl183736184437%_
                                                  '0))))
                                          (let ((_%tl183745184458%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice189638189639%_
                                                    '1)))
                                                (_%target183743184456%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice189638189639%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl183745184458%_))
                                                (_%__match189845189846%_
                                                 _%e183704184352%_
                                                 _%hd183705184355%_
                                                 _%tl183706184357%_
                                                 _%e183707184360%_
                                                 _%hd183708184363%_
                                                 _%tl183709184365%_
                                                 _%e183710184368%_
                                                 _%hd183711184371%_
                                                 _%tl183712184373%_
                                                 _%e183713184376%_
                                                 _%hd183714184379%_
                                                 _%tl183715184381%_
                                                 _%e183716184384%_
                                                 _%hd183717184387%_
                                                 _%tl183718184389%_
                                                 _%e183719184392%_
                                                 _%hd183720184395%_
                                                 _%tl183721184397%_
                                                 _%e183722184400%_
                                                 _%hd183723184403%_
                                                 _%tl183724184405%_
                                                 _%e183725184408%_
                                                 _%hd183726184411%_
                                                 _%tl183727184413%_
                                                 _%e183728184416%_
                                                 _%hd183729184419%_
                                                 _%tl183730184421%_
                                                 _%e183731184424%_
                                                 _%hd183732184427%_
                                                 _%tl183733184429%_
                                                 _%e183734184432%_
                                                 _%hd183735184435%_
                                                 _%tl183736184437%_
                                                 _%e183737184440%_
                                                 _%hd183738184443%_
                                                 _%tl183739184445%_
                                                 _%e183740184448%_
                                                 _%hd183741184451%_
                                                 _%tl183742184453%_
                                                 _%__splice189638189639%_
                                                 _%target183743184456%_
                                                 _%tl183745184458%_)
                                                (_%__kont189648189649%_))))
                                        (_%__kont189648189649%_))
                                    (_%__kont189648189649%_))))
                            (_%__kont189648189649%_))
                        (_%__kont189648189649%_))
                    (_%__kont189648189649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont189648189649%_))))
                                            (_%__match190127190128%_
                                             _%e183704184352%_
                                             _%hd183705184355%_
                                             _%tl183706184357%_
                                             _%e183707184360%_
                                             _%hd183708184363%_
                                             _%tl183709184365%_
                                             _%e183710184368%_
                                             _%hd183711184371%_
                                             _%tl183712184373%_
                                             _%e183713184376%_
                                             _%hd183714184379%_
                                             _%tl183715184381%_
                                             _%e183716184384%_
                                             _%hd183717184387%_
                                             _%tl183718184389%_
                                             _%e183719184392%_
                                             _%hd183720184395%_
                                             _%tl183721184397%_
                                             _%e183722184400%_
                                             _%hd183723184403%_
                                             _%tl183724184405%_
                                             _%e183725184408%_
                                             _%hd183726184411%_
                                             _%tl183727184413%_))
                                        (_%__match190127190128%_
                                         _%e183704184352%_
                                         _%hd183705184355%_
                                         _%tl183706184357%_
                                         _%e183707184360%_
                                         _%hd183708184363%_
                                         _%tl183709184365%_
                                         _%e183710184368%_
                                         _%hd183711184371%_
                                         _%tl183712184373%_
                                         _%e183713184376%_
                                         _%hd183714184379%_
                                         _%tl183715184381%_
                                         _%e183716184384%_
                                         _%hd183717184387%_
                                         _%tl183718184389%_
                                         _%e183719184392%_
                                         _%hd183720184395%_
                                         _%tl183721184397%_
                                         _%e183722184400%_
                                         _%hd183723184403%_
                                         _%tl183724184405%_
                                         _%e183725184408%_
                                         _%hd183726184411%_
                                         _%tl183727184413%_))))
                                (_%__match190127190128%_
                                 _%e183704184352%_
                                 _%hd183705184355%_
                                 _%tl183706184357%_
                                 _%e183707184360%_
                                 _%hd183708184363%_
                                 _%tl183709184365%_
                                 _%e183710184368%_
                                 _%hd183711184371%_
                                 _%tl183712184373%_
                                 _%e183713184376%_
                                 _%hd183714184379%_
                                 _%tl183715184381%_
                                 _%e183716184384%_
                                 _%hd183717184387%_
                                 _%tl183718184389%_
                                 _%e183719184392%_
                                 _%hd183720184395%_
                                 _%tl183721184397%_
                                 _%e183722184400%_
                                 _%hd183723184403%_
                                 _%tl183724184405%_
                                 _%e183725184408%_
                                 _%hd183726184411%_
                                 _%tl183727184413%_))
                            (_%__match189913189914%_
                             _%e183704184352%_
                             _%hd183705184355%_
                             _%tl183706184357%_
                             _%e183707184360%_
                             _%hd183708184363%_
                             _%tl183709184365%_
                             _%e183710184368%_
                             _%hd183711184371%_
                             _%tl183712184373%_
                             _%e183713184376%_
                             _%hd183714184379%_
                             _%tl183715184381%_
                             _%e183716184384%_
                             _%hd183717184387%_
                             _%tl183718184389%_
                             _%e183719184392%_
                             _%hd183720184395%_
                             _%tl183721184397%_
                             _%e183722184400%_
                             _%hd183723184403%_
                             _%tl183724184405%_
                             _%e183725184408%_
                             _%hd183726184411%_
                             _%tl183727184413%_
                             _%e183728184416%_
                             _%hd183729184419%_
                             _%tl183730184421%_))))
                     (_%__match189735189736%_
                      (lambda (_%e183660184542%_
                               _%hd183661184545%_
                               _%tl183662184547%_
                               _%e183663184550%_
                               _%hd183664184553%_
                               _%tl183665184555%_
                               _%e183666184558%_
                               _%hd183667184561%_
                               _%tl183668184563%_
                               _%e183669184566%_
                               _%hd183670184569%_
                               _%tl183671184571%_
                               _%e183672184574%_
                               _%hd183673184577%_
                               _%tl183674184579%_
                               _%e183675184582%_
                               _%hd183676184585%_
                               _%tl183677184587%_
                               _%e183678184590%_
                               _%hd183679184593%_
                               _%tl183680184595%_
                               _%e183681184598%_
                               _%hd183682184601%_
                               _%tl183683184603%_
                               _%e183684184606%_
                               _%hd183685184609%_
                               _%tl183686184611%_
                               _%e183687184614%_
                               _%hd183688184617%_
                               _%tl183689184619%_
                               _%__splice189634189635%_
                               _%target183690184622%_
                               _%tl183692184624%_)
                        (letrec ((_%loop183693184627%_
                                  (lambda (_%hd183691184630%_
                                           _%args183697184632%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd183691184630%_))
                                        (let ((_%e183694184634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd183691184630%_))))
                                          (let ((_%lp-tl183696184639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183694184634%_)))
                                                (_%lp-hd183695184637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183694184634%_))))
                                            (_%loop183693184627%_
                                             _%lp-tl183696184639%_
                                             (cons _%lp-hd183695184637%_
                                                   _%args183697184632%_))))
                                        (let ((_%args183698184642%_
                                               (reverse _%args183697184632%_)))
                                          (let ((_%g183656184644%_
                                                 _%args183698184642%_)
                                                (_%g183657184645%_
                                                 _%hd183688184617%_)
                                                (_%g183658184646%_
                                                 _%hd183679184593%_)
                                                (_%g183659184647%_
                                                 _%hd183670184569%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g183659184647%_
                                                        'call-method))
                                                     (let ((__tmp190324
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self183643%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g183658184646%_
                                                        __tmp190324)))
                                                (_%__kont189632189633%_
                                                 _%g183656184644%_
                                                 _%g183657184645%_
                                                 _%g183658184646%_
                                                 _%g183659184647%_)
                                                (_%__match189923189924%_
                                                 _%e183660184542%_
                                                 _%hd183661184545%_
                                                 _%tl183662184547%_
                                                 _%e183663184550%_
                                                 _%hd183664184553%_
                                                 _%tl183665184555%_
                                                 _%e183666184558%_
                                                 _%hd183667184561%_
                                                 _%tl183668184563%_
                                                 _%e183669184566%_
                                                 _%hd183670184569%_
                                                 _%tl183671184571%_
                                                 _%e183672184574%_
                                                 _%hd183673184577%_
                                                 _%tl183674184579%_
                                                 _%e183675184582%_
                                                 _%hd183676184585%_
                                                 _%tl183677184587%_
                                                 _%e183678184590%_
                                                 _%hd183679184593%_
                                                 _%tl183680184595%_
                                                 _%e183681184598%_
                                                 _%hd183682184601%_
                                                 _%tl183683184603%_
                                                 _%e183684184606%_
                                                 _%hd183685184609%_
                                                 _%tl183686184611%_
                                                 _%e183687184614%_
                                                 _%hd183688184617%_
                                                 _%tl183689184619%_))))))))
                          (_%loop183693184627%_ _%target183690184622%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx189630189631%_))
                    (let ((_%e183660184542%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx189630189631%_))))
                      (let ((_%tl183662184547%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e183660184542%_)))
                            (_%hd183661184545%_
                             (let ()
                               (declare (not safe))
                               (##car _%e183660184542%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183662184547%_))
                            (let ((_%e183663184550%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183662184547%_))))
                              (let ((_%tl183665184555%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183663184550%_)))
                                    (_%hd183664184553%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183663184550%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd183664184553%_))
                                    (let ((_%e183666184558%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd183664184553%_))))
                                      (let ((_%tl183668184563%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e183666184558%_)))
                                            (_%hd183667184561%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e183666184558%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd183667184561%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd183667184561%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl183668184563%_))
                                                    (let ((_%e183669184566%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl183668184563%_))))
                                                      (let ((_%tl183671184571%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e183669184566%_)))
                    (_%hd183670184569%_
                     (let () (declare (not safe)) (##car _%e183669184566%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl183671184571%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl183665184555%_))
                        (let ((_%e183672184574%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl183665184555%_))))
                          (let ((_%tl183674184579%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e183672184574%_)))
                                (_%hd183673184577%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e183672184574%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd183673184577%_))
                                (let ((_%e183675184582%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd183673184577%_))))
                                  (let ((_%tl183677184587%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183675184582%_)))
                                        (_%hd183676184585%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183675184582%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd183676184585%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd183676184585%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl183677184587%_))
                                                (let ((_%e183678184590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl183677184587%_))))
                                                  (let ((_%tl183680184595%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e183678184590%_)))
                                                        (_%hd183679184593%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e183678184590%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl183680184595%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl183674184579%_))
                                                            (let ((_%e183681184598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl183674184579%_))))
                      (let ((_%tl183683184603%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e183681184598%_)))
                            (_%hd183682184601%_
                             (let ()
                               (declare (not safe))
                               (##car _%e183681184598%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd183682184601%_))
                            (let ((_%e183684184606%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd183682184601%_))))
                              (let ((_%tl183686184611%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183684184606%_)))
                                    (_%hd183685184609%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183684184606%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd183685184609%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd183685184609%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl183686184611%_))
                                            (let ((_%e183687184614%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl183686184611%_))))
                                              (let ((_%tl183689184619%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183687184614%_)))
                                                    (_%hd183688184617%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183687184614%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl183689184619%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl183683184603%_))
                                                        (let ((_%__splice189634189635%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl183683184603%_
                          '0))))
                  (let ((_%tl183692184624%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice189634189635%_ '1)))
                        (_%target183690184622%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice189634189635%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl183692184624%_))
                        (_%__match189735189736%_
                         _%e183660184542%_
                         _%hd183661184545%_
                         _%tl183662184547%_
                         _%e183663184550%_
                         _%hd183664184553%_
                         _%tl183665184555%_
                         _%e183666184558%_
                         _%hd183667184561%_
                         _%tl183668184563%_
                         _%e183669184566%_
                         _%hd183670184569%_
                         _%tl183671184571%_
                         _%e183672184574%_
                         _%hd183673184577%_
                         _%tl183674184579%_
                         _%e183675184582%_
                         _%hd183676184585%_
                         _%tl183677184587%_
                         _%e183678184590%_
                         _%hd183679184593%_
                         _%tl183680184595%_
                         _%e183681184598%_
                         _%hd183682184601%_
                         _%tl183683184603%_
                         _%e183684184606%_
                         _%hd183685184609%_
                         _%tl183686184611%_
                         _%e183687184614%_
                         _%hd183688184617%_
                         _%tl183689184619%_
                         _%__splice189634189635%_
                         _%target183690184622%_
                         _%tl183692184624%_)
                        (_%__match189923189924%_
                         _%e183660184542%_
                         _%hd183661184545%_
                         _%tl183662184547%_
                         _%e183663184550%_
                         _%hd183664184553%_
                         _%tl183665184555%_
                         _%e183666184558%_
                         _%hd183667184561%_
                         _%tl183668184563%_
                         _%e183669184566%_
                         _%hd183670184569%_
                         _%tl183671184571%_
                         _%e183672184574%_
                         _%hd183673184577%_
                         _%tl183674184579%_
                         _%e183675184582%_
                         _%hd183676184585%_
                         _%tl183677184587%_
                         _%e183678184590%_
                         _%hd183679184593%_
                         _%tl183680184595%_
                         _%e183681184598%_
                         _%hd183682184601%_
                         _%tl183683184603%_
                         _%e183684184606%_
                         _%hd183685184609%_
                         _%tl183686184611%_
                         _%e183687184614%_
                         _%hd183688184617%_
                         _%tl183689184619%_))))
                (_%__match189923189924%_
                 _%e183660184542%_
                 _%hd183661184545%_
                 _%tl183662184547%_
                 _%e183663184550%_
                 _%hd183664184553%_
                 _%tl183665184555%_
                 _%e183666184558%_
                 _%hd183667184561%_
                 _%tl183668184563%_
                 _%e183669184566%_
                 _%hd183670184569%_
                 _%tl183671184571%_
                 _%e183672184574%_
                 _%hd183673184577%_
                 _%tl183674184579%_
                 _%e183675184582%_
                 _%hd183676184585%_
                 _%tl183677184587%_
                 _%e183678184590%_
                 _%hd183679184593%_
                 _%tl183680184595%_
                 _%e183681184598%_
                 _%hd183682184601%_
                 _%tl183683184603%_
                 _%e183684184606%_
                 _%hd183685184609%_
                 _%tl183686184611%_
                 _%e183687184614%_
                 _%hd183688184617%_
                 _%tl183689184619%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match190127190128%_
                                                     _%e183660184542%_
                                                     _%hd183661184545%_
                                                     _%tl183662184547%_
                                                     _%e183663184550%_
                                                     _%hd183664184553%_
                                                     _%tl183665184555%_
                                                     _%e183666184558%_
                                                     _%hd183667184561%_
                                                     _%tl183668184563%_
                                                     _%e183669184566%_
                                                     _%hd183670184569%_
                                                     _%tl183671184571%_
                                                     _%e183672184574%_
                                                     _%hd183673184577%_
                                                     _%tl183674184579%_
                                                     _%e183675184582%_
                                                     _%hd183676184585%_
                                                     _%tl183677184587%_
                                                     _%e183678184590%_
                                                     _%hd183679184593%_
                                                     _%tl183680184595%_
                                                     _%e183681184598%_
                                                     _%hd183682184601%_
                                                     _%tl183683184603%_))))
                                            (_%__match190127190128%_
                                             _%e183660184542%_
                                             _%hd183661184545%_
                                             _%tl183662184547%_
                                             _%e183663184550%_
                                             _%hd183664184553%_
                                             _%tl183665184555%_
                                             _%e183666184558%_
                                             _%hd183667184561%_
                                             _%tl183668184563%_
                                             _%e183669184566%_
                                             _%hd183670184569%_
                                             _%tl183671184571%_
                                             _%e183672184574%_
                                             _%hd183673184577%_
                                             _%tl183674184579%_
                                             _%e183675184582%_
                                             _%hd183676184585%_
                                             _%tl183677184587%_
                                             _%e183678184590%_
                                             _%hd183679184593%_
                                             _%tl183680184595%_
                                             _%e183681184598%_
                                             _%hd183682184601%_
                                             _%tl183683184603%_))
                                        (_%__match189803189804%_
                                         _%e183660184542%_
                                         _%hd183661184545%_
                                         _%tl183662184547%_
                                         _%e183663184550%_
                                         _%hd183664184553%_
                                         _%tl183665184555%_
                                         _%e183666184558%_
                                         _%hd183667184561%_
                                         _%tl183668184563%_
                                         _%e183669184566%_
                                         _%hd183670184569%_
                                         _%tl183671184571%_
                                         _%e183672184574%_
                                         _%hd183673184577%_
                                         _%tl183674184579%_
                                         _%e183675184582%_
                                         _%hd183676184585%_
                                         _%tl183677184587%_
                                         _%e183678184590%_
                                         _%hd183679184593%_
                                         _%tl183680184595%_
                                         _%e183681184598%_
                                         _%hd183682184601%_
                                         _%tl183683184603%_
                                         _%e183684184606%_
                                         _%hd183685184609%_
                                         _%tl183686184611%_))
                                    (_%__match190127190128%_
                                     _%e183660184542%_
                                     _%hd183661184545%_
                                     _%tl183662184547%_
                                     _%e183663184550%_
                                     _%hd183664184553%_
                                     _%tl183665184555%_
                                     _%e183666184558%_
                                     _%hd183667184561%_
                                     _%tl183668184563%_
                                     _%e183669184566%_
                                     _%hd183670184569%_
                                     _%tl183671184571%_
                                     _%e183672184574%_
                                     _%hd183673184577%_
                                     _%tl183674184579%_
                                     _%e183675184582%_
                                     _%hd183676184585%_
                                     _%tl183677184587%_
                                     _%e183678184590%_
                                     _%hd183679184593%_
                                     _%tl183680184595%_
                                     _%e183681184598%_
                                     _%hd183682184601%_
                                     _%tl183683184603%_))))
                            (_%__match190127190128%_
                             _%e183660184542%_
                             _%hd183661184545%_
                             _%tl183662184547%_
                             _%e183663184550%_
                             _%hd183664184553%_
                             _%tl183665184555%_
                             _%e183666184558%_
                             _%hd183667184561%_
                             _%tl183668184563%_
                             _%e183669184566%_
                             _%hd183670184569%_
                             _%tl183671184571%_
                             _%e183672184574%_
                             _%hd183673184577%_
                             _%tl183674184579%_
                             _%e183675184582%_
                             _%hd183676184585%_
                             _%tl183677184587%_
                             _%e183678184590%_
                             _%hd183679184593%_
                             _%tl183680184595%_
                             _%e183681184598%_
                             _%hd183682184601%_
                             _%tl183683184603%_))))
                    (_%__match190065190066%_
                     _%e183660184542%_
                     _%hd183661184545%_
                     _%tl183662184547%_
                     _%e183663184550%_
                     _%hd183664184553%_
                     _%tl183665184555%_
                     _%e183666184558%_
                     _%hd183667184561%_
                     _%tl183668184563%_
                     _%e183669184566%_
                     _%hd183670184569%_
                     _%tl183671184571%_
                     _%e183672184574%_
                     _%hd183673184577%_
                     _%tl183674184579%_
                     _%e183675184582%_
                     _%hd183676184585%_
                     _%tl183677184587%_
                     _%e183678184590%_
                     _%hd183679184593%_
                     _%tl183680184595%_))
                (_%__kont189648189649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont189648189649%_))
                                            (_%__kont189648189649%_))
                                        (_%__kont189648189649%_))))
                                (_%__kont189648189649%_))))
                        (_%__kont189648189649%_))
                    (_%__kont189648189649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont189648189649%_))
                                                (_%__kont189648189649%_))
                                            (_%__kont189648189649%_))))
                                    (_%__kont189648189649%_))))
                            (_%__kont189648189649%_))))
                    (_%__kont189648189649%_))))))))))
