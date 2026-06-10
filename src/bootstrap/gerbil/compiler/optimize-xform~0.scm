(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1781119054)
  (begin
    (define gxc#::collect-mutators::t
      (make-class-type
       'gxc#::collect-mutators::t
       '::collect-mutators
       (list gxc#::void::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::collect-mutators?
      (make-class-predicate gxc#::collect-mutators::t))
    (define gxc#make-::collect-mutators
      (lambda _%$args188680%_
        (apply make-instance gxc#::collect-mutators::t _%$args188680%_)))
    (define gxc#::collect-mutators-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::void-bind-methods!)
         (bind-method! gxc#::collect-mutators::t '%#begin gxc#apply-begin%)
         (bind-method!
          gxc#::collect-mutators::t
          '%#begin-syntax
          gxc#apply-begin-syntax%)
         (bind-method!
          gxc#::collect-mutators::t
          '%#begin-annotation
          gxc#apply-begin-annotation%)
         (bind-method! gxc#::collect-mutators::t '%#module gxc#apply-module%)
         (bind-method!
          gxc#::collect-mutators::t
          '%#define-values
          gxc#apply-define-values%)
         (bind-method!
          gxc#::collect-mutators::t
          '%#define-syntax
          gxc#apply-define-syntax%)
         (bind-method!
          gxc#::collect-mutators::t
          '%#lambda
          gxc#apply-body-lambda%)
         (bind-method!
          gxc#::collect-mutators::t
          '%#case-lambda
          gxc#apply-body-case-lambda%)
         (bind-method!
          gxc#::collect-mutators::t
          '%#let-values
          gxc#apply-body-let-values%)
         (bind-method!
          gxc#::collect-mutators::t
          '%#letrec-values
          gxc#apply-body-let-values%)
         (bind-method!
          gxc#::collect-mutators::t
          '%#letrec*-values
          gxc#apply-body-let-values%)
         (bind-method! gxc#::collect-mutators::t '%#call gxc#apply-operands)
         (bind-method!
          gxc#::collect-mutators::t
          '%#call-unchecked
          gxc#apply-operands)
         (bind-method! gxc#::collect-mutators::t '%#if gxc#apply-operands)
         (bind-method!
          gxc#::collect-mutators::t
          '%#set!
          gxc#collect-mutators-setq%)
         (bind-method!
          gxc#::collect-mutators::t
          '%#struct-instance?
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-mutators::t
          '%#struct-direct-instance?
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-mutators::t
          '%#struct-ref
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-mutators::t
          '%#struct-set!
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-mutators::t
          '%#struct-direct-ref
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-mutators::t
          '%#struct-direct-set!
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-mutators::t
          '%#struct-unchecked-ref
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-mutators::t
          '%#struct-unchecked-set!
          gxc#apply-operands)
         (seal-class! gxc#::collect-mutators::t))))
    (define gxc#apply-collect-mutators
      (lambda (_%stx188672%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let ((_%self188675%_ (gxc#make-::collect-mutators)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self188675%_ _%stx188672%_))
           gxc#current-compile-method
           _%self188675%_))))
    (define gxc#::expression-subst::t
      (make-class-type
       'gxc#::expression-subst::t
       '::expression-subst
       (list gxc#::basic-xform-expression::t)
       '(id new-id)
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::expression-subst?
      (make-class-predicate gxc#::expression-subst::t))
    (define gxc#make-::expression-subst
      (lambda _%$args188669%_
        (apply make-instance gxc#::expression-subst::t _%$args188669%_)))
    (define gxc#::expression-subst-id
      (make-class-slot-accessor gxc#::expression-subst::t 'id))
    (define gxc#::expression-subst-new-id
      (make-class-slot-accessor gxc#::expression-subst::t 'new-id))
    (define gxc#::expression-subst-id-set!
      (make-class-slot-mutator gxc#::expression-subst::t 'id))
    (define gxc#::expression-subst-new-id-set!
      (make-class-slot-mutator gxc#::expression-subst::t 'new-id))
    (define gxc#&::expression-subst-id
      (make-class-slot-unchecked-accessor gxc#::expression-subst::t 'id))
    (define gxc#&::expression-subst-new-id
      (make-class-slot-unchecked-accessor gxc#::expression-subst::t 'new-id))
    (define gxc#&::expression-subst-id-set!
      (make-class-slot-unchecked-mutator gxc#::expression-subst::t 'id))
    (define gxc#&::expression-subst-new-id-set!
      (make-class-slot-unchecked-mutator gxc#::expression-subst::t 'new-id))
    (define gxc#::expression-subst-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::basic-xform-expression-bind-methods!)
         (bind-method! gxc#::expression-subst::t '%#begin gxc#xform-begin%)
         (bind-method!
          gxc#::expression-subst::t
          '%#ref
          gxc#expression-subst-ref%)
         (bind-method!
          gxc#::expression-subst::t
          '%#set!
          gxc#expression-subst-setq%)
         (seal-class! gxc#::expression-subst::t))))
    (define gxc#apply-expression-subst
      (let ((_%$%kw-lambda188635188662%_
             (let ((_%$%kw-lambda-main188636188655%_
                    (lambda (_%@@keywords188641%_
                             _%$%id188637188642%_
                             _%$%new-id188638188643%_
                             _%stx188644%_)
                      (let* ((_%id188647%_
                              (if (eq? _%$%id188637188642%_ absent-value)
                                  (error '"Missing required keyword argument"
                                         'id:)
                                  _%$%id188637188642%_))
                             (_%new-id188649%_
                              (if (eq? _%$%new-id188638188643%_ absent-value)
                                  (error '"Missing required keyword argument"
                                         'new-id:)
                                  _%$%new-id188638188643%_)))
                        (force gxc#::expression-subst-bind-methods!)
                        (let ((_%self188651%_
                               (gxc#make-::expression-subst
                                'id:
                                _%id188647%_
                                'new-id:
                                _%new-id188649%_)))
                          (call-with-parameters
                           (lambda ()
                             (gxc#compile-e _%self188651%_ _%stx188644%_))
                           gxc#current-compile-method
                           _%self188651%_))))))
               (lambda (_%@@keywords188658%_ . _%args188659%_)
                 (apply _%$%kw-lambda-main188636188655%_
                        _%@@keywords188658%_
                        (symbolic-table-ref
                         _%@@keywords188658%_
                         'id:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords188658%_
                         'new-id:
                         absent-value)
                        _%args188659%_)))))
        (lambda _%$%args188639188665%_
          (apply keyword-dispatch
                 '#(id: new-id:)
                 _%$%kw-lambda188635188662%_
                 _%$%args188639188665%_))))
    (define gxc#::expression-subst*::t
      (make-class-type
       'gxc#::expression-subst*::t
       '::expression-subst*
       (list gxc#::basic-xform-expression::t)
       '(subst)
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::expression-subst*?
      (make-class-predicate gxc#::expression-subst*::t))
    (define gxc#make-::expression-subst*
      (lambda _%$args188633%_
        (apply make-instance gxc#::expression-subst*::t _%$args188633%_)))
    (define gxc#::expression-subst*-subst
      (make-class-slot-accessor gxc#::expression-subst*::t 'subst))
    (define gxc#::expression-subst*-subst-set!
      (make-class-slot-mutator gxc#::expression-subst*::t 'subst))
    (define gxc#&::expression-subst*-subst
      (make-class-slot-unchecked-accessor gxc#::expression-subst*::t 'subst))
    (define gxc#&::expression-subst*-subst-set!
      (make-class-slot-unchecked-mutator gxc#::expression-subst*::t 'subst))
    (define gxc#::expression-subst*-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::basic-xform-expression-bind-methods!)
         (bind-method! gxc#::expression-subst*::t '%#begin gxc#xform-begin%)
         (bind-method!
          gxc#::expression-subst*::t
          '%#ref
          gxc#expression-subst*-ref%)
         (bind-method!
          gxc#::expression-subst*::t
          '%#set!
          gxc#expression-subst*-setq%)
         (seal-class! gxc#::expression-subst*::t))))
    (define gxc#apply-expression-subst*
      (let ((_%$%kw-lambda188603188626%_
             (let ((_%$%kw-lambda-main188604188619%_
                    (lambda (_%@@keywords188608%_
                             _%$%subst188605188609%_
                             _%stx188610%_)
                      (let ((_%subst188613%_
                             (if (eq? _%$%subst188605188609%_ absent-value)
                                 (error '"Missing required keyword argument"
                                        'subst:)
                                 _%$%subst188605188609%_)))
                        (force gxc#::expression-subst*-bind-methods!)
                        (let ((_%self188615%_
                               (gxc#make-::expression-subst*
                                'subst:
                                _%subst188613%_)))
                          (call-with-parameters
                           (lambda ()
                             (gxc#compile-e _%self188615%_ _%stx188610%_))
                           gxc#current-compile-method
                           _%self188615%_))))))
               (lambda (_%@@keywords188622%_ . _%args188623%_)
                 (apply _%$%kw-lambda-main188604188619%_
                        _%@@keywords188622%_
                        (symbolic-table-ref
                         _%@@keywords188622%_
                         'subst:
                         absent-value)
                        _%args188623%_)))))
        (lambda _%$%args188606188629%_
          (apply keyword-dispatch
                 '#(subst:)
                 _%$%kw-lambda188603188626%_
                 _%$%args188606188629%_))))
    (define gxc#::inline-subst::t
      (make-class-type
       'gxc#::inline-subst::t
       '::inline-subst
       (list gxc#::basic-xform-expression::t)
       '(subst)
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::inline-subst? (make-class-predicate gxc#::inline-subst::t))
    (define gxc#make-::inline-subst
      (lambda _%$args188601%_
        (apply make-instance gxc#::inline-subst::t _%$args188601%_)))
    (define gxc#::inline-subst-subst
      (make-class-slot-accessor gxc#::inline-subst::t 'subst))
    (define gxc#::inline-subst-subst-set!
      (make-class-slot-mutator gxc#::inline-subst::t 'subst))
    (define gxc#&::inline-subst-subst
      (make-class-slot-unchecked-accessor gxc#::inline-subst::t 'subst))
    (define gxc#&::inline-subst-subst-set!
      (make-class-slot-unchecked-mutator gxc#::inline-subst::t 'subst))
    (define gxc#::inline-subst-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::basic-xform-expression-bind-methods!)
         (bind-method! gxc#::inline-subst::t '%#begin gxc#xform-begin%)
         (bind-method! gxc#::inline-subst::t '%#ref gxc#inline-subst-ref%)
         (bind-method! gxc#::inline-subst::t '%#set! gxc#inline-subst-setq%)
         (seal-class! gxc#::inline-subst::t))))
    (define gxc#apply-inline-subst
      (let ((_%$%kw-lambda188571188594%_
             (let ((_%$%kw-lambda-main188572188587%_
                    (lambda (_%@@keywords188576%_
                             _%$%subst188573188577%_
                             _%stx188578%_)
                      (let ((_%subst188581%_
                             (if (eq? _%$%subst188573188577%_ absent-value)
                                 (error '"Missing required keyword argument"
                                        'subst:)
                                 _%$%subst188573188577%_)))
                        (force gxc#::inline-subst-bind-methods!)
                        (let ((_%self188583%_
                               (gxc#make-::inline-subst
                                'subst:
                                _%subst188581%_)))
                          (call-with-parameters
                           (lambda ()
                             (gxc#compile-e _%self188583%_ _%stx188578%_))
                           gxc#current-compile-method
                           _%self188583%_))))))
               (lambda (_%@@keywords188590%_ . _%args188591%_)
                 (apply _%$%kw-lambda-main188572188587%_
                        _%@@keywords188590%_
                        (symbolic-table-ref
                         _%@@keywords188590%_
                         'subst:
                         absent-value)
                        _%args188591%_)))))
        (lambda _%$%args188574188597%_
          (apply keyword-dispatch
                 '#(subst:)
                 _%$%kw-lambda188571188594%_
                 _%$%args188574188597%_))))
    (define gxc#::find-expression::t
      (make-class-type
       'gxc#::find-expression::t
       '::find-expression
       (list gxc#::false-expression::t)
       '()
       '()
       '#f))
    (define gxc#::find-expression?
      (make-class-predicate gxc#::find-expression::t))
    (define gxc#make-::find-expression
      (lambda _%$args188569%_
        (apply make-instance gxc#::find-expression::t _%$args188569%_)))
    (define gxc#::find-expression-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::false-expression-bind-methods!)
         (bind-method! gxc#::find-expression::t '%#begin gxc#find-body%)
         (bind-method!
          gxc#::find-expression::t
          '%#begin-annotation
          gxc#apply-begin-annotation%)
         (bind-method!
          gxc#::find-expression::t
          '%#lambda
          gxc#apply-body-lambda%)
         (bind-method!
          gxc#::find-expression::t
          '%#case-lambda
          gxc#apply-body-case-lambda%)
         (bind-method!
          gxc#::find-expression::t
          '%#let-values
          gxc#find-let-values%)
         (bind-method!
          gxc#::find-expression::t
          '%#letrec-values
          gxc#find-let-values%)
         (bind-method!
          gxc#::find-expression::t
          '%#letrec*-values
          gxc#find-let-values%)
         (bind-method! gxc#::find-expression::t '%#call gxc#find-body%)
         (bind-method!
          gxc#::find-expression::t
          '%#call-unchecked
          gxc#find-body%)
         (bind-method! gxc#::find-expression::t '%#if gxc#find-body%)
         (bind-method! gxc#::find-expression::t '%#set! gxc#apply-body-setq%)
         (bind-method!
          gxc#::find-expression::t
          '%#struct-instance?
          gxc#find-body%)
         (bind-method!
          gxc#::find-expression::t
          '%#struct-direct-instance?
          gxc#find-body%)
         (bind-method! gxc#::find-expression::t '%#struct-ref gxc#find-body%)
         (bind-method! gxc#::find-expression::t '%#struct-set! gxc#find-body%)
         (bind-method!
          gxc#::find-expression::t
          '%#struct-direct-ref
          gxc#find-body%)
         (bind-method!
          gxc#::find-expression::t
          '%#struct-direct-set!
          gxc#find-body%)
         (bind-method!
          gxc#::find-expression::t
          '%#struct-unchecked-ref
          gxc#find-body%)
         (bind-method!
          gxc#::find-expression::t
          '%#struct-unchecked-set!
          gxc#find-body%))))
    (define gxc#::find-var-refs::t
      (make-class-type
       'gxc#::find-var-refs::t
       '::find-var-refs
       (list gxc#::find-expression::t)
       '(ids)
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::find-var-refs? (make-class-predicate gxc#::find-var-refs::t))
    (define gxc#make-::find-var-refs
      (lambda _%$args188565%_
        (apply make-instance gxc#::find-var-refs::t _%$args188565%_)))
    (define gxc#::find-var-refs-ids
      (make-class-slot-accessor gxc#::find-var-refs::t 'ids))
    (define gxc#::find-var-refs-ids-set!
      (make-class-slot-mutator gxc#::find-var-refs::t 'ids))
    (define gxc#&::find-var-refs-ids
      (make-class-slot-unchecked-accessor gxc#::find-var-refs::t 'ids))
    (define gxc#&::find-var-refs-ids-set!
      (make-class-slot-unchecked-mutator gxc#::find-var-refs::t 'ids))
    (define gxc#::find-var-refs-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::find-expression-bind-methods!)
         (bind-method! gxc#::find-var-refs::t '%#ref gxc#find-var-refs-ref%)
         (bind-method! gxc#::find-var-refs::t '%#set! gxc#find-var-refs-setq%)
         (seal-class! gxc#::find-var-refs::t))))
    (define gxc#apply-find-var-refs
      (let ((_%$%kw-lambda188535188558%_
             (let ((_%$%kw-lambda-main188536188551%_
                    (lambda (_%@@keywords188540%_
                             _%$%ids188537188541%_
                             _%stx188542%_)
                      (let ((_%ids188545%_
                             (if (eq? _%$%ids188537188541%_ absent-value)
                                 (error '"Missing required keyword argument"
                                        'ids:)
                                 _%$%ids188537188541%_)))
                        (force gxc#::find-var-refs-bind-methods!)
                        (let ((_%self188547%_
                               (gxc#make-::find-var-refs 'ids: _%ids188545%_)))
                          (call-with-parameters
                           (lambda ()
                             (gxc#compile-e _%self188547%_ _%stx188542%_))
                           gxc#current-compile-method
                           _%self188547%_))))))
               (lambda (_%@@keywords188554%_ . _%args188555%_)
                 (apply _%$%kw-lambda-main188536188551%_
                        _%@@keywords188554%_
                        (symbolic-table-ref
                         _%@@keywords188554%_
                         'ids:
                         absent-value)
                        _%args188555%_)))))
        (lambda _%$%args188538188561%_
          (apply keyword-dispatch
                 '#(ids:)
                 _%$%kw-lambda188535188558%_
                 _%$%args188538188561%_))))
    (define gxc#::collect-runtime-refs::t
      (make-class-type
       'gxc#::collect-runtime-refs::t
       '::collect-runtime-refs
       (list gxc#::collect-expression-refs::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::collect-runtime-refs?
      (make-class-predicate gxc#::collect-runtime-refs::t))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args188533%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args188533%_)))
    (define gxc#::collect-runtime-refs-table
      (make-class-slot-accessor gxc#::collect-runtime-refs::t 'table))
    (define gxc#::collect-runtime-refs-table-set!
      (make-class-slot-mutator gxc#::collect-runtime-refs::t 'table))
    (define gxc#&::collect-runtime-refs-table
      (make-class-slot-unchecked-accessor
       gxc#::collect-runtime-refs::t
       'table))
    (define gxc#&::collect-runtime-refs-table-set!
      (make-class-slot-unchecked-mutator gxc#::collect-runtime-refs::t 'table))
    (define gxc#::collect-runtime-refs-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::collect-expression-refs-bind-methods!)
         (bind-method!
          gxc#::collect-runtime-refs::t
          '%#ref
          gxc#collect-runtime-refs-ref%)
         (bind-method!
          gxc#::collect-runtime-refs::t
          '%#set!
          gxc#collect-runtime-refs-setq%)
         (seal-class! gxc#::collect-runtime-refs::t))))
    (define gxc#apply-collect-runtime-refs
      (let ((_%$%kw-lambda188503188526%_
             (let ((_%$%kw-lambda-main188504188519%_
                    (lambda (_%@@keywords188508%_
                             _%$%table188505188509%_
                             _%stx188510%_)
                      (let ((_%table188513%_
                             (if (eq? _%$%table188505188509%_ absent-value)
                                 (error '"Missing required keyword argument"
                                        'table:)
                                 _%$%table188505188509%_)))
                        (force gxc#::collect-runtime-refs-bind-methods!)
                        (let ((_%self188515%_
                               (gxc#make-::collect-runtime-refs
                                'table:
                                _%table188513%_)))
                          (call-with-parameters
                           (lambda ()
                             (gxc#compile-e _%self188515%_ _%stx188510%_))
                           gxc#current-compile-method
                           _%self188515%_))))))
               (lambda (_%@@keywords188522%_ . _%args188523%_)
                 (apply _%$%kw-lambda-main188504188519%_
                        _%@@keywords188522%_
                        (symbolic-table-ref
                         _%@@keywords188522%_
                         'table:
                         absent-value)
                        _%args188523%_)))))
        (lambda _%$%args188506188529%_
          (apply keyword-dispatch
                 '#(table:)
                 _%$%kw-lambda188503188526%_
                 _%$%args188506188529%_))))
    (define gxc#collect-mutators-setq%
      (lambda (_%self188434%_ _%stx188435%_)
        (let* ((_%$%g188437188454%_
                (lambda (_%$%g188438188451%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g188438188451%_)))
               (_%$%g188436188501%_
                (lambda (_%$%g188438188457%_)
                  (if (gx#stx-pair? _%$%g188438188457%_)
                      (let ((_%$%e188441188459%_
                             (gx#stx-e _%$%g188438188457%_)))
                        (let ((_%$%hd188442188462%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e188441188459%_)))
                              (_%$%tl188443188464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e188441188459%_))))
                          (if (gx#stx-pair? _%$%tl188443188464%_)
                              (let ((_%$%e188444188467%_
                                     (gx#stx-e _%$%tl188443188464%_)))
                                (let ((_%$%hd188445188470%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e188444188467%_)))
                                      (_%$%tl188446188472%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e188444188467%_))))
                                  (if (gx#stx-pair? _%$%tl188446188472%_)
                                      (let ((_%$%e188447188475%_
                                             (gx#stx-e _%$%tl188446188472%_)))
                                        (let ((_%$%hd188448188478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e188447188475%_)))
                                              (_%$%tl188449188480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e188447188475%_))))
                                          (if (gx#stx-null?
                                               _%$%tl188449188480%_)
                                              ((lambda (_%$%g188439188483%_
                                                        _%$%g188440188484%_)
                                                 (let ((_%sym188499%_
                                                        (gxc#identifier-symbol
                                                         _%$%g188440188484%_)))
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _%sym188499%_)
                                                   (hash-put!
                                                    (gxc#current-compile-mutators)
                                                    _%sym188499%_
                                                    '#t)
                                                   (gxc#compile-e
                                                    _%self188434%_
                                                    _%$%g188439188483%_)))
                                               _%$%hd188448188478%_
                                               _%$%hd188445188470%_)
                                              (_%$%g188437188454%_
                                               _%$%g188438188457%_))))
                                      (_%$%g188437188454%_
                                       _%$%g188438188457%_))))
                              (_%$%g188437188454%_ _%$%g188438188457%_))))
                      (_%$%g188437188454%_ _%$%g188438188457%_)))))
          (_%$%g188436188501%_ _%stx188435%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self188382%_ _%stx188383%_)
        (let* ((_%$%g188385188398%_
                (lambda (_%$%g188386188395%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g188386188395%_)))
               (_%$%g188384188431%_
                (lambda (_%$%g188386188401%_)
                  (if (gx#stx-pair? _%$%g188386188401%_)
                      (let ((_%$%e188388188403%_
                             (gx#stx-e _%$%g188386188401%_)))
                        (let ((_%$%hd188389188406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e188388188403%_)))
                              (_%$%tl188390188408%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e188388188403%_))))
                          (if (gx#stx-pair? _%$%tl188390188408%_)
                              (let ((_%$%e188391188411%_
                                     (gx#stx-e _%$%tl188390188408%_)))
                                (let ((_%$%hd188392188414%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e188391188411%_)))
                                      (_%$%tl188393188416%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e188391188411%_))))
                                  (if (gx#stx-null? _%$%tl188393188416%_)
                                      ((lambda (_%$%g188387188419%_)
                                         (if (gx#free-identifier=?
                                              _%$%g188387188419%_
                                              (slot-ref _%self188382%_ 'id))
                                             (gxc#xform-wrap-source
                                              (cons '%#ref
                                                    (cons (slot-ref
                                                           _%self188382%_
                                                           'new-id)
                                                          '()))
                                              _%stx188383%_)
                                             _%stx188383%_))
                                       _%$%hd188392188414%_)
                                      (_%$%g188385188398%_
                                       _%$%g188386188401%_))))
                              (_%$%g188385188398%_ _%$%g188386188401%_))))
                      (_%$%g188385188398%_ _%$%g188386188401%_)))))
          (_%$%g188384188431%_ _%stx188383%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self188322%_ _%stx188323%_)
        (let* ((_%$%g188325188338%_
                (lambda (_%$%g188326188335%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g188326188335%_)))
               (_%$%g188324188379%_
                (lambda (_%$%g188326188341%_)
                  (if (gx#stx-pair? _%$%g188326188341%_)
                      (let ((_%$%e188328188343%_
                             (gx#stx-e _%$%g188326188341%_)))
                        (let ((_%$%hd188329188346%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e188328188343%_)))
                              (_%$%tl188330188348%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e188328188343%_))))
                          (if (gx#stx-pair? _%$%tl188330188348%_)
                              (let ((_%$%e188331188351%_
                                     (gx#stx-e _%$%tl188330188348%_)))
                                (let ((_%$%hd188332188354%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e188331188351%_)))
                                      (_%$%tl188333188356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e188331188351%_))))
                                  (if (gx#stx-null? _%$%tl188333188356%_)
                                      ((lambda (_%$%g188327188359%_)
                                         (let ((_%$e188373%_
                                                (find (lambda (_%sub188371%_)
                                                        (gx#free-identifier=?
                                                         _%$%g188327188359%_
                                                         (car _%sub188371%_)))
                                                      (slot-ref
                                                       _%self188322%_
                                                       'subst))))
                                           (if _%$e188373%_
                                               ((lambda (_%sub188376%_)
                                                  (gxc#xform-wrap-source
                                                   (cons '%#ref
                                                         (cons (cdr _%sub188376%_)
                                                               '()))
                                                   _%stx188323%_))
                                                _%$e188373%_)
                                               _%stx188323%_)))
                                       _%$%hd188332188354%_)
                                      (_%$%g188325188338%_
                                       _%$%g188326188341%_))))
                              (_%$%g188325188338%_ _%$%g188326188341%_))))
                      (_%$%g188325188338%_ _%$%g188326188341%_)))))
          (_%$%g188324188379%_ _%stx188323%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self188251%_ _%stx188252%_)
        (let* ((_%$%g188254188271%_
                (lambda (_%$%g188255188268%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g188255188268%_)))
               (_%$%g188253188319%_
                (lambda (_%$%g188255188274%_)
                  (if (gx#stx-pair? _%$%g188255188274%_)
                      (let ((_%$%e188258188276%_
                             (gx#stx-e _%$%g188255188274%_)))
                        (let ((_%$%hd188259188279%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e188258188276%_)))
                              (_%$%tl188260188281%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e188258188276%_))))
                          (if (gx#stx-pair? _%$%tl188260188281%_)
                              (let ((_%$%e188261188284%_
                                     (gx#stx-e _%$%tl188260188281%_)))
                                (let ((_%$%hd188262188287%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e188261188284%_)))
                                      (_%$%tl188263188289%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e188261188284%_))))
                                  (if (gx#stx-pair? _%$%tl188263188289%_)
                                      (let ((_%$%e188264188292%_
                                             (gx#stx-e _%$%tl188263188289%_)))
                                        (let ((_%$%hd188265188295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e188264188292%_)))
                                              (_%$%tl188266188297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e188264188292%_))))
                                          (if (gx#stx-null?
                                               _%$%tl188266188297%_)
                                              ((lambda (_%$%g188256188300%_
                                                        _%$%g188257188301%_)
                                                 (let ((_%new-expr188316%_
                                                        (gxc#compile-e
                                                         _%self188251%_
                                                         _%$%g188256188300%_))
                                                       (_%new-xid188317%_
                                                        (if (gx#free-identifier=?
                                                             _%$%g188257188301%_
                                                             (slot-ref
                                                              _%self188251%_
                                                              'id))
                                                            (slot-ref
                                                             _%self188251%_
                                                             'new-id)
                                                            _%$%g188257188301%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%new-xid188317%_
                                                                (cons _%new-expr188316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx188252%_)))
                                               _%$%hd188265188295%_
                                               _%$%hd188262188287%_)
                                              (_%$%g188254188271%_
                                               _%$%g188255188274%_))))
                                      (_%$%g188254188271%_
                                       _%$%g188255188274%_))))
                              (_%$%g188254188271%_ _%$%g188255188274%_))))
                      (_%$%g188254188271%_ _%$%g188255188274%_)))))
          (_%$%g188253188319%_ _%stx188252%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self188174%_ _%stx188175%_)
        (let* ((_%$%g188177188194%_
                (lambda (_%$%g188178188191%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g188178188191%_)))
               (_%$%g188176188248%_
                (lambda (_%$%g188178188197%_)
                  (if (gx#stx-pair? _%$%g188178188197%_)
                      (let ((_%$%e188181188199%_
                             (gx#stx-e _%$%g188178188197%_)))
                        (let ((_%$%hd188182188202%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e188181188199%_)))
                              (_%$%tl188183188204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e188181188199%_))))
                          (if (gx#stx-pair? _%$%tl188183188204%_)
                              (let ((_%$%e188184188207%_
                                     (gx#stx-e _%$%tl188183188204%_)))
                                (let ((_%$%hd188185188210%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e188184188207%_)))
                                      (_%$%tl188186188212%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e188184188207%_))))
                                  (if (gx#stx-pair? _%$%tl188186188212%_)
                                      (let ((_%$%e188187188215%_
                                             (gx#stx-e _%$%tl188186188212%_)))
                                        (let ((_%$%hd188188188218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e188187188215%_)))
                                              (_%$%tl188189188220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e188187188215%_))))
                                          (if (gx#stx-null?
                                               _%$%tl188189188220%_)
                                              ((lambda (_%$%g188179188223%_
                                                        _%$%g188180188224%_)
                                                 (let ((_%new-expr188245%_
                                                        (gxc#compile-e
                                                         _%self188174%_
                                                         _%$%g188179188223%_))
                                                       (_%new-xid188246%_
                                                        (let ((_%$e188241%_
                                                               (find (lambda (_%sub188239%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#free-identifier=?
                                _%$%g188180188224%_
                                (car _%sub188239%_)))
                             (slot-ref _%self188174%_ 'subst))))
                  (if _%$e188241%_ (cdr _%$e188241%_) _%$%g188180188224%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%new-xid188246%_
                                                                (cons _%new-expr188245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx188175%_)))
                                               _%$%hd188188188218%_
                                               _%$%hd188185188210%_)
                                              (_%$%g188177188194%_
                                               _%$%g188178188197%_))))
                                      (_%$%g188177188194%_
                                       _%$%g188178188197%_))))
                              (_%$%g188177188194%_ _%$%g188178188197%_))))
                      (_%$%g188177188194%_ _%$%g188178188197%_)))))
          (_%$%g188176188248%_ _%stx188175%_))))
    (define gxc#inline-subst-ref%
      (lambda (_%self188114%_ _%stx188115%_)
        (let* ((_%$%g188117188130%_
                (lambda (_%$%g188118188127%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g188118188127%_)))
               (_%$%g188116188171%_
                (lambda (_%$%g188118188133%_)
                  (if (gx#stx-pair? _%$%g188118188133%_)
                      (let ((_%$%e188120188135%_
                             (gx#stx-e _%$%g188118188133%_)))
                        (let ((_%$%hd188121188138%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e188120188135%_)))
                              (_%$%tl188122188140%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e188120188135%_))))
                          (if (gx#stx-pair? _%$%tl188122188140%_)
                              (let ((_%$%e188123188143%_
                                     (gx#stx-e _%$%tl188122188140%_)))
                                (let ((_%$%hd188124188146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e188123188143%_)))
                                      (_%$%tl188125188148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e188123188143%_))))
                                  (if (gx#stx-null? _%$%tl188125188148%_)
                                      ((lambda (_%$%g188119188151%_)
                                         (let ((_%$e188165%_
                                                (find (lambda (_%sub188163%_)
                                                        (gx#free-identifier=?
                                                         _%$%g188119188151%_
                                                         (car _%sub188163%_)))
                                                      (slot-ref
                                                       _%self188114%_
                                                       'subst))))
                                           (if _%$e188165%_
                                               ((lambda (_%sub188168%_)
                                                  (gxc#xform-wrap-source
                                                   (cdr _%sub188168%_)
                                                   _%stx188115%_))
                                                _%$e188165%_)
                                               _%stx188115%_)))
                                       _%$%hd188124188146%_)
                                      (_%$%g188117188130%_
                                       _%$%g188118188133%_))))
                              (_%$%g188117188130%_ _%$%g188118188133%_))))
                      (_%$%g188117188130%_ _%$%g188118188133%_)))))
          (_%$%g188116188171%_ _%stx188115%_))))
    (define gxc#inline-subst-setq%
      (lambda (_%self188044%_ _%stx188045%_)
        (let* ((_%$%g188047188064%_
                (lambda (_%$%g188048188061%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g188048188061%_)))
               (_%$%g188046188111%_
                (lambda (_%$%g188048188067%_)
                  (if (gx#stx-pair? _%$%g188048188067%_)
                      (let ((_%$%e188051188069%_
                             (gx#stx-e _%$%g188048188067%_)))
                        (let ((_%$%hd188052188072%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e188051188069%_)))
                              (_%$%tl188053188074%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e188051188069%_))))
                          (if (gx#stx-pair? _%$%tl188053188074%_)
                              (let ((_%$%e188054188077%_
                                     (gx#stx-e _%$%tl188053188074%_)))
                                (let ((_%$%hd188055188080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e188054188077%_)))
                                      (_%$%tl188056188082%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e188054188077%_))))
                                  (if (gx#stx-pair? _%$%tl188056188082%_)
                                      (let ((_%$%e188057188085%_
                                             (gx#stx-e _%$%tl188056188082%_)))
                                        (let ((_%$%hd188058188088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e188057188085%_)))
                                              (_%$%tl188059188090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e188057188085%_))))
                                          (if (gx#stx-null?
                                               _%$%tl188059188090%_)
                                              ((lambda (_%$%g188049188093%_
                                                        _%$%g188050188094%_)
                                                 (if (find (lambda (_%sub188109%_)
                                                             (gx#free-identifier=?
                                                              _%$%g188050188094%_
                                                              (car _%sub188109%_)))
                                                           (slot-ref
                                                            _%self188044%_
                                                            'subst))
                                                     (gxc#raise-compile-error
                                                      '"mutating inline substitution"
                                                      _%stx188045%_
                                                      _%$%g188050188094%_)
                                                     (gxc#xform-wrap-source
                                                      (cons '%#set!
                                                            (cons _%$%g188050188094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gxc#compile-e
                                 _%self188044%_
                                 _%$%g188049188093%_)
                                '())))
              _%stx188045%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd188058188088%_
                                               _%$%hd188055188080%_)
                                              (_%$%g188047188064%_
                                               _%$%g188048188067%_))))
                                      (_%$%g188047188064%_
                                       _%$%g188048188067%_))))
                              (_%$%g188047188064%_ _%$%g188048188067%_))))
                      (_%$%g188047188064%_ _%$%g188048188067%_)))))
          (_%$%g188046188111%_ _%stx188045%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self187990%_ _%stx187991%_)
        (let* ((_%$%g187993188006%_
                (lambda (_%$%g187994188003%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g187994188003%_)))
               (_%$%g187992188041%_
                (lambda (_%$%g187994188009%_)
                  (if (gx#stx-pair? _%$%g187994188009%_)
                      (let ((_%$%e187996188011%_
                             (gx#stx-e _%$%g187994188009%_)))
                        (let ((_%$%hd187997188014%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e187996188011%_)))
                              (_%$%tl187998188016%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e187996188011%_))))
                          (if (gx#stx-pair? _%$%tl187998188016%_)
                              (let ((_%$%e187999188019%_
                                     (gx#stx-e _%$%tl187998188016%_)))
                                (let ((_%$%hd188000188022%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e187999188019%_)))
                                      (_%$%tl188001188024%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e187999188019%_))))
                                  (if (gx#stx-null? _%$%tl188001188024%_)
                                      ((lambda (_%$%g187995188027%_)
                                         (let ((_%eid188039%_
                                                (gxc#identifier-symbol
                                                 _%$%g187995188027%_)))
                                           (hash-update!
                                            (slot-ref _%self187990%_ 'table)
                                            _%eid188039%_
                                            1+
                                            '0)))
                                       _%$%hd188000188022%_)
                                      (_%$%g187993188006%_
                                       _%$%g187994188009%_))))
                              (_%$%g187993188006%_ _%$%g187994188009%_))))
                      (_%$%g187993188006%_ _%$%g187994188009%_)))))
          (_%$%g187992188041%_ _%stx187991%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self187920%_ _%stx187921%_)
        (let* ((_%$%g187923187940%_
                (lambda (_%$%g187924187937%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g187924187937%_)))
               (_%$%g187922187987%_
                (lambda (_%$%g187924187943%_)
                  (if (gx#stx-pair? _%$%g187924187943%_)
                      (let ((_%$%e187927187945%_
                             (gx#stx-e _%$%g187924187943%_)))
                        (let ((_%$%hd187928187948%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e187927187945%_)))
                              (_%$%tl187929187950%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e187927187945%_))))
                          (if (gx#stx-pair? _%$%tl187929187950%_)
                              (let ((_%$%e187930187953%_
                                     (gx#stx-e _%$%tl187929187950%_)))
                                (let ((_%$%hd187931187956%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e187930187953%_)))
                                      (_%$%tl187932187958%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e187930187953%_))))
                                  (if (gx#stx-pair? _%$%tl187932187958%_)
                                      (let ((_%$%e187933187961%_
                                             (gx#stx-e _%$%tl187932187958%_)))
                                        (let ((_%$%hd187934187964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e187933187961%_)))
                                              (_%$%tl187935187966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e187933187961%_))))
                                          (if (gx#stx-null?
                                               _%$%tl187935187966%_)
                                              ((lambda (_%$%g187925187969%_
                                                        _%$%g187926187970%_)
                                                 (let ((_%eid187985%_
                                                        (gxc#identifier-symbol
                                                         _%$%g187926187970%_)))
                                                   (hash-update!
                                                    (slot-ref
                                                     _%self187920%_
                                                     'table)
                                                    _%eid187985%_
                                                    1+
                                                    '0)
                                                   (gxc#compile-e
                                                    _%self187920%_
                                                    _%$%g187925187969%_)))
                                               _%$%hd187934187964%_
                                               _%$%hd187931187956%_)
                                              (_%$%g187923187940%_
                                               _%$%g187924187943%_))))
                                      (_%$%g187923187940%_
                                       _%$%g187924187943%_))))
                              (_%$%g187923187940%_ _%$%g187924187943%_))))
                      (_%$%g187923187940%_ _%$%g187924187943%_)))))
          (_%$%g187922187987%_ _%stx187921%_))))
    (define gxc#find-body%
      (lambda (_%self187835%_ _%stx187836%_)
        (let* ((_%$%g187838187857%_
                (lambda (_%$%g187839187854%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g187839187854%_)))
               (_%$%g187837187917%_
                (lambda (_%$%g187839187860%_)
                  (if (gx#stx-pair? _%$%g187839187860%_)
                      (let ((_%$%e187841187862%_
                             (gx#stx-e _%$%g187839187860%_)))
                        (let ((_%$%hd187842187865%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e187841187862%_)))
                              (_%$%tl187843187867%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e187841187862%_))))
                          (if (gx#stx-pair/null? _%$%tl187843187867%_)
                              (let ((_g188682_
                                     (gx#syntax-split-splice
                                      _%$%tl187843187867%_
                                      '0)))
                                (begin
                                  (let ((_g188683_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g188682_)
                                               (##values-length _g188682_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g188683_ 2)))
                                        (error "Context expects 2 values"
                                               _g188683_)))
                                  (let ((_%$%target187844187870%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g188682_ 0)))
                                        (_%$%tl187846187872%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g188682_ 1))))
                                    (if (gx#stx-null? _%$%tl187846187872%_)
                                        (letrec ((_%$%loop187847187875%_
                                                  (lambda (_%$%hd187845187878%_
                                                           _%$%expr187851187880%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd187845187878%_)
                                                        (let ((_%$%e187848187882%_
                                                               (gx#stx-e
                                                                _%$%hd187845187878%_)))
                                                          (let ((_%$%lp-hd187849187885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e187848187882%_)))
                        (_%$%lp-tl187850187887%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e187848187882%_))))
                    (_%$%loop187847187875%_
                     _%$%lp-tl187850187887%_
                     (cons _%$%lp-hd187849187885%_ _%$%expr187851187880%_))))
                (let ((_%$%expr187852187890%_
                       (reverse _%$%expr187851187880%_)))
                  ((lambda (_%$%g187840187892%_)
                     (ormap (lambda (_%$%g187905187907%_)
                              (gxc#compile-e
                               _%self187835%_
                               _%$%g187905187907%_))
                            (foldr (lambda (_%$%g187909187912%_
                                            _%$%g187910187914%_)
                                     (cons _%$%g187909187912%_
                                           _%$%g187910187914%_))
                                   '()
                                   _%$%g187840187892%_)))
                   _%$%expr187852187890%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop187847187875%_
                                           _%$%target187844187870%_
                                           '()))
                                        (_%$%g187838187857%_
                                         _%$%g187839187860%_)))))
                              (_%$%g187838187857%_ _%$%g187839187860%_))))
                      (_%$%g187838187857%_ _%$%g187839187860%_)))))
          (_%$%g187837187917%_ _%stx187836%_))))
    (define gxc#find-let-values%
      (lambda (_%self187689%_ _%stx187690%_)
        (let* ((_%$%g187692187727%_
                (lambda (_%$%g187693187724%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g187693187724%_)))
               (_%$%g187691187832%_
                (lambda (_%$%g187693187730%_)
                  (if (gx#stx-pair? _%$%g187693187730%_)
                      (let ((_%$%e187697187732%_
                             (gx#stx-e _%$%g187693187730%_)))
                        (let ((_%$%hd187698187735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e187697187732%_)))
                              (_%$%tl187699187737%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e187697187732%_))))
                          (if (gx#stx-pair? _%$%tl187699187737%_)
                              (let ((_%$%e187700187740%_
                                     (gx#stx-e _%$%tl187699187737%_)))
                                (let ((_%$%hd187701187743%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e187700187740%_)))
                                      (_%$%tl187702187745%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e187700187740%_))))
                                  (if (gx#stx-pair/null? _%$%hd187701187743%_)
                                      (let ((_g188684_
                                             (gx#syntax-split-splice
                                              _%$%hd187701187743%_
                                              '0)))
                                        (begin
                                          (let ((_g188685_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g188684_)
                                                       (##values-length
                                                        _g188684_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g188685_ 2)))
                                                (error "Context expects 2 values"
                                                       _g188685_)))
                                          (let ((_%$%target187703187748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g188684_ 0)))
                                                (_%$%tl187705187750%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g188684_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%$%tl187705187750%_)
                                                (letrec ((_%$%loop187706187753%_
                                                          (lambda (_%$%hd187704187756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr187710187758%_
                           _%$%bind187711187759%_)
                    (if (gx#stx-pair? _%$%hd187704187756%_)
                        (let ((_%$%e187707187761%_
                               (gx#stx-e _%$%hd187704187756%_)))
                          (let ((_%$%lp-hd187708187764%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e187707187761%_)))
                                (_%$%lp-tl187709187766%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e187707187761%_))))
                            (if (gx#stx-pair? _%$%lp-hd187708187764%_)
                                (let ((_%$%e187714187769%_
                                       (gx#stx-e _%$%lp-hd187708187764%_)))
                                  (let ((_%$%hd187715187772%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e187714187769%_)))
                                        (_%$%tl187716187774%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e187714187769%_))))
                                    (if (gx#stx-pair? _%$%tl187716187774%_)
                                        (let ((_%$%e187717187777%_
                                               (gx#stx-e
                                                _%$%tl187716187774%_)))
                                          (let ((_%$%hd187718187780%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e187717187777%_)))
                                                (_%$%tl187719187782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e187717187777%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl187719187782%_)
                                                (_%$%loop187706187753%_
                                                 _%$%lp-tl187709187766%_
                                                 (cons _%$%hd187718187780%_
                                                       _%$%expr187710187758%_)
                                                 (cons _%$%hd187715187772%_
                                                       _%$%bind187711187759%_))
                                                (_%$%g187692187727%_
                                                 _%$%g187693187730%_))))
                                        (_%$%g187692187727%_
                                         _%$%g187693187730%_))))
                                (_%$%g187692187727%_ _%$%g187693187730%_))))
                        (let ((_%$%expr187712187785%_
                               (reverse _%$%expr187710187758%_))
                              (_%$%bind187713187786%_
                               (reverse _%$%bind187711187759%_)))
                          (if (gx#stx-pair? _%$%tl187702187745%_)
                              (let ((_%$%e187720187788%_
                                     (gx#stx-e _%$%tl187702187745%_)))
                                (let ((_%$%hd187721187791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e187720187788%_)))
                                      (_%$%tl187722187793%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e187720187788%_))))
                                  (if (gx#stx-null? _%$%tl187722187793%_)
                                      ((lambda (_%$%g187694187796%_
                                                _%$%g187695187797%_
                                                _%$%g187696187798%_)
                                         (let ((_%$e187829%_
                                                (ormap (lambda (_%$%g187817187819%_)
                                                         (gxc#compile-e
                                                          _%self187689%_
                                                          _%$%g187817187819%_))
                                                       (foldr (lambda (_%$%g187821187824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g187822187826%_)
                        (cons _%$%g187821187824%_ _%$%g187822187826%_))
                      '()
                      _%$%g187695187797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if _%$e187829%_
                                               _%$e187829%_
                                               (gxc#compile-e
                                                _%self187689%_
                                                _%$%g187694187796%_))))
                                       _%$%hd187721187791%_
                                       _%$%expr187712187785%_
                                       _%$%bind187713187786%_)
                                      (_%$%g187692187727%_
                                       _%$%g187693187730%_))))
                              (_%$%g187692187727%_ _%$%g187693187730%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop187706187753%_
                                                   _%$%target187703187748%_
                                                   '()
                                                   '()))
                                                (_%$%g187692187727%_
                                                 _%$%g187693187730%_)))))
                                      (_%$%g187692187727%_
                                       _%$%g187693187730%_))))
                              (_%$%g187692187727%_ _%$%g187693187730%_))))
                      (_%$%g187692187727%_ _%$%g187693187730%_)))))
          (_%$%g187691187832%_ _%stx187690%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self187633%_ _%stx187634%_)
        (let* ((_%$%g187636187649%_
                (lambda (_%$%g187637187646%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g187637187646%_)))
               (_%$%g187635187686%_
                (lambda (_%$%g187637187652%_)
                  (if (gx#stx-pair? _%$%g187637187652%_)
                      (let ((_%$%e187639187654%_
                             (gx#stx-e _%$%g187637187652%_)))
                        (let ((_%$%hd187640187657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e187639187654%_)))
                              (_%$%tl187641187659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e187639187654%_))))
                          (if (gx#stx-pair? _%$%tl187641187659%_)
                              (let ((_%$%e187642187662%_
                                     (gx#stx-e _%$%tl187641187659%_)))
                                (let ((_%$%hd187643187665%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e187642187662%_)))
                                      (_%$%tl187644187667%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e187642187662%_))))
                                  (if (gx#stx-null? _%$%tl187644187667%_)
                                      ((lambda (_%$%g187638187670%_)
                                         (find (lambda (_%$%g187681187683%_)
                                                 (gx#free-identifier=?
                                                  _%$%g187638187670%_
                                                  _%$%g187681187683%_))
                                               (slot-ref _%self187633%_ 'ids)))
                                       _%$%hd187643187665%_)
                                      (_%$%g187636187649%_
                                       _%$%g187637187652%_))))
                              (_%$%g187636187649%_ _%$%g187637187652%_))))
                      (_%$%g187636187649%_ _%$%g187637187652%_)))))
          (_%$%g187635187686%_ _%stx187634%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self187558%_ _%stx187559%_)
        (let* ((_%$%g187561187578%_
                (lambda (_%$%g187562187575%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g187562187575%_)))
               (_%$%g187560187630%_
                (lambda (_%$%g187562187581%_)
                  (if (gx#stx-pair? _%$%g187562187581%_)
                      (let ((_%$%e187565187583%_
                             (gx#stx-e _%$%g187562187581%_)))
                        (let ((_%$%hd187566187586%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e187565187583%_)))
                              (_%$%tl187567187588%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e187565187583%_))))
                          (if (gx#stx-pair? _%$%tl187567187588%_)
                              (let ((_%$%e187568187591%_
                                     (gx#stx-e _%$%tl187567187588%_)))
                                (let ((_%$%hd187569187594%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e187568187591%_)))
                                      (_%$%tl187570187596%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e187568187591%_))))
                                  (if (gx#stx-pair? _%$%tl187570187596%_)
                                      (let ((_%$%e187571187599%_
                                             (gx#stx-e _%$%tl187570187596%_)))
                                        (let ((_%$%hd187572187602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e187571187599%_)))
                                              (_%$%tl187573187604%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e187571187599%_))))
                                          (if (gx#stx-null?
                                               _%$%tl187573187604%_)
                                              ((lambda (_%$%g187563187607%_
                                                        _%$%g187564187608%_)
                                                 (let ((_%$e187627%_
                                                        (find (lambda (_%$%g187622187624%_)
                                                                (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g187564187608%_
                         _%$%g187622187624%_))
                      (slot-ref _%self187558%_ 'ids))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e187627%_
                                                       _%$e187627%_
                                                       (gxc#compile-e
                                                        _%self187558%_
                                                        _%$%g187563187607%_))))
                                               _%$%hd187572187602%_
                                               _%$%hd187569187594%_)
                                              (_%$%g187561187578%_
                                               _%$%g187562187581%_))))
                                      (_%$%g187561187578%_
                                       _%$%g187562187581%_))))
                              (_%$%g187561187578%_ _%$%g187562187581%_))))
                      (_%$%g187561187578%_ _%$%g187562187581%_)))))
          (_%$%g187560187630%_ _%stx187559%_))))))
