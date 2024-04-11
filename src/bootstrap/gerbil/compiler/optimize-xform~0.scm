(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712836659)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp151766 (list gxc#::void::t))
            (__tmp151765 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp151766
         '()
         __tmp151765
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args151752%_
        (apply make-instance gxc#::collect-mutators::t _%$args151752%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp151767
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
        (__make-promise __tmp151767)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx151744%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self151747%_
                (let ((__obj151755
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj151755))
               (__tmp151768
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self151747%_ _%stx151744%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151768
           gxc#current-compile-method
           _%self151747%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp151770 (list gxc#::basic-xform-expression::t))
            (__tmp151769 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp151770
         '(id new-id)
         __tmp151769
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args151741%_
        (apply make-instance gxc#::expression-subst::t _%$args151741%_)))
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
      (let ((__tmp151771
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
        (__make-promise __tmp151771)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords151711%_
               _%id151707151712%_
               _%new-id151708151714%_
               _%stx151716%_)
        (let* ((_%id151719%_
                (if (eq? _%id151707151712%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id151707151712%_))
               (_%new-id151721%_
                (if (eq? _%new-id151708151714%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id151708151714%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self151723%_
                  (let ((__obj151757
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151757
                       _%id151719%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151757
                       _%new-id151721%_
                       '2
                       '#f
                       '#f))
                    __obj151757))
                 (__tmp151772
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151723%_ _%stx151716%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151772
             gxc#current-compile-method
             _%self151723%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords151730%_ . _%args151731%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords151730%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151730%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151730%_
                  'new-id:
                  absent-value))
               _%args151731%_)))
    (define gxc#apply-expression-subst
      (lambda _%args151709151737%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args151709151737%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp151774 (list gxc#::basic-xform-expression::t))
            (__tmp151773 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp151774
         '(subst)
         __tmp151773
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args151703%_
        (apply make-instance gxc#::expression-subst*::t _%$args151703%_)))
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
      (let ((__tmp151775
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
        (__make-promise __tmp151775)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords151677%_ _%subst151674151678%_ _%stx151680%_)
        (let ((_%subst151683%_
               (if (eq? _%subst151674151678%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst151674151678%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self151685%_
                  (let ((__obj151759
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151759
                       _%subst151683%_
                       '1
                       '#f
                       '#f))
                    __obj151759))
                 (__tmp151776
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151685%_ _%stx151680%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151776
             gxc#current-compile-method
             _%self151685%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords151692%_ . _%args151693%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords151692%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151692%_
                  'subst:
                  absent-value))
               _%args151693%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args151675151699%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args151675151699%_)))
    (define gxc#::find-expression::t
      (let ((__tmp151777 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp151777
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args151670%_
        (apply make-instance gxc#::find-expression::t _%$args151670%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp151778
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
        (__make-promise __tmp151778)))
    (define gxc#::find-var-refs::t
      (let ((__tmp151780 (list gxc#::find-expression::t))
            (__tmp151779 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp151780
         '(ids)
         __tmp151779
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args151666%_
        (apply make-instance gxc#::find-var-refs::t _%$args151666%_)))
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
      (let ((__tmp151781
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
        (__make-promise __tmp151781)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords151640%_ _%ids151637151641%_ _%stx151643%_)
        (let ((_%ids151646%_
               (if (eq? _%ids151637151641%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids151637151641%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self151648%_
                  (let ((__obj151762
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151762
                       _%ids151646%_
                       '1
                       '#f
                       '#f))
                    __obj151762))
                 (__tmp151782
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151648%_ _%stx151643%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151782
             gxc#current-compile-method
             _%self151648%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords151655%_ . _%args151656%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords151655%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151655%_ 'ids: absent-value))
               _%args151656%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args151638151662%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args151638151662%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp151784 (list gxc#::collect-expression-refs::t))
            (__tmp151783 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp151784
         '()
         __tmp151783
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args151633%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args151633%_)))
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
      (let ((__tmp151785
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
        (__make-promise __tmp151785)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords151607%_ _%table151604151608%_ _%stx151610%_)
        (let ((_%table151613%_
               (if (eq? _%table151604151608%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table151604151608%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self151615%_
                  (let ((__obj151764
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151764
                       _%table151613%_
                       '1
                       '#f
                       '#f))
                    __obj151764))
                 (__tmp151786
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151615%_ _%stx151610%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151786
             gxc#current-compile-method
             _%self151615%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords151622%_ . _%args151623%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords151622%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151622%_
                  'table:
                  absent-value))
               _%args151623%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args151605151629%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args151605151629%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self151533%_ _%stx151534%_)
        (let* ((_%g151536151553%_
                (lambda (_%g151537151550%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151537151550%_))))
               (_%g151535151600%_
                (lambda (_%g151537151556%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151537151556%_))
                      (let ((_%e151540151558%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151537151556%_))))
                        (let ((_%hd151541151561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151540151558%_)))
                              (_%tl151542151563%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151540151558%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151542151563%_))
                              (let ((_%e151543151566%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151542151563%_))))
                                (let ((_%hd151544151569%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151543151566%_)))
                                      (_%tl151545151571%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151543151566%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151545151571%_))
                                      (let ((_%e151546151574%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151545151571%_))))
                                        (let ((_%hd151547151577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151546151574%_)))
                                              (_%tl151548151579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151546151574%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151548151579%_))
                                              ((lambda (_%L151582%_
                                                        _%L151583%_)
                                                 (let ((_%sym151598%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L151583%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym151598%_))
                                                   (let ((__tmp151787
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp151787
                                                      _%sym151598%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151533%_
                                                      _%L151582%_))))
                                               _%hd151547151577%_
                                               _%hd151544151569%_)
                                              (_%g151536151553%_
                                               _%g151537151556%_))))
                                      (_%g151536151553%_ _%g151537151556%_))))
                              (_%g151536151553%_ _%g151537151556%_))))
                      (_%g151536151553%_ _%g151537151556%_)))))
          (_%g151535151600%_ _%stx151534%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self151481%_ _%stx151482%_)
        (let* ((_%g151484151497%_
                (lambda (_%g151485151494%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151485151494%_))))
               (_%g151483151530%_
                (lambda (_%g151485151500%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151485151500%_))
                      (let ((_%e151487151502%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151485151500%_))))
                        (let ((_%hd151488151505%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151487151502%_)))
                              (_%tl151489151507%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151487151502%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151489151507%_))
                              (let ((_%e151490151510%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151489151507%_))))
                                (let ((_%hd151491151513%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151490151510%_)))
                                      (_%tl151492151515%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151490151510%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151492151515%_))
                                      ((lambda (_%L151518%_)
                                         (if (let ((__tmp151788
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self151481%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L151518%_
                                                __tmp151788))
                                             (let ((__tmp151789
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self151481%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp151789
                                                _%stx151482%_))
                                             _%stx151482%_))
                                       _%hd151491151513%_)
                                      (_%g151484151497%_ _%g151485151500%_))))
                              (_%g151484151497%_ _%g151485151500%_))))
                      (_%g151484151497%_ _%g151485151500%_)))))
          (_%g151483151530%_ _%stx151482%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self151421%_ _%stx151422%_)
        (let* ((_%g151424151437%_
                (lambda (_%g151425151434%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151425151434%_))))
               (_%g151423151478%_
                (lambda (_%g151425151440%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151425151440%_))
                      (let ((_%e151427151442%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151425151440%_))))
                        (let ((_%hd151428151445%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151427151442%_)))
                              (_%tl151429151447%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151427151442%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151429151447%_))
                              (let ((_%e151430151450%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151429151447%_))))
                                (let ((_%hd151431151453%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151430151450%_)))
                                      (_%tl151432151455%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151430151450%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151432151455%_))
                                      ((lambda (_%L151458%_)
                                         (let ((_%$e151472%_
                                                (let ((__tmp151791
                                                       (lambda (_%sub151470%_)
                                                         (let ((__tmp151792
                                                                (car _%sub151470%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L151458%_
                                                            __tmp151792))))
                                                      (__tmp151790
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self151421%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp151791
                                                          __tmp151790))))
                                           (if _%$e151472%_
                                               ((lambda (_%sub151475%_)
                                                  (let ((__tmp151793
                                                         (cons '%#ref
                                                               (cons (cdr _%sub151475%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp151793
                                                     _%stx151422%_)))
                                                _%$e151472%_)
                                               _%stx151422%_)))
                                       _%hd151431151453%_)
                                      (_%g151424151437%_ _%g151425151440%_))))
                              (_%g151424151437%_ _%g151425151440%_))))
                      (_%g151424151437%_ _%g151425151440%_)))))
          (_%g151423151478%_ _%stx151422%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self151350%_ _%stx151351%_)
        (let* ((_%g151353151370%_
                (lambda (_%g151354151367%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151354151367%_))))
               (_%g151352151418%_
                (lambda (_%g151354151373%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151354151373%_))
                      (let ((_%e151357151375%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151354151373%_))))
                        (let ((_%hd151358151378%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151357151375%_)))
                              (_%tl151359151380%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151357151375%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151359151380%_))
                              (let ((_%e151360151383%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151359151380%_))))
                                (let ((_%hd151361151386%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151360151383%_)))
                                      (_%tl151362151388%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151360151383%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151362151388%_))
                                      (let ((_%e151363151391%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151362151388%_))))
                                        (let ((_%hd151364151394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151363151391%_)))
                                              (_%tl151365151396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151363151391%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151365151396%_))
                                              ((lambda (_%L151399%_
                                                        _%L151400%_)
                                                 (let ((_%new-expr151415%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151350%_
                                                           _%L151399%_)))
                                                       (_%new-xid151416%_
                                                        (if (let ((__tmp151794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self151350%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L151400%_ __tmp151794))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self151350%_ 'new-id))
                    _%L151400%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151795
                                                          (cons '%#set!
                                                                (cons _%new-xid151416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151415%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151795
                                                      _%stx151351%_))))
                                               _%hd151364151394%_
                                               _%hd151361151386%_)
                                              (_%g151353151370%_
                                               _%g151354151373%_))))
                                      (_%g151353151370%_ _%g151354151373%_))))
                              (_%g151353151370%_ _%g151354151373%_))))
                      (_%g151353151370%_ _%g151354151373%_)))))
          (_%g151352151418%_ _%stx151351%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self151273%_ _%stx151274%_)
        (let* ((_%g151276151293%_
                (lambda (_%g151277151290%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151277151290%_))))
               (_%g151275151347%_
                (lambda (_%g151277151296%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151277151296%_))
                      (let ((_%e151280151298%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151277151296%_))))
                        (let ((_%hd151281151301%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151280151298%_)))
                              (_%tl151282151303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151280151298%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151282151303%_))
                              (let ((_%e151283151306%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151282151303%_))))
                                (let ((_%hd151284151309%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151283151306%_)))
                                      (_%tl151285151311%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151283151306%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151285151311%_))
                                      (let ((_%e151286151314%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151285151311%_))))
                                        (let ((_%hd151287151317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151286151314%_)))
                                              (_%tl151288151319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151286151314%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151288151319%_))
                                              ((lambda (_%L151322%_
                                                        _%L151323%_)
                                                 (let ((_%new-expr151344%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151273%_
                                                           _%L151322%_)))
                                                       (_%new-xid151345%_
                                                        (let ((_%$e151340%_
                                                               (let ((__tmp151797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub151338%_)
                                (let ((__tmp151798 (car _%sub151338%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L151323%_
                                   __tmp151798))))
                             (__tmp151796
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self151273%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp151797 __tmp151796))))
                  (if _%$e151340%_ (cdr _%$e151340%_) _%L151323%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151799
                                                          (cons '%#set!
                                                                (cons _%new-xid151345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151344%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151799
                                                      _%stx151274%_))))
                                               _%hd151287151317%_
                                               _%hd151284151309%_)
                                              (_%g151276151293%_
                                               _%g151277151296%_))))
                                      (_%g151276151293%_ _%g151277151296%_))))
                              (_%g151276151293%_ _%g151277151296%_))))
                      (_%g151276151293%_ _%g151277151296%_)))))
          (_%g151275151347%_ _%stx151274%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self151219%_ _%stx151220%_)
        (let* ((_%g151222151235%_
                (lambda (_%g151223151232%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151223151232%_))))
               (_%g151221151270%_
                (lambda (_%g151223151238%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151223151238%_))
                      (let ((_%e151225151240%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151223151238%_))))
                        (let ((_%hd151226151243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151225151240%_)))
                              (_%tl151227151245%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151225151240%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151227151245%_))
                              (let ((_%e151228151248%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151227151245%_))))
                                (let ((_%hd151229151251%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151228151248%_)))
                                      (_%tl151230151253%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151228151248%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151230151253%_))
                                      ((lambda (_%L151256%_)
                                         (let* ((_%eid151268%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L151256%_)))
                                                (__tmp151800
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self151219%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp151800
                                            _%eid151268%_
                                            1+
                                            '0)))
                                       _%hd151229151251%_)
                                      (_%g151222151235%_ _%g151223151238%_))))
                              (_%g151222151235%_ _%g151223151238%_))))
                      (_%g151222151235%_ _%g151223151238%_)))))
          (_%g151221151270%_ _%stx151220%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self151149%_ _%stx151150%_)
        (let* ((_%g151152151169%_
                (lambda (_%g151153151166%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151153151166%_))))
               (_%g151151151216%_
                (lambda (_%g151153151172%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151153151172%_))
                      (let ((_%e151156151174%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151153151172%_))))
                        (let ((_%hd151157151177%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151156151174%_)))
                              (_%tl151158151179%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151156151174%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151158151179%_))
                              (let ((_%e151159151182%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151158151179%_))))
                                (let ((_%hd151160151185%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151159151182%_)))
                                      (_%tl151161151187%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151159151182%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151161151187%_))
                                      (let ((_%e151162151190%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151161151187%_))))
                                        (let ((_%hd151163151193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151162151190%_)))
                                              (_%tl151164151195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151162151190%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151164151195%_))
                                              ((lambda (_%L151198%_
                                                        _%L151199%_)
                                                 (let ((_%eid151214%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L151199%_))))
                                                   (let ((__tmp151801
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self151149%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp151801
                                                      _%eid151214%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151149%_
                                                      _%L151198%_))))
                                               _%hd151163151193%_
                                               _%hd151160151185%_)
                                              (_%g151152151169%_
                                               _%g151153151172%_))))
                                      (_%g151152151169%_ _%g151153151172%_))))
                              (_%g151152151169%_ _%g151153151172%_))))
                      (_%g151152151169%_ _%g151153151172%_)))))
          (_%g151151151216%_ _%stx151150%_))))
    (define gxc#find-body%
      (lambda (_%self151062%_ _%stx151063%_)
        (let* ((_%g151065151084%_
                (lambda (_%g151066151081%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151066151081%_))))
               (_%g151064151146%_
                (lambda (_%g151066151087%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151066151087%_))
                      (let ((_%e151068151089%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151066151087%_))))
                        (let ((_%hd151069151092%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151068151089%_)))
                              (_%tl151070151094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151068151089%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl151070151094%_))
                              (let ((_g151802_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl151070151094%_
                                        '0))))
                                (begin
                                  (let ((_g151803_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g151802_)
                                               (##vector-length _g151802_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g151803_ 2)))
                                        (error "Context expects 2 values"
                                               _g151803_)))
                                  (let ((_%target151071151097%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151802_ 0)))
                                        (_%tl151073151099%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151802_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl151073151099%_))
                                        (letrec ((_%loop151074151102%_
                                                  (lambda (_%hd151072151105%_
                                                           _%expr151078151107%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd151072151105%_))
                                                        (let ((_%e151075151110%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd151072151105%_))))
                  (let ((_%lp-hd151076151113%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151075151110%_)))
                        (_%lp-tl151077151115%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151075151110%_))))
                    (_%loop151074151102%_
                     _%lp-tl151077151115%_
                     (cons _%lp-hd151076151113%_ _%expr151078151107%_))))
                (let ((_%expr151079151118%_ (reverse _%expr151078151107%_)))
                  ((lambda (_%L151121%_)
                     (let ((__tmp151806
                            (lambda (_%g151134151136%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self151062%_
                                 _%g151134151136%_))))
                           (__tmp151804
                            (let ((__tmp151805
                                   (lambda (_%g151138151141%_
                                            _%g151139151143%_)
                                     (cons _%g151138151141%_
                                           _%g151139151143%_))))
                              (declare (not safe))
                              (__foldr1 __tmp151805 '() _%L151121%_))))
                       (declare (not safe))
                       (__ormap1 __tmp151806 __tmp151804)))
                   _%expr151079151118%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop151074151102%_
                                           _%target151071151097%_
                                           '()))
                                        (_%g151065151084%_
                                         _%g151066151087%_)))))
                              (_%g151065151084%_ _%g151066151087%_))))
                      (_%g151065151084%_ _%g151066151087%_)))))
          (_%g151064151146%_ _%stx151063%_))))
    (define gxc#find-let-values%
      (lambda (_%self150912%_ _%stx150913%_)
        (let* ((_%g150915150950%_
                (lambda (_%g150916150947%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150916150947%_))))
               (_%g150914151059%_
                (lambda (_%g150916150953%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150916150953%_))
                      (let ((_%e150920150955%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150916150953%_))))
                        (let ((_%hd150921150958%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150920150955%_)))
                              (_%tl150922150960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150920150955%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150922150960%_))
                              (let ((_%e150923150963%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150922150960%_))))
                                (let ((_%hd150924150966%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150923150963%_)))
                                      (_%tl150925150968%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150923150963%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd150924150966%_))
                                      (let ((_g151807_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd150924150966%_
                                                '0))))
                                        (begin
                                          (let ((_g151808_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g151807_)
                                                       (##vector-length
                                                        _g151807_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g151808_ 2)))
                                                (error "Context expects 2 values"
                                                       _g151808_)))
                                          (let ((_%target150926150971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g151807_ 0)))
                                                (_%tl150928150973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g151807_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl150928150973%_))
                                                (letrec ((_%loop150929150976%_
                                                          (lambda (_%hd150927150979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr150933150981%_
                           _%bind150934150983%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd150927150979%_))
                        (let ((_%e150930150986%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd150927150979%_))))
                          (let ((_%lp-hd150931150989%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150930150986%_)))
                                (_%lp-tl150932150991%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150930150986%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd150931150989%_))
                                (let ((_%e150940150994%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd150931150989%_))))
                                  (let ((_%hd150941150997%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e150940150994%_)))
                                        (_%tl150942150999%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e150940150994%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl150942150999%_))
                                        (let ((_%e150943151002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl150942150999%_))))
                                          (let ((_%hd150944151005%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e150943151002%_)))
                                                (_%tl150945151007%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e150943151002%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl150945151007%_))
                                                (_%loop150929150976%_
                                                 _%lp-tl150932150991%_
                                                 (cons _%hd150944151005%_
                                                       _%expr150933150981%_)
                                                 (cons _%hd150941150997%_
                                                       _%bind150934150983%_))
                                                (_%g150915150950%_
                                                 _%g150916150953%_))))
                                        (_%g150915150950%_
                                         _%g150916150953%_))))
                                (_%g150915150950%_ _%g150916150953%_))))
                        (let ((_%expr150935151010%_
                               (reverse _%expr150933150981%_))
                              (_%bind150936151012%_
                               (reverse _%bind150934150983%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150925150968%_))
                              (let ((_%e150937151015%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150925150968%_))))
                                (let ((_%hd150938151018%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150937151015%_)))
                                      (_%tl150939151020%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150937151015%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150939151020%_))
                                      ((lambda (_%L151023%_
                                                _%L151024%_
                                                _%L151025%_)
                                         (let ((_%$e151056%_
                                                (let ((__tmp151811
                                                       (lambda (_%g151044151046%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self150912%_
                                                            _%g151044151046%_))))
                                                      (__tmp151809
                                                       (let ((__tmp151810
                                                              (lambda (_%g151048151051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g151049151053%_)
                        (cons _%g151048151051%_ _%g151049151053%_))))
                 (declare (not safe))
                 (__foldr1 __tmp151810 '() _%L151024%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp151811
                                                   __tmp151809))))
                                           (if _%$e151056%_
                                               _%$e151056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self150912%_
                                                  _%L151023%_)))))
                                       _%hd150938151018%_
                                       _%expr150935151010%_
                                       _%bind150936151012%_)
                                      (_%g150915150950%_ _%g150916150953%_))))
                              (_%g150915150950%_ _%g150916150953%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop150929150976%_
                                                   _%target150926150971%_
                                                   '()
                                                   '()))
                                                (_%g150915150950%_
                                                 _%g150916150953%_)))))
                                      (_%g150915150950%_ _%g150916150953%_))))
                              (_%g150915150950%_ _%g150916150953%_))))
                      (_%g150915150950%_ _%g150916150953%_)))))
          (_%g150914151059%_ _%stx150913%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self150856%_ _%stx150857%_)
        (let* ((_%g150859150872%_
                (lambda (_%g150860150869%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150860150869%_))))
               (_%g150858150909%_
                (lambda (_%g150860150875%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150860150875%_))
                      (let ((_%e150862150877%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150860150875%_))))
                        (let ((_%hd150863150880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150862150877%_)))
                              (_%tl150864150882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150862150877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150864150882%_))
                              (let ((_%e150865150885%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150864150882%_))))
                                (let ((_%hd150866150888%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150865150885%_)))
                                      (_%tl150867150890%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150865150885%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150867150890%_))
                                      ((lambda (_%L150893%_)
                                         (let ((__tmp151813
                                                (lambda (_%g150904150906%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L150893%_
                                                     _%g150904150906%_))))
                                               (__tmp151812
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self150856%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp151813 __tmp151812)))
                                       _%hd150866150888%_)
                                      (_%g150859150872%_ _%g150860150875%_))))
                              (_%g150859150872%_ _%g150860150875%_))))
                      (_%g150859150872%_ _%g150860150875%_)))))
          (_%g150858150909%_ _%stx150857%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self150781%_ _%stx150782%_)
        (let* ((_%g150784150801%_
                (lambda (_%g150785150798%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150785150798%_))))
               (_%g150783150853%_
                (lambda (_%g150785150804%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150785150804%_))
                      (let ((_%e150788150806%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150785150804%_))))
                        (let ((_%hd150789150809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150788150806%_)))
                              (_%tl150790150811%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150788150806%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150790150811%_))
                              (let ((_%e150791150814%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150790150811%_))))
                                (let ((_%hd150792150817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150791150814%_)))
                                      (_%tl150793150819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150791150814%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150793150819%_))
                                      (let ((_%e150794150822%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150793150819%_))))
                                        (let ((_%hd150795150825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150794150822%_)))
                                              (_%tl150796150827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150794150822%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150796150827%_))
                                              ((lambda (_%L150830%_
                                                        _%L150831%_)
                                                 (let ((_%$e150850%_
                                                        (let ((__tmp151815
                                                               (lambda (_%g150845150847%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L150831%_
                            _%g150845150847%_))))
                      (__tmp151814
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self150781%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp151815 __tmp151814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e150850%_
                                                       _%$e150850%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self150781%_
                                                          _%L150830%_)))))
                                               _%hd150795150825%_
                                               _%hd150792150817%_)
                                              (_%g150784150801%_
                                               _%g150785150804%_))))
                                      (_%g150784150801%_ _%g150785150804%_))))
                              (_%g150784150801%_ _%g150785150804%_))))
                      (_%g150784150801%_ _%g150785150804%_)))))
          (_%g150783150853%_ _%stx150782%_))))))
