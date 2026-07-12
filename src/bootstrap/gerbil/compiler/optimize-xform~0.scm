(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1783878479)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp217983 (list gxc#::void::t))
            (__tmp217982 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp217983
         '()
         __tmp217982
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args217967%_
        (apply make-instance gxc#::collect-mutators::t _%$args217967%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp217984
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#define-values
                  gxc#apply-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#define-syntax
                  gxc#apply-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#call
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#call-unchecked
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#set!
                  gxc#collect-mutators-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-instance?
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-instance?
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-unchecked-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-unchecked-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-mutators::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp217984)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx217959%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self217962%_
                (let ((__obj217970
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj217970))
               (__tmp217985
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self217962%_ _%stx217959%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp217985
           gxc#current-compile-method
           _%self217962%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp217987 (list gxc#::basic-xform-expression::t))
            (__tmp217986 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp217987
         '(id new-id)
         __tmp217986
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args217956%_
        (apply make-instance gxc#::expression-subst::t _%$args217956%_)))
    (define gxc#::expression-subst-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst::t 'new-id)))
    (define gxc#::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst::t 'new-id)))
    (define gxc#&::expression-subst-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::expression-subst::t
         'new-id)))
    (define gxc#&::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::expression-subst::t
         'new-id)))
    (define gxc#::expression-subst-bind-methods!
      (let ((__tmp217988
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#ref
                  gxc#expression-subst-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#set!
                  gxc#expression-subst-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::expression-subst::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp217988)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords217928%_
               _%$%id217924217929%_
               _%$%new-id217925217930%_
               _%stx217931%_)
        (let* ((_%id217934%_
                (if (eq? _%$%id217924217929%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%$%id217924217929%_))
               (_%new-id217936%_
                (if (eq? _%$%new-id217925217930%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%$%new-id217925217930%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self217938%_
                  (let ((__obj217972
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj217972
                       _%id217934%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj217972
                       _%new-id217936%_
                       '2
                       '#f
                       '#f))
                    __obj217972))
                 (__tmp217989
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self217938%_ _%stx217931%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp217989
             gxc#current-compile-method
             _%self217938%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords217945%_ . _%args217946%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords217945%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords217945%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords217945%_
                  'new-id:
                  absent-value))
               _%args217946%_)))
    (define gxc#apply-expression-subst
      (lambda _%$%args217926217952%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%$%args217926217952%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp217991 (list gxc#::basic-xform-expression::t))
            (__tmp217990 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp217991
         '(subst)
         __tmp217990
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args217920%_
        (apply make-instance gxc#::expression-subst*::t _%$args217920%_)))
    (define gxc#::expression-subst*-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst*::t 'subst)))
    (define gxc#::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst*::t 'subst)))
    (define gxc#&::expression-subst*-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::expression-subst*::t
         'subst)))
    (define gxc#&::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::expression-subst*::t
         'subst)))
    (define gxc#::expression-subst*-bind-methods!
      (let ((__tmp217992
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#ref
                  gxc#expression-subst*-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#set!
                  gxc#expression-subst*-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::expression-subst*::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp217992)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords217895%_ _%$%subst217892217896%_ _%stx217897%_)
        (let ((_%subst217900%_
               (if (eq? _%$%subst217892217896%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst217892217896%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self217902%_
                  (let ((__obj217974
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj217974
                       _%subst217900%_
                       '1
                       '#f
                       '#f))
                    __obj217974))
                 (__tmp217993
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self217902%_ _%stx217897%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp217993
             gxc#current-compile-method
             _%self217902%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords217909%_ . _%args217910%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords217909%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords217909%_
                  'subst:
                  absent-value))
               _%args217910%_)))
    (define gxc#apply-expression-subst*
      (lambda _%$%args217893217916%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%$%args217893217916%_)))
    (define gxc#::inline-subst::t
      (let ((__tmp217995 (list gxc#::basic-xform-expression::t))
            (__tmp217994 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::inline-subst::t
         '::inline-subst
         __tmp217995
         '(subst)
         __tmp217994
         '#f)))
    (define gxc#::inline-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::inline-subst::t)))
    (define gxc#make-::inline-subst
      (lambda _%$args217888%_
        (apply make-instance gxc#::inline-subst::t _%$args217888%_)))
    (define gxc#::inline-subst-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::inline-subst::t 'subst)))
    (define gxc#::inline-subst-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::inline-subst::t 'subst)))
    (define gxc#&::inline-subst-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::inline-subst::t 'subst)))
    (define gxc#&::inline-subst-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::inline-subst::t 'subst)))
    (define gxc#::inline-subst-bind-methods!
      (let ((__tmp217996
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::inline-subst::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::inline-subst::t
                  '%#ref
                  gxc#inline-subst-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::inline-subst::t
                  '%#set!
                  gxc#inline-subst-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::inline-subst::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp217996)))
    (define gxc#apply-inline-subst__%
      (lambda (_%@@keywords217863%_ _%$%subst217860217864%_ _%stx217865%_)
        (let ((_%subst217868%_
               (if (eq? _%$%subst217860217864%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst217860217864%_)))
          (force gxc#::inline-subst-bind-methods!)
          (let* ((_%self217870%_
                  (let ((__obj217976
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::inline-subst::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj217976
                       _%subst217868%_
                       '1
                       '#f
                       '#f))
                    __obj217976))
                 (__tmp217997
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self217870%_ _%stx217865%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp217997
             gxc#current-compile-method
             _%self217870%_)))))
    (define gxc#apply-inline-subst__@
      (lambda (_%@@keywords217877%_ . _%args217878%_)
        (apply gxc#apply-inline-subst__%
               _%@@keywords217877%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords217877%_
                  'subst:
                  absent-value))
               _%args217878%_)))
    (define gxc#apply-inline-subst
      (lambda _%$%args217861217884%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-inline-subst__@
               _%$%args217861217884%_)))
    (define gxc#::find-expression::t
      (let ((__tmp217998 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp217998
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args217856%_
        (apply make-instance gxc#::find-expression::t _%$args217856%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp217999
             (lambda ()
               (force gxc#::false-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#begin
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#let-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#letrec-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#letrec*-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#call
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#call-unchecked
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#if
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-instance?
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-instance?
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-set!
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-set!
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-unchecked-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-unchecked-set!
                  gxc#find-body%)))))
        (declare (not safe))
        (__make-atomic-promise __tmp217999)))
    (define gxc#::find-var-refs::t
      (let ((__tmp218001 (list gxc#::find-expression::t))
            (__tmp218000 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp218001
         '(ids)
         __tmp218000
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args217852%_
        (apply make-instance gxc#::find-var-refs::t _%$args217852%_)))
    (define gxc#::find-var-refs-ids
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-bind-methods!
      (let ((__tmp218002
             (lambda ()
               (force gxc#::find-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-var-refs::t
                  '%#ref
                  gxc#find-var-refs-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-var-refs::t
                  '%#set!
                  gxc#find-var-refs-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::find-var-refs::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp218002)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords217827%_ _%$%ids217824217828%_ _%stx217829%_)
        (let ((_%ids217832%_
               (if (eq? _%$%ids217824217828%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%$%ids217824217828%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self217834%_
                  (let ((__obj217979
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj217979
                       _%ids217832%_
                       '1
                       '#f
                       '#f))
                    __obj217979))
                 (__tmp218003
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self217834%_ _%stx217829%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp218003
             gxc#current-compile-method
             _%self217834%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords217841%_ . _%args217842%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords217841%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords217841%_ 'ids: absent-value))
               _%args217842%_)))
    (define gxc#apply-find-var-refs
      (lambda _%$%args217825217848%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%$%args217825217848%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp218005 (list gxc#::collect-expression-refs::t))
            (__tmp218004 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp218005
         '()
         __tmp218004
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args217820%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args217820%_)))
    (define gxc#::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-runtime-refs::t 'table)))
    (define gxc#::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-runtime-refs::t 'table)))
    (define gxc#&::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#&::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#::collect-runtime-refs-bind-methods!
      (let ((__tmp218006
             (lambda ()
               (force gxc#::collect-expression-refs-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-runtime-refs::t
                  '%#ref
                  gxc#collect-runtime-refs-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-runtime-refs::t
                  '%#set!
                  gxc#collect-runtime-refs-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-runtime-refs::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp218006)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords217795%_ _%$%table217792217796%_ _%stx217797%_)
        (let ((_%table217800%_
               (if (eq? _%$%table217792217796%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table217792217796%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self217802%_
                  (let ((__obj217981
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj217981
                       _%table217800%_
                       '1
                       '#f
                       '#f))
                    __obj217981))
                 (__tmp218007
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self217802%_ _%stx217797%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp218007
             gxc#current-compile-method
             _%self217802%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords217809%_ . _%args217810%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords217809%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords217809%_
                  'table:
                  absent-value))
               _%args217810%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%$%args217793217816%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%$%args217793217816%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self217721%_ _%stx217722%_)
        (let* ((_%$%g217724217741%_
                (lambda (_%$%g217725217738%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217725217738%_))))
               (_%$%g217723217788%_
                (lambda (_%$%g217725217744%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217725217744%_))
                      (let ((_%$%e217728217746%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217725217744%_))))
                        (let ((_%$%hd217729217749%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217728217746%_)))
                              (_%$%tl217730217751%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217728217746%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217730217751%_))
                              (let ((_%$%e217731217754%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217730217751%_))))
                                (let ((_%$%hd217732217757%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217731217754%_)))
                                      (_%$%tl217733217759%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217731217754%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl217733217759%_))
                                      (let ((_%$%e217734217762%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl217733217759%_))))
                                        (let ((_%$%hd217735217765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e217734217762%_)))
                                              (_%$%tl217736217767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e217734217762%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl217736217767%_))
                                              (let ((_%sym217786%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd217732217757%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"collect mutator "
                                                   _%sym217786%_))
                                                (let ((__tmp218008
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#current-compile-mutators))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp218008
                                                   _%sym217786%_
                                                   '#t))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self217721%_
                                                   _%$%hd217735217765%_)))
                                              (_%$%g217724217741%_
                                               _%$%g217725217744%_))))
                                      (_%$%g217724217741%_
                                       _%$%g217725217744%_))))
                              (_%$%g217724217741%_ _%$%g217725217744%_))))
                      (_%$%g217724217741%_ _%$%g217725217744%_)))))
          (_%$%g217723217788%_ _%stx217722%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self217669%_ _%stx217670%_)
        (let* ((_%$%g217672217685%_
                (lambda (_%$%g217673217682%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217673217682%_))))
               (_%$%g217671217718%_
                (lambda (_%$%g217673217688%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217673217688%_))
                      (let ((_%$%e217675217690%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217673217688%_))))
                        (let ((_%$%hd217676217693%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217675217690%_)))
                              (_%$%tl217677217695%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217675217690%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217677217695%_))
                              (let ((_%$%e217678217698%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217677217695%_))))
                                (let ((_%$%hd217679217701%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217678217698%_)))
                                      (_%$%tl217680217703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217678217698%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl217680217703%_))
                                      (if (let ((__tmp218009
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self217669%_
                                                    'id))))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             _%$%hd217679217701%_
                                             __tmp218009))
                                          (let ((__tmp218010
                                                 (cons '%#ref
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (slot-ref__0 _%self217669%_ 'new-id))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp218010
                                             _%stx217670%_))
                                          _%stx217670%_)
                                      (_%$%g217672217685%_
                                       _%$%g217673217688%_))))
                              (_%$%g217672217685%_ _%$%g217673217688%_))))
                      (_%$%g217672217685%_ _%$%g217673217688%_)))))
          (_%$%g217671217718%_ _%stx217670%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self217609%_ _%stx217610%_)
        (let* ((_%$%g217612217625%_
                (lambda (_%$%g217613217622%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217613217622%_))))
               (_%$%g217611217666%_
                (lambda (_%$%g217613217628%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217613217628%_))
                      (let ((_%$%e217615217630%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217613217628%_))))
                        (let ((_%$%hd217616217633%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217615217630%_)))
                              (_%$%tl217617217635%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217615217630%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217617217635%_))
                              (let ((_%$%e217618217638%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217617217635%_))))
                                (let ((_%$%hd217619217641%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217618217638%_)))
                                      (_%$%tl217620217643%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217618217638%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl217620217643%_))
                                      (let ((_%$e217660%_
                                             (let ((__tmp218012
                                                    (lambda (_%sub217658%_)
                                                      (let ((__tmp218013
                                                             (car _%sub217658%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd217619217641%_
                                                         __tmp218013))))
                                                   (__tmp218011
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self217609%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp218012
                                                       __tmp218011))))
                                        (if _%$e217660%_
                                            (let ((__tmp218014
                                                   (cons '%#ref
                                                         (cons (cdr _%$e217660%_)
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp218014
                                               _%stx217610%_))
                                            _%stx217610%_))
                                      (_%$%g217612217625%_
                                       _%$%g217613217628%_))))
                              (_%$%g217612217625%_ _%$%g217613217628%_))))
                      (_%$%g217612217625%_ _%$%g217613217628%_)))))
          (_%$%g217611217666%_ _%stx217610%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self217538%_ _%stx217539%_)
        (let* ((_%$%g217541217558%_
                (lambda (_%$%g217542217555%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217542217555%_))))
               (_%$%g217540217606%_
                (lambda (_%$%g217542217561%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217542217561%_))
                      (let ((_%$%e217545217563%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217542217561%_))))
                        (let ((_%$%hd217546217566%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217545217563%_)))
                              (_%$%tl217547217568%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217545217563%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217547217568%_))
                              (let ((_%$%e217548217571%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217547217568%_))))
                                (let ((_%$%hd217549217574%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217548217571%_)))
                                      (_%$%tl217550217576%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217548217571%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl217550217576%_))
                                      (let ((_%$%e217551217579%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl217550217576%_))))
                                        (let ((_%$%hd217552217582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e217551217579%_)))
                                              (_%$%tl217553217584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e217551217579%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl217553217584%_))
                                              (let ((_%new-expr217603%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self217538%_
                                                        _%$%hd217552217582%_)))
                                                    (_%new-xid217604%_
                                                     (if (let ((__tmp218015
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self217538%_ 'id))))
                   (declare (not safe))
                   (gx#free-identifier=? _%$%hd217549217574%_ __tmp218015))
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self217538%_ 'new-id))
                 _%$%hd217549217574%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp218016
                                                       (cons '%#set!
                                                             (cons _%new-xid217604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr217603%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp218016
                                                   _%stx217539%_)))
                                              (_%$%g217541217558%_
                                               _%$%g217542217561%_))))
                                      (_%$%g217541217558%_
                                       _%$%g217542217561%_))))
                              (_%$%g217541217558%_ _%$%g217542217561%_))))
                      (_%$%g217541217558%_ _%$%g217542217561%_)))))
          (_%$%g217540217606%_ _%stx217539%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self217461%_ _%stx217462%_)
        (let* ((_%$%g217464217481%_
                (lambda (_%$%g217465217478%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217465217478%_))))
               (_%$%g217463217535%_
                (lambda (_%$%g217465217484%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217465217484%_))
                      (let ((_%$%e217468217486%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217465217484%_))))
                        (let ((_%$%hd217469217489%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217468217486%_)))
                              (_%$%tl217470217491%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217468217486%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217470217491%_))
                              (let ((_%$%e217471217494%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217470217491%_))))
                                (let ((_%$%hd217472217497%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217471217494%_)))
                                      (_%$%tl217473217499%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217471217494%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl217473217499%_))
                                      (let ((_%$%e217474217502%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl217473217499%_))))
                                        (let ((_%$%hd217475217505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e217474217502%_)))
                                              (_%$%tl217476217507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e217474217502%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl217476217507%_))
                                              (let ((_%new-expr217532%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self217461%_
                                                        _%$%hd217475217505%_)))
                                                    (_%new-xid217533%_
                                                     (let ((_%$e217528%_
                                                            (let ((__tmp218018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%sub217526%_)
                             (let ((__tmp218019 (car _%sub217526%_)))
                               (declare (not safe))
                               (gx#free-identifier=?
                                _%$%hd217472217497%_
                                __tmp218019))))
                          (__tmp218017
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self217461%_ 'subst))))
                      (declare (not safe))
                      (__find __tmp218018 __tmp218017))))
               (if _%$e217528%_ (cdr _%$e217528%_) _%$%hd217472217497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp218020
                                                       (cons '%#set!
                                                             (cons _%new-xid217533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr217532%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp218020
                                                   _%stx217462%_)))
                                              (_%$%g217464217481%_
                                               _%$%g217465217484%_))))
                                      (_%$%g217464217481%_
                                       _%$%g217465217484%_))))
                              (_%$%g217464217481%_ _%$%g217465217484%_))))
                      (_%$%g217464217481%_ _%$%g217465217484%_)))))
          (_%$%g217463217535%_ _%stx217462%_))))
    (define gxc#inline-subst-ref%
      (lambda (_%self217401%_ _%stx217402%_)
        (let* ((_%$%g217404217417%_
                (lambda (_%$%g217405217414%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217405217414%_))))
               (_%$%g217403217458%_
                (lambda (_%$%g217405217420%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217405217420%_))
                      (let ((_%$%e217407217422%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217405217420%_))))
                        (let ((_%$%hd217408217425%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217407217422%_)))
                              (_%$%tl217409217427%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217407217422%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217409217427%_))
                              (let ((_%$%e217410217430%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217409217427%_))))
                                (let ((_%$%hd217411217433%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217410217430%_)))
                                      (_%$%tl217412217435%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217410217430%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl217412217435%_))
                                      (let ((_%$e217452%_
                                             (let ((__tmp218022
                                                    (lambda (_%sub217450%_)
                                                      (let ((__tmp218023
                                                             (car _%sub217450%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd217411217433%_
                                                         __tmp218023))))
                                                   (__tmp218021
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self217401%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp218022
                                                       __tmp218021))))
                                        (if _%$e217452%_
                                            (let ((__tmp218024
                                                   (cdr _%$e217452%_)))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp218024
                                               _%stx217402%_))
                                            _%stx217402%_))
                                      (_%$%g217404217417%_
                                       _%$%g217405217420%_))))
                              (_%$%g217404217417%_ _%$%g217405217420%_))))
                      (_%$%g217404217417%_ _%$%g217405217420%_)))))
          (_%$%g217403217458%_ _%stx217402%_))))
    (define gxc#inline-subst-setq%
      (lambda (_%self217331%_ _%stx217332%_)
        (let* ((_%$%g217334217351%_
                (lambda (_%$%g217335217348%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217335217348%_))))
               (_%$%g217333217398%_
                (lambda (_%$%g217335217354%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217335217354%_))
                      (let ((_%$%e217338217356%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217335217354%_))))
                        (let ((_%$%hd217339217359%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217338217356%_)))
                              (_%$%tl217340217361%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217338217356%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217340217361%_))
                              (let ((_%$%e217341217364%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217340217361%_))))
                                (let ((_%$%hd217342217367%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217341217364%_)))
                                      (_%$%tl217343217369%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217341217364%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl217343217369%_))
                                      (let ((_%$%e217344217372%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl217343217369%_))))
                                        (let ((_%$%hd217345217375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e217344217372%_)))
                                              (_%$%tl217346217377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e217344217372%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl217346217377%_))
                                              (if (let ((__tmp218026
                                                         (lambda (_%sub217396%_)
                                                           (let ((__tmp218027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (car _%sub217396%_)))
                     (declare (not safe))
                     (gx#free-identifier=? _%$%hd217342217367%_ __tmp218027))))
                (__tmp218025
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self217331%_ 'subst))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__find __tmp218026
                                                            __tmp218025))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"mutating inline substitution"
                                                     _%stx217332%_
                                                     _%$%hd217342217367%_))
                                                  (let ((__tmp218028
                                                         (cons '%#set!
                                                               (cons _%$%hd217342217367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self217331%_
                                      _%$%hd217345217375%_))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp218028
                                                     _%stx217332%_)))
                                              (_%$%g217334217351%_
                                               _%$%g217335217354%_))))
                                      (_%$%g217334217351%_
                                       _%$%g217335217354%_))))
                              (_%$%g217334217351%_ _%$%g217335217354%_))))
                      (_%$%g217334217351%_ _%$%g217335217354%_)))))
          (_%$%g217333217398%_ _%stx217332%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self217277%_ _%stx217278%_)
        (let* ((_%$%g217280217293%_
                (lambda (_%$%g217281217290%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217281217290%_))))
               (_%$%g217279217328%_
                (lambda (_%$%g217281217296%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217281217296%_))
                      (let ((_%$%e217283217298%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217281217296%_))))
                        (let ((_%$%hd217284217301%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217283217298%_)))
                              (_%$%tl217285217303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217283217298%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217285217303%_))
                              (let ((_%$%e217286217306%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217285217303%_))))
                                (let ((_%$%hd217287217309%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217286217306%_)))
                                      (_%$%tl217288217311%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217286217306%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl217288217311%_))
                                      (let* ((_%eid217326%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%$%hd217287217309%_)))
                                             (__tmp218029
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self217277%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-update!__%
                                         __tmp218029
                                         _%eid217326%_
                                         1+
                                         '0))
                                      (_%$%g217280217293%_
                                       _%$%g217281217296%_))))
                              (_%$%g217280217293%_ _%$%g217281217296%_))))
                      (_%$%g217280217293%_ _%$%g217281217296%_)))))
          (_%$%g217279217328%_ _%stx217278%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self217207%_ _%stx217208%_)
        (let* ((_%$%g217210217227%_
                (lambda (_%$%g217211217224%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217211217224%_))))
               (_%$%g217209217274%_
                (lambda (_%$%g217211217230%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217211217230%_))
                      (let ((_%$%e217214217232%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217211217230%_))))
                        (let ((_%$%hd217215217235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217214217232%_)))
                              (_%$%tl217216217237%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217214217232%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217216217237%_))
                              (let ((_%$%e217217217240%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217216217237%_))))
                                (let ((_%$%hd217218217243%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217217217240%_)))
                                      (_%$%tl217219217245%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217217217240%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl217219217245%_))
                                      (let ((_%$%e217220217248%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl217219217245%_))))
                                        (let ((_%$%hd217221217251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e217220217248%_)))
                                              (_%$%tl217222217253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e217220217248%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl217222217253%_))
                                              (let ((_%eid217272%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd217218217243%_))))
                                                (let ((__tmp218030
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self217207%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-update!__%
                                                   __tmp218030
                                                   _%eid217272%_
                                                   1+
                                                   '0))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self217207%_
                                                   _%$%hd217221217251%_)))
                                              (_%$%g217210217227%_
                                               _%$%g217211217230%_))))
                                      (_%$%g217210217227%_
                                       _%$%g217211217230%_))))
                              (_%$%g217210217227%_ _%$%g217211217230%_))))
                      (_%$%g217210217227%_ _%$%g217211217230%_)))))
          (_%$%g217209217274%_ _%stx217208%_))))
    (define gxc#find-body%
      (lambda (_%self217122%_ _%stx217123%_)
        (let* ((_%$%g217125217144%_
                (lambda (_%$%g217126217141%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217126217141%_))))
               (_%$%g217124217204%_
                (lambda (_%$%g217126217147%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217126217147%_))
                      (let ((_%$%e217128217149%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217126217147%_))))
                        (let ((_%$%hd217129217152%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217128217149%_)))
                              (_%$%tl217130217154%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217128217149%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl217130217154%_))
                              (let ((_g218031_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl217130217154%_
                                        '0))))
                                (begin
                                  (let ((_g218032_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g218031_)
                                               (##values-length _g218031_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g218032_ 2)))
                                        (error "Context expects 2 values"
                                               _g218032_)))
                                  (let ((_%$%target217131217157%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g218031_ 0)))
                                        (_%$%tl217133217159%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g218031_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl217133217159%_))
                                        (letrec ((_%$%loop217134217162%_
                                                  (lambda (_%$%hd217132217165%_
                                                           _%$%expr217138217167%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd217132217165%_))
                                                        (let ((_%$%e217135217169%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd217132217165%_))))
                  (let ((_%$%lp-hd217136217172%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e217135217169%_)))
                        (_%$%lp-tl217137217174%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e217135217169%_))))
                    (_%$%loop217134217162%_
                     _%$%lp-tl217137217174%_
                     (cons _%$%lp-hd217136217172%_ _%$%expr217138217167%_))))
                (let ((_%$%expr217139217177%_
                       (reverse _%$%expr217138217167%_)))
                  (let ((__tmp218035
                         (lambda (_%$%g217192217194%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self217122%_
                              _%$%g217192217194%_))))
                        (__tmp218033
                         (let ((__tmp218034
                                (lambda (_%$%g217196217199%_
                                         _%$%g217197217201%_)
                                  (cons _%$%g217196217199%_
                                        _%$%g217197217201%_))))
                           (declare (not safe))
                           (foldr__0 __tmp218034 '() _%$%expr217139217177%_))))
                    (declare (not safe))
                    (ormap__0 __tmp218035 __tmp218033)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop217134217162%_
                                           _%$%target217131217157%_
                                           '()))
                                        (_%$%g217125217144%_
                                         _%$%g217126217147%_)))))
                              (_%$%g217125217144%_ _%$%g217126217147%_))))
                      (_%$%g217125217144%_ _%$%g217126217147%_)))))
          (_%$%g217124217204%_ _%stx217123%_))))
    (define gxc#find-let-values%
      (lambda (_%self216976%_ _%stx216977%_)
        (let* ((_%$%g216979217014%_
                (lambda (_%$%g216980217011%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g216980217011%_))))
               (_%$%g216978217119%_
                (lambda (_%$%g216980217017%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g216980217017%_))
                      (let ((_%$%e216984217019%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g216980217017%_))))
                        (let ((_%$%hd216985217022%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e216984217019%_)))
                              (_%$%tl216986217024%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e216984217019%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl216986217024%_))
                              (let ((_%$%e216987217027%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl216986217024%_))))
                                (let ((_%$%hd216988217030%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e216987217027%_)))
                                      (_%$%tl216989217032%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e216987217027%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd216988217030%_))
                                      (let ((_g218036_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd216988217030%_
                                                '0))))
                                        (begin
                                          (let ((_g218037_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g218036_)
                                                       (##values-length
                                                        _g218036_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g218037_ 2)))
                                                (error "Context expects 2 values"
                                                       _g218037_)))
                                          (let ((_%$%target216990217035%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g218036_ 0)))
                                                (_%$%tl216992217037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g218036_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl216992217037%_))
                                                (letrec ((_%$%loop216993217040%_
                                                          (lambda (_%$%hd216991217043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr216997217045%_
                           _%$%bind216998217046%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd216991217043%_))
                        (let ((_%$%e216994217048%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd216991217043%_))))
                          (let ((_%$%lp-hd216995217051%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e216994217048%_)))
                                (_%$%lp-tl216996217053%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e216994217048%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd216995217051%_))
                                (let ((_%$%e217001217056%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd216995217051%_))))
                                  (let ((_%$%hd217002217059%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e217001217056%_)))
                                        (_%$%tl217003217061%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e217001217056%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl217003217061%_))
                                        (let ((_%$%e217004217064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl217003217061%_))))
                                          (let ((_%$%hd217005217067%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e217004217064%_)))
                                                (_%$%tl217006217069%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e217004217064%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl217006217069%_))
                                                (_%$%loop216993217040%_
                                                 _%$%lp-tl216996217053%_
                                                 (cons _%$%hd217005217067%_
                                                       _%$%expr216997217045%_)
                                                 (cons _%$%hd217002217059%_
                                                       _%$%bind216998217046%_))
                                                (_%$%g216979217014%_
                                                 _%$%g216980217017%_))))
                                        (_%$%g216979217014%_
                                         _%$%g216980217017%_))))
                                (_%$%g216979217014%_ _%$%g216980217017%_))))
                        (let ((_%$%expr216999217072%_
                               (reverse _%$%expr216997217045%_))
                              (_%$%bind217000217073%_
                               (reverse _%$%bind216998217046%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl216989217032%_))
                              (let ((_%$%e217007217075%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl216989217032%_))))
                                (let ((_%$%hd217008217078%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217007217075%_)))
                                      (_%$%tl217009217080%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217007217075%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl217009217080%_))
                                      (let ((_%$e217116%_
                                             (let ((__tmp218040
                                                    (lambda (_%$%g217104217106%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self216976%_
                                                         _%$%g217104217106%_))))
                                                   (__tmp218038
                                                    (let ((__tmp218039
                                                           (lambda (_%$%g217108217111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g217109217113%_)
                     (cons _%$%g217108217111%_ _%$%g217109217113%_))))
              (declare (not safe))
              (foldr__0 __tmp218039 '() _%$%expr216999217072%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (ormap__0
                                                __tmp218040
                                                __tmp218038))))
                                        (if _%$e217116%_
                                            _%$e217116%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self216976%_
                                               _%$%hd217008217078%_))))
                                      (_%$%g216979217014%_
                                       _%$%g216980217017%_))))
                              (_%$%g216979217014%_ _%$%g216980217017%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop216993217040%_
                                                   _%$%target216990217035%_
                                                   '()
                                                   '()))
                                                (_%$%g216979217014%_
                                                 _%$%g216980217017%_)))))
                                      (_%$%g216979217014%_
                                       _%$%g216980217017%_))))
                              (_%$%g216979217014%_ _%$%g216980217017%_))))
                      (_%$%g216979217014%_ _%$%g216980217017%_)))))
          (_%$%g216978217119%_ _%stx216977%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self216920%_ _%stx216921%_)
        (let* ((_%$%g216923216936%_
                (lambda (_%$%g216924216933%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g216924216933%_))))
               (_%$%g216922216973%_
                (lambda (_%$%g216924216939%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g216924216939%_))
                      (let ((_%$%e216926216941%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g216924216939%_))))
                        (let ((_%$%hd216927216944%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e216926216941%_)))
                              (_%$%tl216928216946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e216926216941%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl216928216946%_))
                              (let ((_%$%e216929216949%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl216928216946%_))))
                                (let ((_%$%hd216930216952%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e216929216949%_)))
                                      (_%$%tl216931216954%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e216929216949%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl216931216954%_))
                                      (let ((__tmp218042
                                             (lambda (_%$%g216968216970%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%hd216930216952%_
                                                  _%$%g216968216970%_))))
                                            (__tmp218041
                                             (let ()
                                               (declare (not safe))
                                               (slot-ref__0
                                                _%self216920%_
                                                'ids))))
                                        (declare (not safe))
                                        (__find __tmp218042 __tmp218041))
                                      (_%$%g216923216936%_
                                       _%$%g216924216939%_))))
                              (_%$%g216923216936%_ _%$%g216924216939%_))))
                      (_%$%g216923216936%_ _%$%g216924216939%_)))))
          (_%$%g216922216973%_ _%stx216921%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self216845%_ _%stx216846%_)
        (let* ((_%$%g216848216865%_
                (lambda (_%$%g216849216862%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g216849216862%_))))
               (_%$%g216847216917%_
                (lambda (_%$%g216849216868%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g216849216868%_))
                      (let ((_%$%e216852216870%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g216849216868%_))))
                        (let ((_%$%hd216853216873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e216852216870%_)))
                              (_%$%tl216854216875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e216852216870%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl216854216875%_))
                              (let ((_%$%e216855216878%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl216854216875%_))))
                                (let ((_%$%hd216856216881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e216855216878%_)))
                                      (_%$%tl216857216883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e216855216878%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl216857216883%_))
                                      (let ((_%$%e216858216886%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl216857216883%_))))
                                        (let ((_%$%hd216859216889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e216858216886%_)))
                                              (_%$%tl216860216891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e216858216886%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl216860216891%_))
                                              (let ((_%$e216914%_
                                                     (let ((__tmp218044
                                                            (lambda (_%$%g216909216911%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#free-identifier=?
                         _%$%hd216856216881%_
                         _%$%g216909216911%_))))
                   (__tmp218043
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self216845%_ 'ids))))
               (declare (not safe))
               (__find __tmp218044 __tmp218043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _%$e216914%_
                                                    _%$e216914%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self216845%_
                                                       _%$%hd216859216889%_))))
                                              (_%$%g216848216865%_
                                               _%$%g216849216868%_))))
                                      (_%$%g216848216865%_
                                       _%$%g216849216868%_))))
                              (_%$%g216848216865%_ _%$%g216849216868%_))))
                      (_%$%g216848216865%_ _%$%g216849216868%_)))))
          (_%$%g216847216917%_ _%stx216846%_))))))
