(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1756156302)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp162170 (list gxc#::void::t))
            (__tmp162169 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp162170
         '()
         __tmp162169
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args162156%_
        (apply make-instance gxc#::collect-mutators::t _%$args162156%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp162171
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
        (__make-promise __tmp162171)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx162148%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self162151%_
                (let ((__obj162159
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj162159))
               (__tmp162172
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self162151%_ _%stx162148%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp162172
           gxc#current-compile-method
           _%self162151%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp162174 (list gxc#::basic-xform-expression::t))
            (__tmp162173 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp162174
         '(id new-id)
         __tmp162173
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args162145%_
        (apply make-instance gxc#::expression-subst::t _%$args162145%_)))
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
      (let ((__tmp162175
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
        (__make-promise __tmp162175)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords162115%_
               _%id162111162116%_
               _%new-id162112162118%_
               _%stx162120%_)
        (let* ((_%id162123%_
                (if (eq? _%id162111162116%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id162111162116%_))
               (_%new-id162125%_
                (if (eq? _%new-id162112162118%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id162112162118%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self162127%_
                  (let ((__obj162161
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162161
                       _%id162123%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162161
                       _%new-id162125%_
                       '2
                       '#f
                       '#f))
                    __obj162161))
                 (__tmp162176
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self162127%_ _%stx162120%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp162176
             gxc#current-compile-method
             _%self162127%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords162134%_ . _%args162135%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords162134%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords162134%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162134%_
                  'new-id:
                  absent-value))
               _%args162135%_)))
    (define gxc#apply-expression-subst
      (lambda _%args162113162141%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args162113162141%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp162178 (list gxc#::basic-xform-expression::t))
            (__tmp162177 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp162178
         '(subst)
         __tmp162177
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args162107%_
        (apply make-instance gxc#::expression-subst*::t _%$args162107%_)))
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
      (let ((__tmp162179
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
        (__make-promise __tmp162179)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords162081%_ _%subst162078162082%_ _%stx162084%_)
        (let ((_%subst162087%_
               (if (eq? _%subst162078162082%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst162078162082%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self162089%_
                  (let ((__obj162163
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162163
                       _%subst162087%_
                       '1
                       '#f
                       '#f))
                    __obj162163))
                 (__tmp162180
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self162089%_ _%stx162084%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp162180
             gxc#current-compile-method
             _%self162089%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords162096%_ . _%args162097%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords162096%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162096%_
                  'subst:
                  absent-value))
               _%args162097%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args162079162103%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args162079162103%_)))
    (define gxc#::find-expression::t
      (let ((__tmp162181 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp162181
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args162074%_
        (apply make-instance gxc#::find-expression::t _%$args162074%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp162182
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
        (__make-promise __tmp162182)))
    (define gxc#::find-var-refs::t
      (let ((__tmp162184 (list gxc#::find-expression::t))
            (__tmp162183 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp162184
         '(ids)
         __tmp162183
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args162070%_
        (apply make-instance gxc#::find-var-refs::t _%$args162070%_)))
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
      (let ((__tmp162185
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
        (__make-promise __tmp162185)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords162044%_ _%ids162041162045%_ _%stx162047%_)
        (let ((_%ids162050%_
               (if (eq? _%ids162041162045%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids162041162045%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self162052%_
                  (let ((__obj162166
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162166
                       _%ids162050%_
                       '1
                       '#f
                       '#f))
                    __obj162166))
                 (__tmp162186
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self162052%_ _%stx162047%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp162186
             gxc#current-compile-method
             _%self162052%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords162059%_ . _%args162060%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords162059%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords162059%_ 'ids: absent-value))
               _%args162060%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args162042162066%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args162042162066%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp162188 (list gxc#::collect-expression-refs::t))
            (__tmp162187 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp162188
         '()
         __tmp162187
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args162037%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args162037%_)))
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
      (let ((__tmp162189
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
        (__make-promise __tmp162189)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords162011%_ _%table162008162012%_ _%stx162014%_)
        (let ((_%table162017%_
               (if (eq? _%table162008162012%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table162008162012%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self162019%_
                  (let ((__obj162168
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162168
                       _%table162017%_
                       '1
                       '#f
                       '#f))
                    __obj162168))
                 (__tmp162190
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self162019%_ _%stx162014%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp162190
             gxc#current-compile-method
             _%self162019%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords162026%_ . _%args162027%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords162026%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162026%_
                  'table:
                  absent-value))
               _%args162027%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args162009162033%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args162009162033%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self161937%_ _%stx161938%_)
        (let* ((_%g161940161957%_
                (lambda (_%g161941161954%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161941161954%_))))
               (_%g161939162004%_
                (lambda (_%g161941161960%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161941161960%_))
                      (let ((_%e161944161962%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161941161960%_))))
                        (let ((_%hd161945161965%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161944161962%_)))
                              (_%tl161946161967%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161944161962%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161946161967%_))
                              (let ((_%e161947161970%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161946161967%_))))
                                (let ((_%hd161948161973%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161947161970%_)))
                                      (_%tl161949161975%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161947161970%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161949161975%_))
                                      (let ((_%e161950161978%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161949161975%_))))
                                        (let ((_%hd161951161981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161950161978%_)))
                                              (_%tl161952161983%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161950161978%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161952161983%_))
                                              ((lambda (_%L161986%_
                                                        _%L161987%_)
                                                 (let ((_%sym162002%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L161987%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym162002%_))
                                                   (let ((__tmp162191
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp162191
                                                      _%sym162002%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self161937%_
                                                      _%L161986%_))))
                                               _%hd161951161981%_
                                               _%hd161948161973%_)
                                              (_%g161940161957%_
                                               _%g161941161960%_))))
                                      (_%g161940161957%_ _%g161941161960%_))))
                              (_%g161940161957%_ _%g161941161960%_))))
                      (_%g161940161957%_ _%g161941161960%_)))))
          (_%g161939162004%_ _%stx161938%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self161885%_ _%stx161886%_)
        (let* ((_%g161888161901%_
                (lambda (_%g161889161898%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161889161898%_))))
               (_%g161887161934%_
                (lambda (_%g161889161904%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161889161904%_))
                      (let ((_%e161891161906%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161889161904%_))))
                        (let ((_%hd161892161909%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161891161906%_)))
                              (_%tl161893161911%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161891161906%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161893161911%_))
                              (let ((_%e161894161914%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161893161911%_))))
                                (let ((_%hd161895161917%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161894161914%_)))
                                      (_%tl161896161919%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161894161914%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl161896161919%_))
                                      ((lambda (_%L161922%_)
                                         (if (let ((__tmp162192
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self161885%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L161922%_
                                                __tmp162192))
                                             (let ((__tmp162193
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self161885%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp162193
                                                _%stx161886%_))
                                             _%stx161886%_))
                                       _%hd161895161917%_)
                                      (_%g161888161901%_ _%g161889161904%_))))
                              (_%g161888161901%_ _%g161889161904%_))))
                      (_%g161888161901%_ _%g161889161904%_)))))
          (_%g161887161934%_ _%stx161886%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self161825%_ _%stx161826%_)
        (let* ((_%g161828161841%_
                (lambda (_%g161829161838%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161829161838%_))))
               (_%g161827161882%_
                (lambda (_%g161829161844%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161829161844%_))
                      (let ((_%e161831161846%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161829161844%_))))
                        (let ((_%hd161832161849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161831161846%_)))
                              (_%tl161833161851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161831161846%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161833161851%_))
                              (let ((_%e161834161854%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161833161851%_))))
                                (let ((_%hd161835161857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161834161854%_)))
                                      (_%tl161836161859%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161834161854%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl161836161859%_))
                                      ((lambda (_%L161862%_)
                                         (let ((_%$e161876%_
                                                (let ((__tmp162195
                                                       (lambda (_%sub161874%_)
                                                         (let ((__tmp162196
                                                                (car _%sub161874%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L161862%_
                                                            __tmp162196))))
                                                      (__tmp162194
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self161825%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp162195
                                                          __tmp162194))))
                                           (if _%$e161876%_
                                               ((lambda (_%sub161879%_)
                                                  (let ((__tmp162197
                                                         (cons '%#ref
                                                               (cons (cdr _%sub161879%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp162197
                                                     _%stx161826%_)))
                                                _%$e161876%_)
                                               _%stx161826%_)))
                                       _%hd161835161857%_)
                                      (_%g161828161841%_ _%g161829161844%_))))
                              (_%g161828161841%_ _%g161829161844%_))))
                      (_%g161828161841%_ _%g161829161844%_)))))
          (_%g161827161882%_ _%stx161826%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self161754%_ _%stx161755%_)
        (let* ((_%g161757161774%_
                (lambda (_%g161758161771%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161758161771%_))))
               (_%g161756161822%_
                (lambda (_%g161758161777%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161758161777%_))
                      (let ((_%e161761161779%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161758161777%_))))
                        (let ((_%hd161762161782%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161761161779%_)))
                              (_%tl161763161784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161761161779%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161763161784%_))
                              (let ((_%e161764161787%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161763161784%_))))
                                (let ((_%hd161765161790%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161764161787%_)))
                                      (_%tl161766161792%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161764161787%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161766161792%_))
                                      (let ((_%e161767161795%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161766161792%_))))
                                        (let ((_%hd161768161798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161767161795%_)))
                                              (_%tl161769161800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161767161795%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161769161800%_))
                                              ((lambda (_%L161803%_
                                                        _%L161804%_)
                                                 (let ((_%new-expr161819%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self161754%_
                                                           _%L161803%_)))
                                                       (_%new-xid161820%_
                                                        (if (let ((__tmp162198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self161754%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L161804%_ __tmp162198))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self161754%_ 'new-id))
                    _%L161804%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp162199
                                                          (cons '%#set!
                                                                (cons _%new-xid161820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr161819%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp162199
                                                      _%stx161755%_))))
                                               _%hd161768161798%_
                                               _%hd161765161790%_)
                                              (_%g161757161774%_
                                               _%g161758161777%_))))
                                      (_%g161757161774%_ _%g161758161777%_))))
                              (_%g161757161774%_ _%g161758161777%_))))
                      (_%g161757161774%_ _%g161758161777%_)))))
          (_%g161756161822%_ _%stx161755%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self161677%_ _%stx161678%_)
        (let* ((_%g161680161697%_
                (lambda (_%g161681161694%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161681161694%_))))
               (_%g161679161751%_
                (lambda (_%g161681161700%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161681161700%_))
                      (let ((_%e161684161702%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161681161700%_))))
                        (let ((_%hd161685161705%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161684161702%_)))
                              (_%tl161686161707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161684161702%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161686161707%_))
                              (let ((_%e161687161710%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161686161707%_))))
                                (let ((_%hd161688161713%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161687161710%_)))
                                      (_%tl161689161715%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161687161710%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161689161715%_))
                                      (let ((_%e161690161718%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161689161715%_))))
                                        (let ((_%hd161691161721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161690161718%_)))
                                              (_%tl161692161723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161690161718%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161692161723%_))
                                              ((lambda (_%L161726%_
                                                        _%L161727%_)
                                                 (let ((_%new-expr161748%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self161677%_
                                                           _%L161726%_)))
                                                       (_%new-xid161749%_
                                                        (let ((_%$e161744%_
                                                               (let ((__tmp162201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub161742%_)
                                (let ((__tmp162202 (car _%sub161742%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L161727%_
                                   __tmp162202))))
                             (__tmp162200
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self161677%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp162201 __tmp162200))))
                  (if _%$e161744%_ (cdr _%$e161744%_) _%L161727%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp162203
                                                          (cons '%#set!
                                                                (cons _%new-xid161749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr161748%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp162203
                                                      _%stx161678%_))))
                                               _%hd161691161721%_
                                               _%hd161688161713%_)
                                              (_%g161680161697%_
                                               _%g161681161700%_))))
                                      (_%g161680161697%_ _%g161681161700%_))))
                              (_%g161680161697%_ _%g161681161700%_))))
                      (_%g161680161697%_ _%g161681161700%_)))))
          (_%g161679161751%_ _%stx161678%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self161623%_ _%stx161624%_)
        (let* ((_%g161626161639%_
                (lambda (_%g161627161636%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161627161636%_))))
               (_%g161625161674%_
                (lambda (_%g161627161642%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161627161642%_))
                      (let ((_%e161629161644%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161627161642%_))))
                        (let ((_%hd161630161647%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161629161644%_)))
                              (_%tl161631161649%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161629161644%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161631161649%_))
                              (let ((_%e161632161652%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161631161649%_))))
                                (let ((_%hd161633161655%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161632161652%_)))
                                      (_%tl161634161657%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161632161652%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl161634161657%_))
                                      ((lambda (_%L161660%_)
                                         (let* ((_%eid161672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L161660%_)))
                                                (__tmp162204
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self161623%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp162204
                                            _%eid161672%_
                                            1+
                                            '0)))
                                       _%hd161633161655%_)
                                      (_%g161626161639%_ _%g161627161642%_))))
                              (_%g161626161639%_ _%g161627161642%_))))
                      (_%g161626161639%_ _%g161627161642%_)))))
          (_%g161625161674%_ _%stx161624%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self161553%_ _%stx161554%_)
        (let* ((_%g161556161573%_
                (lambda (_%g161557161570%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161557161570%_))))
               (_%g161555161620%_
                (lambda (_%g161557161576%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161557161576%_))
                      (let ((_%e161560161578%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161557161576%_))))
                        (let ((_%hd161561161581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161560161578%_)))
                              (_%tl161562161583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161560161578%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161562161583%_))
                              (let ((_%e161563161586%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161562161583%_))))
                                (let ((_%hd161564161589%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161563161586%_)))
                                      (_%tl161565161591%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161563161586%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161565161591%_))
                                      (let ((_%e161566161594%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161565161591%_))))
                                        (let ((_%hd161567161597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161566161594%_)))
                                              (_%tl161568161599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161566161594%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161568161599%_))
                                              ((lambda (_%L161602%_
                                                        _%L161603%_)
                                                 (let ((_%eid161618%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L161603%_))))
                                                   (let ((__tmp162205
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self161553%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp162205
                                                      _%eid161618%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self161553%_
                                                      _%L161602%_))))
                                               _%hd161567161597%_
                                               _%hd161564161589%_)
                                              (_%g161556161573%_
                                               _%g161557161576%_))))
                                      (_%g161556161573%_ _%g161557161576%_))))
                              (_%g161556161573%_ _%g161557161576%_))))
                      (_%g161556161573%_ _%g161557161576%_)))))
          (_%g161555161620%_ _%stx161554%_))))
    (define gxc#find-body%
      (lambda (_%self161466%_ _%stx161467%_)
        (let* ((_%g161469161488%_
                (lambda (_%g161470161485%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161470161485%_))))
               (_%g161468161550%_
                (lambda (_%g161470161491%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161470161491%_))
                      (let ((_%e161472161493%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161470161491%_))))
                        (let ((_%hd161473161496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161472161493%_)))
                              (_%tl161474161498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161472161493%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl161474161498%_))
                              (let ((_g162206_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl161474161498%_
                                        '0))))
                                (begin
                                  (let ((_g162207_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162206_)
                                               (##values-length _g162206_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162207_ 2)))
                                        (error "Context expects 2 values"
                                               _g162207_)))
                                  (let ((_%target161475161501%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g162206_ 0)))
                                        (_%tl161477161503%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g162206_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl161477161503%_))
                                        (letrec ((_%loop161478161506%_
                                                  (lambda (_%hd161476161509%_
                                                           _%expr161482161511%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd161476161509%_))
                                                        (let ((_%e161479161514%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd161476161509%_))))
                  (let ((_%lp-hd161480161517%_
                         (let ()
                           (declare (not safe))
                           (##car _%e161479161514%_)))
                        (_%lp-tl161481161519%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e161479161514%_))))
                    (_%loop161478161506%_
                     _%lp-tl161481161519%_
                     (cons _%lp-hd161480161517%_ _%expr161482161511%_))))
                (let ((_%expr161483161522%_ (reverse _%expr161482161511%_)))
                  ((lambda (_%L161525%_)
                     (let ((__tmp162210
                            (lambda (_%g161538161540%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self161466%_
                                 _%g161538161540%_))))
                           (__tmp162208
                            (let ((__tmp162209
                                   (lambda (_%g161542161545%_
                                            _%g161543161547%_)
                                     (cons _%g161542161545%_
                                           _%g161543161547%_))))
                              (declare (not safe))
                              (__foldr1 __tmp162209 '() _%L161525%_))))
                       (declare (not safe))
                       (__ormap1 __tmp162210 __tmp162208)))
                   _%expr161483161522%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop161478161506%_
                                           _%target161475161501%_
                                           '()))
                                        (_%g161469161488%_
                                         _%g161470161491%_)))))
                              (_%g161469161488%_ _%g161470161491%_))))
                      (_%g161469161488%_ _%g161470161491%_)))))
          (_%g161468161550%_ _%stx161467%_))))
    (define gxc#find-let-values%
      (lambda (_%self161316%_ _%stx161317%_)
        (let* ((_%g161319161354%_
                (lambda (_%g161320161351%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161320161351%_))))
               (_%g161318161463%_
                (lambda (_%g161320161357%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161320161357%_))
                      (let ((_%e161324161359%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161320161357%_))))
                        (let ((_%hd161325161362%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161324161359%_)))
                              (_%tl161326161364%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161324161359%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161326161364%_))
                              (let ((_%e161327161367%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161326161364%_))))
                                (let ((_%hd161328161370%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161327161367%_)))
                                      (_%tl161329161372%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161327161367%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd161328161370%_))
                                      (let ((_g162211_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd161328161370%_
                                                '0))))
                                        (begin
                                          (let ((_g162212_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g162211_)
                                                       (##values-length
                                                        _g162211_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g162212_ 2)))
                                                (error "Context expects 2 values"
                                                       _g162212_)))
                                          (let ((_%target161330161375%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g162211_ 0)))
                                                (_%tl161332161377%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g162211_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl161332161377%_))
                                                (letrec ((_%loop161333161380%_
                                                          (lambda (_%hd161331161383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr161337161385%_
                           _%bind161338161387%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd161331161383%_))
                        (let ((_%e161334161390%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd161331161383%_))))
                          (let ((_%lp-hd161335161393%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e161334161390%_)))
                                (_%lp-tl161336161395%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e161334161390%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd161335161393%_))
                                (let ((_%e161341161398%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd161335161393%_))))
                                  (let ((_%hd161342161401%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e161341161398%_)))
                                        (_%tl161343161403%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e161341161398%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl161343161403%_))
                                        (let ((_%e161344161406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl161343161403%_))))
                                          (let ((_%hd161345161409%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e161344161406%_)))
                                                (_%tl161346161411%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e161344161406%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl161346161411%_))
                                                (_%loop161333161380%_
                                                 _%lp-tl161336161395%_
                                                 (cons _%hd161345161409%_
                                                       _%expr161337161385%_)
                                                 (cons _%hd161342161401%_
                                                       _%bind161338161387%_))
                                                (_%g161319161354%_
                                                 _%g161320161357%_))))
                                        (_%g161319161354%_
                                         _%g161320161357%_))))
                                (_%g161319161354%_ _%g161320161357%_))))
                        (let ((_%expr161339161414%_
                               (reverse _%expr161337161385%_))
                              (_%bind161340161416%_
                               (reverse _%bind161338161387%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161329161372%_))
                              (let ((_%e161347161419%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161329161372%_))))
                                (let ((_%hd161348161422%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161347161419%_)))
                                      (_%tl161349161424%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161347161419%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl161349161424%_))
                                      ((lambda (_%L161427%_
                                                _%L161428%_
                                                _%L161429%_)
                                         (let ((_%$e161460%_
                                                (let ((__tmp162215
                                                       (lambda (_%g161448161450%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self161316%_
                                                            _%g161448161450%_))))
                                                      (__tmp162213
                                                       (let ((__tmp162214
                                                              (lambda (_%g161452161455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g161453161457%_)
                        (cons _%g161452161455%_ _%g161453161457%_))))
                 (declare (not safe))
                 (__foldr1 __tmp162214 '() _%L161428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp162215
                                                   __tmp162213))))
                                           (if _%$e161460%_
                                               _%$e161460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self161316%_
                                                  _%L161427%_)))))
                                       _%hd161348161422%_
                                       _%expr161339161414%_
                                       _%bind161340161416%_)
                                      (_%g161319161354%_ _%g161320161357%_))))
                              (_%g161319161354%_ _%g161320161357%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop161333161380%_
                                                   _%target161330161375%_
                                                   '()
                                                   '()))
                                                (_%g161319161354%_
                                                 _%g161320161357%_)))))
                                      (_%g161319161354%_ _%g161320161357%_))))
                              (_%g161319161354%_ _%g161320161357%_))))
                      (_%g161319161354%_ _%g161320161357%_)))))
          (_%g161318161463%_ _%stx161317%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self161260%_ _%stx161261%_)
        (let* ((_%g161263161276%_
                (lambda (_%g161264161273%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161264161273%_))))
               (_%g161262161313%_
                (lambda (_%g161264161279%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161264161279%_))
                      (let ((_%e161266161281%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161264161279%_))))
                        (let ((_%hd161267161284%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161266161281%_)))
                              (_%tl161268161286%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161266161281%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161268161286%_))
                              (let ((_%e161269161289%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161268161286%_))))
                                (let ((_%hd161270161292%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161269161289%_)))
                                      (_%tl161271161294%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161269161289%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl161271161294%_))
                                      ((lambda (_%L161297%_)
                                         (let ((__tmp162217
                                                (lambda (_%g161308161310%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L161297%_
                                                     _%g161308161310%_))))
                                               (__tmp162216
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self161260%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp162217 __tmp162216)))
                                       _%hd161270161292%_)
                                      (_%g161263161276%_ _%g161264161279%_))))
                              (_%g161263161276%_ _%g161264161279%_))))
                      (_%g161263161276%_ _%g161264161279%_)))))
          (_%g161262161313%_ _%stx161261%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self161185%_ _%stx161186%_)
        (let* ((_%g161188161205%_
                (lambda (_%g161189161202%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161189161202%_))))
               (_%g161187161257%_
                (lambda (_%g161189161208%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161189161208%_))
                      (let ((_%e161192161210%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161189161208%_))))
                        (let ((_%hd161193161213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161192161210%_)))
                              (_%tl161194161215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161192161210%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161194161215%_))
                              (let ((_%e161195161218%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161194161215%_))))
                                (let ((_%hd161196161221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161195161218%_)))
                                      (_%tl161197161223%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161195161218%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161197161223%_))
                                      (let ((_%e161198161226%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161197161223%_))))
                                        (let ((_%hd161199161229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161198161226%_)))
                                              (_%tl161200161231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161198161226%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161200161231%_))
                                              ((lambda (_%L161234%_
                                                        _%L161235%_)
                                                 (let ((_%$e161254%_
                                                        (let ((__tmp162219
                                                               (lambda (_%g161249161251%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L161235%_
                            _%g161249161251%_))))
                      (__tmp162218
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self161185%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp162219 __tmp162218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e161254%_
                                                       _%$e161254%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self161185%_
                                                          _%L161234%_)))))
                                               _%hd161199161229%_
                                               _%hd161196161221%_)
                                              (_%g161188161205%_
                                               _%g161189161208%_))))
                                      (_%g161188161205%_ _%g161189161208%_))))
                              (_%g161188161205%_ _%g161189161208%_))))
                      (_%g161188161205%_ _%g161189161208%_)))))
          (_%g161187161257%_ _%stx161186%_))))))
