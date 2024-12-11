(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1733870076)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp153895 (list gxc#::void::t))
            (__tmp153894 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp153895
         '()
         __tmp153894
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args153881%_
        (apply make-instance gxc#::collect-mutators::t _%$args153881%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp153896
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
        (__make-promise __tmp153896)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx153873%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self153876%_
                (let ((__obj153884
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj153884))
               (__tmp153897
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self153876%_ _%stx153873%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp153897
           gxc#current-compile-method
           _%self153876%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp153899 (list gxc#::basic-xform-expression::t))
            (__tmp153898 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp153899
         '(id new-id)
         __tmp153898
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args153870%_
        (apply make-instance gxc#::expression-subst::t _%$args153870%_)))
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
      (let ((__tmp153900
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
        (__make-promise __tmp153900)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords153840%_
               _%id153836153841%_
               _%new-id153837153843%_
               _%stx153845%_)
        (let* ((_%id153848%_
                (if (eq? _%id153836153841%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id153836153841%_))
               (_%new-id153850%_
                (if (eq? _%new-id153837153843%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id153837153843%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self153852%_
                  (let ((__obj153886
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153886
                       _%id153848%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153886
                       _%new-id153850%_
                       '2
                       '#f
                       '#f))
                    __obj153886))
                 (__tmp153901
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153852%_ _%stx153845%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp153901
             gxc#current-compile-method
             _%self153852%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords153859%_ . _%args153860%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords153859%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords153859%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153859%_
                  'new-id:
                  absent-value))
               _%args153860%_)))
    (define gxc#apply-expression-subst
      (lambda _%args153838153866%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args153838153866%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp153903 (list gxc#::basic-xform-expression::t))
            (__tmp153902 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp153903
         '(subst)
         __tmp153902
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args153832%_
        (apply make-instance gxc#::expression-subst*::t _%$args153832%_)))
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
      (let ((__tmp153904
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
        (__make-promise __tmp153904)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords153806%_ _%subst153803153807%_ _%stx153809%_)
        (let ((_%subst153812%_
               (if (eq? _%subst153803153807%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst153803153807%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self153814%_
                  (let ((__obj153888
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153888
                       _%subst153812%_
                       '1
                       '#f
                       '#f))
                    __obj153888))
                 (__tmp153905
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153814%_ _%stx153809%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp153905
             gxc#current-compile-method
             _%self153814%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords153821%_ . _%args153822%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords153821%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153821%_
                  'subst:
                  absent-value))
               _%args153822%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args153804153828%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args153804153828%_)))
    (define gxc#::find-expression::t
      (let ((__tmp153906 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp153906
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args153799%_
        (apply make-instance gxc#::find-expression::t _%$args153799%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp153907
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
        (__make-promise __tmp153907)))
    (define gxc#::find-var-refs::t
      (let ((__tmp153909 (list gxc#::find-expression::t))
            (__tmp153908 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp153909
         '(ids)
         __tmp153908
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args153795%_
        (apply make-instance gxc#::find-var-refs::t _%$args153795%_)))
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
      (let ((__tmp153910
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
        (__make-promise __tmp153910)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords153769%_ _%ids153766153770%_ _%stx153772%_)
        (let ((_%ids153775%_
               (if (eq? _%ids153766153770%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids153766153770%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self153777%_
                  (let ((__obj153891
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153891
                       _%ids153775%_
                       '1
                       '#f
                       '#f))
                    __obj153891))
                 (__tmp153911
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153777%_ _%stx153772%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp153911
             gxc#current-compile-method
             _%self153777%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords153784%_ . _%args153785%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords153784%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords153784%_ 'ids: absent-value))
               _%args153785%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args153767153791%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args153767153791%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp153913 (list gxc#::collect-expression-refs::t))
            (__tmp153912 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp153913
         '()
         __tmp153912
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args153762%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args153762%_)))
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
      (let ((__tmp153914
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
        (__make-promise __tmp153914)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords153736%_ _%table153733153737%_ _%stx153739%_)
        (let ((_%table153742%_
               (if (eq? _%table153733153737%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table153733153737%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self153744%_
                  (let ((__obj153893
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153893
                       _%table153742%_
                       '1
                       '#f
                       '#f))
                    __obj153893))
                 (__tmp153915
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153744%_ _%stx153739%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp153915
             gxc#current-compile-method
             _%self153744%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords153751%_ . _%args153752%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords153751%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153751%_
                  'table:
                  absent-value))
               _%args153752%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args153734153758%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args153734153758%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self153662%_ _%stx153663%_)
        (let* ((_%g153665153682%_
                (lambda (_%g153666153679%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153666153679%_))))
               (_%g153664153729%_
                (lambda (_%g153666153685%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153666153685%_))
                      (let ((_%e153669153687%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153666153685%_))))
                        (let ((_%hd153670153690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153669153687%_)))
                              (_%tl153671153692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153669153687%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153671153692%_))
                              (let ((_%e153672153695%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153671153692%_))))
                                (let ((_%hd153673153698%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153672153695%_)))
                                      (_%tl153674153700%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153672153695%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153674153700%_))
                                      (let ((_%e153675153703%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153674153700%_))))
                                        (let ((_%hd153676153706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153675153703%_)))
                                              (_%tl153677153708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153675153703%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153677153708%_))
                                              ((lambda (_%L153711%_
                                                        _%L153712%_)
                                                 (let ((_%sym153727%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L153712%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym153727%_))
                                                   (let ((__tmp153916
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp153916
                                                      _%sym153727%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self153662%_
                                                      _%L153711%_))))
                                               _%hd153676153706%_
                                               _%hd153673153698%_)
                                              (_%g153665153682%_
                                               _%g153666153685%_))))
                                      (_%g153665153682%_ _%g153666153685%_))))
                              (_%g153665153682%_ _%g153666153685%_))))
                      (_%g153665153682%_ _%g153666153685%_)))))
          (_%g153664153729%_ _%stx153663%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self153610%_ _%stx153611%_)
        (let* ((_%g153613153626%_
                (lambda (_%g153614153623%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153614153623%_))))
               (_%g153612153659%_
                (lambda (_%g153614153629%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153614153629%_))
                      (let ((_%e153616153631%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153614153629%_))))
                        (let ((_%hd153617153634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153616153631%_)))
                              (_%tl153618153636%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153616153631%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153618153636%_))
                              (let ((_%e153619153639%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153618153636%_))))
                                (let ((_%hd153620153642%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153619153639%_)))
                                      (_%tl153621153644%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153619153639%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153621153644%_))
                                      ((lambda (_%L153647%_)
                                         (if (let ((__tmp153917
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self153610%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L153647%_
                                                __tmp153917))
                                             (let ((__tmp153918
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self153610%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153918
                                                _%stx153611%_))
                                             _%stx153611%_))
                                       _%hd153620153642%_)
                                      (_%g153613153626%_ _%g153614153629%_))))
                              (_%g153613153626%_ _%g153614153629%_))))
                      (_%g153613153626%_ _%g153614153629%_)))))
          (_%g153612153659%_ _%stx153611%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self153550%_ _%stx153551%_)
        (let* ((_%g153553153566%_
                (lambda (_%g153554153563%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153554153563%_))))
               (_%g153552153607%_
                (lambda (_%g153554153569%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153554153569%_))
                      (let ((_%e153556153571%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153554153569%_))))
                        (let ((_%hd153557153574%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153556153571%_)))
                              (_%tl153558153576%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153556153571%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153558153576%_))
                              (let ((_%e153559153579%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153558153576%_))))
                                (let ((_%hd153560153582%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153559153579%_)))
                                      (_%tl153561153584%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153559153579%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153561153584%_))
                                      ((lambda (_%L153587%_)
                                         (let ((_%$e153601%_
                                                (let ((__tmp153920
                                                       (lambda (_%sub153599%_)
                                                         (let ((__tmp153921
                                                                (car _%sub153599%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L153587%_
                                                            __tmp153921))))
                                                      (__tmp153919
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self153550%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp153920
                                                          __tmp153919))))
                                           (if _%$e153601%_
                                               ((lambda (_%sub153604%_)
                                                  (let ((__tmp153922
                                                         (cons '%#ref
                                                               (cons (cdr _%sub153604%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp153922
                                                     _%stx153551%_)))
                                                _%$e153601%_)
                                               _%stx153551%_)))
                                       _%hd153560153582%_)
                                      (_%g153553153566%_ _%g153554153569%_))))
                              (_%g153553153566%_ _%g153554153569%_))))
                      (_%g153553153566%_ _%g153554153569%_)))))
          (_%g153552153607%_ _%stx153551%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self153479%_ _%stx153480%_)
        (let* ((_%g153482153499%_
                (lambda (_%g153483153496%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153483153496%_))))
               (_%g153481153547%_
                (lambda (_%g153483153502%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153483153502%_))
                      (let ((_%e153486153504%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153483153502%_))))
                        (let ((_%hd153487153507%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153486153504%_)))
                              (_%tl153488153509%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153486153504%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153488153509%_))
                              (let ((_%e153489153512%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153488153509%_))))
                                (let ((_%hd153490153515%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153489153512%_)))
                                      (_%tl153491153517%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153489153512%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153491153517%_))
                                      (let ((_%e153492153520%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153491153517%_))))
                                        (let ((_%hd153493153523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153492153520%_)))
                                              (_%tl153494153525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153492153520%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153494153525%_))
                                              ((lambda (_%L153528%_
                                                        _%L153529%_)
                                                 (let ((_%new-expr153544%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self153479%_
                                                           _%L153528%_)))
                                                       (_%new-xid153545%_
                                                        (if (let ((__tmp153923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self153479%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L153529%_ __tmp153923))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self153479%_ 'new-id))
                    _%L153529%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp153924
                                                          (cons '%#set!
                                                                (cons _%new-xid153545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr153544%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153924
                                                      _%stx153480%_))))
                                               _%hd153493153523%_
                                               _%hd153490153515%_)
                                              (_%g153482153499%_
                                               _%g153483153502%_))))
                                      (_%g153482153499%_ _%g153483153502%_))))
                              (_%g153482153499%_ _%g153483153502%_))))
                      (_%g153482153499%_ _%g153483153502%_)))))
          (_%g153481153547%_ _%stx153480%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self153402%_ _%stx153403%_)
        (let* ((_%g153405153422%_
                (lambda (_%g153406153419%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153406153419%_))))
               (_%g153404153476%_
                (lambda (_%g153406153425%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153406153425%_))
                      (let ((_%e153409153427%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153406153425%_))))
                        (let ((_%hd153410153430%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153409153427%_)))
                              (_%tl153411153432%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153409153427%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153411153432%_))
                              (let ((_%e153412153435%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153411153432%_))))
                                (let ((_%hd153413153438%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153412153435%_)))
                                      (_%tl153414153440%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153412153435%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153414153440%_))
                                      (let ((_%e153415153443%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153414153440%_))))
                                        (let ((_%hd153416153446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153415153443%_)))
                                              (_%tl153417153448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153415153443%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153417153448%_))
                                              ((lambda (_%L153451%_
                                                        _%L153452%_)
                                                 (let ((_%new-expr153473%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self153402%_
                                                           _%L153451%_)))
                                                       (_%new-xid153474%_
                                                        (let ((_%$e153469%_
                                                               (let ((__tmp153926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub153467%_)
                                (let ((__tmp153927 (car _%sub153467%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L153452%_
                                   __tmp153927))))
                             (__tmp153925
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self153402%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp153926 __tmp153925))))
                  (if _%$e153469%_ (cdr _%$e153469%_) _%L153452%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp153928
                                                          (cons '%#set!
                                                                (cons _%new-xid153474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr153473%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153928
                                                      _%stx153403%_))))
                                               _%hd153416153446%_
                                               _%hd153413153438%_)
                                              (_%g153405153422%_
                                               _%g153406153425%_))))
                                      (_%g153405153422%_ _%g153406153425%_))))
                              (_%g153405153422%_ _%g153406153425%_))))
                      (_%g153405153422%_ _%g153406153425%_)))))
          (_%g153404153476%_ _%stx153403%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self153348%_ _%stx153349%_)
        (let* ((_%g153351153364%_
                (lambda (_%g153352153361%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153352153361%_))))
               (_%g153350153399%_
                (lambda (_%g153352153367%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153352153367%_))
                      (let ((_%e153354153369%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153352153367%_))))
                        (let ((_%hd153355153372%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153354153369%_)))
                              (_%tl153356153374%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153354153369%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153356153374%_))
                              (let ((_%e153357153377%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153356153374%_))))
                                (let ((_%hd153358153380%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153357153377%_)))
                                      (_%tl153359153382%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153357153377%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153359153382%_))
                                      ((lambda (_%L153385%_)
                                         (let* ((_%eid153397%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L153385%_)))
                                                (__tmp153929
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self153348%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp153929
                                            _%eid153397%_
                                            1+
                                            '0)))
                                       _%hd153358153380%_)
                                      (_%g153351153364%_ _%g153352153367%_))))
                              (_%g153351153364%_ _%g153352153367%_))))
                      (_%g153351153364%_ _%g153352153367%_)))))
          (_%g153350153399%_ _%stx153349%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self153278%_ _%stx153279%_)
        (let* ((_%g153281153298%_
                (lambda (_%g153282153295%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153282153295%_))))
               (_%g153280153345%_
                (lambda (_%g153282153301%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153282153301%_))
                      (let ((_%e153285153303%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153282153301%_))))
                        (let ((_%hd153286153306%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153285153303%_)))
                              (_%tl153287153308%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153285153303%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153287153308%_))
                              (let ((_%e153288153311%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153287153308%_))))
                                (let ((_%hd153289153314%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153288153311%_)))
                                      (_%tl153290153316%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153288153311%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153290153316%_))
                                      (let ((_%e153291153319%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153290153316%_))))
                                        (let ((_%hd153292153322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153291153319%_)))
                                              (_%tl153293153324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153291153319%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153293153324%_))
                                              ((lambda (_%L153327%_
                                                        _%L153328%_)
                                                 (let ((_%eid153343%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L153328%_))))
                                                   (let ((__tmp153930
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self153278%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp153930
                                                      _%eid153343%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self153278%_
                                                      _%L153327%_))))
                                               _%hd153292153322%_
                                               _%hd153289153314%_)
                                              (_%g153281153298%_
                                               _%g153282153301%_))))
                                      (_%g153281153298%_ _%g153282153301%_))))
                              (_%g153281153298%_ _%g153282153301%_))))
                      (_%g153281153298%_ _%g153282153301%_)))))
          (_%g153280153345%_ _%stx153279%_))))
    (define gxc#find-body%
      (lambda (_%self153191%_ _%stx153192%_)
        (let* ((_%g153194153213%_
                (lambda (_%g153195153210%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153195153210%_))))
               (_%g153193153275%_
                (lambda (_%g153195153216%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153195153216%_))
                      (let ((_%e153197153218%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153195153216%_))))
                        (let ((_%hd153198153221%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153197153218%_)))
                              (_%tl153199153223%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153197153218%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl153199153223%_))
                              (let ((_g153931_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl153199153223%_
                                        '0))))
                                (begin
                                  (let ((_g153932_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g153931_)
                                               (##vector-length _g153931_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g153932_ 2)))
                                        (error "Context expects 2 values"
                                               _g153932_)))
                                  (let ((_%target153200153226%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g153931_ 0)))
                                        (_%tl153202153228%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g153931_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl153202153228%_))
                                        (letrec ((_%loop153203153231%_
                                                  (lambda (_%hd153201153234%_
                                                           _%expr153207153236%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd153201153234%_))
                                                        (let ((_%e153204153239%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd153201153234%_))))
                  (let ((_%lp-hd153205153242%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153204153239%_)))
                        (_%lp-tl153206153244%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153204153239%_))))
                    (_%loop153203153231%_
                     _%lp-tl153206153244%_
                     (cons _%lp-hd153205153242%_ _%expr153207153236%_))))
                (let ((_%expr153208153247%_ (reverse _%expr153207153236%_)))
                  ((lambda (_%L153250%_)
                     (let ((__tmp153935
                            (lambda (_%g153263153265%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self153191%_
                                 _%g153263153265%_))))
                           (__tmp153933
                            (let ((__tmp153934
                                   (lambda (_%g153267153270%_
                                            _%g153268153272%_)
                                     (cons _%g153267153270%_
                                           _%g153268153272%_))))
                              (declare (not safe))
                              (__foldr1 __tmp153934 '() _%L153250%_))))
                       (declare (not safe))
                       (__ormap1 __tmp153935 __tmp153933)))
                   _%expr153208153247%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop153203153231%_
                                           _%target153200153226%_
                                           '()))
                                        (_%g153194153213%_
                                         _%g153195153216%_)))))
                              (_%g153194153213%_ _%g153195153216%_))))
                      (_%g153194153213%_ _%g153195153216%_)))))
          (_%g153193153275%_ _%stx153192%_))))
    (define gxc#find-let-values%
      (lambda (_%self153041%_ _%stx153042%_)
        (let* ((_%g153044153079%_
                (lambda (_%g153045153076%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153045153076%_))))
               (_%g153043153188%_
                (lambda (_%g153045153082%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153045153082%_))
                      (let ((_%e153049153084%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153045153082%_))))
                        (let ((_%hd153050153087%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153049153084%_)))
                              (_%tl153051153089%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153049153084%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153051153089%_))
                              (let ((_%e153052153092%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153051153089%_))))
                                (let ((_%hd153053153095%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153052153092%_)))
                                      (_%tl153054153097%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153052153092%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd153053153095%_))
                                      (let ((_g153936_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd153053153095%_
                                                '0))))
                                        (begin
                                          (let ((_g153937_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g153936_)
                                                       (##vector-length
                                                        _g153936_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g153937_ 2)))
                                                (error "Context expects 2 values"
                                                       _g153937_)))
                                          (let ((_%target153055153100%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g153936_ 0)))
                                                (_%tl153057153102%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g153936_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl153057153102%_))
                                                (letrec ((_%loop153058153105%_
                                                          (lambda (_%hd153056153108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr153062153110%_
                           _%bind153063153112%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd153056153108%_))
                        (let ((_%e153059153115%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd153056153108%_))))
                          (let ((_%lp-hd153060153118%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153059153115%_)))
                                (_%lp-tl153061153120%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153059153115%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd153060153118%_))
                                (let ((_%e153069153123%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd153060153118%_))))
                                  (let ((_%hd153070153126%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e153069153123%_)))
                                        (_%tl153071153128%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e153069153123%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153071153128%_))
                                        (let ((_%e153072153131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153071153128%_))))
                                          (let ((_%hd153073153134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153072153131%_)))
                                                (_%tl153074153136%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153072153131%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl153074153136%_))
                                                (_%loop153058153105%_
                                                 _%lp-tl153061153120%_
                                                 (cons _%hd153073153134%_
                                                       _%expr153062153110%_)
                                                 (cons _%hd153070153126%_
                                                       _%bind153063153112%_))
                                                (_%g153044153079%_
                                                 _%g153045153082%_))))
                                        (_%g153044153079%_
                                         _%g153045153082%_))))
                                (_%g153044153079%_ _%g153045153082%_))))
                        (let ((_%expr153064153139%_
                               (reverse _%expr153062153110%_))
                              (_%bind153065153141%_
                               (reverse _%bind153063153112%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153054153097%_))
                              (let ((_%e153066153144%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153054153097%_))))
                                (let ((_%hd153067153147%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153066153144%_)))
                                      (_%tl153068153149%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153066153144%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153068153149%_))
                                      ((lambda (_%L153152%_
                                                _%L153153%_
                                                _%L153154%_)
                                         (let ((_%$e153185%_
                                                (let ((__tmp153940
                                                       (lambda (_%g153173153175%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self153041%_
                                                            _%g153173153175%_))))
                                                      (__tmp153938
                                                       (let ((__tmp153939
                                                              (lambda (_%g153177153180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g153178153182%_)
                        (cons _%g153177153180%_ _%g153178153182%_))))
                 (declare (not safe))
                 (__foldr1 __tmp153939 '() _%L153153%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp153940
                                                   __tmp153938))))
                                           (if _%$e153185%_
                                               _%$e153185%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self153041%_
                                                  _%L153152%_)))))
                                       _%hd153067153147%_
                                       _%expr153064153139%_
                                       _%bind153065153141%_)
                                      (_%g153044153079%_ _%g153045153082%_))))
                              (_%g153044153079%_ _%g153045153082%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop153058153105%_
                                                   _%target153055153100%_
                                                   '()
                                                   '()))
                                                (_%g153044153079%_
                                                 _%g153045153082%_)))))
                                      (_%g153044153079%_ _%g153045153082%_))))
                              (_%g153044153079%_ _%g153045153082%_))))
                      (_%g153044153079%_ _%g153045153082%_)))))
          (_%g153043153188%_ _%stx153042%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self152985%_ _%stx152986%_)
        (let* ((_%g152988153001%_
                (lambda (_%g152989152998%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152989152998%_))))
               (_%g152987153038%_
                (lambda (_%g152989153004%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152989153004%_))
                      (let ((_%e152991153006%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152989153004%_))))
                        (let ((_%hd152992153009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152991153006%_)))
                              (_%tl152993153011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152991153006%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152993153011%_))
                              (let ((_%e152994153014%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152993153011%_))))
                                (let ((_%hd152995153017%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152994153014%_)))
                                      (_%tl152996153019%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152994153014%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl152996153019%_))
                                      ((lambda (_%L153022%_)
                                         (let ((__tmp153942
                                                (lambda (_%g153033153035%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L153022%_
                                                     _%g153033153035%_))))
                                               (__tmp153941
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self152985%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp153942 __tmp153941)))
                                       _%hd152995153017%_)
                                      (_%g152988153001%_ _%g152989153004%_))))
                              (_%g152988153001%_ _%g152989153004%_))))
                      (_%g152988153001%_ _%g152989153004%_)))))
          (_%g152987153038%_ _%stx152986%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self152910%_ _%stx152911%_)
        (let* ((_%g152913152930%_
                (lambda (_%g152914152927%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152914152927%_))))
               (_%g152912152982%_
                (lambda (_%g152914152933%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152914152933%_))
                      (let ((_%e152917152935%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152914152933%_))))
                        (let ((_%hd152918152938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152917152935%_)))
                              (_%tl152919152940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152917152935%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152919152940%_))
                              (let ((_%e152920152943%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152919152940%_))))
                                (let ((_%hd152921152946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152920152943%_)))
                                      (_%tl152922152948%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152920152943%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152922152948%_))
                                      (let ((_%e152923152951%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152922152948%_))))
                                        (let ((_%hd152924152954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152923152951%_)))
                                              (_%tl152925152956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152923152951%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152925152956%_))
                                              ((lambda (_%L152959%_
                                                        _%L152960%_)
                                                 (let ((_%$e152979%_
                                                        (let ((__tmp153944
                                                               (lambda (_%g152974152976%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L152960%_
                            _%g152974152976%_))))
                      (__tmp153943
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self152910%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp153944 __tmp153943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e152979%_
                                                       _%$e152979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self152910%_
                                                          _%L152959%_)))))
                                               _%hd152924152954%_
                                               _%hd152921152946%_)
                                              (_%g152913152930%_
                                               _%g152914152933%_))))
                                      (_%g152913152930%_ _%g152914152933%_))))
                              (_%g152913152930%_ _%g152914152933%_))))
                      (_%g152913152930%_ _%g152914152933%_)))))
          (_%g152912152982%_ _%stx152911%_))))))
