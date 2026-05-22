(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1779435584)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp213212 (list gxc#::void::t))
            (__tmp213211 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp213212
         '()
         __tmp213211
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args213196%_
        (apply make-instance gxc#::collect-mutators::t _%$args213196%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp213213
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
        (__make-atomic-promise __tmp213213)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx213188%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self213191%_
                (let ((__obj213199
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj213199))
               (__tmp213214
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213191%_ _%stx213188%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp213214
           gxc#current-compile-method
           _%self213191%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp213216 (list gxc#::basic-xform-expression::t))
            (__tmp213215 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp213216
         '(id new-id)
         __tmp213215
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args213185%_
        (apply make-instance gxc#::expression-subst::t _%$args213185%_)))
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
      (let ((__tmp213217
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
        (__make-atomic-promise __tmp213217)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords213157%_
               _%id213153213158%_
               _%new-id213154213159%_
               _%stx213160%_)
        (let* ((_%id213163%_
                (if (eq? _%id213153213158%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id213153213158%_))
               (_%new-id213165%_
                (if (eq? _%new-id213154213159%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id213154213159%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self213167%_
                  (let ((__obj213201
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213201
                       _%id213163%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213201
                       _%new-id213165%_
                       '2
                       '#f
                       '#f))
                    __obj213201))
                 (__tmp213218
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213167%_ _%stx213160%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp213218
             gxc#current-compile-method
             _%self213167%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords213174%_ . _%args213175%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords213174%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords213174%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213174%_
                  'new-id:
                  absent-value))
               _%args213175%_)))
    (define gxc#apply-expression-subst
      (lambda _%args213155213181%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args213155213181%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp213220 (list gxc#::basic-xform-expression::t))
            (__tmp213219 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp213220
         '(subst)
         __tmp213219
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args213149%_
        (apply make-instance gxc#::expression-subst*::t _%$args213149%_)))
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
      (let ((__tmp213221
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
        (__make-atomic-promise __tmp213221)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords213124%_ _%subst213121213125%_ _%stx213126%_)
        (let ((_%subst213129%_
               (if (eq? _%subst213121213125%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst213121213125%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self213131%_
                  (let ((__obj213203
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213203
                       _%subst213129%_
                       '1
                       '#f
                       '#f))
                    __obj213203))
                 (__tmp213222
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213131%_ _%stx213126%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp213222
             gxc#current-compile-method
             _%self213131%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords213138%_ . _%args213139%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords213138%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213138%_
                  'subst:
                  absent-value))
               _%args213139%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args213122213145%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args213122213145%_)))
    (define gxc#::inline-subst::t
      (let ((__tmp213224 (list gxc#::basic-xform-expression::t))
            (__tmp213223 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::inline-subst::t
         '::inline-subst
         __tmp213224
         '(subst)
         __tmp213223
         '#f)))
    (define gxc#::inline-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::inline-subst::t)))
    (define gxc#make-::inline-subst
      (lambda _%$args213117%_
        (apply make-instance gxc#::inline-subst::t _%$args213117%_)))
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
      (let ((__tmp213225
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
        (__make-atomic-promise __tmp213225)))
    (define gxc#apply-inline-subst__%
      (lambda (_%@@keywords213092%_ _%subst213089213093%_ _%stx213094%_)
        (let ((_%subst213097%_
               (if (eq? _%subst213089213093%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst213089213093%_)))
          (force gxc#::inline-subst-bind-methods!)
          (let* ((_%self213099%_
                  (let ((__obj213205
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::inline-subst::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213205
                       _%subst213097%_
                       '1
                       '#f
                       '#f))
                    __obj213205))
                 (__tmp213226
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213099%_ _%stx213094%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp213226
             gxc#current-compile-method
             _%self213099%_)))))
    (define gxc#apply-inline-subst__@
      (lambda (_%@@keywords213106%_ . _%args213107%_)
        (apply gxc#apply-inline-subst__%
               _%@@keywords213106%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213106%_
                  'subst:
                  absent-value))
               _%args213107%_)))
    (define gxc#apply-inline-subst
      (lambda _%args213090213113%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-inline-subst__@
               _%args213090213113%_)))
    (define gxc#::find-expression::t
      (let ((__tmp213227 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp213227
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args213085%_
        (apply make-instance gxc#::find-expression::t _%$args213085%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp213228
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
        (__make-atomic-promise __tmp213228)))
    (define gxc#::find-var-refs::t
      (let ((__tmp213230 (list gxc#::find-expression::t))
            (__tmp213229 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp213230
         '(ids)
         __tmp213229
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args213081%_
        (apply make-instance gxc#::find-var-refs::t _%$args213081%_)))
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
      (let ((__tmp213231
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
        (__make-atomic-promise __tmp213231)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords213056%_ _%ids213053213057%_ _%stx213058%_)
        (let ((_%ids213061%_
               (if (eq? _%ids213053213057%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids213053213057%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self213063%_
                  (let ((__obj213208
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213208
                       _%ids213061%_
                       '1
                       '#f
                       '#f))
                    __obj213208))
                 (__tmp213232
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213063%_ _%stx213058%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp213232
             gxc#current-compile-method
             _%self213063%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords213070%_ . _%args213071%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords213070%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords213070%_ 'ids: absent-value))
               _%args213071%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args213054213077%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args213054213077%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp213234 (list gxc#::collect-expression-refs::t))
            (__tmp213233 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp213234
         '()
         __tmp213233
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args213049%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args213049%_)))
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
      (let ((__tmp213235
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
        (__make-atomic-promise __tmp213235)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords213024%_ _%table213021213025%_ _%stx213026%_)
        (let ((_%table213029%_
               (if (eq? _%table213021213025%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table213021213025%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self213031%_
                  (let ((__obj213210
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213210
                       _%table213029%_
                       '1
                       '#f
                       '#f))
                    __obj213210))
                 (__tmp213236
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213031%_ _%stx213026%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp213236
             gxc#current-compile-method
             _%self213031%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords213038%_ . _%args213039%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords213038%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213038%_
                  'table:
                  absent-value))
               _%args213039%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args213022213045%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args213022213045%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self212950%_ _%stx212951%_)
        (let* ((_%g212953212970%_
                (lambda (_%g212954212967%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212954212967%_))))
               (_%g212952213017%_
                (lambda (_%g212954212973%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212954212973%_))
                      (let ((_%e212957212975%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212954212973%_))))
                        (let ((_%hd212958212978%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212957212975%_)))
                              (_%tl212959212980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212957212975%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212959212980%_))
                              (let ((_%e212960212983%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212959212980%_))))
                                (let ((_%hd212961212986%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212960212983%_)))
                                      (_%tl212962212988%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212960212983%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212962212988%_))
                                      (let ((_%e212963212991%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl212962212988%_))))
                                        (let ((_%hd212964212994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212963212991%_)))
                                              (_%tl212965212996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212963212991%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212965212996%_))
                                              (let ((_%sym213015%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%hd212961212986%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"collect mutator "
                                                   _%sym213015%_))
                                                (let ((__tmp213237
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#current-compile-mutators))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp213237
                                                   _%sym213015%_
                                                   '#t))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self212950%_
                                                   _%hd212964212994%_)))
                                              (_%g212953212970%_
                                               _%g212954212973%_))))
                                      (_%g212953212970%_ _%g212954212973%_))))
                              (_%g212953212970%_ _%g212954212973%_))))
                      (_%g212953212970%_ _%g212954212973%_)))))
          (_%g212952213017%_ _%stx212951%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self212898%_ _%stx212899%_)
        (let* ((_%g212901212914%_
                (lambda (_%g212902212911%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212902212911%_))))
               (_%g212900212947%_
                (lambda (_%g212902212917%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212902212917%_))
                      (let ((_%e212904212919%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212902212917%_))))
                        (let ((_%hd212905212922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212904212919%_)))
                              (_%tl212906212924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212904212919%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212906212924%_))
                              (let ((_%e212907212927%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212906212924%_))))
                                (let ((_%hd212908212930%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212907212927%_)))
                                      (_%tl212909212932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212907212927%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212909212932%_))
                                      (if (let ((__tmp213238
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self212898%_
                                                    'id))))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             _%hd212908212930%_
                                             __tmp213238))
                                          (let ((__tmp213239
                                                 (cons '%#ref
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (slot-ref__0 _%self212898%_ 'new-id))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp213239
                                             _%stx212899%_))
                                          _%stx212899%_)
                                      (_%g212901212914%_ _%g212902212917%_))))
                              (_%g212901212914%_ _%g212902212917%_))))
                      (_%g212901212914%_ _%g212902212917%_)))))
          (_%g212900212947%_ _%stx212899%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self212838%_ _%stx212839%_)
        (let* ((_%g212841212854%_
                (lambda (_%g212842212851%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212842212851%_))))
               (_%g212840212895%_
                (lambda (_%g212842212857%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212842212857%_))
                      (let ((_%e212844212859%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212842212857%_))))
                        (let ((_%hd212845212862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212844212859%_)))
                              (_%tl212846212864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212844212859%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212846212864%_))
                              (let ((_%e212847212867%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212846212864%_))))
                                (let ((_%hd212848212870%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212847212867%_)))
                                      (_%tl212849212872%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212847212867%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212849212872%_))
                                      (let ((_%$e212889%_
                                             (let ((__tmp213241
                                                    (lambda (_%sub212887%_)
                                                      (let ((__tmp213242
                                                             (car _%sub212887%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%hd212848212870%_
                                                         __tmp213242))))
                                                   (__tmp213240
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self212838%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp213241
                                                       __tmp213240))))
                                        (if _%$e212889%_
                                            (let ((__tmp213243
                                                   (cons '%#ref
                                                         (cons (cdr _%$e212889%_)
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp213243
                                               _%stx212839%_))
                                            _%stx212839%_))
                                      (_%g212841212854%_ _%g212842212857%_))))
                              (_%g212841212854%_ _%g212842212857%_))))
                      (_%g212841212854%_ _%g212842212857%_)))))
          (_%g212840212895%_ _%stx212839%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self212767%_ _%stx212768%_)
        (let* ((_%g212770212787%_
                (lambda (_%g212771212784%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212771212784%_))))
               (_%g212769212835%_
                (lambda (_%g212771212790%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212771212790%_))
                      (let ((_%e212774212792%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212771212790%_))))
                        (let ((_%hd212775212795%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212774212792%_)))
                              (_%tl212776212797%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212774212792%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212776212797%_))
                              (let ((_%e212777212800%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212776212797%_))))
                                (let ((_%hd212778212803%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212777212800%_)))
                                      (_%tl212779212805%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212777212800%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212779212805%_))
                                      (let ((_%e212780212808%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl212779212805%_))))
                                        (let ((_%hd212781212811%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212780212808%_)))
                                              (_%tl212782212813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212780212808%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212782212813%_))
                                              (let ((_%new-expr212832%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self212767%_
                                                        _%hd212781212811%_)))
                                                    (_%new-xid212833%_
                                                     (if (let ((__tmp213244
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self212767%_ 'id))))
                   (declare (not safe))
                   (gx#free-identifier=? _%hd212778212803%_ __tmp213244))
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self212767%_ 'new-id))
                 _%hd212778212803%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp213245
                                                       (cons '%#set!
                                                             (cons _%new-xid212833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr212832%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp213245
                                                   _%stx212768%_)))
                                              (_%g212770212787%_
                                               _%g212771212790%_))))
                                      (_%g212770212787%_ _%g212771212790%_))))
                              (_%g212770212787%_ _%g212771212790%_))))
                      (_%g212770212787%_ _%g212771212790%_)))))
          (_%g212769212835%_ _%stx212768%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self212690%_ _%stx212691%_)
        (let* ((_%g212693212710%_
                (lambda (_%g212694212707%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212694212707%_))))
               (_%g212692212764%_
                (lambda (_%g212694212713%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212694212713%_))
                      (let ((_%e212697212715%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212694212713%_))))
                        (let ((_%hd212698212718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212697212715%_)))
                              (_%tl212699212720%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212697212715%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212699212720%_))
                              (let ((_%e212700212723%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212699212720%_))))
                                (let ((_%hd212701212726%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212700212723%_)))
                                      (_%tl212702212728%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212700212723%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212702212728%_))
                                      (let ((_%e212703212731%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl212702212728%_))))
                                        (let ((_%hd212704212734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212703212731%_)))
                                              (_%tl212705212736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212703212731%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212705212736%_))
                                              (let ((_%new-expr212761%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self212690%_
                                                        _%hd212704212734%_)))
                                                    (_%new-xid212762%_
                                                     (let ((_%$e212757%_
                                                            (let ((__tmp213247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%sub212755%_)
                             (let ((__tmp213248 (car _%sub212755%_)))
                               (declare (not safe))
                               (gx#free-identifier=?
                                _%hd212701212726%_
                                __tmp213248))))
                          (__tmp213246
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self212690%_ 'subst))))
                      (declare (not safe))
                      (__find __tmp213247 __tmp213246))))
               (if _%$e212757%_ (cdr _%$e212757%_) _%hd212701212726%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp213249
                                                       (cons '%#set!
                                                             (cons _%new-xid212762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr212761%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp213249
                                                   _%stx212691%_)))
                                              (_%g212693212710%_
                                               _%g212694212713%_))))
                                      (_%g212693212710%_ _%g212694212713%_))))
                              (_%g212693212710%_ _%g212694212713%_))))
                      (_%g212693212710%_ _%g212694212713%_)))))
          (_%g212692212764%_ _%stx212691%_))))
    (define gxc#inline-subst-ref%
      (lambda (_%self212630%_ _%stx212631%_)
        (let* ((_%g212633212646%_
                (lambda (_%g212634212643%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212634212643%_))))
               (_%g212632212687%_
                (lambda (_%g212634212649%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212634212649%_))
                      (let ((_%e212636212651%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212634212649%_))))
                        (let ((_%hd212637212654%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212636212651%_)))
                              (_%tl212638212656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212636212651%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212638212656%_))
                              (let ((_%e212639212659%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212638212656%_))))
                                (let ((_%hd212640212662%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212639212659%_)))
                                      (_%tl212641212664%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212639212659%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212641212664%_))
                                      (let ((_%$e212681%_
                                             (let ((__tmp213251
                                                    (lambda (_%sub212679%_)
                                                      (let ((__tmp213252
                                                             (car _%sub212679%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%hd212640212662%_
                                                         __tmp213252))))
                                                   (__tmp213250
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self212630%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp213251
                                                       __tmp213250))))
                                        (if _%$e212681%_
                                            (let ((__tmp213253
                                                   (cdr _%$e212681%_)))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp213253
                                               _%stx212631%_))
                                            _%stx212631%_))
                                      (_%g212633212646%_ _%g212634212649%_))))
                              (_%g212633212646%_ _%g212634212649%_))))
                      (_%g212633212646%_ _%g212634212649%_)))))
          (_%g212632212687%_ _%stx212631%_))))
    (define gxc#inline-subst-setq%
      (lambda (_%self212560%_ _%stx212561%_)
        (let* ((_%g212563212580%_
                (lambda (_%g212564212577%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212564212577%_))))
               (_%g212562212627%_
                (lambda (_%g212564212583%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212564212583%_))
                      (let ((_%e212567212585%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212564212583%_))))
                        (let ((_%hd212568212588%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212567212585%_)))
                              (_%tl212569212590%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212567212585%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212569212590%_))
                              (let ((_%e212570212593%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212569212590%_))))
                                (let ((_%hd212571212596%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212570212593%_)))
                                      (_%tl212572212598%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212570212593%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212572212598%_))
                                      (let ((_%e212573212601%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl212572212598%_))))
                                        (let ((_%hd212574212604%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212573212601%_)))
                                              (_%tl212575212606%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212573212601%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212575212606%_))
                                              (if (let ((__tmp213255
                                                         (lambda (_%sub212625%_)
                                                           (let ((__tmp213256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (car _%sub212625%_)))
                     (declare (not safe))
                     (gx#free-identifier=? _%hd212571212596%_ __tmp213256))))
                (__tmp213254
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self212560%_ 'subst))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__find __tmp213255
                                                            __tmp213254))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"mutating inline substitution"
                                                     _%stx212561%_
                                                     _%hd212571212596%_))
                                                  (let ((__tmp213257
                                                         (cons '%#set!
                                                               (cons _%hd212571212596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self212560%_
                                      _%hd212574212604%_))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp213257
                                                     _%stx212561%_)))
                                              (_%g212563212580%_
                                               _%g212564212583%_))))
                                      (_%g212563212580%_ _%g212564212583%_))))
                              (_%g212563212580%_ _%g212564212583%_))))
                      (_%g212563212580%_ _%g212564212583%_)))))
          (_%g212562212627%_ _%stx212561%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self212506%_ _%stx212507%_)
        (let* ((_%g212509212522%_
                (lambda (_%g212510212519%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212510212519%_))))
               (_%g212508212557%_
                (lambda (_%g212510212525%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212510212525%_))
                      (let ((_%e212512212527%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212510212525%_))))
                        (let ((_%hd212513212530%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212512212527%_)))
                              (_%tl212514212532%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212512212527%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212514212532%_))
                              (let ((_%e212515212535%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212514212532%_))))
                                (let ((_%hd212516212538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212515212535%_)))
                                      (_%tl212517212540%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212515212535%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212517212540%_))
                                      (let* ((_%eid212555%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%hd212516212538%_)))
                                             (__tmp213258
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self212506%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-update!__%
                                         __tmp213258
                                         _%eid212555%_
                                         1+
                                         '0))
                                      (_%g212509212522%_ _%g212510212525%_))))
                              (_%g212509212522%_ _%g212510212525%_))))
                      (_%g212509212522%_ _%g212510212525%_)))))
          (_%g212508212557%_ _%stx212507%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self212436%_ _%stx212437%_)
        (let* ((_%g212439212456%_
                (lambda (_%g212440212453%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212440212453%_))))
               (_%g212438212503%_
                (lambda (_%g212440212459%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212440212459%_))
                      (let ((_%e212443212461%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212440212459%_))))
                        (let ((_%hd212444212464%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212443212461%_)))
                              (_%tl212445212466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212443212461%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212445212466%_))
                              (let ((_%e212446212469%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212445212466%_))))
                                (let ((_%hd212447212472%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212446212469%_)))
                                      (_%tl212448212474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212446212469%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212448212474%_))
                                      (let ((_%e212449212477%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl212448212474%_))))
                                        (let ((_%hd212450212480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212449212477%_)))
                                              (_%tl212451212482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212449212477%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212451212482%_))
                                              (let ((_%eid212501%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%hd212447212472%_))))
                                                (let ((__tmp213259
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self212436%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-update!__%
                                                   __tmp213259
                                                   _%eid212501%_
                                                   1+
                                                   '0))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self212436%_
                                                   _%hd212450212480%_)))
                                              (_%g212439212456%_
                                               _%g212440212459%_))))
                                      (_%g212439212456%_ _%g212440212459%_))))
                              (_%g212439212456%_ _%g212440212459%_))))
                      (_%g212439212456%_ _%g212440212459%_)))))
          (_%g212438212503%_ _%stx212437%_))))
    (define gxc#find-body%
      (lambda (_%self212351%_ _%stx212352%_)
        (let* ((_%g212354212373%_
                (lambda (_%g212355212370%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212355212370%_))))
               (_%g212353212433%_
                (lambda (_%g212355212376%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212355212376%_))
                      (let ((_%e212357212378%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212355212376%_))))
                        (let ((_%hd212358212381%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212357212378%_)))
                              (_%tl212359212383%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212357212378%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl212359212383%_))
                              (let ((_g213260_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl212359212383%_
                                        '0))))
                                (begin
                                  (let ((_g213261_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g213260_)
                                               (##values-length _g213260_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g213261_ 2)))
                                        (error "Context expects 2 values"
                                               _g213261_)))
                                  (let ((_%target212360212386%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g213260_ 0)))
                                        (_%tl212362212388%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g213260_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl212362212388%_))
                                        (letrec ((_%loop212363212391%_
                                                  (lambda (_%hd212361212394%_
                                                           _%expr212367212396%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd212361212394%_))
                                                        (let ((_%e212364212398%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd212361212394%_))))
                  (let ((_%lp-hd212365212401%_
                         (let ()
                           (declare (not safe))
                           (##car _%e212364212398%_)))
                        (_%lp-tl212366212403%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e212364212398%_))))
                    (_%loop212363212391%_
                     _%lp-tl212366212403%_
                     (cons _%lp-hd212365212401%_ _%expr212367212396%_))))
                (let ((_%expr212368212406%_ (reverse _%expr212367212396%_)))
                  (let ((__tmp213264
                         (lambda (_%g212421212423%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self212351%_
                              _%g212421212423%_))))
                        (__tmp213262
                         (let ((__tmp213263
                                (lambda (_%g212425212428%_ _%g212426212430%_)
                                  (cons _%g212425212428%_ _%g212426212430%_))))
                           (declare (not safe))
                           (foldr__0 __tmp213263 '() _%expr212368212406%_))))
                    (declare (not safe))
                    (ormap__0 __tmp213264 __tmp213262)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop212363212391%_
                                           _%target212360212386%_
                                           '()))
                                        (_%g212354212373%_
                                         _%g212355212376%_)))))
                              (_%g212354212373%_ _%g212355212376%_))))
                      (_%g212354212373%_ _%g212355212376%_)))))
          (_%g212353212433%_ _%stx212352%_))))
    (define gxc#find-let-values%
      (lambda (_%self212205%_ _%stx212206%_)
        (let* ((_%g212208212243%_
                (lambda (_%g212209212240%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212209212240%_))))
               (_%g212207212348%_
                (lambda (_%g212209212246%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212209212246%_))
                      (let ((_%e212213212248%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212209212246%_))))
                        (let ((_%hd212214212251%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212213212248%_)))
                              (_%tl212215212253%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212213212248%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212215212253%_))
                              (let ((_%e212216212256%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212215212253%_))))
                                (let ((_%hd212217212259%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212216212256%_)))
                                      (_%tl212218212261%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212216212256%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd212217212259%_))
                                      (let ((_g213265_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd212217212259%_
                                                '0))))
                                        (begin
                                          (let ((_g213266_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g213265_)
                                                       (##values-length
                                                        _g213265_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g213266_ 2)))
                                                (error "Context expects 2 values"
                                                       _g213266_)))
                                          (let ((_%target212219212264%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g213265_ 0)))
                                                (_%tl212221212266%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g213265_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl212221212266%_))
                                                (letrec ((_%loop212222212269%_
                                                          (lambda (_%hd212220212272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr212226212274%_
                           _%bind212227212275%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd212220212272%_))
                        (let ((_%e212223212277%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd212220212272%_))))
                          (let ((_%lp-hd212224212280%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e212223212277%_)))
                                (_%lp-tl212225212282%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e212223212277%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd212224212280%_))
                                (let ((_%e212230212285%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd212224212280%_))))
                                  (let ((_%hd212231212288%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e212230212285%_)))
                                        (_%tl212232212290%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e212230212285%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl212232212290%_))
                                        (let ((_%e212233212293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl212232212290%_))))
                                          (let ((_%hd212234212296%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e212233212293%_)))
                                                (_%tl212235212298%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e212233212293%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl212235212298%_))
                                                (_%loop212222212269%_
                                                 _%lp-tl212225212282%_
                                                 (cons _%hd212234212296%_
                                                       _%expr212226212274%_)
                                                 (cons _%hd212231212288%_
                                                       _%bind212227212275%_))
                                                (_%g212208212243%_
                                                 _%g212209212246%_))))
                                        (_%g212208212243%_
                                         _%g212209212246%_))))
                                (_%g212208212243%_ _%g212209212246%_))))
                        (let ((_%expr212228212301%_
                               (reverse _%expr212226212274%_))
                              (_%bind212229212302%_
                               (reverse _%bind212227212275%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212218212261%_))
                              (let ((_%e212236212304%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212218212261%_))))
                                (let ((_%hd212237212307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212236212304%_)))
                                      (_%tl212238212309%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212236212304%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212238212309%_))
                                      (let ((_%$e212345%_
                                             (let ((__tmp213269
                                                    (lambda (_%g212333212335%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self212205%_
                                                         _%g212333212335%_))))
                                                   (__tmp213267
                                                    (let ((__tmp213268
                                                           (lambda (_%g212337212340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g212338212342%_)
                     (cons _%g212337212340%_ _%g212338212342%_))))
              (declare (not safe))
              (foldr__0 __tmp213268 '() _%expr212228212301%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (ormap__0
                                                __tmp213269
                                                __tmp213267))))
                                        (if _%$e212345%_
                                            _%$e212345%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self212205%_
                                               _%hd212237212307%_))))
                                      (_%g212208212243%_ _%g212209212246%_))))
                              (_%g212208212243%_ _%g212209212246%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop212222212269%_
                                                   _%target212219212264%_
                                                   '()
                                                   '()))
                                                (_%g212208212243%_
                                                 _%g212209212246%_)))))
                                      (_%g212208212243%_ _%g212209212246%_))))
                              (_%g212208212243%_ _%g212209212246%_))))
                      (_%g212208212243%_ _%g212209212246%_)))))
          (_%g212207212348%_ _%stx212206%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self212149%_ _%stx212150%_)
        (let* ((_%g212152212165%_
                (lambda (_%g212153212162%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212153212162%_))))
               (_%g212151212202%_
                (lambda (_%g212153212168%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212153212168%_))
                      (let ((_%e212155212170%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212153212168%_))))
                        (let ((_%hd212156212173%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212155212170%_)))
                              (_%tl212157212175%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212155212170%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212157212175%_))
                              (let ((_%e212158212178%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212157212175%_))))
                                (let ((_%hd212159212181%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212158212178%_)))
                                      (_%tl212160212183%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212158212178%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212160212183%_))
                                      (let ((__tmp213271
                                             (lambda (_%g212197212199%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%hd212159212181%_
                                                  _%g212197212199%_))))
                                            (__tmp213270
                                             (let ()
                                               (declare (not safe))
                                               (slot-ref__0
                                                _%self212149%_
                                                'ids))))
                                        (declare (not safe))
                                        (__find __tmp213271 __tmp213270))
                                      (_%g212152212165%_ _%g212153212168%_))))
                              (_%g212152212165%_ _%g212153212168%_))))
                      (_%g212152212165%_ _%g212153212168%_)))))
          (_%g212151212202%_ _%stx212150%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self212074%_ _%stx212075%_)
        (let* ((_%g212077212094%_
                (lambda (_%g212078212091%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212078212091%_))))
               (_%g212076212146%_
                (lambda (_%g212078212097%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212078212097%_))
                      (let ((_%e212081212099%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212078212097%_))))
                        (let ((_%hd212082212102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212081212099%_)))
                              (_%tl212083212104%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212081212099%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212083212104%_))
                              (let ((_%e212084212107%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212083212104%_))))
                                (let ((_%hd212085212110%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212084212107%_)))
                                      (_%tl212086212112%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212084212107%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212086212112%_))
                                      (let ((_%e212087212115%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl212086212112%_))))
                                        (let ((_%hd212088212118%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212087212115%_)))
                                              (_%tl212089212120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212087212115%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212089212120%_))
                                              (let ((_%$e212143%_
                                                     (let ((__tmp213273
                                                            (lambda (_%g212138212140%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#free-identifier=?
                         _%hd212085212110%_
                         _%g212138212140%_))))
                   (__tmp213272
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self212074%_ 'ids))))
               (declare (not safe))
               (__find __tmp213273 __tmp213272))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _%$e212143%_
                                                    _%$e212143%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self212074%_
                                                       _%hd212088212118%_))))
                                              (_%g212077212094%_
                                               _%g212078212097%_))))
                                      (_%g212077212094%_ _%g212078212097%_))))
                              (_%g212077212094%_ _%g212078212097%_))))
                      (_%g212077212094%_ _%g212078212097%_)))))
          (_%g212076212146%_ _%stx212075%_))))))
