(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1756224517)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp162173 (list gxc#::void::t))
            (__tmp162172 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp162173
         '()
         __tmp162172
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args162159%_
        (apply make-instance gxc#::collect-mutators::t _%$args162159%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp162174
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
        (__make-promise __tmp162174)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx162151%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self162154%_
                (let ((__obj162162
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj162162))
               (__tmp162175
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self162154%_ _%stx162151%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp162175
           gxc#current-compile-method
           _%self162154%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp162177 (list gxc#::basic-xform-expression::t))
            (__tmp162176 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp162177
         '(id new-id)
         __tmp162176
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args162148%_
        (apply make-instance gxc#::expression-subst::t _%$args162148%_)))
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
      (let ((__tmp162178
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
        (__make-promise __tmp162178)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords162118%_
               _%id162114162119%_
               _%new-id162115162121%_
               _%stx162123%_)
        (let* ((_%id162126%_
                (if (eq? _%id162114162119%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id162114162119%_))
               (_%new-id162128%_
                (if (eq? _%new-id162115162121%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id162115162121%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self162130%_
                  (let ((__obj162164
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162164
                       _%id162126%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162164
                       _%new-id162128%_
                       '2
                       '#f
                       '#f))
                    __obj162164))
                 (__tmp162179
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self162130%_ _%stx162123%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp162179
             gxc#current-compile-method
             _%self162130%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords162137%_ . _%args162138%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords162137%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords162137%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162137%_
                  'new-id:
                  absent-value))
               _%args162138%_)))
    (define gxc#apply-expression-subst
      (lambda _%args162116162144%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args162116162144%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp162181 (list gxc#::basic-xform-expression::t))
            (__tmp162180 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp162181
         '(subst)
         __tmp162180
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args162110%_
        (apply make-instance gxc#::expression-subst*::t _%$args162110%_)))
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
      (let ((__tmp162182
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
        (__make-promise __tmp162182)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords162084%_ _%subst162081162085%_ _%stx162087%_)
        (let ((_%subst162090%_
               (if (eq? _%subst162081162085%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst162081162085%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self162092%_
                  (let ((__obj162166
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162166
                       _%subst162090%_
                       '1
                       '#f
                       '#f))
                    __obj162166))
                 (__tmp162183
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self162092%_ _%stx162087%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp162183
             gxc#current-compile-method
             _%self162092%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords162099%_ . _%args162100%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords162099%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162099%_
                  'subst:
                  absent-value))
               _%args162100%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args162082162106%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args162082162106%_)))
    (define gxc#::find-expression::t
      (let ((__tmp162184 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp162184
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args162077%_
        (apply make-instance gxc#::find-expression::t _%$args162077%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp162185
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
        (__make-promise __tmp162185)))
    (define gxc#::find-var-refs::t
      (let ((__tmp162187 (list gxc#::find-expression::t))
            (__tmp162186 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp162187
         '(ids)
         __tmp162186
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args162073%_
        (apply make-instance gxc#::find-var-refs::t _%$args162073%_)))
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
      (let ((__tmp162188
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
        (__make-promise __tmp162188)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords162047%_ _%ids162044162048%_ _%stx162050%_)
        (let ((_%ids162053%_
               (if (eq? _%ids162044162048%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids162044162048%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self162055%_
                  (let ((__obj162169
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162169
                       _%ids162053%_
                       '1
                       '#f
                       '#f))
                    __obj162169))
                 (__tmp162189
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self162055%_ _%stx162050%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp162189
             gxc#current-compile-method
             _%self162055%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords162062%_ . _%args162063%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords162062%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords162062%_ 'ids: absent-value))
               _%args162063%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args162045162069%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args162045162069%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp162191 (list gxc#::collect-expression-refs::t))
            (__tmp162190 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp162191
         '()
         __tmp162190
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args162040%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args162040%_)))
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
      (let ((__tmp162192
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
        (__make-promise __tmp162192)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords162014%_ _%table162011162015%_ _%stx162017%_)
        (let ((_%table162020%_
               (if (eq? _%table162011162015%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table162011162015%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self162022%_
                  (let ((__obj162171
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162171
                       _%table162020%_
                       '1
                       '#f
                       '#f))
                    __obj162171))
                 (__tmp162193
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self162022%_ _%stx162017%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp162193
             gxc#current-compile-method
             _%self162022%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords162029%_ . _%args162030%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords162029%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162029%_
                  'table:
                  absent-value))
               _%args162030%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args162012162036%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args162012162036%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self161940%_ _%stx161941%_)
        (let* ((_%g161943161960%_
                (lambda (_%g161944161957%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161944161957%_))))
               (_%g161942162007%_
                (lambda (_%g161944161963%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161944161963%_))
                      (let ((_%e161947161965%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161944161963%_))))
                        (let ((_%hd161948161968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161947161965%_)))
                              (_%tl161949161970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161947161965%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161949161970%_))
                              (let ((_%e161950161973%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161949161970%_))))
                                (let ((_%hd161951161976%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161950161973%_)))
                                      (_%tl161952161978%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161950161973%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161952161978%_))
                                      (let ((_%e161953161981%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161952161978%_))))
                                        (let ((_%hd161954161984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161953161981%_)))
                                              (_%tl161955161986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161953161981%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161955161986%_))
                                              ((lambda (_%L161989%_
                                                        _%L161990%_)
                                                 (let ((_%sym162005%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L161990%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym162005%_))
                                                   (let ((__tmp162194
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp162194
                                                      _%sym162005%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self161940%_
                                                      _%L161989%_))))
                                               _%hd161954161984%_
                                               _%hd161951161976%_)
                                              (_%g161943161960%_
                                               _%g161944161963%_))))
                                      (_%g161943161960%_ _%g161944161963%_))))
                              (_%g161943161960%_ _%g161944161963%_))))
                      (_%g161943161960%_ _%g161944161963%_)))))
          (_%g161942162007%_ _%stx161941%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self161888%_ _%stx161889%_)
        (let* ((_%g161891161904%_
                (lambda (_%g161892161901%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161892161901%_))))
               (_%g161890161937%_
                (lambda (_%g161892161907%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161892161907%_))
                      (let ((_%e161894161909%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161892161907%_))))
                        (let ((_%hd161895161912%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161894161909%_)))
                              (_%tl161896161914%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161894161909%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161896161914%_))
                              (let ((_%e161897161917%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161896161914%_))))
                                (let ((_%hd161898161920%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161897161917%_)))
                                      (_%tl161899161922%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161897161917%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl161899161922%_))
                                      ((lambda (_%L161925%_)
                                         (if (let ((__tmp162195
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self161888%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L161925%_
                                                __tmp162195))
                                             (let ((__tmp162196
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self161888%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp162196
                                                _%stx161889%_))
                                             _%stx161889%_))
                                       _%hd161898161920%_)
                                      (_%g161891161904%_ _%g161892161907%_))))
                              (_%g161891161904%_ _%g161892161907%_))))
                      (_%g161891161904%_ _%g161892161907%_)))))
          (_%g161890161937%_ _%stx161889%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self161828%_ _%stx161829%_)
        (let* ((_%g161831161844%_
                (lambda (_%g161832161841%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161832161841%_))))
               (_%g161830161885%_
                (lambda (_%g161832161847%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161832161847%_))
                      (let ((_%e161834161849%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161832161847%_))))
                        (let ((_%hd161835161852%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161834161849%_)))
                              (_%tl161836161854%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161834161849%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161836161854%_))
                              (let ((_%e161837161857%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161836161854%_))))
                                (let ((_%hd161838161860%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161837161857%_)))
                                      (_%tl161839161862%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161837161857%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl161839161862%_))
                                      ((lambda (_%L161865%_)
                                         (let ((_%$e161879%_
                                                (let ((__tmp162198
                                                       (lambda (_%sub161877%_)
                                                         (let ((__tmp162199
                                                                (car _%sub161877%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L161865%_
                                                            __tmp162199))))
                                                      (__tmp162197
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self161828%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp162198
                                                          __tmp162197))))
                                           (if _%$e161879%_
                                               ((lambda (_%sub161882%_)
                                                  (let ((__tmp162200
                                                         (cons '%#ref
                                                               (cons (cdr _%sub161882%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp162200
                                                     _%stx161829%_)))
                                                _%$e161879%_)
                                               _%stx161829%_)))
                                       _%hd161838161860%_)
                                      (_%g161831161844%_ _%g161832161847%_))))
                              (_%g161831161844%_ _%g161832161847%_))))
                      (_%g161831161844%_ _%g161832161847%_)))))
          (_%g161830161885%_ _%stx161829%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self161757%_ _%stx161758%_)
        (let* ((_%g161760161777%_
                (lambda (_%g161761161774%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161761161774%_))))
               (_%g161759161825%_
                (lambda (_%g161761161780%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161761161780%_))
                      (let ((_%e161764161782%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161761161780%_))))
                        (let ((_%hd161765161785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161764161782%_)))
                              (_%tl161766161787%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161764161782%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161766161787%_))
                              (let ((_%e161767161790%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161766161787%_))))
                                (let ((_%hd161768161793%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161767161790%_)))
                                      (_%tl161769161795%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161767161790%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161769161795%_))
                                      (let ((_%e161770161798%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161769161795%_))))
                                        (let ((_%hd161771161801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161770161798%_)))
                                              (_%tl161772161803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161770161798%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161772161803%_))
                                              ((lambda (_%L161806%_
                                                        _%L161807%_)
                                                 (let ((_%new-expr161822%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self161757%_
                                                           _%L161806%_)))
                                                       (_%new-xid161823%_
                                                        (if (let ((__tmp162201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self161757%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L161807%_ __tmp162201))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self161757%_ 'new-id))
                    _%L161807%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp162202
                                                          (cons '%#set!
                                                                (cons _%new-xid161823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr161822%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp162202
                                                      _%stx161758%_))))
                                               _%hd161771161801%_
                                               _%hd161768161793%_)
                                              (_%g161760161777%_
                                               _%g161761161780%_))))
                                      (_%g161760161777%_ _%g161761161780%_))))
                              (_%g161760161777%_ _%g161761161780%_))))
                      (_%g161760161777%_ _%g161761161780%_)))))
          (_%g161759161825%_ _%stx161758%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self161680%_ _%stx161681%_)
        (let* ((_%g161683161700%_
                (lambda (_%g161684161697%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161684161697%_))))
               (_%g161682161754%_
                (lambda (_%g161684161703%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161684161703%_))
                      (let ((_%e161687161705%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161684161703%_))))
                        (let ((_%hd161688161708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161687161705%_)))
                              (_%tl161689161710%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161687161705%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161689161710%_))
                              (let ((_%e161690161713%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161689161710%_))))
                                (let ((_%hd161691161716%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161690161713%_)))
                                      (_%tl161692161718%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161690161713%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161692161718%_))
                                      (let ((_%e161693161721%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161692161718%_))))
                                        (let ((_%hd161694161724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161693161721%_)))
                                              (_%tl161695161726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161693161721%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161695161726%_))
                                              ((lambda (_%L161729%_
                                                        _%L161730%_)
                                                 (let ((_%new-expr161751%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self161680%_
                                                           _%L161729%_)))
                                                       (_%new-xid161752%_
                                                        (let ((_%$e161747%_
                                                               (let ((__tmp162204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub161745%_)
                                (let ((__tmp162205 (car _%sub161745%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L161730%_
                                   __tmp162205))))
                             (__tmp162203
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self161680%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp162204 __tmp162203))))
                  (if _%$e161747%_ (cdr _%$e161747%_) _%L161730%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp162206
                                                          (cons '%#set!
                                                                (cons _%new-xid161752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr161751%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp162206
                                                      _%stx161681%_))))
                                               _%hd161694161724%_
                                               _%hd161691161716%_)
                                              (_%g161683161700%_
                                               _%g161684161703%_))))
                                      (_%g161683161700%_ _%g161684161703%_))))
                              (_%g161683161700%_ _%g161684161703%_))))
                      (_%g161683161700%_ _%g161684161703%_)))))
          (_%g161682161754%_ _%stx161681%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self161626%_ _%stx161627%_)
        (let* ((_%g161629161642%_
                (lambda (_%g161630161639%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161630161639%_))))
               (_%g161628161677%_
                (lambda (_%g161630161645%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161630161645%_))
                      (let ((_%e161632161647%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161630161645%_))))
                        (let ((_%hd161633161650%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161632161647%_)))
                              (_%tl161634161652%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161632161647%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161634161652%_))
                              (let ((_%e161635161655%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161634161652%_))))
                                (let ((_%hd161636161658%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161635161655%_)))
                                      (_%tl161637161660%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161635161655%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl161637161660%_))
                                      ((lambda (_%L161663%_)
                                         (let* ((_%eid161675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L161663%_)))
                                                (__tmp162207
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self161626%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp162207
                                            _%eid161675%_
                                            1+
                                            '0)))
                                       _%hd161636161658%_)
                                      (_%g161629161642%_ _%g161630161645%_))))
                              (_%g161629161642%_ _%g161630161645%_))))
                      (_%g161629161642%_ _%g161630161645%_)))))
          (_%g161628161677%_ _%stx161627%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self161556%_ _%stx161557%_)
        (let* ((_%g161559161576%_
                (lambda (_%g161560161573%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161560161573%_))))
               (_%g161558161623%_
                (lambda (_%g161560161579%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161560161579%_))
                      (let ((_%e161563161581%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161560161579%_))))
                        (let ((_%hd161564161584%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161563161581%_)))
                              (_%tl161565161586%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161563161581%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161565161586%_))
                              (let ((_%e161566161589%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161565161586%_))))
                                (let ((_%hd161567161592%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161566161589%_)))
                                      (_%tl161568161594%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161566161589%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161568161594%_))
                                      (let ((_%e161569161597%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161568161594%_))))
                                        (let ((_%hd161570161600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161569161597%_)))
                                              (_%tl161571161602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161569161597%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161571161602%_))
                                              ((lambda (_%L161605%_
                                                        _%L161606%_)
                                                 (let ((_%eid161621%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L161606%_))))
                                                   (let ((__tmp162208
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self161556%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp162208
                                                      _%eid161621%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self161556%_
                                                      _%L161605%_))))
                                               _%hd161570161600%_
                                               _%hd161567161592%_)
                                              (_%g161559161576%_
                                               _%g161560161579%_))))
                                      (_%g161559161576%_ _%g161560161579%_))))
                              (_%g161559161576%_ _%g161560161579%_))))
                      (_%g161559161576%_ _%g161560161579%_)))))
          (_%g161558161623%_ _%stx161557%_))))
    (define gxc#find-body%
      (lambda (_%self161469%_ _%stx161470%_)
        (let* ((_%g161472161491%_
                (lambda (_%g161473161488%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161473161488%_))))
               (_%g161471161553%_
                (lambda (_%g161473161494%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161473161494%_))
                      (let ((_%e161475161496%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161473161494%_))))
                        (let ((_%hd161476161499%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161475161496%_)))
                              (_%tl161477161501%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161475161496%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl161477161501%_))
                              (let ((_g162209_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl161477161501%_
                                        '0))))
                                (begin
                                  (let ((_g162210_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162209_)
                                               (##values-length _g162209_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162210_ 2)))
                                        (error "Context expects 2 values"
                                               _g162210_)))
                                  (let ((_%target161478161504%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g162209_ 0)))
                                        (_%tl161480161506%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g162209_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl161480161506%_))
                                        (letrec ((_%loop161481161509%_
                                                  (lambda (_%hd161479161512%_
                                                           _%expr161485161514%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd161479161512%_))
                                                        (let ((_%e161482161517%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd161479161512%_))))
                  (let ((_%lp-hd161483161520%_
                         (let ()
                           (declare (not safe))
                           (##car _%e161482161517%_)))
                        (_%lp-tl161484161522%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e161482161517%_))))
                    (_%loop161481161509%_
                     _%lp-tl161484161522%_
                     (cons _%lp-hd161483161520%_ _%expr161485161514%_))))
                (let ((_%expr161486161525%_ (reverse _%expr161485161514%_)))
                  ((lambda (_%L161528%_)
                     (let ((__tmp162213
                            (lambda (_%g161541161543%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self161469%_
                                 _%g161541161543%_))))
                           (__tmp162211
                            (let ((__tmp162212
                                   (lambda (_%g161545161548%_
                                            _%g161546161550%_)
                                     (cons _%g161545161548%_
                                           _%g161546161550%_))))
                              (declare (not safe))
                              (__foldr1 __tmp162212 '() _%L161528%_))))
                       (declare (not safe))
                       (__ormap1 __tmp162213 __tmp162211)))
                   _%expr161486161525%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop161481161509%_
                                           _%target161478161504%_
                                           '()))
                                        (_%g161472161491%_
                                         _%g161473161494%_)))))
                              (_%g161472161491%_ _%g161473161494%_))))
                      (_%g161472161491%_ _%g161473161494%_)))))
          (_%g161471161553%_ _%stx161470%_))))
    (define gxc#find-let-values%
      (lambda (_%self161319%_ _%stx161320%_)
        (let* ((_%g161322161357%_
                (lambda (_%g161323161354%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161323161354%_))))
               (_%g161321161466%_
                (lambda (_%g161323161360%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161323161360%_))
                      (let ((_%e161327161362%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161323161360%_))))
                        (let ((_%hd161328161365%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161327161362%_)))
                              (_%tl161329161367%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161327161362%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161329161367%_))
                              (let ((_%e161330161370%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161329161367%_))))
                                (let ((_%hd161331161373%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161330161370%_)))
                                      (_%tl161332161375%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161330161370%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd161331161373%_))
                                      (let ((_g162214_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd161331161373%_
                                                '0))))
                                        (begin
                                          (let ((_g162215_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g162214_)
                                                       (##values-length
                                                        _g162214_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g162215_ 2)))
                                                (error "Context expects 2 values"
                                                       _g162215_)))
                                          (let ((_%target161333161378%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g162214_ 0)))
                                                (_%tl161335161380%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g162214_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl161335161380%_))
                                                (letrec ((_%loop161336161383%_
                                                          (lambda (_%hd161334161386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr161340161388%_
                           _%bind161341161390%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd161334161386%_))
                        (let ((_%e161337161393%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd161334161386%_))))
                          (let ((_%lp-hd161338161396%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e161337161393%_)))
                                (_%lp-tl161339161398%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e161337161393%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd161338161396%_))
                                (let ((_%e161344161401%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd161338161396%_))))
                                  (let ((_%hd161345161404%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e161344161401%_)))
                                        (_%tl161346161406%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e161344161401%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl161346161406%_))
                                        (let ((_%e161347161409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl161346161406%_))))
                                          (let ((_%hd161348161412%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e161347161409%_)))
                                                (_%tl161349161414%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e161347161409%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl161349161414%_))
                                                (_%loop161336161383%_
                                                 _%lp-tl161339161398%_
                                                 (cons _%hd161348161412%_
                                                       _%expr161340161388%_)
                                                 (cons _%hd161345161404%_
                                                       _%bind161341161390%_))
                                                (_%g161322161357%_
                                                 _%g161323161360%_))))
                                        (_%g161322161357%_
                                         _%g161323161360%_))))
                                (_%g161322161357%_ _%g161323161360%_))))
                        (let ((_%expr161342161417%_
                               (reverse _%expr161340161388%_))
                              (_%bind161343161419%_
                               (reverse _%bind161341161390%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161332161375%_))
                              (let ((_%e161350161422%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161332161375%_))))
                                (let ((_%hd161351161425%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161350161422%_)))
                                      (_%tl161352161427%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161350161422%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl161352161427%_))
                                      ((lambda (_%L161430%_
                                                _%L161431%_
                                                _%L161432%_)
                                         (let ((_%$e161463%_
                                                (let ((__tmp162218
                                                       (lambda (_%g161451161453%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self161319%_
                                                            _%g161451161453%_))))
                                                      (__tmp162216
                                                       (let ((__tmp162217
                                                              (lambda (_%g161455161458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g161456161460%_)
                        (cons _%g161455161458%_ _%g161456161460%_))))
                 (declare (not safe))
                 (__foldr1 __tmp162217 '() _%L161431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp162218
                                                   __tmp162216))))
                                           (if _%$e161463%_
                                               _%$e161463%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self161319%_
                                                  _%L161430%_)))))
                                       _%hd161351161425%_
                                       _%expr161342161417%_
                                       _%bind161343161419%_)
                                      (_%g161322161357%_ _%g161323161360%_))))
                              (_%g161322161357%_ _%g161323161360%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop161336161383%_
                                                   _%target161333161378%_
                                                   '()
                                                   '()))
                                                (_%g161322161357%_
                                                 _%g161323161360%_)))))
                                      (_%g161322161357%_ _%g161323161360%_))))
                              (_%g161322161357%_ _%g161323161360%_))))
                      (_%g161322161357%_ _%g161323161360%_)))))
          (_%g161321161466%_ _%stx161320%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self161263%_ _%stx161264%_)
        (let* ((_%g161266161279%_
                (lambda (_%g161267161276%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161267161276%_))))
               (_%g161265161316%_
                (lambda (_%g161267161282%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161267161282%_))
                      (let ((_%e161269161284%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161267161282%_))))
                        (let ((_%hd161270161287%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161269161284%_)))
                              (_%tl161271161289%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161269161284%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161271161289%_))
                              (let ((_%e161272161292%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161271161289%_))))
                                (let ((_%hd161273161295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161272161292%_)))
                                      (_%tl161274161297%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161272161292%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl161274161297%_))
                                      ((lambda (_%L161300%_)
                                         (let ((__tmp162220
                                                (lambda (_%g161311161313%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L161300%_
                                                     _%g161311161313%_))))
                                               (__tmp162219
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self161263%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp162220 __tmp162219)))
                                       _%hd161273161295%_)
                                      (_%g161266161279%_ _%g161267161282%_))))
                              (_%g161266161279%_ _%g161267161282%_))))
                      (_%g161266161279%_ _%g161267161282%_)))))
          (_%g161265161316%_ _%stx161264%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self161188%_ _%stx161189%_)
        (let* ((_%g161191161208%_
                (lambda (_%g161192161205%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161192161205%_))))
               (_%g161190161260%_
                (lambda (_%g161192161211%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161192161211%_))
                      (let ((_%e161195161213%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161192161211%_))))
                        (let ((_%hd161196161216%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161195161213%_)))
                              (_%tl161197161218%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161195161213%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161197161218%_))
                              (let ((_%e161198161221%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161197161218%_))))
                                (let ((_%hd161199161224%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161198161221%_)))
                                      (_%tl161200161226%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161198161221%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161200161226%_))
                                      (let ((_%e161201161229%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161200161226%_))))
                                        (let ((_%hd161202161232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161201161229%_)))
                                              (_%tl161203161234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161201161229%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161203161234%_))
                                              ((lambda (_%L161237%_
                                                        _%L161238%_)
                                                 (let ((_%$e161257%_
                                                        (let ((__tmp162222
                                                               (lambda (_%g161252161254%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L161238%_
                            _%g161252161254%_))))
                      (__tmp162221
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self161188%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp162222 __tmp162221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e161257%_
                                                       _%$e161257%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self161188%_
                                                          _%L161237%_)))))
                                               _%hd161202161232%_
                                               _%hd161199161224%_)
                                              (_%g161191161208%_
                                               _%g161192161211%_))))
                                      (_%g161191161208%_ _%g161192161211%_))))
                              (_%g161191161208%_ _%g161192161211%_))))
                      (_%g161191161208%_ _%g161192161211%_)))))
          (_%g161190161260%_ _%stx161189%_))))))
