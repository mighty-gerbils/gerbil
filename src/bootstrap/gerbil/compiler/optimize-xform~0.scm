(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1770505722)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp208200 (list gxc#::void::t))
            (__tmp208199 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp208200
         '()
         __tmp208199
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args208186%_
        (apply make-instance gxc#::collect-mutators::t _%$args208186%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp208201
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
        (__make-atomic-promise __tmp208201)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx208178%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self208181%_
                (let ((__obj208189
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj208189))
               (__tmp208202
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self208181%_ _%stx208178%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208202
           gxc#current-compile-method
           _%self208181%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp208204 (list gxc#::basic-xform-expression::t))
            (__tmp208203 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp208204
         '(id new-id)
         __tmp208203
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args208175%_
        (apply make-instance gxc#::expression-subst::t _%$args208175%_)))
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
      (let ((__tmp208205
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
        (__make-atomic-promise __tmp208205)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords208147%_
               _%id208143208148%_
               _%new-id208144208149%_
               _%stx208150%_)
        (let* ((_%id208153%_
                (if (eq? _%id208143208148%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id208143208148%_))
               (_%new-id208155%_
                (if (eq? _%new-id208144208149%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id208144208149%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self208157%_
                  (let ((__obj208191
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208191
                       _%id208153%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208191
                       _%new-id208155%_
                       '2
                       '#f
                       '#f))
                    __obj208191))
                 (__tmp208206
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self208157%_ _%stx208150%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208206
             gxc#current-compile-method
             _%self208157%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords208164%_ . _%args208165%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords208164%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords208164%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208164%_
                  'new-id:
                  absent-value))
               _%args208165%_)))
    (define gxc#apply-expression-subst
      (lambda _%args208145208171%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args208145208171%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp208208 (list gxc#::basic-xform-expression::t))
            (__tmp208207 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp208208
         '(subst)
         __tmp208207
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args208139%_
        (apply make-instance gxc#::expression-subst*::t _%$args208139%_)))
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
      (let ((__tmp208209
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
        (__make-atomic-promise __tmp208209)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords208114%_ _%subst208111208115%_ _%stx208116%_)
        (let ((_%subst208119%_
               (if (eq? _%subst208111208115%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst208111208115%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self208121%_
                  (let ((__obj208193
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208193
                       _%subst208119%_
                       '1
                       '#f
                       '#f))
                    __obj208193))
                 (__tmp208210
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self208121%_ _%stx208116%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208210
             gxc#current-compile-method
             _%self208121%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords208128%_ . _%args208129%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords208128%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208128%_
                  'subst:
                  absent-value))
               _%args208129%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args208112208135%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args208112208135%_)))
    (define gxc#::find-expression::t
      (let ((__tmp208211 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp208211
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args208107%_
        (apply make-instance gxc#::find-expression::t _%$args208107%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp208212
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
        (__make-atomic-promise __tmp208212)))
    (define gxc#::find-var-refs::t
      (let ((__tmp208214 (list gxc#::find-expression::t))
            (__tmp208213 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp208214
         '(ids)
         __tmp208213
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args208103%_
        (apply make-instance gxc#::find-var-refs::t _%$args208103%_)))
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
      (let ((__tmp208215
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
        (__make-atomic-promise __tmp208215)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords208078%_ _%ids208075208079%_ _%stx208080%_)
        (let ((_%ids208083%_
               (if (eq? _%ids208075208079%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids208075208079%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self208085%_
                  (let ((__obj208196
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208196
                       _%ids208083%_
                       '1
                       '#f
                       '#f))
                    __obj208196))
                 (__tmp208216
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self208085%_ _%stx208080%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208216
             gxc#current-compile-method
             _%self208085%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords208092%_ . _%args208093%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords208092%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords208092%_ 'ids: absent-value))
               _%args208093%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args208076208099%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args208076208099%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp208218 (list gxc#::collect-expression-refs::t))
            (__tmp208217 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp208218
         '()
         __tmp208217
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args208071%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args208071%_)))
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
      (let ((__tmp208219
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
        (__make-atomic-promise __tmp208219)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords208046%_ _%table208043208047%_ _%stx208048%_)
        (let ((_%table208051%_
               (if (eq? _%table208043208047%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table208043208047%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self208053%_
                  (let ((__obj208198
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208198
                       _%table208051%_
                       '1
                       '#f
                       '#f))
                    __obj208198))
                 (__tmp208220
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self208053%_ _%stx208048%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208220
             gxc#current-compile-method
             _%self208053%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords208060%_ . _%args208061%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords208060%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208060%_
                  'table:
                  absent-value))
               _%args208061%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args208044208067%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args208044208067%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self207972%_ _%stx207973%_)
        (let* ((_%g207975207992%_
                (lambda (_%g207976207989%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207976207989%_))))
               (_%g207974208039%_
                (lambda (_%g207976207995%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207976207995%_))
                      (let ((_%e207979207997%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207976207995%_))))
                        (let ((_%hd207980208000%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207979207997%_)))
                              (_%tl207981208002%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207979207997%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207981208002%_))
                              (let ((_%e207982208005%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207981208002%_))))
                                (let ((_%hd207983208008%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207982208005%_)))
                                      (_%tl207984208010%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207982208005%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207984208010%_))
                                      (let ((_%e207985208013%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207984208010%_))))
                                        (let ((_%hd207986208016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207985208013%_)))
                                              (_%tl207987208018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207985208013%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207987208018%_))
                                              ((lambda (_%g207977208021%_
                                                        _%g207978208022%_)
                                                 (let ((_%sym208037%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g207978208022%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym208037%_))
                                                   (let ((__tmp208221
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp208221
                                                      _%sym208037%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self207972%_
                                                      _%g207977208021%_))))
                                               _%hd207986208016%_
                                               _%hd207983208008%_)
                                              (_%g207975207992%_
                                               _%g207976207995%_))))
                                      (_%g207975207992%_ _%g207976207995%_))))
                              (_%g207975207992%_ _%g207976207995%_))))
                      (_%g207975207992%_ _%g207976207995%_)))))
          (_%g207974208039%_ _%stx207973%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self207920%_ _%stx207921%_)
        (let* ((_%g207923207936%_
                (lambda (_%g207924207933%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207924207933%_))))
               (_%g207922207969%_
                (lambda (_%g207924207939%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207924207939%_))
                      (let ((_%e207926207941%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207924207939%_))))
                        (let ((_%hd207927207944%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207926207941%_)))
                              (_%tl207928207946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207926207941%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207928207946%_))
                              (let ((_%e207929207949%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207928207946%_))))
                                (let ((_%hd207930207952%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207929207949%_)))
                                      (_%tl207931207954%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207929207949%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl207931207954%_))
                                      ((lambda (_%g207925207957%_)
                                         (if (let ((__tmp208222
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self207920%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g207925207957%_
                                                __tmp208222))
                                             (let ((__tmp208223
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self207920%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp208223
                                                _%stx207921%_))
                                             _%stx207921%_))
                                       _%hd207930207952%_)
                                      (_%g207923207936%_ _%g207924207939%_))))
                              (_%g207923207936%_ _%g207924207939%_))))
                      (_%g207923207936%_ _%g207924207939%_)))))
          (_%g207922207969%_ _%stx207921%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self207860%_ _%stx207861%_)
        (let* ((_%g207863207876%_
                (lambda (_%g207864207873%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207864207873%_))))
               (_%g207862207917%_
                (lambda (_%g207864207879%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207864207879%_))
                      (let ((_%e207866207881%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207864207879%_))))
                        (let ((_%hd207867207884%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207866207881%_)))
                              (_%tl207868207886%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207866207881%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207868207886%_))
                              (let ((_%e207869207889%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207868207886%_))))
                                (let ((_%hd207870207892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207869207889%_)))
                                      (_%tl207871207894%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207869207889%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl207871207894%_))
                                      ((lambda (_%g207865207897%_)
                                         (let ((_%$e207911%_
                                                (let ((__tmp208225
                                                       (lambda (_%sub207909%_)
                                                         (let ((__tmp208226
                                                                (car _%sub207909%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g207865207897%_
                                                            __tmp208226))))
                                                      (__tmp208224
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self207860%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp208225
                                                          __tmp208224))))
                                           (if _%$e207911%_
                                               ((lambda (_%sub207914%_)
                                                  (let ((__tmp208227
                                                         (cons '%#ref
                                                               (cons (cdr _%sub207914%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp208227
                                                     _%stx207861%_)))
                                                _%$e207911%_)
                                               _%stx207861%_)))
                                       _%hd207870207892%_)
                                      (_%g207863207876%_ _%g207864207879%_))))
                              (_%g207863207876%_ _%g207864207879%_))))
                      (_%g207863207876%_ _%g207864207879%_)))))
          (_%g207862207917%_ _%stx207861%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self207789%_ _%stx207790%_)
        (let* ((_%g207792207809%_
                (lambda (_%g207793207806%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207793207806%_))))
               (_%g207791207857%_
                (lambda (_%g207793207812%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207793207812%_))
                      (let ((_%e207796207814%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207793207812%_))))
                        (let ((_%hd207797207817%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207796207814%_)))
                              (_%tl207798207819%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207796207814%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207798207819%_))
                              (let ((_%e207799207822%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207798207819%_))))
                                (let ((_%hd207800207825%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207799207822%_)))
                                      (_%tl207801207827%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207799207822%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207801207827%_))
                                      (let ((_%e207802207830%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207801207827%_))))
                                        (let ((_%hd207803207833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207802207830%_)))
                                              (_%tl207804207835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207802207830%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207804207835%_))
                                              ((lambda (_%g207794207838%_
                                                        _%g207795207839%_)
                                                 (let ((_%new-expr207854%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self207789%_
                                                           _%g207794207838%_)))
                                                       (_%new-xid207855%_
                                                        (if (let ((__tmp208228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self207789%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g207795207839%_ __tmp208228))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self207789%_ 'new-id))
                    _%g207795207839%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp208229
                                                          (cons '%#set!
                                                                (cons _%new-xid207855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr207854%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp208229
                                                      _%stx207790%_))))
                                               _%hd207803207833%_
                                               _%hd207800207825%_)
                                              (_%g207792207809%_
                                               _%g207793207812%_))))
                                      (_%g207792207809%_ _%g207793207812%_))))
                              (_%g207792207809%_ _%g207793207812%_))))
                      (_%g207792207809%_ _%g207793207812%_)))))
          (_%g207791207857%_ _%stx207790%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self207712%_ _%stx207713%_)
        (let* ((_%g207715207732%_
                (lambda (_%g207716207729%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207716207729%_))))
               (_%g207714207786%_
                (lambda (_%g207716207735%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207716207735%_))
                      (let ((_%e207719207737%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207716207735%_))))
                        (let ((_%hd207720207740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207719207737%_)))
                              (_%tl207721207742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207719207737%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207721207742%_))
                              (let ((_%e207722207745%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207721207742%_))))
                                (let ((_%hd207723207748%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207722207745%_)))
                                      (_%tl207724207750%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207722207745%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207724207750%_))
                                      (let ((_%e207725207753%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207724207750%_))))
                                        (let ((_%hd207726207756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207725207753%_)))
                                              (_%tl207727207758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207725207753%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207727207758%_))
                                              ((lambda (_%g207717207761%_
                                                        _%g207718207762%_)
                                                 (let ((_%new-expr207783%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self207712%_
                                                           _%g207717207761%_)))
                                                       (_%new-xid207784%_
                                                        (let ((_%$e207779%_
                                                               (let ((__tmp208231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub207777%_)
                                (let ((__tmp208232 (car _%sub207777%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g207718207762%_
                                   __tmp208232))))
                             (__tmp208230
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self207712%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp208231 __tmp208230))))
                  (if _%$e207779%_ (cdr _%$e207779%_) _%g207718207762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp208233
                                                          (cons '%#set!
                                                                (cons _%new-xid207784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr207783%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp208233
                                                      _%stx207713%_))))
                                               _%hd207726207756%_
                                               _%hd207723207748%_)
                                              (_%g207715207732%_
                                               _%g207716207735%_))))
                                      (_%g207715207732%_ _%g207716207735%_))))
                              (_%g207715207732%_ _%g207716207735%_))))
                      (_%g207715207732%_ _%g207716207735%_)))))
          (_%g207714207786%_ _%stx207713%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self207658%_ _%stx207659%_)
        (let* ((_%g207661207674%_
                (lambda (_%g207662207671%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207662207671%_))))
               (_%g207660207709%_
                (lambda (_%g207662207677%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207662207677%_))
                      (let ((_%e207664207679%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207662207677%_))))
                        (let ((_%hd207665207682%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207664207679%_)))
                              (_%tl207666207684%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207664207679%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207666207684%_))
                              (let ((_%e207667207687%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207666207684%_))))
                                (let ((_%hd207668207690%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207667207687%_)))
                                      (_%tl207669207692%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207667207687%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl207669207692%_))
                                      ((lambda (_%g207663207695%_)
                                         (let* ((_%eid207707%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g207663207695%_)))
                                                (__tmp208234
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self207658%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp208234
                                            _%eid207707%_
                                            1+
                                            '0)))
                                       _%hd207668207690%_)
                                      (_%g207661207674%_ _%g207662207677%_))))
                              (_%g207661207674%_ _%g207662207677%_))))
                      (_%g207661207674%_ _%g207662207677%_)))))
          (_%g207660207709%_ _%stx207659%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self207588%_ _%stx207589%_)
        (let* ((_%g207591207608%_
                (lambda (_%g207592207605%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207592207605%_))))
               (_%g207590207655%_
                (lambda (_%g207592207611%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207592207611%_))
                      (let ((_%e207595207613%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207592207611%_))))
                        (let ((_%hd207596207616%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207595207613%_)))
                              (_%tl207597207618%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207595207613%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207597207618%_))
                              (let ((_%e207598207621%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207597207618%_))))
                                (let ((_%hd207599207624%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207598207621%_)))
                                      (_%tl207600207626%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207598207621%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207600207626%_))
                                      (let ((_%e207601207629%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207600207626%_))))
                                        (let ((_%hd207602207632%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207601207629%_)))
                                              (_%tl207603207634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207601207629%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207603207634%_))
                                              ((lambda (_%g207593207637%_
                                                        _%g207594207638%_)
                                                 (let ((_%eid207653%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g207594207638%_))))
                                                   (let ((__tmp208235
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self207588%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp208235
                                                      _%eid207653%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self207588%_
                                                      _%g207593207637%_))))
                                               _%hd207602207632%_
                                               _%hd207599207624%_)
                                              (_%g207591207608%_
                                               _%g207592207611%_))))
                                      (_%g207591207608%_ _%g207592207611%_))))
                              (_%g207591207608%_ _%g207592207611%_))))
                      (_%g207591207608%_ _%g207592207611%_)))))
          (_%g207590207655%_ _%stx207589%_))))
    (define gxc#find-body%
      (lambda (_%self207503%_ _%stx207504%_)
        (let* ((_%g207506207525%_
                (lambda (_%g207507207522%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207507207522%_))))
               (_%g207505207585%_
                (lambda (_%g207507207528%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207507207528%_))
                      (let ((_%e207509207530%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207507207528%_))))
                        (let ((_%hd207510207533%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207509207530%_)))
                              (_%tl207511207535%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207509207530%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl207511207535%_))
                              (let ((_g208236_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl207511207535%_
                                        '0))))
                                (begin
                                  (let ((_g208237_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g208236_)
                                               (##values-length _g208236_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g208237_ 2)))
                                        (error "Context expects 2 values"
                                               _g208237_)))
                                  (let ((_%target207512207538%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g208236_ 0)))
                                        (_%tl207514207540%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g208236_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207514207540%_))
                                        (letrec ((_%loop207515207543%_
                                                  (lambda (_%hd207513207546%_
                                                           _%expr207519207548%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd207513207546%_))
                                                        (let ((_%e207516207550%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd207513207546%_))))
                  (let ((_%lp-hd207517207553%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207516207550%_)))
                        (_%lp-tl207518207555%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207516207550%_))))
                    (_%loop207515207543%_
                     _%lp-tl207518207555%_
                     (cons _%lp-hd207517207553%_ _%expr207519207548%_))))
                (let ((_%expr207520207558%_ (reverse _%expr207519207548%_)))
                  ((lambda (_%g207508207560%_)
                     (let ((__tmp208240
                            (lambda (_%g207573207575%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self207503%_
                                 _%g207573207575%_))))
                           (__tmp208238
                            (let ((__tmp208239
                                   (lambda (_%g207577207580%_
                                            _%g207578207582%_)
                                     (cons _%g207577207580%_
                                           _%g207578207582%_))))
                              (declare (not safe))
                              (foldr__0 __tmp208239 '() _%g207508207560%_))))
                       (declare (not safe))
                       (ormap__0 __tmp208240 __tmp208238)))
                   _%expr207520207558%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop207515207543%_
                                           _%target207512207538%_
                                           '()))
                                        (_%g207506207525%_
                                         _%g207507207528%_)))))
                              (_%g207506207525%_ _%g207507207528%_))))
                      (_%g207506207525%_ _%g207507207528%_)))))
          (_%g207505207585%_ _%stx207504%_))))
    (define gxc#find-let-values%
      (lambda (_%self207357%_ _%stx207358%_)
        (let* ((_%g207360207395%_
                (lambda (_%g207361207392%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207361207392%_))))
               (_%g207359207500%_
                (lambda (_%g207361207398%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207361207398%_))
                      (let ((_%e207365207400%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207361207398%_))))
                        (let ((_%hd207366207403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207365207400%_)))
                              (_%tl207367207405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207365207400%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207367207405%_))
                              (let ((_%e207368207408%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207367207405%_))))
                                (let ((_%hd207369207411%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207368207408%_)))
                                      (_%tl207370207413%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207368207408%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd207369207411%_))
                                      (let ((_g208241_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd207369207411%_
                                                '0))))
                                        (begin
                                          (let ((_g208242_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g208241_)
                                                       (##values-length
                                                        _g208241_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g208242_ 2)))
                                                (error "Context expects 2 values"
                                                       _g208242_)))
                                          (let ((_%target207371207416%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g208241_ 0)))
                                                (_%tl207373207418%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g208241_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207373207418%_))
                                                (letrec ((_%loop207374207421%_
                                                          (lambda (_%hd207372207424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr207378207426%_
                           _%bind207379207427%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd207372207424%_))
                        (let ((_%e207375207429%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd207372207424%_))))
                          (let ((_%lp-hd207376207432%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207375207429%_)))
                                (_%lp-tl207377207434%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207375207429%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd207376207432%_))
                                (let ((_%e207382207437%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd207376207432%_))))
                                  (let ((_%hd207383207440%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e207382207437%_)))
                                        (_%tl207384207442%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e207382207437%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl207384207442%_))
                                        (let ((_%e207385207445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl207384207442%_))))
                                          (let ((_%hd207386207448%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e207385207445%_)))
                                                (_%tl207387207450%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e207385207445%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207387207450%_))
                                                (_%loop207374207421%_
                                                 _%lp-tl207377207434%_
                                                 (cons _%hd207386207448%_
                                                       _%expr207378207426%_)
                                                 (cons _%hd207383207440%_
                                                       _%bind207379207427%_))
                                                (_%g207360207395%_
                                                 _%g207361207398%_))))
                                        (_%g207360207395%_
                                         _%g207361207398%_))))
                                (_%g207360207395%_ _%g207361207398%_))))
                        (let ((_%expr207380207453%_
                               (reverse _%expr207378207426%_))
                              (_%bind207381207454%_
                               (reverse _%bind207379207427%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207370207413%_))
                              (let ((_%e207388207456%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207370207413%_))))
                                (let ((_%hd207389207459%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207388207456%_)))
                                      (_%tl207390207461%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207388207456%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl207390207461%_))
                                      ((lambda (_%g207362207464%_
                                                _%g207363207465%_
                                                _%g207364207466%_)
                                         (let ((_%$e207497%_
                                                (let ((__tmp208245
                                                       (lambda (_%g207485207487%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self207357%_
                                                            _%g207485207487%_))))
                                                      (__tmp208243
                                                       (let ((__tmp208244
                                                              (lambda (_%g207489207492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g207490207494%_)
                        (cons _%g207489207492%_ _%g207490207494%_))))
                 (declare (not safe))
                 (foldr__0 __tmp208244 '() _%g207363207465%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap__0
                                                   __tmp208245
                                                   __tmp208243))))
                                           (if _%$e207497%_
                                               _%$e207497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self207357%_
                                                  _%g207362207464%_)))))
                                       _%hd207389207459%_
                                       _%expr207380207453%_
                                       _%bind207381207454%_)
                                      (_%g207360207395%_ _%g207361207398%_))))
                              (_%g207360207395%_ _%g207361207398%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop207374207421%_
                                                   _%target207371207416%_
                                                   '()
                                                   '()))
                                                (_%g207360207395%_
                                                 _%g207361207398%_)))))
                                      (_%g207360207395%_ _%g207361207398%_))))
                              (_%g207360207395%_ _%g207361207398%_))))
                      (_%g207360207395%_ _%g207361207398%_)))))
          (_%g207359207500%_ _%stx207358%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self207301%_ _%stx207302%_)
        (let* ((_%g207304207317%_
                (lambda (_%g207305207314%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207305207314%_))))
               (_%g207303207354%_
                (lambda (_%g207305207320%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207305207320%_))
                      (let ((_%e207307207322%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207305207320%_))))
                        (let ((_%hd207308207325%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207307207322%_)))
                              (_%tl207309207327%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207307207322%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207309207327%_))
                              (let ((_%e207310207330%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207309207327%_))))
                                (let ((_%hd207311207333%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207310207330%_)))
                                      (_%tl207312207335%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207310207330%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl207312207335%_))
                                      ((lambda (_%g207306207338%_)
                                         (let ((__tmp208247
                                                (lambda (_%g207349207351%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g207306207338%_
                                                     _%g207349207351%_))))
                                               (__tmp208246
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self207301%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp208247 __tmp208246)))
                                       _%hd207311207333%_)
                                      (_%g207304207317%_ _%g207305207320%_))))
                              (_%g207304207317%_ _%g207305207320%_))))
                      (_%g207304207317%_ _%g207305207320%_)))))
          (_%g207303207354%_ _%stx207302%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self207226%_ _%stx207227%_)
        (let* ((_%g207229207246%_
                (lambda (_%g207230207243%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207230207243%_))))
               (_%g207228207298%_
                (lambda (_%g207230207249%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207230207249%_))
                      (let ((_%e207233207251%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207230207249%_))))
                        (let ((_%hd207234207254%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207233207251%_)))
                              (_%tl207235207256%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207233207251%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207235207256%_))
                              (let ((_%e207236207259%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207235207256%_))))
                                (let ((_%hd207237207262%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207236207259%_)))
                                      (_%tl207238207264%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207236207259%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207238207264%_))
                                      (let ((_%e207239207267%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207238207264%_))))
                                        (let ((_%hd207240207270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207239207267%_)))
                                              (_%tl207241207272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207239207267%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207241207272%_))
                                              ((lambda (_%g207231207275%_
                                                        _%g207232207276%_)
                                                 (let ((_%$e207295%_
                                                        (let ((__tmp208249
                                                               (lambda (_%g207290207292%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g207232207276%_
                            _%g207290207292%_))))
                      (__tmp208248
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self207226%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp208249 __tmp208248))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e207295%_
                                                       _%$e207295%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self207226%_
                                                          _%g207231207275%_)))))
                                               _%hd207240207270%_
                                               _%hd207237207262%_)
                                              (_%g207229207246%_
                                               _%g207230207249%_))))
                                      (_%g207229207246%_ _%g207230207249%_))))
                              (_%g207229207246%_ _%g207230207249%_))))
                      (_%g207229207246%_ _%g207230207249%_)))))
          (_%g207228207298%_ _%stx207227%_))))))
