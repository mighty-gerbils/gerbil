(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1784471389)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp220906 (list gxc#::void::t))
            (__tmp220905 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp220906
         '()
         __tmp220905
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args220890%_
        (apply make-instance gxc#::collect-mutators::t _%$args220890%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp220907
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
        (__make-atomic-promise __tmp220907)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx220882%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self220885%_
                (let ((__obj220893
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj220893))
               (__tmp220908
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self220885%_ _%stx220882%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp220908
           gxc#current-compile-method
           _%self220885%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp220910 (list gxc#::basic-xform-expression::t))
            (__tmp220909 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp220910
         '(id new-id)
         __tmp220909
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args220879%_
        (apply make-instance gxc#::expression-subst::t _%$args220879%_)))
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
      (let ((__tmp220911
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
        (__make-atomic-promise __tmp220911)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords220851%_
               _%$%id220847220852%_
               _%$%new-id220848220853%_
               _%stx220854%_)
        (let* ((_%id220857%_
                (if (eq? _%$%id220847220852%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%$%id220847220852%_))
               (_%new-id220859%_
                (if (eq? _%$%new-id220848220853%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%$%new-id220848220853%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self220861%_
                  (let ((__obj220895
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj220895
                       _%id220857%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj220895
                       _%new-id220859%_
                       '2
                       '#f
                       '#f))
                    __obj220895))
                 (__tmp220912
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self220861%_ _%stx220854%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp220912
             gxc#current-compile-method
             _%self220861%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords220868%_ . _%args220869%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords220868%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords220868%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords220868%_
                  'new-id:
                  absent-value))
               _%args220869%_)))
    (define gxc#apply-expression-subst
      (lambda _%$%args220849220875%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%$%args220849220875%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp220914 (list gxc#::basic-xform-expression::t))
            (__tmp220913 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp220914
         '(subst)
         __tmp220913
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args220843%_
        (apply make-instance gxc#::expression-subst*::t _%$args220843%_)))
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
      (let ((__tmp220915
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
        (__make-atomic-promise __tmp220915)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords220818%_ _%$%subst220815220819%_ _%stx220820%_)
        (let ((_%subst220823%_
               (if (eq? _%$%subst220815220819%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst220815220819%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self220825%_
                  (let ((__obj220897
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj220897
                       _%subst220823%_
                       '1
                       '#f
                       '#f))
                    __obj220897))
                 (__tmp220916
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self220825%_ _%stx220820%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp220916
             gxc#current-compile-method
             _%self220825%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords220832%_ . _%args220833%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords220832%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords220832%_
                  'subst:
                  absent-value))
               _%args220833%_)))
    (define gxc#apply-expression-subst*
      (lambda _%$%args220816220839%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%$%args220816220839%_)))
    (define gxc#::inline-subst::t
      (let ((__tmp220918 (list gxc#::basic-xform-expression::t))
            (__tmp220917 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::inline-subst::t
         '::inline-subst
         __tmp220918
         '(subst)
         __tmp220917
         '#f)))
    (define gxc#::inline-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::inline-subst::t)))
    (define gxc#make-::inline-subst
      (lambda _%$args220811%_
        (apply make-instance gxc#::inline-subst::t _%$args220811%_)))
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
      (let ((__tmp220919
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
        (__make-atomic-promise __tmp220919)))
    (define gxc#apply-inline-subst__%
      (lambda (_%@@keywords220786%_ _%$%subst220783220787%_ _%stx220788%_)
        (let ((_%subst220791%_
               (if (eq? _%$%subst220783220787%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst220783220787%_)))
          (force gxc#::inline-subst-bind-methods!)
          (let* ((_%self220793%_
                  (let ((__obj220899
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::inline-subst::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj220899
                       _%subst220791%_
                       '1
                       '#f
                       '#f))
                    __obj220899))
                 (__tmp220920
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self220793%_ _%stx220788%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp220920
             gxc#current-compile-method
             _%self220793%_)))))
    (define gxc#apply-inline-subst__@
      (lambda (_%@@keywords220800%_ . _%args220801%_)
        (apply gxc#apply-inline-subst__%
               _%@@keywords220800%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords220800%_
                  'subst:
                  absent-value))
               _%args220801%_)))
    (define gxc#apply-inline-subst
      (lambda _%$%args220784220807%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-inline-subst__@
               _%$%args220784220807%_)))
    (define gxc#::find-expression::t
      (let ((__tmp220921 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp220921
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args220779%_
        (apply make-instance gxc#::find-expression::t _%$args220779%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp220922
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
        (__make-atomic-promise __tmp220922)))
    (define gxc#::find-var-refs::t
      (let ((__tmp220924 (list gxc#::find-expression::t))
            (__tmp220923 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp220924
         '(ids)
         __tmp220923
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args220775%_
        (apply make-instance gxc#::find-var-refs::t _%$args220775%_)))
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
      (let ((__tmp220925
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
        (__make-atomic-promise __tmp220925)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords220750%_ _%$%ids220747220751%_ _%stx220752%_)
        (let ((_%ids220755%_
               (if (eq? _%$%ids220747220751%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%$%ids220747220751%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self220757%_
                  (let ((__obj220902
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj220902
                       _%ids220755%_
                       '1
                       '#f
                       '#f))
                    __obj220902))
                 (__tmp220926
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self220757%_ _%stx220752%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp220926
             gxc#current-compile-method
             _%self220757%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords220764%_ . _%args220765%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords220764%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords220764%_ 'ids: absent-value))
               _%args220765%_)))
    (define gxc#apply-find-var-refs
      (lambda _%$%args220748220771%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%$%args220748220771%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp220928 (list gxc#::collect-expression-refs::t))
            (__tmp220927 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp220928
         '()
         __tmp220927
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args220743%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args220743%_)))
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
      (let ((__tmp220929
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
        (__make-atomic-promise __tmp220929)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords220718%_ _%$%table220715220719%_ _%stx220720%_)
        (let ((_%table220723%_
               (if (eq? _%$%table220715220719%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table220715220719%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self220725%_
                  (let ((__obj220904
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj220904
                       _%table220723%_
                       '1
                       '#f
                       '#f))
                    __obj220904))
                 (__tmp220930
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self220725%_ _%stx220720%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp220930
             gxc#current-compile-method
             _%self220725%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords220732%_ . _%args220733%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords220732%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords220732%_
                  'table:
                  absent-value))
               _%args220733%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%$%args220716220739%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%$%args220716220739%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self220644%_ _%stx220645%_)
        (let* ((_%$%g220647220664%_
                (lambda (_%$%g220648220661%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220648220661%_))))
               (_%$%g220646220711%_
                (lambda (_%$%g220648220667%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220648220667%_))
                      (let ((_%$%e220651220669%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220648220667%_))))
                        (let ((_%$%hd220652220672%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220651220669%_)))
                              (_%$%tl220653220674%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220651220669%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220653220674%_))
                              (let ((_%$%e220654220677%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220653220674%_))))
                                (let ((_%$%hd220655220680%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220654220677%_)))
                                      (_%$%tl220656220682%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220654220677%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl220656220682%_))
                                      (let ((_%$%e220657220685%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl220656220682%_))))
                                        (let ((_%$%hd220658220688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e220657220685%_)))
                                              (_%$%tl220659220690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e220657220685%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl220659220690%_))
                                              (let ((_%sym220709%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd220655220680%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"collect mutator "
                                                   _%sym220709%_))
                                                (let ((__tmp220931
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#current-compile-mutators))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp220931
                                                   _%sym220709%_
                                                   '#t))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self220644%_
                                                   _%$%hd220658220688%_)))
                                              (_%$%g220647220664%_
                                               _%$%g220648220667%_))))
                                      (_%$%g220647220664%_
                                       _%$%g220648220667%_))))
                              (_%$%g220647220664%_ _%$%g220648220667%_))))
                      (_%$%g220647220664%_ _%$%g220648220667%_)))))
          (_%$%g220646220711%_ _%stx220645%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self220592%_ _%stx220593%_)
        (let* ((_%$%g220595220608%_
                (lambda (_%$%g220596220605%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220596220605%_))))
               (_%$%g220594220641%_
                (lambda (_%$%g220596220611%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220596220611%_))
                      (let ((_%$%e220598220613%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220596220611%_))))
                        (let ((_%$%hd220599220616%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220598220613%_)))
                              (_%$%tl220600220618%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220598220613%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220600220618%_))
                              (let ((_%$%e220601220621%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220600220618%_))))
                                (let ((_%$%hd220602220624%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220601220621%_)))
                                      (_%$%tl220603220626%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220601220621%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl220603220626%_))
                                      (if (let ((__tmp220932
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self220592%_
                                                    'id))))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             _%$%hd220602220624%_
                                             __tmp220932))
                                          (let ((__tmp220933
                                                 (cons '%#ref
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (slot-ref__0 _%self220592%_ 'new-id))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp220933
                                             _%stx220593%_))
                                          _%stx220593%_)
                                      (_%$%g220595220608%_
                                       _%$%g220596220611%_))))
                              (_%$%g220595220608%_ _%$%g220596220611%_))))
                      (_%$%g220595220608%_ _%$%g220596220611%_)))))
          (_%$%g220594220641%_ _%stx220593%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self220532%_ _%stx220533%_)
        (let* ((_%$%g220535220548%_
                (lambda (_%$%g220536220545%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220536220545%_))))
               (_%$%g220534220589%_
                (lambda (_%$%g220536220551%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220536220551%_))
                      (let ((_%$%e220538220553%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220536220551%_))))
                        (let ((_%$%hd220539220556%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220538220553%_)))
                              (_%$%tl220540220558%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220538220553%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220540220558%_))
                              (let ((_%$%e220541220561%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220540220558%_))))
                                (let ((_%$%hd220542220564%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220541220561%_)))
                                      (_%$%tl220543220566%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220541220561%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl220543220566%_))
                                      (let ((_%$e220583%_
                                             (let ((__tmp220935
                                                    (lambda (_%sub220581%_)
                                                      (let ((__tmp220936
                                                             (car _%sub220581%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd220542220564%_
                                                         __tmp220936))))
                                                   (__tmp220934
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self220532%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp220935
                                                       __tmp220934))))
                                        (if _%$e220583%_
                                            (let ((__tmp220937
                                                   (cons '%#ref
                                                         (cons (cdr _%$e220583%_)
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp220937
                                               _%stx220533%_))
                                            _%stx220533%_))
                                      (_%$%g220535220548%_
                                       _%$%g220536220551%_))))
                              (_%$%g220535220548%_ _%$%g220536220551%_))))
                      (_%$%g220535220548%_ _%$%g220536220551%_)))))
          (_%$%g220534220589%_ _%stx220533%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self220461%_ _%stx220462%_)
        (let* ((_%$%g220464220481%_
                (lambda (_%$%g220465220478%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220465220478%_))))
               (_%$%g220463220529%_
                (lambda (_%$%g220465220484%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220465220484%_))
                      (let ((_%$%e220468220486%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220465220484%_))))
                        (let ((_%$%hd220469220489%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220468220486%_)))
                              (_%$%tl220470220491%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220468220486%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220470220491%_))
                              (let ((_%$%e220471220494%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220470220491%_))))
                                (let ((_%$%hd220472220497%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220471220494%_)))
                                      (_%$%tl220473220499%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220471220494%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl220473220499%_))
                                      (let ((_%$%e220474220502%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl220473220499%_))))
                                        (let ((_%$%hd220475220505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e220474220502%_)))
                                              (_%$%tl220476220507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e220474220502%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl220476220507%_))
                                              (let ((_%new-expr220526%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self220461%_
                                                        _%$%hd220475220505%_)))
                                                    (_%new-xid220527%_
                                                     (if (let ((__tmp220938
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self220461%_ 'id))))
                   (declare (not safe))
                   (gx#free-identifier=? _%$%hd220472220497%_ __tmp220938))
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self220461%_ 'new-id))
                 _%$%hd220472220497%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp220939
                                                       (cons '%#set!
                                                             (cons _%new-xid220527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr220526%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp220939
                                                   _%stx220462%_)))
                                              (_%$%g220464220481%_
                                               _%$%g220465220484%_))))
                                      (_%$%g220464220481%_
                                       _%$%g220465220484%_))))
                              (_%$%g220464220481%_ _%$%g220465220484%_))))
                      (_%$%g220464220481%_ _%$%g220465220484%_)))))
          (_%$%g220463220529%_ _%stx220462%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self220384%_ _%stx220385%_)
        (let* ((_%$%g220387220404%_
                (lambda (_%$%g220388220401%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220388220401%_))))
               (_%$%g220386220458%_
                (lambda (_%$%g220388220407%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220388220407%_))
                      (let ((_%$%e220391220409%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220388220407%_))))
                        (let ((_%$%hd220392220412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220391220409%_)))
                              (_%$%tl220393220414%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220391220409%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220393220414%_))
                              (let ((_%$%e220394220417%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220393220414%_))))
                                (let ((_%$%hd220395220420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220394220417%_)))
                                      (_%$%tl220396220422%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220394220417%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl220396220422%_))
                                      (let ((_%$%e220397220425%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl220396220422%_))))
                                        (let ((_%$%hd220398220428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e220397220425%_)))
                                              (_%$%tl220399220430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e220397220425%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl220399220430%_))
                                              (let ((_%new-expr220455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self220384%_
                                                        _%$%hd220398220428%_)))
                                                    (_%new-xid220456%_
                                                     (let ((_%$e220451%_
                                                            (let ((__tmp220941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%sub220449%_)
                             (let ((__tmp220942 (car _%sub220449%_)))
                               (declare (not safe))
                               (gx#free-identifier=?
                                _%$%hd220395220420%_
                                __tmp220942))))
                          (__tmp220940
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self220384%_ 'subst))))
                      (declare (not safe))
                      (__find __tmp220941 __tmp220940))))
               (if _%$e220451%_ (cdr _%$e220451%_) _%$%hd220395220420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp220943
                                                       (cons '%#set!
                                                             (cons _%new-xid220456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr220455%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp220943
                                                   _%stx220385%_)))
                                              (_%$%g220387220404%_
                                               _%$%g220388220407%_))))
                                      (_%$%g220387220404%_
                                       _%$%g220388220407%_))))
                              (_%$%g220387220404%_ _%$%g220388220407%_))))
                      (_%$%g220387220404%_ _%$%g220388220407%_)))))
          (_%$%g220386220458%_ _%stx220385%_))))
    (define gxc#inline-subst-ref%
      (lambda (_%self220324%_ _%stx220325%_)
        (let* ((_%$%g220327220340%_
                (lambda (_%$%g220328220337%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220328220337%_))))
               (_%$%g220326220381%_
                (lambda (_%$%g220328220343%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220328220343%_))
                      (let ((_%$%e220330220345%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220328220343%_))))
                        (let ((_%$%hd220331220348%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220330220345%_)))
                              (_%$%tl220332220350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220330220345%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220332220350%_))
                              (let ((_%$%e220333220353%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220332220350%_))))
                                (let ((_%$%hd220334220356%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220333220353%_)))
                                      (_%$%tl220335220358%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220333220353%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl220335220358%_))
                                      (let ((_%$e220375%_
                                             (let ((__tmp220945
                                                    (lambda (_%sub220373%_)
                                                      (let ((__tmp220946
                                                             (car _%sub220373%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd220334220356%_
                                                         __tmp220946))))
                                                   (__tmp220944
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self220324%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp220945
                                                       __tmp220944))))
                                        (if _%$e220375%_
                                            (let ((__tmp220947
                                                   (cdr _%$e220375%_)))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp220947
                                               _%stx220325%_))
                                            _%stx220325%_))
                                      (_%$%g220327220340%_
                                       _%$%g220328220343%_))))
                              (_%$%g220327220340%_ _%$%g220328220343%_))))
                      (_%$%g220327220340%_ _%$%g220328220343%_)))))
          (_%$%g220326220381%_ _%stx220325%_))))
    (define gxc#inline-subst-setq%
      (lambda (_%self220254%_ _%stx220255%_)
        (let* ((_%$%g220257220274%_
                (lambda (_%$%g220258220271%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220258220271%_))))
               (_%$%g220256220321%_
                (lambda (_%$%g220258220277%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220258220277%_))
                      (let ((_%$%e220261220279%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220258220277%_))))
                        (let ((_%$%hd220262220282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220261220279%_)))
                              (_%$%tl220263220284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220261220279%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220263220284%_))
                              (let ((_%$%e220264220287%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220263220284%_))))
                                (let ((_%$%hd220265220290%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220264220287%_)))
                                      (_%$%tl220266220292%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220264220287%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl220266220292%_))
                                      (let ((_%$%e220267220295%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl220266220292%_))))
                                        (let ((_%$%hd220268220298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e220267220295%_)))
                                              (_%$%tl220269220300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e220267220295%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl220269220300%_))
                                              (if (let ((__tmp220949
                                                         (lambda (_%sub220319%_)
                                                           (let ((__tmp220950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (car _%sub220319%_)))
                     (declare (not safe))
                     (gx#free-identifier=? _%$%hd220265220290%_ __tmp220950))))
                (__tmp220948
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self220254%_ 'subst))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__find __tmp220949
                                                            __tmp220948))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"mutating inline substitution"
                                                     _%stx220255%_
                                                     _%$%hd220265220290%_))
                                                  (let ((__tmp220951
                                                         (cons '%#set!
                                                               (cons _%$%hd220265220290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self220254%_
                                      _%$%hd220268220298%_))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp220951
                                                     _%stx220255%_)))
                                              (_%$%g220257220274%_
                                               _%$%g220258220277%_))))
                                      (_%$%g220257220274%_
                                       _%$%g220258220277%_))))
                              (_%$%g220257220274%_ _%$%g220258220277%_))))
                      (_%$%g220257220274%_ _%$%g220258220277%_)))))
          (_%$%g220256220321%_ _%stx220255%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self220200%_ _%stx220201%_)
        (let* ((_%$%g220203220216%_
                (lambda (_%$%g220204220213%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220204220213%_))))
               (_%$%g220202220251%_
                (lambda (_%$%g220204220219%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220204220219%_))
                      (let ((_%$%e220206220221%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220204220219%_))))
                        (let ((_%$%hd220207220224%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220206220221%_)))
                              (_%$%tl220208220226%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220206220221%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220208220226%_))
                              (let ((_%$%e220209220229%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220208220226%_))))
                                (let ((_%$%hd220210220232%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220209220229%_)))
                                      (_%$%tl220211220234%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220209220229%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl220211220234%_))
                                      (let* ((_%eid220249%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%$%hd220210220232%_)))
                                             (__tmp220952
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self220200%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-update!__%
                                         __tmp220952
                                         _%eid220249%_
                                         1+
                                         '0))
                                      (_%$%g220203220216%_
                                       _%$%g220204220219%_))))
                              (_%$%g220203220216%_ _%$%g220204220219%_))))
                      (_%$%g220203220216%_ _%$%g220204220219%_)))))
          (_%$%g220202220251%_ _%stx220201%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self220130%_ _%stx220131%_)
        (let* ((_%$%g220133220150%_
                (lambda (_%$%g220134220147%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220134220147%_))))
               (_%$%g220132220197%_
                (lambda (_%$%g220134220153%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220134220153%_))
                      (let ((_%$%e220137220155%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220134220153%_))))
                        (let ((_%$%hd220138220158%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220137220155%_)))
                              (_%$%tl220139220160%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220137220155%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220139220160%_))
                              (let ((_%$%e220140220163%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220139220160%_))))
                                (let ((_%$%hd220141220166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220140220163%_)))
                                      (_%$%tl220142220168%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220140220163%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl220142220168%_))
                                      (let ((_%$%e220143220171%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl220142220168%_))))
                                        (let ((_%$%hd220144220174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e220143220171%_)))
                                              (_%$%tl220145220176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e220143220171%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl220145220176%_))
                                              (let ((_%eid220195%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd220141220166%_))))
                                                (let ((__tmp220953
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self220130%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-update!__%
                                                   __tmp220953
                                                   _%eid220195%_
                                                   1+
                                                   '0))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self220130%_
                                                   _%$%hd220144220174%_)))
                                              (_%$%g220133220150%_
                                               _%$%g220134220153%_))))
                                      (_%$%g220133220150%_
                                       _%$%g220134220153%_))))
                              (_%$%g220133220150%_ _%$%g220134220153%_))))
                      (_%$%g220133220150%_ _%$%g220134220153%_)))))
          (_%$%g220132220197%_ _%stx220131%_))))
    (define gxc#find-body%
      (lambda (_%self220045%_ _%stx220046%_)
        (let* ((_%$%g220048220067%_
                (lambda (_%$%g220049220064%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220049220064%_))))
               (_%$%g220047220127%_
                (lambda (_%$%g220049220070%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220049220070%_))
                      (let ((_%$%e220051220072%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220049220070%_))))
                        (let ((_%$%hd220052220075%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220051220072%_)))
                              (_%$%tl220053220077%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220051220072%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl220053220077%_))
                              (let ((_g220954_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl220053220077%_
                                        '0))))
                                (begin
                                  (let ((_g220955_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g220954_)
                                               (##values-length _g220954_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g220955_ 2)))
                                        (error "Context expects 2 values"
                                               _g220955_)))
                                  (let ((_%$%target220054220080%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g220954_ 0)))
                                        (_%$%tl220056220082%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g220954_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl220056220082%_))
                                        (letrec ((_%$%loop220057220085%_
                                                  (lambda (_%$%hd220055220088%_
                                                           _%$%expr220061220090%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd220055220088%_))
                                                        (let ((_%$%e220058220092%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd220055220088%_))))
                  (let ((_%$%lp-hd220059220095%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e220058220092%_)))
                        (_%$%lp-tl220060220097%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e220058220092%_))))
                    (_%$%loop220057220085%_
                     _%$%lp-tl220060220097%_
                     (cons _%$%lp-hd220059220095%_ _%$%expr220061220090%_))))
                (let ((_%$%expr220062220100%_
                       (reverse _%$%expr220061220090%_)))
                  (let ((__tmp220958
                         (lambda (_%$%g220115220117%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self220045%_
                              _%$%g220115220117%_))))
                        (__tmp220956
                         (let ((__tmp220957
                                (lambda (_%$%g220119220122%_
                                         _%$%g220120220124%_)
                                  (cons _%$%g220119220122%_
                                        _%$%g220120220124%_))))
                           (declare (not safe))
                           (foldr__0 __tmp220957 '() _%$%expr220062220100%_))))
                    (declare (not safe))
                    (ormap__0 __tmp220958 __tmp220956)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop220057220085%_
                                           _%$%target220054220080%_
                                           '()))
                                        (_%$%g220048220067%_
                                         _%$%g220049220070%_)))))
                              (_%$%g220048220067%_ _%$%g220049220070%_))))
                      (_%$%g220048220067%_ _%$%g220049220070%_)))))
          (_%$%g220047220127%_ _%stx220046%_))))
    (define gxc#find-let-values%
      (lambda (_%self219899%_ _%stx219900%_)
        (let* ((_%$%g219902219937%_
                (lambda (_%$%g219903219934%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g219903219934%_))))
               (_%$%g219901220042%_
                (lambda (_%$%g219903219940%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g219903219940%_))
                      (let ((_%$%e219907219942%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g219903219940%_))))
                        (let ((_%$%hd219908219945%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e219907219942%_)))
                              (_%$%tl219909219947%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e219907219942%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl219909219947%_))
                              (let ((_%$%e219910219950%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl219909219947%_))))
                                (let ((_%$%hd219911219953%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e219910219950%_)))
                                      (_%$%tl219912219955%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e219910219950%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd219911219953%_))
                                      (let ((_g220959_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd219911219953%_
                                                '0))))
                                        (begin
                                          (let ((_g220960_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g220959_)
                                                       (##values-length
                                                        _g220959_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g220960_ 2)))
                                                (error "Context expects 2 values"
                                                       _g220960_)))
                                          (let ((_%$%target219913219958%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g220959_ 0)))
                                                (_%$%tl219915219960%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g220959_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl219915219960%_))
                                                (letrec ((_%$%loop219916219963%_
                                                          (lambda (_%$%hd219914219966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr219920219968%_
                           _%$%bind219921219969%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd219914219966%_))
                        (let ((_%$%e219917219971%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd219914219966%_))))
                          (let ((_%$%lp-hd219918219974%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e219917219971%_)))
                                (_%$%lp-tl219919219976%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e219917219971%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd219918219974%_))
                                (let ((_%$%e219924219979%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd219918219974%_))))
                                  (let ((_%$%hd219925219982%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e219924219979%_)))
                                        (_%$%tl219926219984%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e219924219979%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl219926219984%_))
                                        (let ((_%$%e219927219987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl219926219984%_))))
                                          (let ((_%$%hd219928219990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e219927219987%_)))
                                                (_%$%tl219929219992%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e219927219987%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl219929219992%_))
                                                (_%$%loop219916219963%_
                                                 _%$%lp-tl219919219976%_
                                                 (cons _%$%hd219928219990%_
                                                       _%$%expr219920219968%_)
                                                 (cons _%$%hd219925219982%_
                                                       _%$%bind219921219969%_))
                                                (_%$%g219902219937%_
                                                 _%$%g219903219940%_))))
                                        (_%$%g219902219937%_
                                         _%$%g219903219940%_))))
                                (_%$%g219902219937%_ _%$%g219903219940%_))))
                        (let ((_%$%expr219922219995%_
                               (reverse _%$%expr219920219968%_))
                              (_%$%bind219923219996%_
                               (reverse _%$%bind219921219969%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl219912219955%_))
                              (let ((_%$%e219930219998%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl219912219955%_))))
                                (let ((_%$%hd219931220001%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e219930219998%_)))
                                      (_%$%tl219932220003%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e219930219998%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl219932220003%_))
                                      (let ((_%$e220039%_
                                             (let ((__tmp220963
                                                    (lambda (_%$%g220027220029%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self219899%_
                                                         _%$%g220027220029%_))))
                                                   (__tmp220961
                                                    (let ((__tmp220962
                                                           (lambda (_%$%g220031220034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g220032220036%_)
                     (cons _%$%g220031220034%_ _%$%g220032220036%_))))
              (declare (not safe))
              (foldr__0 __tmp220962 '() _%$%expr219922219995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (ormap__0
                                                __tmp220963
                                                __tmp220961))))
                                        (if _%$e220039%_
                                            _%$e220039%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self219899%_
                                               _%$%hd219931220001%_))))
                                      (_%$%g219902219937%_
                                       _%$%g219903219940%_))))
                              (_%$%g219902219937%_ _%$%g219903219940%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop219916219963%_
                                                   _%$%target219913219958%_
                                                   '()
                                                   '()))
                                                (_%$%g219902219937%_
                                                 _%$%g219903219940%_)))))
                                      (_%$%g219902219937%_
                                       _%$%g219903219940%_))))
                              (_%$%g219902219937%_ _%$%g219903219940%_))))
                      (_%$%g219902219937%_ _%$%g219903219940%_)))))
          (_%$%g219901220042%_ _%stx219900%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self219843%_ _%stx219844%_)
        (let* ((_%$%g219846219859%_
                (lambda (_%$%g219847219856%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g219847219856%_))))
               (_%$%g219845219896%_
                (lambda (_%$%g219847219862%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g219847219862%_))
                      (let ((_%$%e219849219864%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g219847219862%_))))
                        (let ((_%$%hd219850219867%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e219849219864%_)))
                              (_%$%tl219851219869%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e219849219864%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl219851219869%_))
                              (let ((_%$%e219852219872%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl219851219869%_))))
                                (let ((_%$%hd219853219875%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e219852219872%_)))
                                      (_%$%tl219854219877%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e219852219872%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl219854219877%_))
                                      (let ((__tmp220965
                                             (lambda (_%$%g219891219893%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%hd219853219875%_
                                                  _%$%g219891219893%_))))
                                            (__tmp220964
                                             (let ()
                                               (declare (not safe))
                                               (slot-ref__0
                                                _%self219843%_
                                                'ids))))
                                        (declare (not safe))
                                        (__find __tmp220965 __tmp220964))
                                      (_%$%g219846219859%_
                                       _%$%g219847219862%_))))
                              (_%$%g219846219859%_ _%$%g219847219862%_))))
                      (_%$%g219846219859%_ _%$%g219847219862%_)))))
          (_%$%g219845219896%_ _%stx219844%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self219768%_ _%stx219769%_)
        (let* ((_%$%g219771219788%_
                (lambda (_%$%g219772219785%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g219772219785%_))))
               (_%$%g219770219840%_
                (lambda (_%$%g219772219791%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g219772219791%_))
                      (let ((_%$%e219775219793%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g219772219791%_))))
                        (let ((_%$%hd219776219796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e219775219793%_)))
                              (_%$%tl219777219798%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e219775219793%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl219777219798%_))
                              (let ((_%$%e219778219801%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl219777219798%_))))
                                (let ((_%$%hd219779219804%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e219778219801%_)))
                                      (_%$%tl219780219806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e219778219801%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl219780219806%_))
                                      (let ((_%$%e219781219809%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl219780219806%_))))
                                        (let ((_%$%hd219782219812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e219781219809%_)))
                                              (_%$%tl219783219814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e219781219809%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl219783219814%_))
                                              (let ((_%$e219837%_
                                                     (let ((__tmp220967
                                                            (lambda (_%$%g219832219834%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#free-identifier=?
                         _%$%hd219779219804%_
                         _%$%g219832219834%_))))
                   (__tmp220966
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self219768%_ 'ids))))
               (declare (not safe))
               (__find __tmp220967 __tmp220966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _%$e219837%_
                                                    _%$e219837%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self219768%_
                                                       _%$%hd219782219812%_))))
                                              (_%$%g219771219788%_
                                               _%$%g219772219791%_))))
                                      (_%$%g219771219788%_
                                       _%$%g219772219791%_))))
                              (_%$%g219771219788%_ _%$%g219772219791%_))))
                      (_%$%g219771219788%_ _%$%g219772219791%_)))))
          (_%$%g219770219840%_ _%stx219769%_))))))
