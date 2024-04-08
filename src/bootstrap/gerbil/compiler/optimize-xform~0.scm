(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712573432)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp150155 (list gxc#::void::t))
            (__tmp150154 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp150155
         '()
         __tmp150154
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args149895%_
        (apply make-instance gxc#::collect-mutators::t _%$args149895%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp150156
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
        (__make-promise __tmp150156)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx149887%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self149890%_
                (let ((__obj150142
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj150142))
               (__tmp150157
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self149890%_ _%stx149887%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150157
           gxc#current-compile-method
           _%self149890%_))))
    (define gxc#::collect-methods::t
      (let ((__tmp150159 (list gxc#::void::t))
            (__tmp150158 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp150159
         '()
         __tmp150158
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _%$args149884%_
        (apply make-instance gxc#::collect-methods::t _%$args149884%_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp150160
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#call
                  gxc#collect-methods-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#call-unchecked
                  gxc#collect-methods-call%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-methods::t)))))
        (declare (not safe))
        (__make-promise __tmp150160)))
    (define gxc#apply-collect-methods
      (lambda (_%stx149876%_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_%self149879%_
                (let ((__obj150144
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj150144))
               (__tmp150161
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self149879%_ _%stx149876%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150161
           gxc#current-compile-method
           _%self149879%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp150163 (list gxc#::basic-xform-expression::t))
            (__tmp150162 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp150163
         '(id new-id)
         __tmp150162
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args149873%_
        (apply make-instance gxc#::expression-subst::t _%$args149873%_)))
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
      (let ((__tmp150164
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
        (__make-promise __tmp150164)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords149843%_
               _%id149839149844%_
               _%new-id149840149846%_
               _%stx149848%_)
        (let* ((_%id149851%_
                (if (eq? _%id149839149844%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id149839149844%_))
               (_%new-id149853%_
                (if (eq? _%new-id149840149846%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id149840149846%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self149855%_
                  (let ((__obj150146
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150146
                       _%id149851%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150146
                       _%new-id149853%_
                       '2
                       '#f
                       '#f))
                    __obj150146))
                 (__tmp150165
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149855%_ _%stx149848%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150165
             gxc#current-compile-method
             _%self149855%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords149862%_ . _%args149863%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords149862%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords149862%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149862%_
                  'new-id:
                  absent-value))
               _%args149863%_)))
    (define gxc#apply-expression-subst
      (lambda _%args149841149869%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args149841149869%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp150167 (list gxc#::basic-xform-expression::t))
            (__tmp150166 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp150167
         '(subst)
         __tmp150166
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args149835%_
        (apply make-instance gxc#::expression-subst*::t _%$args149835%_)))
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
      (let ((__tmp150168
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
        (__make-promise __tmp150168)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords149809%_ _%subst149806149810%_ _%stx149812%_)
        (let ((_%subst149815%_
               (if (eq? _%subst149806149810%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst149806149810%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self149817%_
                  (let ((__obj150148
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150148
                       _%subst149815%_
                       '1
                       '#f
                       '#f))
                    __obj150148))
                 (__tmp150169
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149817%_ _%stx149812%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150169
             gxc#current-compile-method
             _%self149817%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords149824%_ . _%args149825%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords149824%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149824%_
                  'subst:
                  absent-value))
               _%args149825%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args149807149831%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args149807149831%_)))
    (define gxc#::find-expression::t
      (let ((__tmp150170 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp150170
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args149802%_
        (apply make-instance gxc#::find-expression::t _%$args149802%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp150171
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
        (__make-promise __tmp150171)))
    (define gxc#::find-var-refs::t
      (let ((__tmp150173 (list gxc#::find-expression::t))
            (__tmp150172 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp150173
         '(ids)
         __tmp150172
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args149798%_
        (apply make-instance gxc#::find-var-refs::t _%$args149798%_)))
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
      (let ((__tmp150174
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
        (__make-promise __tmp150174)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords149772%_ _%ids149769149773%_ _%stx149775%_)
        (let ((_%ids149778%_
               (if (eq? _%ids149769149773%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids149769149773%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self149780%_
                  (let ((__obj150151
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150151
                       _%ids149778%_
                       '1
                       '#f
                       '#f))
                    __obj150151))
                 (__tmp150175
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149780%_ _%stx149775%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150175
             gxc#current-compile-method
             _%self149780%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords149787%_ . _%args149788%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords149787%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords149787%_ 'ids: absent-value))
               _%args149788%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args149770149794%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args149770149794%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp150177 (list gxc#::collect-expression-refs::t))
            (__tmp150176 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp150177
         '()
         __tmp150176
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args149765%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args149765%_)))
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
      (let ((__tmp150178
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
        (__make-promise __tmp150178)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords149739%_ _%table149736149740%_ _%stx149742%_)
        (let ((_%table149745%_
               (if (eq? _%table149736149740%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table149736149740%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self149747%_
                  (let ((__obj150153
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150153
                       _%table149745%_
                       '1
                       '#f
                       '#f))
                    __obj150153))
                 (__tmp150179
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149747%_ _%stx149742%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150179
             gxc#current-compile-method
             _%self149747%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords149754%_ . _%args149755%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords149754%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149754%_
                  'table:
                  absent-value))
               _%args149755%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args149737149761%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args149737149761%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self149665%_ _%stx149666%_)
        (let* ((_%g149668149685%_
                (lambda (_%g149669149682%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149669149682%_))))
               (_%g149667149732%_
                (lambda (_%g149669149688%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149669149688%_))
                      (let ((_%e149674149690%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149669149688%_))))
                        (let ((_%hd149673149693%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149674149690%_)))
                              (_%tl149672149695%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149674149690%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149672149695%_))
                              (let ((_%e149677149698%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149672149695%_))))
                                (let ((_%hd149676149701%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149677149698%_)))
                                      (_%tl149675149703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149677149698%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149675149703%_))
                                      (let ((_%e149680149706%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149675149703%_))))
                                        (let ((_%hd149679149709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149680149706%_)))
                                              (_%tl149678149711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149680149706%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149678149711%_))
                                              ((lambda (_%L149714%_
                                                        _%L149715%_)
                                                 (let ((_%sym149730%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149715%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym149730%_))
                                                   (let ((__tmp150180
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150180
                                                      _%sym149730%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149665%_
                                                      _%L149714%_))))
                                               _%hd149679149709%_
                                               _%hd149676149701%_)
                                              (_%g149668149685%_
                                               _%g149669149688%_))))
                                      (_%g149668149685%_ _%g149669149688%_))))
                              (_%g149668149685%_ _%g149669149688%_))))
                      (_%g149668149685%_ _%g149669149688%_)))))
          (_%g149667149732%_ _%stx149666%_))))
    (define gxc#collect-methods-call%
      (lambda (_%self149218%_ _%stx149219%_)
        (let* ((_%__stx149898149899%_ _%stx149219%_)
               (_%g149223149325%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx149898149899%_)))))
          (let ((_%__kont149900149901%_
                 (lambda (_%L149615%_
                          _%L149616%_
                          _%L149617%_
                          _%L149618%_
                          _%L149619%_)
                   (let ((__tmp150181
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149616%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150181))))
                (_%__kont149902149903%_
                 (lambda (_%L149441%_ _%L149442%_ _%L149443%_ _%L149444%_)
                   (let ((__tmp150182
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149441%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150182))))
                (_%__kont149904149905%_ (lambda () '#!void)))
            (let ((_%__match150033150034%_
                   (lambda (_%e149232149487%_
                            _%hd149231149490%_
                            _%tl149230149492%_
                            _%e149235149495%_
                            _%hd149234149498%_
                            _%tl149233149500%_
                            _%e149238149503%_
                            _%hd149237149506%_
                            _%tl149236149508%_
                            _%e149241149511%_
                            _%hd149240149514%_
                            _%tl149239149516%_
                            _%e149244149519%_
                            _%hd149243149522%_
                            _%tl149242149524%_
                            _%e149247149527%_
                            _%hd149246149530%_
                            _%tl149245149532%_
                            _%e149250149535%_
                            _%hd149249149538%_
                            _%tl149248149540%_
                            _%e149253149543%_
                            _%hd149252149546%_
                            _%tl149251149548%_
                            _%e149256149551%_
                            _%hd149255149554%_
                            _%tl149254149556%_
                            _%e149259149559%_
                            _%hd149258149562%_
                            _%tl149257149564%_
                            _%e149262149567%_
                            _%hd149261149570%_
                            _%tl149260149572%_
                            _%e149265149575%_
                            _%hd149264149578%_
                            _%tl149263149580%_
                            _%e149268149583%_
                            _%hd149267149586%_
                            _%tl149266149588%_
                            _%e149271149591%_
                            _%hd149270149594%_
                            _%tl149269149596%_
                            _%e149274149599%_
                            _%hd149273149602%_
                            _%tl149272149604%_
                            _%e149277149607%_
                            _%hd149276149610%_
                            _%tl149275149612%_)
                     (let ((_%L149615%_ _%hd149276149610%_)
                           (_%L149616%_ _%hd149267149586%_)
                           (_%L149617%_ _%hd149258149562%_)
                           (_%L149618%_ _%hd149249149538%_)
                           (_%L149619%_ _%hd149240149514%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L149619%_
                              'bind-method!))
                           (_%__kont149900149901%_
                            _%L149615%_
                            _%L149616%_
                            _%L149617%_
                            _%L149618%_
                            _%L149619%_)
                           (_%__kont149904149905%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx149898149899%_))
                  (let ((_%e149232149487%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx149898149899%_))))
                    (let ((_%tl149230149492%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149232149487%_)))
                          (_%hd149231149490%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149232149487%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl149230149492%_))
                          (let ((_%e149235149495%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl149230149492%_))))
                            (let ((_%tl149233149500%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149235149495%_)))
                                  (_%hd149234149498%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149235149495%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd149234149498%_))
                                  (let ((_%e149238149503%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd149234149498%_))))
                                    (let ((_%tl149236149508%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149238149503%_)))
                                          (_%hd149237149506%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149238149503%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd149237149506%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd149237149506%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149236149508%_))
                                                  (let ((_%e149241149511%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149236149508%_))))
                                                    (let ((_%tl149239149516%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149241149511%_)))
                                                          (_%hd149240149514%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149241149511%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl149239149516%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl149233149500%_))
                      (let ((_%e149244149519%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl149233149500%_))))
                        (let ((_%tl149242149524%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149244149519%_)))
                              (_%hd149243149522%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149244149519%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd149243149522%_))
                              (let ((_%e149247149527%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd149243149522%_))))
                                (let ((_%tl149245149532%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149247149527%_)))
                                      (_%hd149246149530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149247149527%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd149246149530%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd149246149530%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149245149532%_))
                                              (let ((_%e149250149535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149245149532%_))))
                                                (let ((_%tl149248149540%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149250149535%_)))
                                                      (_%hd149249149538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149250149535%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149248149540%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl149242149524%_))
                                                          (let ((_%e149253149543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl149242149524%_))))
                    (let ((_%tl149251149548%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149253149543%_)))
                          (_%hd149252149546%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149253149543%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd149252149546%_))
                          (let ((_%e149256149551%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd149252149546%_))))
                            (let ((_%tl149254149556%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149256149551%_)))
                                  (_%hd149255149554%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149256149551%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd149255149554%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd149255149554%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl149254149556%_))
                                          (let ((_%e149259149559%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl149254149556%_))))
                                            (let ((_%tl149257149564%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e149259149559%_)))
                                                  (_%hd149258149562%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e149259149559%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl149257149564%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149251149548%_))
                                                      (let ((_%e149262149567%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149251149548%_))))
                (let ((_%tl149260149572%_
                       (let () (declare (not safe)) (##cdr _%e149262149567%_)))
                      (_%hd149261149570%_
                       (let ()
                         (declare (not safe))
                         (##car _%e149262149567%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd149261149570%_))
                      (let ((_%e149265149575%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd149261149570%_))))
                        (let ((_%tl149263149580%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149265149575%_)))
                              (_%hd149264149578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149265149575%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd149264149578%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd149264149578%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149263149580%_))
                                      (let ((_%e149268149583%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149263149580%_))))
                                        (let ((_%tl149266149588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149268149583%_)))
                                              (_%hd149267149586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149268149583%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149266149588%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149260149572%_))
                                                  (let ((_%e149271149591%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149260149572%_))))
                                                    (let ((_%tl149269149596%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149271149591%_)))
                                                          (_%hd149270149594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149271149591%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd149270149594%_))
                                                          (let ((_%e149274149599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd149270149594%_))))
                    (let ((_%tl149272149604%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149274149599%_)))
                          (_%hd149273149602%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149274149599%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd149273149602%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd149273149602%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl149272149604%_))
                                  (let ((_%e149277149607%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl149272149604%_))))
                                    (let ((_%tl149275149612%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149277149607%_)))
                                          (_%hd149276149610%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149277149607%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl149275149612%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149269149596%_))
                                              (_%__match150033150034%_
                                               _%e149232149487%_
                                               _%hd149231149490%_
                                               _%tl149230149492%_
                                               _%e149235149495%_
                                               _%hd149234149498%_
                                               _%tl149233149500%_
                                               _%e149238149503%_
                                               _%hd149237149506%_
                                               _%tl149236149508%_
                                               _%e149241149511%_
                                               _%hd149240149514%_
                                               _%tl149239149516%_
                                               _%e149244149519%_
                                               _%hd149243149522%_
                                               _%tl149242149524%_
                                               _%e149247149527%_
                                               _%hd149246149530%_
                                               _%tl149245149532%_
                                               _%e149250149535%_
                                               _%hd149249149538%_
                                               _%tl149248149540%_
                                               _%e149253149543%_
                                               _%hd149252149546%_
                                               _%tl149251149548%_
                                               _%e149256149551%_
                                               _%hd149255149554%_
                                               _%tl149254149556%_
                                               _%e149259149559%_
                                               _%hd149258149562%_
                                               _%tl149257149564%_
                                               _%e149262149567%_
                                               _%hd149261149570%_
                                               _%tl149260149572%_
                                               _%e149265149575%_
                                               _%hd149264149578%_
                                               _%tl149263149580%_
                                               _%e149268149583%_
                                               _%hd149267149586%_
                                               _%tl149266149588%_
                                               _%e149271149591%_
                                               _%hd149270149594%_
                                               _%tl149269149596%_
                                               _%e149274149599%_
                                               _%hd149273149602%_
                                               _%tl149272149604%_
                                               _%e149277149607%_
                                               _%hd149276149610%_
                                               _%tl149275149612%_)
                                              (_%__kont149904149905%_))
                                          (_%__kont149904149905%_))))
                                  (_%__kont149904149905%_))
                              (_%__kont149904149905%_))
                          (_%__kont149904149905%_))))
                  (_%__kont149904149905%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149260149572%_))
                                                      (if (let ((__tmp150183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp150183 'bind-method!))
                  (let ((_%L149441%_ _%hd149267149586%_)
                        (_%L149442%_ _%hd149258149562%_)
                        (_%L149443%_ _%hd149249149538%_)
                        (_%L149444%_ _%hd149240149514%_))
                    (_%__kont149902149903%_
                     _%L149441%_
                     _%L149442%_
                     _%L149443%_
                     _%L149444%_))
                  (_%__kont149904149905%_))
              (_%__kont149904149905%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont149904149905%_))))
                                      (_%__kont149904149905%_))
                                  (_%__kont149904149905%_))
                              (_%__kont149904149905%_))))
                      (_%__kont149904149905%_))))
              (_%__kont149904149905%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont149904149905%_))))
                                          (_%__kont149904149905%_))
                                      (_%__kont149904149905%_))
                                  (_%__kont149904149905%_))))
                          (_%__kont149904149905%_))))
                  (_%__kont149904149905%_))
              (_%__kont149904149905%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont149904149905%_))
                                          (_%__kont149904149905%_))
                                      (_%__kont149904149905%_))))
                              (_%__kont149904149905%_))))
                      (_%__kont149904149905%_))
                  (_%__kont149904149905%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont149904149905%_))
                                              (_%__kont149904149905%_))
                                          (_%__kont149904149905%_))))
                                  (_%__kont149904149905%_))))
                          (_%__kont149904149905%_))))
                  (_%__kont149904149905%_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_%self149166%_ _%stx149167%_)
        (let* ((_%g149169149182%_
                (lambda (_%g149170149179%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149170149179%_))))
               (_%g149168149215%_
                (lambda (_%g149170149185%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149170149185%_))
                      (let ((_%e149174149187%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149170149185%_))))
                        (let ((_%hd149173149190%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149174149187%_)))
                              (_%tl149172149192%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149174149187%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149172149192%_))
                              (let ((_%e149177149195%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149172149192%_))))
                                (let ((_%hd149176149198%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149177149195%_)))
                                      (_%tl149175149200%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149177149195%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149175149200%_))
                                      ((lambda (_%L149203%_)
                                         (if (let ((__tmp150184
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self149166%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L149203%_
                                                __tmp150184))
                                             (let ((__tmp150185
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self149166%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp150185
                                                _%stx149167%_))
                                             _%stx149167%_))
                                       _%hd149176149198%_)
                                      (_%g149169149182%_ _%g149170149185%_))))
                              (_%g149169149182%_ _%g149170149185%_))))
                      (_%g149169149182%_ _%g149170149185%_)))))
          (_%g149168149215%_ _%stx149167%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self149106%_ _%stx149107%_)
        (let* ((_%g149109149122%_
                (lambda (_%g149110149119%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149110149119%_))))
               (_%g149108149163%_
                (lambda (_%g149110149125%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149110149125%_))
                      (let ((_%e149114149127%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149110149125%_))))
                        (let ((_%hd149113149130%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149114149127%_)))
                              (_%tl149112149132%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149114149127%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149112149132%_))
                              (let ((_%e149117149135%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149112149132%_))))
                                (let ((_%hd149116149138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149117149135%_)))
                                      (_%tl149115149140%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149117149135%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149115149140%_))
                                      ((lambda (_%L149143%_)
                                         (let ((_%$e149157%_
                                                (let ((__tmp150187
                                                       (lambda (_%sub149155%_)
                                                         (let ((__tmp150188
                                                                (car _%sub149155%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L149143%_
                                                            __tmp150188))))
                                                      (__tmp150186
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self149106%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp150187
                                                          __tmp150186))))
                                           (if _%$e149157%_
                                               ((lambda (_%sub149160%_)
                                                  (let ((__tmp150189
                                                         (cons '%#ref
                                                               (cons (cdr _%sub149160%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp150189
                                                     _%stx149107%_)))
                                                _%$e149157%_)
                                               _%stx149107%_)))
                                       _%hd149116149138%_)
                                      (_%g149109149122%_ _%g149110149125%_))))
                              (_%g149109149122%_ _%g149110149125%_))))
                      (_%g149109149122%_ _%g149110149125%_)))))
          (_%g149108149163%_ _%stx149107%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self149035%_ _%stx149036%_)
        (let* ((_%g149038149055%_
                (lambda (_%g149039149052%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149039149052%_))))
               (_%g149037149103%_
                (lambda (_%g149039149058%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149039149058%_))
                      (let ((_%e149044149060%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149039149058%_))))
                        (let ((_%hd149043149063%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149044149060%_)))
                              (_%tl149042149065%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149044149060%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149042149065%_))
                              (let ((_%e149047149068%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149042149065%_))))
                                (let ((_%hd149046149071%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149047149068%_)))
                                      (_%tl149045149073%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149047149068%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149045149073%_))
                                      (let ((_%e149050149076%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149045149073%_))))
                                        (let ((_%hd149049149079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149050149076%_)))
                                              (_%tl149048149081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149050149076%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149048149081%_))
                                              ((lambda (_%L149084%_
                                                        _%L149085%_)
                                                 (let ((_%new-expr149100%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149035%_
                                                           _%L149084%_)))
                                                       (_%new-xid149101%_
                                                        (if (let ((__tmp150190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self149035%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L149085%_ __tmp150190))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self149035%_ 'new-id))
                    _%L149085%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150191
                                                          (cons '%#set!
                                                                (cons _%new-xid149101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149100%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150191
                                                      _%stx149036%_))))
                                               _%hd149049149079%_
                                               _%hd149046149071%_)
                                              (_%g149038149055%_
                                               _%g149039149058%_))))
                                      (_%g149038149055%_ _%g149039149058%_))))
                              (_%g149038149055%_ _%g149039149058%_))))
                      (_%g149038149055%_ _%g149039149058%_)))))
          (_%g149037149103%_ _%stx149036%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self148958%_ _%stx148959%_)
        (let* ((_%g148961148978%_
                (lambda (_%g148962148975%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148962148975%_))))
               (_%g148960149032%_
                (lambda (_%g148962148981%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148962148981%_))
                      (let ((_%e148967148983%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148962148981%_))))
                        (let ((_%hd148966148986%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148967148983%_)))
                              (_%tl148965148988%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148967148983%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148965148988%_))
                              (let ((_%e148970148991%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148965148988%_))))
                                (let ((_%hd148969148994%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148970148991%_)))
                                      (_%tl148968148996%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148970148991%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148968148996%_))
                                      (let ((_%e148973148999%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148968148996%_))))
                                        (let ((_%hd148972149002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148973148999%_)))
                                              (_%tl148971149004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148973148999%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148971149004%_))
                                              ((lambda (_%L149007%_
                                                        _%L149008%_)
                                                 (let ((_%new-expr149029%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self148958%_
                                                           _%L149007%_)))
                                                       (_%new-xid149030%_
                                                        (let ((_%$e149025%_
                                                               (let ((__tmp150193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub149023%_)
                                (let ((__tmp150194 (car _%sub149023%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L149008%_
                                   __tmp150194))))
                             (__tmp150192
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self148958%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp150193 __tmp150192))))
                  (if _%$e149025%_ (cdr _%$e149025%_) _%L149008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150195
                                                          (cons '%#set!
                                                                (cons _%new-xid149030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149029%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150195
                                                      _%stx148959%_))))
                                               _%hd148972149002%_
                                               _%hd148969148994%_)
                                              (_%g148961148978%_
                                               _%g148962148981%_))))
                                      (_%g148961148978%_ _%g148962148981%_))))
                              (_%g148961148978%_ _%g148962148981%_))))
                      (_%g148961148978%_ _%g148962148981%_)))))
          (_%g148960149032%_ _%stx148959%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self148904%_ _%stx148905%_)
        (let* ((_%g148907148920%_
                (lambda (_%g148908148917%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148908148917%_))))
               (_%g148906148955%_
                (lambda (_%g148908148923%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148908148923%_))
                      (let ((_%e148912148925%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148908148923%_))))
                        (let ((_%hd148911148928%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148912148925%_)))
                              (_%tl148910148930%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148912148925%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148910148930%_))
                              (let ((_%e148915148933%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148910148930%_))))
                                (let ((_%hd148914148936%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148915148933%_)))
                                      (_%tl148913148938%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148915148933%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148913148938%_))
                                      ((lambda (_%L148941%_)
                                         (let* ((_%eid148953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L148941%_)))
                                                (__tmp150196
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self148904%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp150196
                                            _%eid148953%_
                                            1+
                                            '0)))
                                       _%hd148914148936%_)
                                      (_%g148907148920%_ _%g148908148923%_))))
                              (_%g148907148920%_ _%g148908148923%_))))
                      (_%g148907148920%_ _%g148908148923%_)))))
          (_%g148906148955%_ _%stx148905%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self148834%_ _%stx148835%_)
        (let* ((_%g148837148854%_
                (lambda (_%g148838148851%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148838148851%_))))
               (_%g148836148901%_
                (lambda (_%g148838148857%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148838148857%_))
                      (let ((_%e148843148859%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148838148857%_))))
                        (let ((_%hd148842148862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148843148859%_)))
                              (_%tl148841148864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148843148859%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148841148864%_))
                              (let ((_%e148846148867%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148841148864%_))))
                                (let ((_%hd148845148870%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148846148867%_)))
                                      (_%tl148844148872%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148846148867%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148844148872%_))
                                      (let ((_%e148849148875%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148844148872%_))))
                                        (let ((_%hd148848148878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148849148875%_)))
                                              (_%tl148847148880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148849148875%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148847148880%_))
                                              ((lambda (_%L148883%_
                                                        _%L148884%_)
                                                 (let ((_%eid148899%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L148884%_))))
                                                   (let ((__tmp150197
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self148834%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp150197
                                                      _%eid148899%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self148834%_
                                                      _%L148883%_))))
                                               _%hd148848148878%_
                                               _%hd148845148870%_)
                                              (_%g148837148854%_
                                               _%g148838148857%_))))
                                      (_%g148837148854%_ _%g148838148857%_))))
                              (_%g148837148854%_ _%g148838148857%_))))
                      (_%g148837148854%_ _%g148838148857%_)))))
          (_%g148836148901%_ _%stx148835%_))))
    (define gxc#find-body%
      (lambda (_%self148747%_ _%stx148748%_)
        (let* ((_%g148750148769%_
                (lambda (_%g148751148766%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148751148766%_))))
               (_%g148749148831%_
                (lambda (_%g148751148772%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148751148772%_))
                      (let ((_%e148755148774%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148751148772%_))))
                        (let ((_%hd148754148777%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148755148774%_)))
                              (_%tl148753148779%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148755148774%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl148753148779%_))
                              (let ((_g150198_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl148753148779%_
                                        '0))))
                                (begin
                                  (let ((_g150199_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150198_)
                                               (##vector-length _g150198_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150199_ 2)))
                                        (error "Context expects 2 values"
                                               _g150199_)))
                                  (let ((_%target148756148782%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150198_ 0)))
                                        (_%tl148758148784%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150198_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl148758148784%_))
                                        (letrec ((_%loop148759148787%_
                                                  (lambda (_%hd148757148790%_
                                                           _%expr148763148792%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd148757148790%_))
                                                        (let ((_%e148760148795%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd148757148790%_))))
                  (let ((_%lp-hd148761148798%_
                         (let ()
                           (declare (not safe))
                           (##car _%e148760148795%_)))
                        (_%lp-tl148762148800%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e148760148795%_))))
                    (_%loop148759148787%_
                     _%lp-tl148762148800%_
                     (cons _%lp-hd148761148798%_ _%expr148763148792%_))))
                (let ((_%expr148764148803%_ (reverse _%expr148763148792%_)))
                  ((lambda (_%L148806%_)
                     (let ((__tmp150202
                            (lambda (_%g148819148821%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self148747%_
                                 _%g148819148821%_))))
                           (__tmp150200
                            (let ((__tmp150201
                                   (lambda (_%g148823148826%_
                                            _%g148824148828%_)
                                     (cons _%g148823148826%_
                                           _%g148824148828%_))))
                              (declare (not safe))
                              (__foldr1 __tmp150201 '() _%L148806%_))))
                       (declare (not safe))
                       (__ormap1 __tmp150202 __tmp150200)))
                   _%expr148764148803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop148759148787%_
                                           _%target148756148782%_
                                           '()))
                                        (_%g148750148769%_
                                         _%g148751148772%_)))))
                              (_%g148750148769%_ _%g148751148772%_))))
                      (_%g148750148769%_ _%g148751148772%_)))))
          (_%g148749148831%_ _%stx148748%_))))
    (define gxc#find-let-values%
      (lambda (_%self148597%_ _%stx148598%_)
        (let* ((_%g148600148635%_
                (lambda (_%g148601148632%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148601148632%_))))
               (_%g148599148744%_
                (lambda (_%g148601148638%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148601148638%_))
                      (let ((_%e148607148640%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148601148638%_))))
                        (let ((_%hd148606148643%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148607148640%_)))
                              (_%tl148605148645%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148607148640%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148605148645%_))
                              (let ((_%e148610148648%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148605148645%_))))
                                (let ((_%hd148609148651%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148610148648%_)))
                                      (_%tl148608148653%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148610148648%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148609148651%_))
                                      (let ((_g150203_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148609148651%_
                                                '0))))
                                        (begin
                                          (let ((_g150204_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150203_)
                                                       (##vector-length
                                                        _g150203_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150204_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150204_)))
                                          (let ((_%target148611148656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g150203_ 0)))
                                                (_%tl148613148658%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g150203_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148613148658%_))
                                                (letrec ((_%loop148614148661%_
                                                          (lambda (_%hd148612148664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148618148666%_
                           _%bind148619148668%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148612148664%_))
                        (let ((_%e148615148671%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148612148664%_))))
                          (let ((_%lp-hd148616148674%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148615148671%_)))
                                (_%lp-tl148617148676%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148615148671%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148616148674%_))
                                (let ((_%e148624148679%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148616148674%_))))
                                  (let ((_%hd148623148682%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148624148679%_)))
                                        (_%tl148622148684%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148624148679%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148622148684%_))
                                        (let ((_%e148627148687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148622148684%_))))
                                          (let ((_%hd148626148690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148627148687%_)))
                                                (_%tl148625148692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148627148687%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148625148692%_))
                                                (_%loop148614148661%_
                                                 _%lp-tl148617148676%_
                                                 (cons _%hd148626148690%_
                                                       _%expr148618148666%_)
                                                 (cons _%hd148623148682%_
                                                       _%bind148619148668%_))
                                                (_%g148600148635%_
                                                 _%g148601148638%_))))
                                        (_%g148600148635%_
                                         _%g148601148638%_))))
                                (_%g148600148635%_ _%g148601148638%_))))
                        (let ((_%expr148620148695%_
                               (reverse _%expr148618148666%_))
                              (_%bind148621148697%_
                               (reverse _%bind148619148668%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148608148653%_))
                              (let ((_%e148630148700%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148608148653%_))))
                                (let ((_%hd148629148703%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148630148700%_)))
                                      (_%tl148628148705%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148630148700%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148628148705%_))
                                      ((lambda (_%L148708%_
                                                _%L148709%_
                                                _%L148710%_)
                                         (let ((_%$e148741%_
                                                (let ((__tmp150207
                                                       (lambda (_%g148729148731%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self148597%_
                                                            _%g148729148731%_))))
                                                      (__tmp150205
                                                       (let ((__tmp150206
                                                              (lambda (_%g148733148736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g148734148738%_)
                        (cons _%g148733148736%_ _%g148734148738%_))))
                 (declare (not safe))
                 (__foldr1 __tmp150206 '() _%L148709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp150207
                                                   __tmp150205))))
                                           (if _%$e148741%_
                                               _%$e148741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self148597%_
                                                  _%L148708%_)))))
                                       _%hd148629148703%_
                                       _%expr148620148695%_
                                       _%bind148621148697%_)
                                      (_%g148600148635%_ _%g148601148638%_))))
                              (_%g148600148635%_ _%g148601148638%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop148614148661%_
                                                   _%target148611148656%_
                                                   '()
                                                   '()))
                                                (_%g148600148635%_
                                                 _%g148601148638%_)))))
                                      (_%g148600148635%_ _%g148601148638%_))))
                              (_%g148600148635%_ _%g148601148638%_))))
                      (_%g148600148635%_ _%g148601148638%_)))))
          (_%g148599148744%_ _%stx148598%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self148541%_ _%stx148542%_)
        (let* ((_%g148544148557%_
                (lambda (_%g148545148554%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148545148554%_))))
               (_%g148543148594%_
                (lambda (_%g148545148560%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148545148560%_))
                      (let ((_%e148549148562%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148545148560%_))))
                        (let ((_%hd148548148565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148549148562%_)))
                              (_%tl148547148567%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148549148562%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148547148567%_))
                              (let ((_%e148552148570%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148547148567%_))))
                                (let ((_%hd148551148573%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148552148570%_)))
                                      (_%tl148550148575%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148552148570%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148550148575%_))
                                      ((lambda (_%L148578%_)
                                         (let ((__tmp150209
                                                (lambda (_%g148589148591%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L148578%_
                                                     _%g148589148591%_))))
                                               (__tmp150208
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self148541%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp150209 __tmp150208)))
                                       _%hd148551148573%_)
                                      (_%g148544148557%_ _%g148545148560%_))))
                              (_%g148544148557%_ _%g148545148560%_))))
                      (_%g148544148557%_ _%g148545148560%_)))))
          (_%g148543148594%_ _%stx148542%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self148466%_ _%stx148467%_)
        (let* ((_%g148469148486%_
                (lambda (_%g148470148483%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148470148483%_))))
               (_%g148468148538%_
                (lambda (_%g148470148489%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148470148489%_))
                      (let ((_%e148475148491%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148470148489%_))))
                        (let ((_%hd148474148494%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148475148491%_)))
                              (_%tl148473148496%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148475148491%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148473148496%_))
                              (let ((_%e148478148499%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148473148496%_))))
                                (let ((_%hd148477148502%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148478148499%_)))
                                      (_%tl148476148504%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148478148499%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148476148504%_))
                                      (let ((_%e148481148507%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148476148504%_))))
                                        (let ((_%hd148480148510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148481148507%_)))
                                              (_%tl148479148512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148481148507%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148479148512%_))
                                              ((lambda (_%L148515%_
                                                        _%L148516%_)
                                                 (let ((_%$e148535%_
                                                        (let ((__tmp150211
                                                               (lambda (_%g148530148532%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L148516%_
                            _%g148530148532%_))))
                      (__tmp150210
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self148466%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp150211 __tmp150210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e148535%_
                                                       _%$e148535%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self148466%_
                                                          _%L148515%_)))))
                                               _%hd148480148510%_
                                               _%hd148477148502%_)
                                              (_%g148469148486%_
                                               _%g148470148489%_))))
                                      (_%g148469148486%_ _%g148470148489%_))))
                              (_%g148469148486%_ _%g148470148489%_))))
                      (_%g148469148486%_ _%g148470148489%_)))))
          (_%g148468148538%_ _%stx148467%_))))))
