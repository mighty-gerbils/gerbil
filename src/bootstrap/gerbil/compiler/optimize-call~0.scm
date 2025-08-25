(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1756142926)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp204483 (list gxc#::basic-xform::t))
            (__tmp204482 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp204483
         '()
         __tmp204482
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args203760%_
        (apply make-instance gxc#::optimize-call::t _%$args203760%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp204484
             (lambda ()
               (force gxc#::basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#call
                  gxc#optimize-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#if
                  gxc#optimize-if%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (__make-promise __tmp204484)))
    (define gxc#apply-optimize-call
      (lambda (_%stx203752%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self203755%_
                (let ((__obj204474
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj204474))
               (__tmp204485
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self203755%_ _%stx203752%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp204485
           gxc#current-compile-method
           _%self203755%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp204487 (list gxc#::void::t))
            (__tmp204486 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp204487
         '()
         __tmp204486
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args203749%_
        (apply make-instance gxc#::check-return-type::t _%$args203749%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp204488
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-annotation
                  gxc#apply-check-return-type-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-values
                  gxc#apply-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-syntax
                  gxc#apply-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#call
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#if
                  gxc#apply-path-type-if%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::check-return-type::t)))))
        (declare (not safe))
        (__make-promise __tmp204488)))
    (define gxc#apply-check-return-type
      (lambda (_%stx203741%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self203744%_
                (let ((__obj204476
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj204476))
               (__tmp204489
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self203744%_ _%stx203741%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp204489
           gxc#current-compile-method
           _%self203744%_))))
    (define gxc#optimize-call%
      (lambda (_%self203342%_ _%stx203343%_)
        (let* ((_%__stx203829203830%_ _%stx203343%_)
               (_%g203346203392%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203829203830%_)))))
          (let ((_%__kont203831203832%_
                 (lambda (_%L203535%_ _%L203536%_)
                   (let* ((_%rator-id203556%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L203536%_)))
                          (_%rator-type203558%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id203556%_))))
                     (if (or (not _%rator-type203558%_)
                             (eq? (##structure-ref
                                   _%rator-type203558%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self203342%_ _%stx203343%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type203558%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp204490
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type203558%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id203556%_
                                  '" => "
                                  _%rator-type203558%_
                                  '" "
                                  __tmp204490))
                               (let* ((_%optimized203573%_
                                       (let ((__method204477
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type203558%_
                                                 'optimize-call))))
                                         (if __method204477
                                             (let ((__tmp204491
                                                    (let ((__tmp204492
                                                           (lambda (_%g203565203568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g203566203570%_)
                     (cons _%g203565203568%_ _%g203566203570%_))))
              (declare (not safe))
              (__foldr1 __tmp204492 '() _%L203535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method204477
                                                _%rator-type203558%_
                                                _%self203342%_
                                                _%stx203343%_
                                                __tmp204491))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type203558%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx203777203778%_
                                       _%optimized203573%_)
                                      (_%g203576203605%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx203777203778%_)))))
                                 (let ((_%__kont203779203780%_
                                        (lambda (_%L203673%_ _%L203674%_)
                                          (let* ((_%optimized-rator-id203701%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L203674%_)))
                                                 (_%rator-type203706%_
                                                  (let ((_%$e203703%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id203701%_))))
                                                    (if _%$e203703%_
                                                        _%$e203703%_
                                                        _%rator-type203558%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type203706%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id203701%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type203706%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type203706%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized203573%_
                                                (let ((__tmp204493
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L203674%_ '()))
                           (let ((__tmp204494
                                  (lambda (_%g203714203717%_ _%g203715203719%_)
                                    (cons _%g203714203717%_
                                          _%g203715203719%_))))
                             (declare (not safe))
                             (__foldr1 __tmp204494 '() _%L203673%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp204493
                                                   _%stx203343%_))))))
                                       (_%__kont203783203784%_
                                        (lambda () _%optimized203573%_)))
                                   (let ((_%__match203826203827%_
                                          (lambda (_%e203580203617%_
                                                   _%hd203581203620%_
                                                   _%tl203582203622%_
                                                   _%e203583203625%_
                                                   _%hd203584203628%_
                                                   _%tl203585203630%_
                                                   _%e203586203633%_
                                                   _%hd203587203636%_
                                                   _%tl203588203638%_
                                                   _%e203589203641%_
                                                   _%hd203590203644%_
                                                   _%tl203591203646%_
                                                   _%__splice203781203782%_
                                                   _%target203592203649%_
                                                   _%tl203594203651%_)
                                            (letrec ((_%loop203595203654%_
                                                      (lambda (_%hd203593203657%_
                                                               _%arg203599203659%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd203593203657%_))
                                                            (let ((_%e203596203662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd203593203657%_))))
                      (let ((_%lp-tl203598203667%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e203596203662%_)))
                            (_%lp-hd203597203665%_
                             (let ()
                               (declare (not safe))
                               (##car _%e203596203662%_))))
                        (_%loop203595203654%_
                         _%lp-tl203598203667%_
                         (cons _%lp-hd203597203665%_ _%arg203599203659%_))))
                    (let ((_%arg203600203670%_ (reverse _%arg203599203659%_)))
                      (_%__kont203779203780%_
                       _%arg203600203670%_
                       _%hd203590203644%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop203595203654%_
                                               _%target203592203649%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx203777203778%_))
                                         (let ((_%e203580203617%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx203777203778%_))))
                                           (let ((_%tl203582203622%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e203580203617%_)))
                                                 (_%hd203581203620%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e203580203617%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd203581203620%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd203581203620%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl203582203622%_))
                                                         (let ((_%e203583203625%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl203582203622%_))))
                   (let ((_%tl203585203630%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e203583203625%_)))
                         (_%hd203584203628%_
                          (let ()
                            (declare (not safe))
                            (##car _%e203583203625%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd203584203628%_))
                         (let ((_%e203586203633%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd203584203628%_))))
                           (let ((_%tl203588203638%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e203586203633%_)))
                                 (_%hd203587203636%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e203586203633%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd203587203636%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd203587203636%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl203588203638%_))
                                         (let ((_%e203589203641%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl203588203638%_))))
                                           (let ((_%tl203591203646%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e203589203641%_)))
                                                 (_%hd203590203644%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e203589203641%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl203591203646%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl203585203630%_))
                                                     (let ((_%__splice203781203782%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl203585203630%_
                                                               '0))))
                                                       (let ((_%tl203594203651%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice203781203782%_ '1)))
                     (_%target203592203649%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice203781203782%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl203594203651%_))
                     (_%__match203826203827%_
                      _%e203580203617%_
                      _%hd203581203620%_
                      _%tl203582203622%_
                      _%e203583203625%_
                      _%hd203584203628%_
                      _%tl203585203630%_
                      _%e203586203633%_
                      _%hd203587203636%_
                      _%tl203588203638%_
                      _%e203589203641%_
                      _%hd203590203644%_
                      _%tl203591203646%_
                      _%__splice203781203782%_
                      _%target203592203649%_
                      _%tl203594203651%_)
                     (_%__kont203783203784%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont203783203784%_))
                                                 (_%__kont203783203784%_))))
                                         (_%__kont203783203784%_))
                                     (_%__kont203783203784%_))
                                 (_%__kont203783203784%_))))
                         (_%__kont203783203784%_))))
                 (_%__kont203783203784%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont203783203784%_))
                                                 (_%__kont203783203784%_))))
                                         (_%__kont203783203784%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type203558%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type203558%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp204495
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L203536%_
                                                                '()))
                                                    (map (lambda (_%g203725203727%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self203342%_
                                                              _%g203725203727%_)))
                                                         (let ((__tmp204496
                                                                (lambda (_%g203729203732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g203730203734%_)
                          (cons _%g203729203732%_ _%g203730203734%_))))
                   (declare (not safe))
                   (__foldr1 __tmp204496 '() _%L203535%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp204495
                                    _%stx203343%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx203343%_
                                    _%rator-type203558%_))))))))
                (_%__kont203835203836%_
                 (lambda (_%L203437%_ _%L203438%_)
                   (let ((_%rator-type203455%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L203438%_))))
                     (if (and _%rator-type203455%_
                              (eq? (##structure-ref
                                    _%rator-type203455%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type203455%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type203455%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type203455%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp204497
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self203342%_
                                               _%L203438%_))
                                            (map (lambda (_%g203457203459%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self203342%_
                                                      _%g203457203459%_)))
                                                 (let ((__tmp204498
                                                        (lambda (_%g203461203464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g203462203466%_)
                  (cons _%g203461203464%_ _%g203462203466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp204498
                                                    '()
                                                    _%L203437%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp204497 _%stx203343%_))
                         (if (or (not _%rator-type203455%_)
                                 (let ((__tmp204499
                                        (##structure-ref
                                         _%rator-type203455%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp204499 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self203342%_ _%stx203343%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx203343%_
                                _%rator-type203455%_))))))))
            (let* ((_%__match203896203897%_
                    (lambda (_%e203373203397%_
                             _%hd203374203400%_
                             _%tl203375203402%_
                             _%e203376203405%_
                             _%hd203377203408%_
                             _%tl203378203410%_
                             _%__splice203837203838%_
                             _%target203379203413%_
                             _%tl203381203415%_)
                      (letrec ((_%loop203382203418%_
                                (lambda (_%hd203380203421%_
                                         _%rand203386203423%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203380203421%_))
                                      (let ((_%e203383203426%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd203380203421%_))))
                                        (let ((_%lp-tl203385203431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203383203426%_)))
                                              (_%lp-hd203384203429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203383203426%_))))
                                          (_%loop203382203418%_
                                           _%lp-tl203385203431%_
                                           (cons _%lp-hd203384203429%_
                                                 _%rand203386203423%_))))
                                      (let ((_%rand203387203434%_
                                             (reverse _%rand203386203423%_)))
                                        (_%__kont203835203836%_
                                         _%rand203387203434%_
                                         _%hd203377203408%_))))))
                        (_%loop203382203418%_ _%target203379203413%_ '()))))
                   (_%__match203876203877%_
                    (lambda (_%e203350203479%_
                             _%hd203351203482%_
                             _%tl203352203484%_
                             _%e203353203487%_
                             _%hd203354203490%_
                             _%tl203355203492%_
                             _%e203356203495%_
                             _%hd203357203498%_
                             _%tl203358203500%_
                             _%e203359203503%_
                             _%hd203360203506%_
                             _%tl203361203508%_
                             _%__splice203833203834%_
                             _%target203362203511%_
                             _%tl203364203513%_)
                      (letrec ((_%loop203365203516%_
                                (lambda (_%hd203363203519%_
                                         _%rand203369203521%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203363203519%_))
                                      (let ((_%e203366203524%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd203363203519%_))))
                                        (let ((_%lp-tl203368203529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203366203524%_)))
                                              (_%lp-hd203367203527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203366203524%_))))
                                          (_%loop203365203516%_
                                           _%lp-tl203368203529%_
                                           (cons _%lp-hd203367203527%_
                                                 _%rand203369203521%_))))
                                      (let ((_%rand203370203532%_
                                             (reverse _%rand203369203521%_)))
                                        (_%__kont203831203832%_
                                         _%rand203370203532%_
                                         _%hd203360203506%_))))))
                        (_%loop203365203516%_ _%target203362203511%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx203829203830%_))
                  (let ((_%e203350203479%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx203829203830%_))))
                    (let ((_%tl203352203484%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203350203479%_)))
                          (_%hd203351203482%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203350203479%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203352203484%_))
                          (let ((_%e203353203487%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl203352203484%_))))
                            (let ((_%tl203355203492%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203353203487%_)))
                                  (_%hd203354203490%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203353203487%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd203354203490%_))
                                  (let ((_%e203356203495%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd203354203490%_))))
                                    (let ((_%tl203358203500%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203356203495%_)))
                                          (_%hd203357203498%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203356203495%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd203357203498%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd203357203498%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203358203500%_))
                                                  (let ((_%e203359203503%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl203358203500%_))))
                                                    (let ((_%tl203361203508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203359203503%_)))
                                                          (_%hd203360203506%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203359203503%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203361203508%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl203355203492%_))
                      (let ((_%__splice203833203834%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl203355203492%_
                                '0))))
                        (let ((_%tl203364203513%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203833203834%_ '1)))
                              (_%target203362203511%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203833203834%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203364203513%_))
                              (_%__match203876203877%_
                               _%e203350203479%_
                               _%hd203351203482%_
                               _%tl203352203484%_
                               _%e203353203487%_
                               _%hd203354203490%_
                               _%tl203355203492%_
                               _%e203356203495%_
                               _%hd203357203498%_
                               _%tl203358203500%_
                               _%e203359203503%_
                               _%hd203360203506%_
                               _%tl203361203508%_
                               _%__splice203833203834%_
                               _%target203362203511%_
                               _%tl203364203513%_)
                              (let ()
                                (declare (not safe))
                                (_%g203346203392%_)))))
                      (let () (declare (not safe)) (_%g203346203392%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl203355203492%_))
                      (let ((_%__splice203837203838%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl203355203492%_
                                '0))))
                        (let ((_%tl203381203415%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203837203838%_ '1)))
                              (_%target203379203413%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203837203838%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203381203415%_))
                              (_%__match203896203897%_
                               _%e203350203479%_
                               _%hd203351203482%_
                               _%tl203352203484%_
                               _%e203353203487%_
                               _%hd203354203490%_
                               _%tl203355203492%_
                               _%__splice203837203838%_
                               _%target203379203413%_
                               _%tl203381203415%_)
                              (let ()
                                (declare (not safe))
                                (_%g203346203392%_)))))
                      (let () (declare (not safe)) (_%g203346203392%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl203355203492%_))
                                                      (let ((_%__splice203837203838%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl203355203492%_
                        '0))))
                (let ((_%tl203381203415%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice203837203838%_ '1)))
                      (_%target203379203413%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice203837203838%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl203381203415%_))
                      (_%__match203896203897%_
                       _%e203350203479%_
                       _%hd203351203482%_
                       _%tl203352203484%_
                       _%e203353203487%_
                       _%hd203354203490%_
                       _%tl203355203492%_
                       _%__splice203837203838%_
                       _%target203379203413%_
                       _%tl203381203415%_)
                      (let () (declare (not safe)) (_%g203346203392%_)))))
              (let () (declare (not safe)) (_%g203346203392%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl203355203492%_))
                                                  (let ((_%__splice203837203838%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl203355203492%_
                                                            '0))))
                                                    (let ((_%tl203381203415%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice203837203838%_
                                                              '1)))
                                                          (_%target203379203413%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice203837203838%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203381203415%_))
                                                          (_%__match203896203897%_
                                                           _%e203350203479%_
                                                           _%hd203351203482%_
                                                           _%tl203352203484%_
                                                           _%e203353203487%_
                                                           _%hd203354203490%_
                                                           _%tl203355203492%_
                                                           _%__splice203837203838%_
                                                           _%target203379203413%_
                                                           _%tl203381203415%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g203346203392%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g203346203392%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl203355203492%_))
                                              (let ((_%__splice203837203838%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl203355203492%_
                                                        '0))))
                                                (let ((_%tl203381203415%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice203837203838%_
                                                          '1)))
                                                      (_%target203379203413%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice203837203838%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203381203415%_))
                                                      (_%__match203896203897%_
                                                       _%e203350203479%_
                                                       _%hd203351203482%_
                                                       _%tl203352203484%_
                                                       _%e203353203487%_
                                                       _%hd203354203490%_
                                                       _%tl203355203492%_
                                                       _%__splice203837203838%_
                                                       _%target203379203413%_
                                                       _%tl203381203415%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203346203392%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203346203392%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203355203492%_))
                                      (let ((_%__splice203837203838%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl203355203492%_
                                                '0))))
                                        (let ((_%tl203381203415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice203837203838%_
                                                  '1)))
                                              (_%target203379203413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice203837203838%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203381203415%_))
                                              (_%__match203896203897%_
                                               _%e203350203479%_
                                               _%hd203351203482%_
                                               _%tl203352203484%_
                                               _%e203353203487%_
                                               _%hd203354203490%_
                                               _%tl203355203492%_
                                               _%__splice203837203838%_
                                               _%target203379203413%_
                                               _%tl203381203415%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g203346203392%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203346203392%_))))))
                          (let () (declare (not safe)) (_%g203346203392%_)))))
                  (let () (declare (not safe)) (_%g203346203392%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self203304%_ _%ctx203305%_ _%stx203306%_ _%args203307%_)
        (let ((_%self203310%_ _%self203304%_))
          (if (let ((__method204478
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self203310%_ 'check-arguments))))
                (if __method204478
                    (let ()
                      (declare (not safe))
                      (__method204478
                       _%self203310%_
                       _%ctx203305%_
                       _%stx203306%_
                       _%args203307%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self203310%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature203320%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self203310%_ '2 '#f '#f)))
                     (_%signature203322%_ _%signature203320%_)
                     (_%$e203332%_
                      (if _%signature203322%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature203322%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e203332%_
                    ((lambda (_%unchecked203335%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked203335%_))
                           (let ((__tmp204500
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked203335%_
                                                          '()))
                                              (map (lambda (_%g203336203338%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx203305%_
                                                        _%g203336203338%_)))
                                                   _%args203307%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp204500
                              _%stx203306%_
                              _%ctx203305%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx203305%_ _%stx203306%_))))
                     _%$e203332%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx203305%_ _%stx203306%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx203305%_ _%stx203306%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass203762 __method-table203763)
        (let ((__check-arguments203764
               (let ((__tmp204501
                      (lambda ()
                        (let ((__method203765
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table203763
                                  'check-arguments
                                  '#f))))
                          (if __method203765
                              __method203765
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp204501))))
          (lambda (_%self203304%_ _%ctx203305%_ _%stx203306%_ _%args203307%_)
            (let ((_%self203310%_ _%self203304%_))
              (if ((force __check-arguments203764)
                   _%self203310%_
                   _%ctx203305%_
                   _%stx203306%_
                   _%args203307%_)
                  (let* ((_%signature203320%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self203310%_
                             '2
                             '#f
                             '#f)))
                         (_%signature203322%_ _%signature203320%_)
                         (_%$e203332%_
                          (if _%signature203322%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature203322%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e203332%_
                        ((lambda (_%unchecked203335%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked203335%_))
                               (let ((__tmp204502
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked203335%_
                                                              '()))
                                                  (map (lambda (_%g203336203338%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx203305%_
                                                            _%g203336203338%_)))
                                                       _%args203307%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp204502
                                  _%stx203306%_
                                  _%ctx203305%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx203305%_
                                  _%stx203306%_))))
                         _%$e203332%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx203305%_ _%stx203306%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx203305%_ _%stx203306%_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!procedure::optimize-call
       gxc#!procedure::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self203055%_ _%ctx203056%_ _%stx203057%_ _%args203058%_)
        (let* ((_%self203061%_ _%self203055%_)
               (_%signature203070203072%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203061%_ '2 '#f '#f))))
          (if _%signature203070203072%_
              (let* ((_%signature203075%_ _%signature203070203072%_)
                     (_%argument-types203076203078%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature203075%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types203076203078%_
                    (let* ((_%argument-types203081%_
                            _%argument-types203076203078%_)
                           (_%argument-types203086%_
                            (let ((__tmp204503
                                   (lambda (_%t203084%_)
                                     (if _%t203084%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx203057%_
                                            _%t203084%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp204503
                               _%argument-types203081%_))))
                      (let _%loop203088%_ ((_%rest-args203090%_ _%args203058%_)
                                           (_%rest-types203091%_
                                            _%argument-types203086%_)
                                           (_%result203092%_ '#t))
                        (let* ((_%rest-args203093203101%_ _%rest-args203090%_)
                               (_%else203095203109%_
                                (lambda () _%result203092%_))
                               (_%K203097203170%_
                                (lambda (_%rest-args203112%_ _%arg203113%_)
                                  (let* ((_%rest-types203114203125%_
                                          _%rest-types203091%_)
                                         (_%E203118203129%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types203114203125%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K203121203158%_
                                           (lambda (_%rest-types203155%_
                                                    _%type203156%_)
                                             (_%loop203088%_
                                              _%rest-args203112%_
                                              _%rest-types203155%_
                                              (if (gxc#check-expression-type!
                                                   _%stx203057%_
                                                   _%arg203113%_
                                                   _%type203156%_)
                                                  _%result203092%_
                                                  '#f))))
                                          (_%K203120203149%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx203057%_
                                                _%argument-types203086%_))))
                                          (_%K203119203139%_
                                           (lambda (_%tail-type203133%_)
                                             (if (let ((__tmp204504
                                                        (lambda (_%g203134203136%_)
                                                          (gxc#check-expression-type!
                                                           _%stx203057%_
                                                           _%g203134203136%_
                                                           _%tail-type203133%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp204504
                                                    _%rest-args203112%_))
                                                 _%result203092%_
                                                 '#f))))
                                      (let ((_%try-match203116203152%_
                                             (lambda ()
                                               (if (null? _%rest-types203114203125%_)
                                                   (_%K203120203149%_)
                                                   (let ((_%tail-type203142%_
                                                          _%rest-types203114203125%_))
                                                     (_%K203119203139%_
                                                      _%tail-type203142%_))))))
                                        (if (pair? _%rest-types203114203125%_)
                                            (let ((_%tl203123203163%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types203114203125%_)))
                                                  (_%hd203122203161%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types203114203125%_))))
                                              (let ((_%type203166%_
                                                     _%hd203122203161%_)
                                                    (_%rest-types203168%_
                                                     _%tl203123203163%_))
                                                (_%K203121203158%_
                                                 _%rest-types203168%_
                                                 _%type203166%_)))
                                            (_%try-match203116203152%_))))))))
                          (if (pair? _%rest-args203093203101%_)
                              (let ((_%hd203098203173%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args203093203101%_)))
                                    (_%tl203099203175%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args203093203101%_))))
                                (let* ((_%arg203178%_ _%hd203098203173%_)
                                       (_%rest-args203180%_
                                        _%tl203099203175%_))
                                  (_%K203097203170%_
                                   _%rest-args203180%_
                                   _%arg203178%_)))
                              (_%else203095203109%_)))))
                    '#f))
              '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self202866%_ _%ctx202867%_ _%stx202868%_ _%args202869%_)
        (let* ((_%self202872%_ _%self202866%_)
               (_%g202882202892%_
                (lambda (_%g202883202889%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202883202889%_))))
               (_%g202881202930%_
                (lambda (_%g202883202895%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202883202895%_))
                      (let ((_%e202885202897%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202883202895%_))))
                        (let ((_%hd202886202900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202885202897%_)))
                              (_%tl202887202902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202885202897%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202887202902%_))
                              ((lambda (_%L202905%_)
                                 (let* ((_%klass202917%_
                                         (let ((__tmp204505
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self202872%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx202868%_
                                            __tmp204505)))
                                        (_%object202919%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx202867%_
                                            _%L202905%_)))
                                        (_%instance?202924%_
                                         (let ((_%$e202921%_
                                                (gxc#expression-type?
                                                 _%object202919%_
                                                 _%klass202917%_)))
                                           (if _%$e202921%_
                                               _%$e202921%_
                                               (gxc#expression-type?
                                                _%L202905%_
                                                _%klass202917%_)))))
                                   (if _%instance?202924%_
                                       (let ((__tmp204506
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object202919%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L202905%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object202919%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp204506
                                          _%stx202868%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx202867%_
                                          _%stx202868%_)))))
                               _%hd202886202900%_)
                              (_%g202882202892%_ _%g202883202895%_))))
                      (_%g202882202892%_ _%g202883202895%_)))))
          (_%g202881202930%_ _%args202869%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self202662%_ _%ctx202663%_ _%stx202664%_ _%args202665%_)
        (let* ((_%self202668%_ _%self202662%_)
               (_%g202678202688%_
                (lambda (_%g202679202685%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202679202685%_))))
               (_%g202677202741%_
                (lambda (_%g202679202691%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202679202691%_))
                      (let ((_%e202681202693%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202679202691%_))))
                        (let ((_%hd202682202696%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202681202693%_)))
                              (_%tl202683202698%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202681202693%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202683202698%_))
                              ((lambda (_%L202701%_)
                                 (let* ((_%klass202713%_
                                         (let ((__tmp204507
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self202668%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx202664%_
                                            __tmp204507)))
                                        (_%object202715%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx202663%_
                                            _%L202701%_)))
                                        (_%instance?202720%_
                                         (let ((_%$e202717%_
                                                (gxc#expression-type?
                                                 _%object202715%_
                                                 _%klass202713%_)))
                                           (if _%$e202717%_
                                               _%$e202717%_
                                               (gxc#expression-type?
                                                _%L202701%_
                                                _%klass202713%_))))
                                        (_%klass202723%_ _%klass202713%_))
                                   (if _%instance?202720%_
                                       (let ((__tmp204508
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object202715%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L202701%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object202715%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp204508
                                          _%stx202664%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass202723%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp204509
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass202723%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object202715%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp204509
                                              _%stx202664%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass202723%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp204510
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass202723%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object202715%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp204510
                                                  _%stx202664%_))
                                               (let ((__tmp204511
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self202668%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object202715%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp204511
                                                  _%stx202664%_)))))))
                               _%hd202682202696%_)
                              (_%g202678202688%_ _%g202679202691%_))))
                      (_%g202678202688%_ _%g202679202691%_)))))
          (_%g202677202741%_ _%args202665%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx202325%_)
        (let* ((_%__stx203906203907%_ _%stx202325%_)
               (_%g202330202371%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203906203907%_)))))
          (let ((_%__kont203908203909%_ (lambda () '#t))
                (_%__kont203910203911%_ (lambda () '#t))
                (_%__kont203912203913%_
                 (lambda (_%L202439%_ _%L202440%_)
                   (let ((_%rator-type202461202463%_
                          (let ((__tmp204512
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L202440%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp204512))))
                     (if _%rator-type202461202463%_
                         (let* ((_%rator-type202466%_
                                 _%rator-type202461202463%_)
                                (_%rator-signature202467202469%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type202466%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type202466%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature202467202469%_
                               (let* ((_%rator-signature202472%_
                                       _%rator-signature202467202469%_)
                                      (_%rator-effect202473202475%_
                                       (if _%rator-signature202472%_
                                           (##direct-structure-ref
                                            _%rator-signature202472%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect202473202475%_
                                     (let ((_%rator-effect202478%_
                                            _%rator-effect202473202475%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect202478%_)
                                               (equal? '(alloc)
                                                       _%rator-effect202478%_))
                                           (let ((__tmp204513
                                                  (let ((__tmp204514
                                                         (lambda (_%g202483202486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g202484202488%_)
                   (cons _%g202483202486%_ _%g202484202488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp204514
                                                     '()
                                                     _%L202439%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp204513))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont203916203917%_ (lambda () '#f)))
            (let ((_%__match203995203996%_
                   (lambda (_%e202346202383%_
                            _%hd202347202386%_
                            _%tl202348202388%_
                            _%e202349202391%_
                            _%hd202350202394%_
                            _%tl202351202396%_
                            _%e202352202399%_
                            _%hd202353202402%_
                            _%tl202354202404%_
                            _%e202355202407%_
                            _%hd202356202410%_
                            _%tl202357202412%_
                            _%__splice203914203915%_
                            _%target202358202415%_
                            _%tl202360202417%_)
                     (letrec ((_%loop202361202420%_
                               (lambda (_%hd202359202423%_
                                        _%rand202365202425%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd202359202423%_))
                                     (let ((_%e202362202428%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd202359202423%_))))
                                       (let ((_%lp-tl202364202433%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e202362202428%_)))
                                             (_%lp-hd202363202431%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e202362202428%_))))
                                         (_%loop202361202420%_
                                          _%lp-tl202364202433%_
                                          (cons _%lp-hd202363202431%_
                                                _%rand202365202425%_))))
                                     (let ((_%rand202366202436%_
                                            (reverse _%rand202365202425%_)))
                                       (_%__kont203912203913%_
                                        _%rand202366202436%_
                                        _%hd202356202410%_))))))
                       (_%loop202361202420%_ _%target202358202415%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx203906203907%_))
                  (let ((_%e202332202519%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx203906203907%_))))
                    (let ((_%tl202334202524%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202332202519%_)))
                          (_%hd202333202522%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202332202519%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd202333202522%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd202333202522%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202334202524%_))
                                  (let ((_%e202335202527%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl202334202524%_))))
                                    (let ((_%tl202337202532%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202335202527%_)))
                                          (_%hd202336202530%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202335202527%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202337202532%_))
                                          (_%__kont203908203909%_)
                                          (_%__kont203916203917%_))))
                                  (_%__kont203916203917%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd202333202522%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202334202524%_))
                                      (let ((_%e202341202504%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202334202524%_))))
                                        (let ((_%tl202343202509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202341202504%_)))
                                              (_%hd202342202507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202341202504%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202343202509%_))
                                              (_%__kont203910203911%_)
                                              (_%__kont203916203917%_))))
                                      (_%__kont203916203917%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd202333202522%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202334202524%_))
                                          (let ((_%e202349202391%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl202334202524%_))))
                                            (let ((_%tl202351202396%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202349202391%_)))
                                                  (_%hd202350202394%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202349202391%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202350202394%_))
                                                  (let ((_%e202352202399%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202350202394%_))))
                                                    (let ((_%tl202354202404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202352202399%_)))
                                                          (_%hd202353202402%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202352202399%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd202353202402%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd202353202402%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202354202404%_))
                          (let ((_%e202355202407%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl202354202404%_))))
                            (let ((_%tl202357202412%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202355202407%_)))
                                  (_%hd202356202410%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202355202407%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl202357202412%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl202351202396%_))
                                      (let ((_%__splice203914203915%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl202351202396%_
                                                '0))))
                                        (let ((_%tl202360202417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice203914203915%_
                                                  '1)))
                                              (_%target202358202415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice203914203915%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202360202417%_))
                                              (_%__match203995203996%_
                                               _%e202332202519%_
                                               _%hd202333202522%_
                                               _%tl202334202524%_
                                               _%e202349202391%_
                                               _%hd202350202394%_
                                               _%tl202351202396%_
                                               _%e202352202399%_
                                               _%hd202353202402%_
                                               _%tl202354202404%_
                                               _%e202355202407%_
                                               _%hd202356202410%_
                                               _%tl202357202412%_
                                               _%__splice203914203915%_
                                               _%target202358202415%_
                                               _%tl202360202417%_)
                                              (_%__kont203916203917%_))))
                                      (_%__kont203916203917%_))
                                  (_%__kont203916203917%_))))
                          (_%__kont203916203917%_))
                      (_%__kont203916203917%_))
                  (_%__kont203916203917%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont203916203917%_))))
                                          (_%__kont203916203917%_))
                                      (_%__kont203916203917%_))))
                          (_%__kont203916203917%_))))
                  (_%__kont203916203917%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx202320%_ _%klass202321%_)
        (let ((_%expr-type202323%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx202320%_))))
          (if _%expr-type202323%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type202323%_ _%klass202321%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx202298%_ _%expr202299%_ _%type202300%_)
        (if (not _%type202300%_)
            '#f
            (let ((_%$e202303%_
                   (eq? (##structure-ref _%type202300%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e202303%_
                  _%$e202303%_
                  (let ((_%expr-type202307%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr202299%_))))
                    (if (not _%expr-type202307%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type202307%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e202311%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type202307%_
                                      'gxc#!abort::t))))
                              (if _%$e202311%_
                                  _%$e202311%_
                                  (let ((_%$e202314%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type202307%_
                                            _%type202300%_))))
                                    (if _%$e202314%_
                                        _%$e202314%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type202300%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type202300%_
                                                   _%expr-type202307%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx202298%_
                                                   _%expr202299%_
                                                   _%expr-type202307%_
                                                   _%type202300%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self202112%_ _%ctx202113%_ _%stx202114%_ _%args202115%_)
        (let* ((_%self202118%_ _%self202112%_)
               (_%klass202128%_
                (let ((__tmp204515
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self202118%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx202114%_ __tmp204515)))
               (_%fields202130%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass202128%_
                           '5
                           '#f
                           '#f))))
               (_%args202136%_
                (map (lambda (_%g202131202133%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx202113%_ _%g202131202133%_)))
                     _%args202115%_))
               (_%inline-make-object202138%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self202118%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons '##structure '()))
                                              (cons (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self202118%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields202130%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass202141%_ _%klass202128%_)
               (_%$e202155%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass202141%_ '6 '#f '#f))))
          (if _%$e202155%_
              ((lambda (_%ctor202158%_)
                 (let ((_%$obj202160%_
                        (let ((__tmp204516
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp204516)))
                       (_%ctor-impl202161%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass202141%_
                           _%ctor202158%_))))
                   (let ((__tmp204517
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj202160%_ '())
                                                  (cons _%inline-make-object202138%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl202161%_
                                                            (let ((__tmp204518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl202161%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj202160%_ '()))
                                             _%args202136%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp204518
                       _%stx202114%_
                       _%ctx202113%_))
                    (let ((_%$ctor202163%_
                           (let ((__tmp204519
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp204519))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor202163%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self202118%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj202160%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor202158%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor202163%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor202163%_ '()))
                              (cons (cons '%#ref (cons _%$obj202160%_ '()))
                                    _%args202136%_)))
                  (cons (cons '%#call
                              (cons (cons '%#ref (cons 'error '()))
                                    (cons (cons '%#quote
                                                (cons '"missing constructor method implementation"
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons 'class: '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self202118%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor202158%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj202160%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp204517 _%stx202114%_))))
               _%$e202155%_)
              (let ((_%$e202165%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass202141%_
                        '10
                        '#f
                        '#f))))
                (if _%$e202165%_
                    ((lambda (_%metaclass202168%_)
                       (let* ((_%$obj202170%_
                               (let ((__tmp204520
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp204520)))
                              (_%metakons202172%_
                               (let ((__tmp204521
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx202114%_
                                         _%metaclass202168%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp204521
                                  'instance-init!)))
                              (__tmp204522
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj202170%_
                                                             '())
                                                       (cons _%inline-make-object202138%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons202172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp204523
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons202172%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self202118%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj202170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args202136%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp204523
                            _%stx202114%_
                            _%ctx202113%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self202118%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj202170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args202136%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj202170%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp204522 _%stx202114%_)))
                     _%$e202165%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass202141%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp204524
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args202136%_))))
                              (declare (not safe))
                              (##fx= __tmp204524 _%fields202130%_))
                            (let ((__tmp204525
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self202118%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '##structure '()))
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self202118%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args202136%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp204525
                               _%stx202114%_))
                            (let ((__tmp204527
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self202118%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp204526
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass202141%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx202114%_
                               __tmp204527
                               __tmp204526)))
                        (let ((_%$obj202177%_
                               (let ((__tmp204528
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp204528))))
                          (let _%lp202179%_ ((_%rest202181%_ _%args202136%_)
                                             (_%initializers202182%_ '()))
                            (let* ((_%__stx203998203999%_ _%rest202181%_)
                                   (_%g202186202207%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx203998203999%_)))))
                              (let ((_%__kont204000204001%_
                                     (lambda (_%L202261%_
                                              _%L202262%_
                                              _%L202263%_)
                                       (let* ((_%slot202290%_
                                               (let ((__tmp204529
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L202263%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp204529)))
                                              (_%off202292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass202141%_
                                                  _%slot202290%_))))
                                         (if _%off202292%_
                                             (_%lp202179%_
                                              _%L202261%_
                                              (cons (cons _%off202292%_
                                                          _%L202262%_)
                                                    _%initializers202182%_))
                                             (let ((__tmp204530
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self202118%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx202114%_
                                                __tmp204530
                                                _%slot202290%_))))))
                                    (_%__kont204002204003%_
                                     (lambda ()
                                       (let ((__tmp204531
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj202177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object202138%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp204534
                                     (cons (cons '%#ref
                                                 (cons _%$obj202177%_ '()))
                                           '()))
                                    (__tmp204532
                                     (let ((__tmp204533
                                            (lambda (_%i202221%_ _%r202222%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self202118%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i202221%_) '()))
                              (cons (cons '%#ref (cons _%$obj202177%_ '()))
                                    (cons (cdr _%i202221%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r202222%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp204533
                                        '()
                                        _%initializers202182%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp204534 __tmp204532)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp204531
                                          _%stx202114%_))))
                                    (_%__kont204004204005%_
                                     (lambda ()
                                       (let ((__tmp204535
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj202177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object202138%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj202177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args202136%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj202177%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp204535
                                          _%stx202114%_)))))
                                (let* ((_%g202184202224%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx203998203999%_))
                                              (_%__kont204002204003%_)
                                              (_%__kont204004204005%_))))
                                       (_%__match204035204036%_
                                        (lambda (_%e202191202229%_
                                                 _%hd202192202232%_
                                                 _%tl202193202234%_
                                                 _%e202194202237%_
                                                 _%hd202195202240%_
                                                 _%tl202196202242%_
                                                 _%e202197202245%_
                                                 _%hd202198202248%_
                                                 _%tl202199202250%_
                                                 _%e202200202253%_
                                                 _%hd202201202256%_
                                                 _%tl202202202258%_)
                                          (let ((_%L202261%_
                                                 _%tl202202202258%_)
                                                (_%L202262%_
                                                 _%hd202201202256%_)
                                                (_%L202263%_
                                                 _%hd202198202248%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L202263%_))
                                                (_%__kont204000204001%_
                                                 _%L202261%_
                                                 _%L202262%_
                                                 _%L202263%_)
                                                (_%__kont204004204005%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx203998203999%_))
                                      (let ((_%e202191202229%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx203998203999%_))))
                                        (let ((_%tl202193202234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202191202229%_)))
                                              (_%hd202192202232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202191202229%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd202192202232%_))
                                              (let ((_%e202194202237%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd202192202232%_))))
                                                (let ((_%tl202196202242%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202194202237%_)))
                                                      (_%hd202195202240%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202194202237%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd202195202240%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd202195202240%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl202196202242%_))
                      (let ((_%e202197202245%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl202196202242%_))))
                        (let ((_%tl202199202250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202197202245%_)))
                              (_%hd202198202248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202197202245%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202199202250%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202193202234%_))
                                  (let ((_%e202200202253%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl202193202234%_))))
                                    (let ((_%tl202202202258%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202200202253%_)))
                                          (_%hd202201202256%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202200202253%_))))
                                      (_%__match204035204036%_
                                       _%e202191202229%_
                                       _%hd202192202232%_
                                       _%tl202193202234%_
                                       _%e202194202237%_
                                       _%hd202195202240%_
                                       _%tl202196202242%_
                                       _%e202197202245%_
                                       _%hd202198202248%_
                                       _%tl202199202250%_
                                       _%e202200202253%_
                                       _%hd202201202256%_
                                       _%tl202202202258%_)))
                                  (_%__kont204004204005%_))
                              (_%__kont204004204005%_))))
                      (_%__kont204004204005%_))
                  (_%__kont204004204005%_))
              (_%__kont204004204005%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont204004204005%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202184202224%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self201895%_ _%ctx201896%_ _%stx201897%_ _%args201898%_)
        (let* ((_%self201901%_ _%self201895%_)
               (_%arguments-ok?201911%_
                (let ((__method204479
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self201901%_ 'check-arguments))))
                  (if __method204479
                      (let ()
                        (declare (not safe))
                        (__method204479
                         _%self201901%_
                         _%ctx201896%_
                         _%stx201897%_
                         _%args201898%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self201901%_
                                 'check-arguments))
                        '#!void))))
               (_%g201913201923%_
                (lambda (_%g201914201920%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201914201920%_))))
               (_%g201912201987%_
                (lambda (_%g201914201926%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201914201926%_))
                      (let ((_%e201916201928%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201914201926%_))))
                        (let ((_%hd201917201931%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201916201928%_)))
                              (_%tl201918201933%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201916201928%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201918201933%_))
                              ((lambda (_%L201936%_)
                                 (let* ((_%klass201949%_
                                         (let ((__tmp204536
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self201901%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx201897%_
                                            __tmp204536)))
                                        (_%field201951%_
                                         (let ((__tmp204537
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self201901%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass201949%_
                                            __tmp204537)))
                                        (_%object201953%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx201896%_
                                            _%L201936%_)))
                                        (_%klass201956%_ _%klass201949%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass201956%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp204538
                                              (cons (if (or _%arguments-ok?201911%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self201901%_
                            '4
                            '#f
                            '#f))))
                '%#struct-unchecked-ref
                '%#struct-direct-ref)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self201901%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field201951%_ '()))
                        (cons _%object201953%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp204538
                                          _%stx201897%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass201956%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp204539
                                                  (cons (if (or _%arguments-ok?201911%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self201901%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self201901%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field201951%_ '()))
                            (cons _%object201953%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp204539
                                              _%stx201897%_))
                                           (let ((_%$e201975%_
                                                  (let ((__tmp204540
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self201901%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass201956%_
                                                     __tmp204540))))
                                             (if _%$e201975%_
                                                 ((lambda (_%klass201978%_)
                                                    (let ((__tmp204541
                                                           (cons (if (or _%arguments-ok?201911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self201901%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self201901%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field201951%_ '()))
                                     (cons _%object201953%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp204541 _%stx201897%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e201975%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self201901%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp204542
                                                            (let ((_%$obj201984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp204543
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp204543))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj201984%_ '())
                                              (cons _%object201953%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass201956%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj201984%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self201901%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field201951%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj201984%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?201911%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj201984%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self201901%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'class-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self201901%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj201984%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self201901%_
                                 '3
                                 '#f
                                 '#f))
                              '()))
                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp204542 _%stx201897%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp204544
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object201953%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self201901%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp204544 _%stx201897%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd201917201931%_)
                              (_%g201913201923%_ _%g201914201926%_))))
                      (_%g201913201923%_ _%g201914201926%_)))))
          (_%g201912201987%_ _%args201898%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass203766 __method-table203767)
        (let ((__check-arguments203768
               (let ((__tmp204545
                      (lambda ()
                        (let ((__method203769
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table203767
                                  'check-arguments
                                  '#f))))
                          (if __method203769
                              __method203769
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp204545)))
              (__slot203770
               (let ((__slot203771
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass203766 'slot))))
                 (if __slot203771
                     __slot203771
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self201895%_ _%ctx201896%_ _%stx201897%_ _%args201898%_)
            (let* ((_%self201901%_ _%self201895%_)
                   (_%arguments-ok?201911%_
                    ((force __check-arguments203768)
                     _%self201901%_
                     _%ctx201896%_
                     _%stx201897%_
                     _%args201898%_))
                   (_%g201913201923%_
                    (lambda (_%g201914201920%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g201914201920%_))))
                   (_%g201912201987%_
                    (lambda (_%g201914201926%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g201914201926%_))
                          (let ((_%e201916201928%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g201914201926%_))))
                            (let ((_%hd201917201931%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201916201928%_)))
                                  (_%tl201918201933%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201916201928%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201918201933%_))
                                  ((lambda (_%L201936%_)
                                     (let* ((_%klass201949%_
                                             (let ((__tmp204546
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self201901%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx201897%_
                                                __tmp204546)))
                                            (_%field201951%_
                                             (let ((__tmp204547
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self201901%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass201949%_
                                                __tmp204547)))
                                            (_%object201953%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx201896%_
                                                _%L201936%_)))
                                            (_%klass201956%_ _%klass201949%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass201956%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp204548
                                                  (cons (if (or _%arguments-ok?201911%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self201901%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self201901%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field201951%_ '()))
                            (cons _%object201953%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp204548
                                              _%stx201897%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass201956%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp204549
                                                      (cons (if (or _%arguments-ok?201911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self201901%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self201901%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field201951%_ '()))
                                (cons _%object201953%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp204549
                                                  _%stx201897%_))
                                               (let ((_%$e201975%_
                                                      (let ((__tmp204550
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self201901%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass201956%_ __tmp204550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e201975%_
                                                     ((lambda (_%klass201978%_)
                                                        (let ((__tmp204551
                                                               (cons (if (or _%arguments-ok?201911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self201901%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self201901%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field201951%_ '()))
                                         (cons _%object201953%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp204551 _%stx201897%_)))
              _%$e201975%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self201901%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp204552
                                                                (let ((_%$obj201984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp204553
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp204553))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj201984%_ '())
                                                  (cons _%object201953%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass201956%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj201984%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self201901%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field201951%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj201984%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?201911%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj201984%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self201901%_
                               __slot203770
                               '#f
                               '#f))
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'class-slot-ref '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self201901%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj201984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self201901%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp204552 _%stx201897%_))
                 (let ((__tmp204554
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object201953%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self201901%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp204554 _%stx201897%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd201917201931%_)
                                  (_%g201913201923%_ _%g201914201926%_))))
                          (_%g201913201923%_ _%g201914201926%_)))))
              (_%g201912201987%_ _%args201898%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self201659%_ _%ctx201660%_ _%stx201661%_ _%args201662%_)
        (let* ((_%self201665%_ _%self201659%_)
               (_%arguments-ok?201675%_
                (let ((__method204480
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self201665%_ 'check-arguments))))
                  (if __method204480
                      (let ()
                        (declare (not safe))
                        (__method204480
                         _%self201665%_
                         _%ctx201660%_
                         _%stx201661%_
                         _%args201662%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self201665%_
                                 'check-arguments))
                        '#!void))))
               (_%g201677201691%_
                (lambda (_%g201678201688%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201678201688%_))))
               (_%g201676201770%_
                (lambda (_%g201678201694%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201678201694%_))
                      (let ((_%e201681201696%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201678201694%_))))
                        (let ((_%hd201682201699%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201681201696%_)))
                              (_%tl201683201701%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201681201696%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201683201701%_))
                              (let ((_%e201684201704%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201683201701%_))))
                                (let ((_%hd201685201707%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201684201704%_)))
                                      (_%tl201686201709%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201684201704%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201686201709%_))
                                      ((lambda (_%L201712%_ _%L201713%_)
                                         (let* ((_%klass201729%_
                                                 (let ((__tmp204555
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self201665%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx201661%_
                                                    __tmp204555)))
                                                (_%field201731%_
                                                 (let ((__tmp204556
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self201665%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass201729%_
                                                    __tmp204556)))
                                                (_%object201733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx201660%_
                                                    _%L201713%_)))
                                                (_%value201735%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx201660%_
                                                    _%L201712%_)))
                                                (_%klass201738%_
                                                 _%klass201729%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass201738%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp204557
                                                      (cons (if (or _%arguments-ok?201675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self201665%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self201665%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field201731%_ '()))
                                (cons _%object201733%_
                                      (cons _%value201735%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp204557
                                                  _%stx201661%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass201738%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp204558
                                                          (cons (if (or _%arguments-ok?201675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self201665%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self201665%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field201731%_ '()))
                                    (cons _%object201733%_
                                          (cons _%value201735%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp204558
                                                      _%stx201661%_))
                                                   (let ((_%$e201758%_
                                                          (let ((__tmp204559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self201665%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass201738%_
                     __tmp204559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e201758%_
                                                         ((lambda (_%klass201761%_)
                                                            (let ((__tmp204560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?201675%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self201665%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self201665%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field201731%_ '()))
                                             (cons _%object201733%_
                                                   (cons _%value201735%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp204560 _%stx201661%_)))
                  _%$e201758%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self201665%_ '4 '#f '#f))
                     (let ((__tmp204561
                            (let ((_%$obj201767%_
                                   (let ((__tmp204562
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp204562))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj201767%_ '())
                                                      (cons _%object201733%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass201738%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj201767%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self201665%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field201731%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj201767%_
                                                              '()))
                                                  (cons _%value201735%_
                                                        '())))))
                          (cons (if _%arguments-ok?201675%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj201767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self201665%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value201735%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self201665%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj201767%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self201665%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value201735%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp204561 _%stx201661%_))
                     (let ((__tmp204563
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object201733%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self201665%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value201735%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp204563
                        _%stx201661%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd201685201707%_
                                       _%hd201682201699%_)
                                      (_%g201677201691%_ _%g201678201694%_))))
                              (_%g201677201691%_ _%g201678201694%_))))
                      (_%g201677201691%_ _%g201678201694%_)))))
          (_%g201676201770%_ _%args201662%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass203772 __method-table203773)
        (let ((__check-arguments203774
               (let ((__tmp204564
                      (lambda ()
                        (let ((__method203775
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table203773
                                  'check-arguments
                                  '#f))))
                          (if __method203775
                              __method203775
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp204564))))
          (lambda (_%self201659%_ _%ctx201660%_ _%stx201661%_ _%args201662%_)
            (let* ((_%self201665%_ _%self201659%_)
                   (_%arguments-ok?201675%_
                    ((force __check-arguments203774)
                     _%self201665%_
                     _%ctx201660%_
                     _%stx201661%_
                     _%args201662%_))
                   (_%g201677201691%_
                    (lambda (_%g201678201688%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g201678201688%_))))
                   (_%g201676201770%_
                    (lambda (_%g201678201694%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g201678201694%_))
                          (let ((_%e201681201696%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g201678201694%_))))
                            (let ((_%hd201682201699%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201681201696%_)))
                                  (_%tl201683201701%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201681201696%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201683201701%_))
                                  (let ((_%e201684201704%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201683201701%_))))
                                    (let ((_%hd201685201707%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201684201704%_)))
                                          (_%tl201686201709%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201684201704%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl201686201709%_))
                                          ((lambda (_%L201712%_ _%L201713%_)
                                             (let* ((_%klass201729%_
                                                     (let ((__tmp204565
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self201665%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx201661%_
                                                        __tmp204565)))
                                                    (_%field201731%_
                                                     (let ((__tmp204566
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self201665%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass201729%_
                                                        __tmp204566)))
                                                    (_%object201733%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx201660%_
                                                        _%L201713%_)))
                                                    (_%value201735%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx201660%_
                                                        _%L201712%_)))
                                                    (_%klass201738%_
                                                     _%klass201729%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass201738%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp204567
                                                          (cons (if (or _%arguments-ok?201675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self201665%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self201665%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field201731%_ '()))
                                    (cons _%object201733%_
                                          (cons _%value201735%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp204567
                                                      _%stx201661%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass201738%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp204568
                                                              (cons (if (or _%arguments-ok?201675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self201665%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self201665%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field201731%_ '()))
                                        (cons _%object201733%_
                                              (cons _%value201735%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp204568 _%stx201661%_))
               (let ((_%$e201758%_
                      (let ((__tmp204569
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self201665%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass201738%_
                         __tmp204569))))
                 (if _%$e201758%_
                     ((lambda (_%klass201761%_)
                        (let ((__tmp204570
                               (cons (if (or _%arguments-ok?201675%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self201665%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self201665%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field201731%_
                                                             '()))
                                                 (cons _%object201733%_
                                                       (cons _%value201735%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp204570 _%stx201661%_)))
                      _%$e201758%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self201665%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp204571
                                (let ((_%$obj201767%_
                                       (let ((__tmp204572
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp204572))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj201767%_
                                                                '())
                                                          (cons _%object201733%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass201738%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj201767%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self201665%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field201731%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj201767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value201735%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?201675%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj201767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self201665%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value201735%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'class-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self201665%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj201767%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self201665%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value201735%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp204571 _%stx201661%_))
                         (let ((__tmp204573
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object201733%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self201665%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value201735%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp204573
                            _%stx201661%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd201685201707%_
                                           _%hd201682201699%_)
                                          (_%g201677201691%_
                                           _%g201678201694%_))))
                                  (_%g201677201691%_ _%g201678201694%_))))
                          (_%g201677201691%_ _%g201678201694%_)))))
              (_%g201676201770%_ _%args201662%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self201474%_ _%ctx201475%_ _%stx201476%_ _%args201477%_)
        (let* ((_%self201480%_ _%self201474%_)
               (_%self201489201499%_ _%self201480%_)
               (_%E201491201503%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self201489201499%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K201492201513%_
                (lambda (_%inline201506%_ _%dispatch201507%_ _%arity201508%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self201480%_
                         _%args201477%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx201476%_
                         _%arity201508%_)))
                  (if _%inline201506%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp204574 (_%inline201506%_ _%stx201476%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp204574
                           _%stx201476%_
                           _%ctx201475%_)))
                      (if (and _%dispatch201507%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch201507%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch201507%_))
                            (let ((__tmp204575
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch201507%_
                                                           '()))
                                               _%args201477%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp204575
                               _%stx201476%_
                               _%ctx201475%_)))
                          (gxc#!procedure::optimize-call
                           _%self201480%_
                           _%ctx201475%_
                           _%stx201476%_
                           _%args201477%_)))))
               (_%e201493201516%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self201489201499%_ '1 '#f '#f)))
               (_%e201494201519%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self201489201499%_ '2 '#f '#f)))
               (_%e201495201522%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self201489201499%_ '3 '#f '#f)))
               (_%arity201525%_ _%e201495201522%_)
               (_%e201496201527%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self201489201499%_ '4 '#f '#f)))
               (_%dispatch201530%_ _%e201496201527%_)
               (_%e201497201532%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self201489201499%_ '5 '#f '#f)))
               (_%inline201535%_ _%e201497201532%_))
          (_%K201492201513%_
           _%inline201535%_
           _%dispatch201530%_
           _%arity201525%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self201326%_ _%ctx201327%_ _%stx201328%_ _%args201329%_)
        (let* ((_%self201332%_ _%self201326%_)
               (_%$e201346%_
                (let ((__tmp204577
                       (lambda (_%g201341201343%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g201341201343%_
                            _%args201329%_))))
                      (__tmp204576
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self201332%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp204577 __tmp204576))))
          (if _%$e201346%_
              ((lambda (_%clause201349%_)
                 (let ((__method204481
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause201349%_ 'optimize-call))))
                   (if __method204481
                       (let ()
                         (declare (not safe))
                         (__method204481
                          _%clause201349%_
                          _%ctx201327%_
                          _%stx201328%_
                          _%args201329%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause201349%_
                                  'optimize-call))
                         '#!void))))
               _%$e201346%_)
              (let ((__tmp204578
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self201332%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx201328%_
                 __tmp204578))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self201066%_ _%ctx201067%_ _%stx201068%_ _%args201069%_)
        (let* ((_%self201072%_ _%self201066%_)
               (_%self201081201090%_ _%self201072%_)
               (_%E201083201094%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self201081201090%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K201084201185%_
                (lambda (_%dispatch201097%_ _%table201098%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch201097%_))
                      (let* ((_%g201099201109%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch201097%_)))
                             (_%else201101201117%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch201097%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx201067%_
                                   _%stx201068%_))))
                             (_%K201103201166%_
                              (lambda (_%main201120%_ _%keys201121%_)
                                (let ((_g204579_
                                       (gxc#!kw-lambda-split-args
                                        _%stx201068%_
                                        _%args201069%_)))
                                  (begin
                                    (let ((_g204580_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g204579_)
                                                 (##values-length _g204579_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g204580_ 2)))
                                          (error "Context expects 2 values"
                                                 _g204580_)))
                                    (let ((_%pargs201123%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g204579_ 0)))
                                          (_%kwargs201124%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g204579_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main201120%_))
                                        (if _%table201098%_
                                            (let ((_%xargs201132%_
                                                   (map (lambda (_%key201126%_)
                                                          (let ((_%$e201128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key201126%_ _%kwargs201124%_))))
                    (if _%$e201128%_ _%$e201128%_ '(%#ref absent-value))))
                _%keys201121%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw201134%_)
                                                 (if (memq (car _%kw201134%_)
                                                           _%keys201121%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx201068%_
                                                        _%keys201121%_
                                                        _%kw201134%_))))
                                               _%kwargs201124%_)
                                              (let ((__tmp204581
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main201120%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs201123%_
                                  _%xargs201132%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp204581
                                                 _%stx201068%_
                                                 _%ctx201067%_)))
                                            (let* ((_%kwt201136%_
                                                    (let ((__tmp204582
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp204582)))
                                                   (_%kwvars201140%_
                                                    (map (lambda (_%_201138%_)
                                                           (let ((__tmp204583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp204583)))
                 _%kwargs201124%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind201145%_
                                                    (map (lambda (_%kw201142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar201143%_)
                   (cons (cons _%kwvar201143%_ '())
                         (cons (cdr _%kw201142%_) '())))
                 _%kwargs201124%_
                 _%kwvars201140%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset201150%_
                                                    (map (lambda (_%kw201147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar201148%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt201136%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw201147%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar201148%_
                                                             '()))
                                                 '()))))))
                 _%kwargs201124%_
                 _%kwvars201140%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs201155%_
                                                    (map (lambda (_%kw201152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar201153%_)
                   (cons (car _%kw201152%_)
                         (cons '%#ref (cons _%kwvar201153%_ '()))))
                 _%kwargs201124%_
                 _%kwvars201140%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs201163%_
                                                    (map (lambda (_%key201157%_)
                                                           (let ((_%$e201159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key201157%_ _%xkwargs201155%_))))
                     (if _%$e201159%_ _%$e201159%_ '(%#ref absent-value))))
                 _%keys201121%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp204584
                                                    (cons '%#let-values
                                                          (cons _%kwbind201145%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt201136%_ '())
                                                      (cons (let ((__tmp204585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs201124%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp204585 _%stx201068%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp204586
                                                             (cons (let ((__tmp204587
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main201120%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt201136%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs201123%_
                                                       _%xargs201163%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp204587 _%stx201068%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp204586 _%kwset201150%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp204584
                                               _%stx201068%_
                                               _%ctx201067%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g201099201109%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e201104201169%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g201099201109%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e201105201172%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g201099201109%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e201106201175%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g201099201109%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys201178%_ _%e201106201175%_)
                                   (_%e201107201180%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g201099201109%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main201183%_ _%e201107201180%_))
                              (_%K201103201166%_
                               _%main201183%_
                               _%keys201178%_))
                            (_%else201101201117%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx201067%_ _%stx201068%_)))))
               (_%e201085201188%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self201081201090%_ '1 '#f '#f)))
               (_%e201086201191%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self201081201090%_ '2 '#f '#f)))
               (_%e201087201194%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self201081201090%_ '3 '#f '#f)))
               (_%table201197%_ _%e201087201194%_)
               (_%e201088201199%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self201081201090%_ '4 '#f '#f)))
               (_%dispatch201202%_ _%e201088201199%_))
          (_%K201084201185%_ _%dispatch201202%_ _%table201197%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx200679%_ _%args200680%_)
        (let _%lp200682%_ ((_%rest200684%_ _%args200680%_)
                           (_%pargs200685%_ '())
                           (_%kwargs200686%_ '()))
          (let* ((_%__stx204040204041%_ _%rest200684%_)
                 (_%g200692200744%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx204040204041%_)))))
            (let ((_%__kont204042204043%_
                   (lambda (_%L200923%_ _%L200924%_)
                     (_%lp200682%_
                      _%L200923%_
                      (cons _%L200924%_ _%pargs200685%_)
                      _%kwargs200686%_)))
                  (_%__kont204044204045%_
                   (lambda (_%L200869%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L200869%_ _%pargs200685%_))
                             (reverse _%kwargs200686%_))))
                  (_%__kont204046204047%_
                   (lambda (_%L200816%_ _%L200817%_ _%L200818%_)
                     (let ((_%kw200835%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L200818%_))))
                       (if (assq _%kw200835%_ _%kwargs200686%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx200679%_
                              _%kw200835%_))
                           (_%lp200682%_
                            _%L200816%_
                            _%pargs200685%_
                            (cons (cons _%kw200835%_ _%L200817%_)
                                  _%kwargs200686%_))))))
                  (_%__kont204048204049%_
                   (lambda (_%L200764%_ _%L200765%_)
                     (_%lp200682%_
                      _%L200764%_
                      (cons _%L200765%_ _%pargs200685%_)
                      _%kwargs200686%_)))
                  (_%__kont204050204051%_
                   (lambda ()
                     (values (reverse _%pargs200685%_)
                             (reverse _%kwargs200686%_)))))
              (let ((_%__match204147204148%_
                     (lambda (_%e200723200784%_
                              _%hd200724200787%_
                              _%tl200725200789%_
                              _%e200726200792%_
                              _%hd200727200795%_
                              _%tl200728200797%_
                              _%e200729200800%_
                              _%hd200730200803%_
                              _%tl200731200805%_
                              _%e200732200808%_
                              _%hd200733200811%_
                              _%tl200734200813%_)
                       (let ((_%L200816%_ _%tl200734200813%_)
                             (_%L200817%_ _%hd200733200811%_)
                             (_%L200818%_ _%hd200730200803%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L200818%_))
                             (_%__kont204046204047%_
                              _%L200816%_
                              _%L200817%_
                              _%L200818%_)
                             (_%__kont204048204049%_
                              _%tl200725200789%_
                              _%hd200724200787%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx204040204041%_))
                    (let ((_%e200696200888%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx204040204041%_))))
                      (let ((_%tl200698200893%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200696200888%_)))
                            (_%hd200697200891%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200696200888%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd200697200891%_))
                            (let ((_%e200699200896%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd200697200891%_))))
                              (let ((_%tl200701200901%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200699200896%_)))
                                    (_%hd200700200899%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200699200896%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd200700200899%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd200700200899%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200701200901%_))
                                            (let ((_%e200702200904%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200701200901%_))))
                                              (let ((_%tl200704200909%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200702200904%_)))
                                                    (_%hd200703200907%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200702200904%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd200703200907%_))
                                                    (let ((_%e200705200912%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd200703200907%_))))
                                                      (if (equal? _%e200705200912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200704200909%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200698200893%_))
                          (let ((_%e200706200915%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200698200893%_))))
                            (let ((_%tl200708200920%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200706200915%_)))
                                  (_%hd200707200918%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200706200915%_))))
                              (_%__kont204042204043%_
                               _%tl200708200920%_
                               _%hd200707200918%_)))
                          (_%__kont204048204049%_
                           _%tl200698200893%_
                           _%hd200697200891%_))
                      (_%__kont204048204049%_
                       _%tl200698200893%_
                       _%hd200697200891%_))
                  (if (equal? _%e200705200912%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200704200909%_))
                          (_%__kont204044204045%_ _%tl200698200893%_)
                          (_%__kont204048204049%_
                           _%tl200698200893%_
                           _%hd200697200891%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200704200909%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200698200893%_))
                              (let ((_%e200732200808%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200698200893%_))))
                                (let ((_%tl200734200813%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200732200808%_)))
                                      (_%hd200733200811%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200732200808%_))))
                                  (_%__match204147204148%_
                                   _%e200696200888%_
                                   _%hd200697200891%_
                                   _%tl200698200893%_
                                   _%e200699200896%_
                                   _%hd200700200899%_
                                   _%tl200701200901%_
                                   _%e200702200904%_
                                   _%hd200703200907%_
                                   _%tl200704200909%_
                                   _%e200732200808%_
                                   _%hd200733200811%_
                                   _%tl200734200813%_)))
                              (_%__kont204048204049%_
                               _%tl200698200893%_
                               _%hd200697200891%_))
                          (_%__kont204048204049%_
                           _%tl200698200893%_
                           _%hd200697200891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200704200909%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl200698200893%_))
                                                            (let ((_%e200732200808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200698200893%_))))
                      (let ((_%tl200734200813%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200732200808%_)))
                            (_%hd200733200811%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200732200808%_))))
                        (_%__match204147204148%_
                         _%e200696200888%_
                         _%hd200697200891%_
                         _%tl200698200893%_
                         _%e200699200896%_
                         _%hd200700200899%_
                         _%tl200701200901%_
                         _%e200702200904%_
                         _%hd200703200907%_
                         _%tl200704200909%_
                         _%e200732200808%_
                         _%hd200733200811%_
                         _%tl200734200813%_)))
                    (_%__kont204048204049%_
                     _%tl200698200893%_
                     _%hd200697200891%_))
                (_%__kont204048204049%_
                 _%tl200698200893%_
                 _%hd200697200891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont204048204049%_
                                             _%tl200698200893%_
                                             _%hd200697200891%_))
                                        (_%__kont204048204049%_
                                         _%tl200698200893%_
                                         _%hd200697200891%_))
                                    (_%__kont204048204049%_
                                     _%tl200698200893%_
                                     _%hd200697200891%_))))
                            (_%__kont204048204049%_
                             _%tl200698200893%_
                             _%hd200697200891%_))))
                    (_%__kont204050204051%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self200663%_ _%ctx200664%_ _%stx200665%_ _%args200666%_)
        (let ((_%self200669%_ _%self200663%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx200664%_ _%stx200665%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self200351%_ _%stx200352%_)
        (let* ((_%__stx204156204157%_ _%stx200352%_)
               (_%g200355200395%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx204156204157%_)))))
          (let ((_%__kont204158204159%_
                 (lambda (_%L200501%_ _%L200502%_)
                   (let ((_%$e200529%_
                          (member 'return:
                                  (let ((__tmp204588
                                         (lambda (_%g200521200524%_
                                                  _%g200522200526%_)
                                           (cons _%g200521200524%_
                                                 _%g200522200526%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp204588 '() _%L200502%_))
                                  gx#stx-eq?)))
                     (if _%$e200529%_
                         ((lambda (_%tail200532%_)
                            (let ((_%type200534%_
                                   (let ((__tmp204589
                                          (let ((__tmp204590
                                                 (cadr _%tail200532%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp204590))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx200352%_
                                      __tmp204589))))
                              (gxc#check-return-type!
                               _%stx200352%_
                               _%L200501%_
                               _%type200534%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self200351%_
                                 _%L200501%_))))
                          _%$e200529%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self200351%_ _%L200501%_))))))
                (_%__kont204162204163%_
                 (lambda (_%L200424%_ _%L200425%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self200351%_ _%L200424%_)))))
            (let ((_%__match204193204194%_
                   (lambda (_%e200359200445%_
                            _%hd200360200448%_
                            _%tl200361200450%_
                            _%e200362200453%_
                            _%hd200363200456%_
                            _%tl200364200458%_
                            _%e200365200461%_
                            _%hd200366200464%_
                            _%tl200367200466%_
                            _%__splice204160204161%_
                            _%target200368200469%_
                            _%tl200370200471%_)
                     (letrec ((_%loop200371200474%_
                               (lambda (_%hd200369200477%_
                                        _%signature200375200479%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd200369200477%_))
                                     (let ((_%e200372200482%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd200369200477%_))))
                                       (let ((_%lp-tl200374200487%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e200372200482%_)))
                                             (_%lp-hd200373200485%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e200372200482%_))))
                                         (_%loop200371200474%_
                                          _%lp-tl200374200487%_
                                          (cons _%lp-hd200373200485%_
                                                _%signature200375200479%_))))
                                     (let ((_%signature200376200490%_
                                            (reverse _%signature200375200479%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl200364200458%_))
                                           (let ((_%e200377200493%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl200364200458%_))))
                                             (let ((_%tl200379200498%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e200377200493%_)))
                                                   (_%hd200378200496%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e200377200493%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl200379200498%_))
                                                   (_%__kont204158204159%_
                                                    _%hd200378200496%_
                                                    _%signature200376200490%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g200355200395%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g200355200395%_))))))))
                       (_%loop200371200474%_ _%target200368200469%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx204156204157%_))
                  (let ((_%e200359200445%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx204156204157%_))))
                    (let ((_%tl200361200450%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200359200445%_)))
                          (_%hd200360200448%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200359200445%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200361200450%_))
                          (let ((_%e200362200453%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200361200450%_))))
                            (let ((_%tl200364200458%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200362200453%_)))
                                  (_%hd200363200456%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200362200453%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd200363200456%_))
                                  (let ((_%e200365200461%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd200363200456%_))))
                                    (let ((_%tl200367200466%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200365200461%_)))
                                          (_%hd200366200464%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200365200461%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd200366200464%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd200366200464%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl200367200466%_))
                                                  (let ((_%__splice204160204161%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl200367200466%_
                                                            '0))))
                                                    (let ((_%tl200370200471%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice204160204161%_
                                                              '1)))
                                                          (_%target200368200469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice204160204161%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200370200471%_))
                                                          (_%__match204193204194%_
                                                           _%e200359200445%_
                                                           _%hd200360200448%_
                                                           _%tl200361200450%_
                                                           _%e200362200453%_
                                                           _%hd200363200456%_
                                                           _%tl200364200458%_
                                                           _%e200365200461%_
                                                           _%hd200366200464%_
                                                           _%tl200367200466%_
                                                           _%__splice204160204161%_
                                                           _%target200368200469%_
                                                           _%tl200370200471%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl200364200458%_))
                      (let ((_%e200388200416%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200364200458%_))))
                        (let ((_%tl200390200421%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200388200416%_)))
                              (_%hd200389200419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200388200416%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200390200421%_))
                              (_%__kont204162204163%_
                               _%hd200389200419%_
                               _%hd200363200456%_)
                              (let ()
                                (declare (not safe))
                                (_%g200355200395%_)))))
                      (let () (declare (not safe)) (_%g200355200395%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200364200458%_))
                                                      (let ((_%e200388200416%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200364200458%_))))
                (let ((_%tl200390200421%_
                       (let () (declare (not safe)) (##cdr _%e200388200416%_)))
                      (_%hd200389200419%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200388200416%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200390200421%_))
                      (_%__kont204162204163%_
                       _%hd200389200419%_
                       _%hd200363200456%_)
                      (let () (declare (not safe)) (_%g200355200395%_)))))
              (let () (declare (not safe)) (_%g200355200395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200364200458%_))
                                                  (let ((_%e200388200416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200364200458%_))))
                                                    (let ((_%tl200390200421%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200388200416%_)))
                                                          (_%hd200389200419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200388200416%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200390200421%_))
                                                          (_%__kont204162204163%_
                                                           _%hd200389200419%_
                                                           _%hd200363200456%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200355200395%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200355200395%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200364200458%_))
                                              (let ((_%e200388200416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200364200458%_))))
                                                (let ((_%tl200390200421%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200388200416%_)))
                                                      (_%hd200389200419%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200388200416%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200390200421%_))
                                                      (_%__kont204162204163%_
                                                       _%hd200389200419%_
                                                       _%hd200363200456%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200355200395%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200355200395%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200364200458%_))
                                      (let ((_%e200388200416%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200364200458%_))))
                                        (let ((_%tl200390200421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200388200416%_)))
                                              (_%hd200389200419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200388200416%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200390200421%_))
                                              (_%__kont204162204163%_
                                               _%hd200389200419%_
                                               _%hd200363200456%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g200355200395%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200355200395%_))))))
                          (let () (declare (not safe)) (_%g200355200395%_)))))
                  (let () (declare (not safe)) (_%g200355200395%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx200329%_ _%expr200330%_ _%type200331%_)
        (let ((_%$e200333%_ (not _%type200331%_)))
          (if _%$e200333%_
              _%$e200333%_
              (let ((_%$e200336%_
                     (eq? (##structure-ref _%type200331%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e200336%_
                    _%$e200336%_
                    (let ((_%expr-type200340%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr200330%_))))
                      (if (not _%expr-type200340%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx200329%_
                             _%type200331%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type200340%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx200329%_
                                 _%type200331%_
                                 _%expr-type200340%_))
                              (let ((_%$e200344%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type200340%_
                                        'gxc#!abort::t))))
                                (if _%$e200344%_
                                    _%$e200344%_
                                    (let ((_%$e200347%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type200340%_
                                              _%type200331%_))))
                                      (if _%$e200347%_
                                          _%$e200347%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx200329%_
                                             _%type200331%_
                                             _%expr-type200340%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self199755%_ _%stx199756%_)
        (let* ((_%__stx204238204239%_ _%stx199756%_)
               (_%g199761199871%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx204238204239%_)))))
          (let ((_%__kont204240204241%_
                 (lambda (_%L200303%_ _%L200304%_ _%L200305%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L200305%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self199755%_ _%L200304%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self199755%_ _%L200303%_)))))
                (_%__kont204242204243%_
                 (lambda (_%L200129%_ _%L200130%_ _%L200131%_ _%L200132%_)
                   (let ((_%$e200164%_
                          (let ((__tmp204591
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L200132%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp204591))))
                     (if _%$e200164%_
                         ((lambda (_%pred-type200167%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type200167%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type200167%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test200172%_
                                        (let ((__tmp204592
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L200132%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L200131%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp204592
                                           _%stx199756%_
                                           _%self199755%_)))
                                       (_%K200176%_
                                        (let ((__tmp204593
                                               (lambda ()
                                                 (let ((__tmp204596
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self199755%_
                                                             _%L200130%_))))
                                                       (__tmp204594
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L200131%_))
                            (let ((__tmp204595
                                   (##structure-ref
                                    _%pred-type200167%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx199756%_
                               __tmp204595)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp204596
                                                    gxc#current-compile-path-type
                                                    __tmp204594)))))
                                          (declare (not safe))
                                          (__make-promise __tmp204593)))
                                       (_%E200179%_
                                        (let ((__tmp204597
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self199755%_
                                                    _%L200129%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp204597)))
                                       (_%__stx204216204217%_ _%test200172%_)
                                       (_%g200183200197%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx204216204217%_)))))
                                  (let ((_%__kont204218204219%_
                                         (lambda (_%L200225%_ _%L200226%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L200225%_))
                                               (force _%K200176%_)
                                               (force _%E200179%_))))
                                        (_%__kont204220204221%_
                                         (lambda ()
                                           (let ((__tmp204598
                                                  (cons '%#if
                                                        (cons _%test200172%_
                                                              (cons (force _%K200176%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E200179%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp204598
                                              _%stx199756%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx204216204217%_))
                                        (let ((_%e200187200209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx204216204217%_))))
                                          (let ((_%tl200189200214%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200187200209%_)))
                                                (_%hd200188200212%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200187200209%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200189200214%_))
                                                (let ((_%e200190200217%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200189200214%_))))
                                                  (let ((_%tl200192200222%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200190200217%_)))
                                                        (_%hd200191200220%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200190200217%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200192200222%_))
                                                        (_%__kont204218204219%_
                                                         _%hd200191200220%_
                                                         _%hd200188200212%_)
                                                        (_%__kont204220204221%_))))
                                                (_%__kont204220204221%_))))
                                        (_%__kont204220204221%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self199755%_
                                   _%stx199756%_))))
                          _%$e200164%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self199755%_
                            _%stx199756%_))))))
                (_%__kont204244204245%_
                 (lambda (_%L200005%_ _%L200006%_ _%L200007%_ _%L200008%_)
                   (gxc#optimize-if%
                    _%self199755%_
                    (let ((__tmp204599
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L200007%_
                                       (cons _%L200005%_
                                             (cons _%L200006%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp204599 _%stx199756%_)))))
                (_%__kont204246204247%_
                 (lambda (_%L199908%_ _%L199909%_ _%L199910%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self199755%_ _%stx199756%_)))))
            (let ((_%__match204445204446%_
                   (lambda (_%e199825199933%_
                            _%hd199826199936%_
                            _%tl199827199938%_
                            _%e199828199941%_
                            _%hd199829199944%_
                            _%tl199830199946%_
                            _%e199831199949%_
                            _%hd199832199952%_
                            _%tl199833199954%_
                            _%e199834199957%_
                            _%hd199835199960%_
                            _%tl199836199962%_
                            _%e199837199965%_
                            _%hd199838199968%_
                            _%tl199839199970%_
                            _%e199840199973%_
                            _%hd199841199976%_
                            _%tl199842199978%_
                            _%e199843199981%_
                            _%hd199844199984%_
                            _%tl199845199986%_
                            _%e199846199989%_
                            _%hd199847199992%_
                            _%tl199848199994%_
                            _%e199849199997%_
                            _%hd199850200000%_
                            _%tl199851200002%_)
                     (let ((_%L200005%_ _%hd199850200000%_)
                           (_%L200006%_ _%hd199847199992%_)
                           (_%L200007%_ _%hd199844199984%_)
                           (_%L200008%_ _%hd199841199976%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L200008%_ 'not))
                           (_%__kont204244204245%_
                            _%L200005%_
                            _%L200006%_
                            _%L200007%_
                            _%L200008%_)
                           (_%__kont204246204247%_
                            _%hd199850200000%_
                            _%hd199847199992%_
                            _%hd199829199944%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx204238204239%_))
                  (let ((_%e199766200255%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx204238204239%_))))
                    (let ((_%tl199768200260%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199766200255%_)))
                          (_%hd199767200258%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199766200255%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199768200260%_))
                          (let ((_%e199769200263%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199768200260%_))))
                            (let ((_%tl199771200268%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199769200263%_)))
                                  (_%hd199770200266%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199769200263%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd199770200266%_))
                                  (let ((_%e199772200271%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199770200266%_))))
                                    (let ((_%tl199774200276%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199772200271%_)))
                                          (_%hd199773200274%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199772200271%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd199773200274%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd199773200274%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199774200276%_))
                                                  (let ((_%e199775200279%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199774200276%_))))
                                                    (let ((_%tl199777200284%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199775200279%_)))
                                                          (_%hd199776200282%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199775200279%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199777200284%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl199771200268%_))
                      (let ((_%e199778200287%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199771200268%_))))
                        (let ((_%tl199780200292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199778200287%_)))
                              (_%hd199779200290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199778200287%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199780200292%_))
                              (let ((_%e199781200295%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199780200292%_))))
                                (let ((_%tl199783200300%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199781200295%_)))
                                      (_%hd199782200298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199781200295%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199783200300%_))
                                      (_%__kont204240204241%_
                                       _%hd199782200298%_
                                       _%hd199779200290%_
                                       _%hd199776200282%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g199761199871%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199761199871%_)))))
                      (let () (declare (not safe)) (_%g199761199871%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199771200268%_))
                      (let ((_%e199861199892%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199771200268%_))))
                        (let ((_%tl199863199897%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199861199892%_)))
                              (_%hd199862199895%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199861199892%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199863199897%_))
                              (let ((_%e199864199900%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199863199897%_))))
                                (let ((_%tl199866199905%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199864199900%_)))
                                      (_%hd199865199903%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199864199900%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199866199905%_))
                                      (_%__kont204246204247%_
                                       _%hd199865199903%_
                                       _%hd199862199895%_
                                       _%hd199770200266%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g199761199871%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199761199871%_)))))
                      (let () (declare (not safe)) (_%g199761199871%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199771200268%_))
                                                      (let ((_%e199861199892%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199771200268%_))))
                (let ((_%tl199863199897%_
                       (let () (declare (not safe)) (##cdr _%e199861199892%_)))
                      (_%hd199862199895%_
                       (let ()
                         (declare (not safe))
                         (##car _%e199861199892%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199863199897%_))
                      (let ((_%e199864199900%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199863199897%_))))
                        (let ((_%tl199866199905%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199864199900%_)))
                              (_%hd199865199903%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199864199900%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199866199905%_))
                              (_%__kont204246204247%_
                               _%hd199865199903%_
                               _%hd199862199895%_
                               _%hd199770200266%_)
                              (let ()
                                (declare (not safe))
                                (_%g199761199871%_)))))
                      (let () (declare (not safe)) (_%g199761199871%_)))))
              (let () (declare (not safe)) (_%g199761199871%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd199773200274%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199774200276%_))
                                                      (let ((_%e199797200065%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199774200276%_))))
                (let ((_%tl199799200070%_
                       (let () (declare (not safe)) (##cdr _%e199797200065%_)))
                      (_%hd199798200068%_
                       (let ()
                         (declare (not safe))
                         (##car _%e199797200065%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd199798200068%_))
                      (let ((_%e199800200073%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd199798200068%_))))
                        (let ((_%tl199802200078%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199800200073%_)))
                              (_%hd199801200076%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199800200073%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd199801200076%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd199801200076%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199802200078%_))
                                      (let ((_%e199803200081%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199802200078%_))))
                                        (let ((_%tl199805200086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199803200081%_)))
                                              (_%hd199804200084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199803200081%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199805200086%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199799200070%_))
                                                  (let ((_%e199806200089%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199799200070%_))))
                                                    (let ((_%tl199808200094%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199806200089%_)))
                                                          (_%hd199807200092%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199806200089%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199807200092%_))
                                                          (let ((_%e199809200097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd199807200092%_))))
                    (let ((_%tl199811200102%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199809200097%_)))
                          (_%hd199810200100%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199809200097%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199810200100%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd199810200100%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199811200102%_))
                                  (let ((_%e199812200105%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl199811200102%_))))
                                    (let ((_%tl199814200110%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199812200105%_)))
                                          (_%hd199813200108%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199812200105%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199814200110%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199808200094%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199771200268%_))
                                                  (let ((_%e199815200113%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199771200268%_))))
                                                    (let ((_%tl199817200118%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199815200113%_)))
                                                          (_%hd199816200116%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199815200113%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199817200118%_))
                                                          (let ((_%e199818200121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl199817200118%_))))
                    (let ((_%tl199820200126%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199818200121%_)))
                          (_%hd199819200124%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199818200121%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199820200126%_))
                          (_%__kont204242204243%_
                           _%hd199819200124%_
                           _%hd199816200116%_
                           _%hd199813200108%_
                           _%hd199804200084%_)
                          (let () (declare (not safe)) (_%g199761199871%_)))))
                  (let () (declare (not safe)) (_%g199761199871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199761199871%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199771200268%_))
                                                  (let ((_%e199861199892%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199771200268%_))))
                                                    (let ((_%tl199863199897%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199861199892%_)))
                                                          (_%hd199862199895%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199861199892%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199863199897%_))
                                                          (let ((_%e199864199900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl199863199897%_))))
                    (let ((_%tl199866199905%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199864199900%_)))
                          (_%hd199865199903%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199864199900%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199866199905%_))
                          (_%__kont204246204247%_
                           _%hd199865199903%_
                           _%hd199862199895%_
                           _%hd199770200266%_)
                          (let () (declare (not safe)) (_%g199761199871%_)))))
                  (let () (declare (not safe)) (_%g199761199871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199761199871%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199808200094%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199771200268%_))
                                                  (let ((_%e199846199989%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199771200268%_))))
                                                    (let ((_%tl199848199994%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199846199989%_)))
                                                          (_%hd199847199992%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199846199989%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199848199994%_))
                                                          (let ((_%e199849199997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl199848199994%_))))
                    (let ((_%tl199851200002%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199849199997%_)))
                          (_%hd199850200000%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199849199997%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199851200002%_))
                          (_%__match204445204446%_
                           _%e199766200255%_
                           _%hd199767200258%_
                           _%tl199768200260%_
                           _%e199769200263%_
                           _%hd199770200266%_
                           _%tl199771200268%_
                           _%e199772200271%_
                           _%hd199773200274%_
                           _%tl199774200276%_
                           _%e199797200065%_
                           _%hd199798200068%_
                           _%tl199799200070%_
                           _%e199800200073%_
                           _%hd199801200076%_
                           _%tl199802200078%_
                           _%e199803200081%_
                           _%hd199804200084%_
                           _%tl199805200086%_
                           _%e199806200089%_
                           _%hd199807200092%_
                           _%tl199808200094%_
                           _%e199846199989%_
                           _%hd199847199992%_
                           _%tl199848199994%_
                           _%e199849199997%_
                           _%hd199850200000%_
                           _%tl199851200002%_)
                          (let () (declare (not safe)) (_%g199761199871%_)))))
                  (let () (declare (not safe)) (_%g199761199871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199761199871%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199771200268%_))
                                                  (let ((_%e199861199892%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199771200268%_))))
                                                    (let ((_%tl199863199897%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199861199892%_)))
                                                          (_%hd199862199895%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199861199892%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199863199897%_))
                                                          (let ((_%e199864199900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl199863199897%_))))
                    (let ((_%tl199866199905%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199864199900%_)))
                          (_%hd199865199903%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199864199900%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199866199905%_))
                          (_%__kont204246204247%_
                           _%hd199865199903%_
                           _%hd199862199895%_
                           _%hd199770200266%_)
                          (let () (declare (not safe)) (_%g199761199871%_)))))
                  (let () (declare (not safe)) (_%g199761199871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199761199871%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199808200094%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199771200268%_))
                                          (let ((_%e199846199989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199771200268%_))))
                                            (let ((_%tl199848199994%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199846199989%_)))
                                                  (_%hd199847199992%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199846199989%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199848199994%_))
                                                  (let ((_%e199849199997%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199848199994%_))))
                                                    (let ((_%tl199851200002%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199849199997%_)))
                                                          (_%hd199850200000%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199849199997%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199851200002%_))
                                                          (_%__match204445204446%_
                                                           _%e199766200255%_
                                                           _%hd199767200258%_
                                                           _%tl199768200260%_
                                                           _%e199769200263%_
                                                           _%hd199770200266%_
                                                           _%tl199771200268%_
                                                           _%e199772200271%_
                                                           _%hd199773200274%_
                                                           _%tl199774200276%_
                                                           _%e199797200065%_
                                                           _%hd199798200068%_
                                                           _%tl199799200070%_
                                                           _%e199800200073%_
                                                           _%hd199801200076%_
                                                           _%tl199802200078%_
                                                           _%e199803200081%_
                                                           _%hd199804200084%_
                                                           _%tl199805200086%_
                                                           _%e199806200089%_
                                                           _%hd199807200092%_
                                                           _%tl199808200094%_
                                                           _%e199846199989%_
                                                           _%hd199847199992%_
                                                           _%tl199848199994%_
                                                           _%e199849199997%_
                                                           _%hd199850200000%_
                                                           _%tl199851200002%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g199761199871%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199761199871%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199761199871%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199771200268%_))
                                          (let ((_%e199861199892%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199771200268%_))))
                                            (let ((_%tl199863199897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199861199892%_)))
                                                  (_%hd199862199895%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199861199892%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199863199897%_))
                                                  (let ((_%e199864199900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199863199897%_))))
                                                    (let ((_%tl199866199905%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199864199900%_)))
                                                          (_%hd199865199903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199864199900%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199866199905%_))
                                                          (_%__kont204246204247%_
                                                           _%hd199865199903%_
                                                           _%hd199862199895%_
                                                           _%hd199770200266%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g199761199871%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199761199871%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199761199871%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199808200094%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199771200268%_))
                                      (let ((_%e199846199989%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199771200268%_))))
                                        (let ((_%tl199848199994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199846199989%_)))
                                              (_%hd199847199992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199846199989%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199848199994%_))
                                              (let ((_%e199849199997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199848199994%_))))
                                                (let ((_%tl199851200002%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199849199997%_)))
                                                      (_%hd199850200000%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199849199997%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199851200002%_))
                                                      (_%__match204445204446%_
                                                       _%e199766200255%_
                                                       _%hd199767200258%_
                                                       _%tl199768200260%_
                                                       _%e199769200263%_
                                                       _%hd199770200266%_
                                                       _%tl199771200268%_
                                                       _%e199772200271%_
                                                       _%hd199773200274%_
                                                       _%tl199774200276%_
                                                       _%e199797200065%_
                                                       _%hd199798200068%_
                                                       _%tl199799200070%_
                                                       _%e199800200073%_
                                                       _%hd199801200076%_
                                                       _%tl199802200078%_
                                                       _%e199803200081%_
                                                       _%hd199804200084%_
                                                       _%tl199805200086%_
                                                       _%e199806200089%_
                                                       _%hd199807200092%_
                                                       _%tl199808200094%_
                                                       _%e199846199989%_
                                                       _%hd199847199992%_
                                                       _%tl199848199994%_
                                                       _%e199849199997%_
                                                       _%hd199850200000%_
                                                       _%tl199851200002%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199761199871%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199761199871%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199761199871%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199771200268%_))
                                      (let ((_%e199861199892%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199771200268%_))))
                                        (let ((_%tl199863199897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199861199892%_)))
                                              (_%hd199862199895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199861199892%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199863199897%_))
                                              (let ((_%e199864199900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199863199897%_))))
                                                (let ((_%tl199866199905%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199864199900%_)))
                                                      (_%hd199865199903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199864199900%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199866199905%_))
                                                      (_%__kont204246204247%_
                                                       _%hd199865199903%_
                                                       _%hd199862199895%_
                                                       _%hd199770200266%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199761199871%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199761199871%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199761199871%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199808200094%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199771200268%_))
                                  (let ((_%e199846199989%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl199771200268%_))))
                                    (let ((_%tl199848199994%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199846199989%_)))
                                          (_%hd199847199992%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199846199989%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199848199994%_))
                                          (let ((_%e199849199997%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199848199994%_))))
                                            (let ((_%tl199851200002%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199849199997%_)))
                                                  (_%hd199850200000%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199849199997%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199851200002%_))
                                                  (_%__match204445204446%_
                                                   _%e199766200255%_
                                                   _%hd199767200258%_
                                                   _%tl199768200260%_
                                                   _%e199769200263%_
                                                   _%hd199770200266%_
                                                   _%tl199771200268%_
                                                   _%e199772200271%_
                                                   _%hd199773200274%_
                                                   _%tl199774200276%_
                                                   _%e199797200065%_
                                                   _%hd199798200068%_
                                                   _%tl199799200070%_
                                                   _%e199800200073%_
                                                   _%hd199801200076%_
                                                   _%tl199802200078%_
                                                   _%e199803200081%_
                                                   _%hd199804200084%_
                                                   _%tl199805200086%_
                                                   _%e199806200089%_
                                                   _%hd199807200092%_
                                                   _%tl199808200094%_
                                                   _%e199846199989%_
                                                   _%hd199847199992%_
                                                   _%tl199848199994%_
                                                   _%e199849199997%_
                                                   _%hd199850200000%_
                                                   _%tl199851200002%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199761199871%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199761199871%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199761199871%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199771200268%_))
                                  (let ((_%e199861199892%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl199771200268%_))))
                                    (let ((_%tl199863199897%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199861199892%_)))
                                          (_%hd199862199895%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199861199892%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199863199897%_))
                                          (let ((_%e199864199900%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199863199897%_))))
                                            (let ((_%tl199866199905%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199864199900%_)))
                                                  (_%hd199865199903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199864199900%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199866199905%_))
                                                  (_%__kont204246204247%_
                                                   _%hd199865199903%_
                                                   _%hd199862199895%_
                                                   _%hd199770200266%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199761199871%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199761199871%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199761199871%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199808200094%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199771200268%_))
                          (let ((_%e199846199989%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199771200268%_))))
                            (let ((_%tl199848199994%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199846199989%_)))
                                  (_%hd199847199992%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199846199989%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199848199994%_))
                                  (let ((_%e199849199997%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl199848199994%_))))
                                    (let ((_%tl199851200002%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199849199997%_)))
                                          (_%hd199850200000%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199849199997%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199851200002%_))
                                          (_%__match204445204446%_
                                           _%e199766200255%_
                                           _%hd199767200258%_
                                           _%tl199768200260%_
                                           _%e199769200263%_
                                           _%hd199770200266%_
                                           _%tl199771200268%_
                                           _%e199772200271%_
                                           _%hd199773200274%_
                                           _%tl199774200276%_
                                           _%e199797200065%_
                                           _%hd199798200068%_
                                           _%tl199799200070%_
                                           _%e199800200073%_
                                           _%hd199801200076%_
                                           _%tl199802200078%_
                                           _%e199803200081%_
                                           _%hd199804200084%_
                                           _%tl199805200086%_
                                           _%e199806200089%_
                                           _%hd199807200092%_
                                           _%tl199808200094%_
                                           _%e199846199989%_
                                           _%hd199847199992%_
                                           _%tl199848199994%_
                                           _%e199849199997%_
                                           _%hd199850200000%_
                                           _%tl199851200002%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g199761199871%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199761199871%_)))))
                          (let () (declare (not safe)) (_%g199761199871%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199771200268%_))
                          (let ((_%e199861199892%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199771200268%_))))
                            (let ((_%tl199863199897%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199861199892%_)))
                                  (_%hd199862199895%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199861199892%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199863199897%_))
                                  (let ((_%e199864199900%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl199863199897%_))))
                                    (let ((_%tl199866199905%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199864199900%_)))
                                          (_%hd199865199903%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199864199900%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199866199905%_))
                                          (_%__kont204246204247%_
                                           _%hd199865199903%_
                                           _%hd199862199895%_
                                           _%hd199770200266%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g199761199871%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199761199871%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g199761199871%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199771200268%_))
                                                      (let ((_%e199861199892%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199771200268%_))))
                (let ((_%tl199863199897%_
                       (let () (declare (not safe)) (##cdr _%e199861199892%_)))
                      (_%hd199862199895%_
                       (let ()
                         (declare (not safe))
                         (##car _%e199861199892%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199863199897%_))
                      (let ((_%e199864199900%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199863199897%_))))
                        (let ((_%tl199866199905%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199864199900%_)))
                              (_%hd199865199903%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199864199900%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199866199905%_))
                              (_%__kont204246204247%_
                               _%hd199865199903%_
                               _%hd199862199895%_
                               _%hd199770200266%_)
                              (let ()
                                (declare (not safe))
                                (_%g199761199871%_)))))
                      (let () (declare (not safe)) (_%g199761199871%_)))))
              (let () (declare (not safe)) (_%g199761199871%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199771200268%_))
                                                  (let ((_%e199861199892%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199771200268%_))))
                                                    (let ((_%tl199863199897%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199861199892%_)))
                                                          (_%hd199862199895%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199861199892%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199863199897%_))
                                                          (let ((_%e199864199900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl199863199897%_))))
                    (let ((_%tl199866199905%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199864199900%_)))
                          (_%hd199865199903%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199864199900%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199866199905%_))
                          (_%__kont204246204247%_
                           _%hd199865199903%_
                           _%hd199862199895%_
                           _%hd199770200266%_)
                          (let () (declare (not safe)) (_%g199761199871%_)))))
                  (let () (declare (not safe)) (_%g199761199871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199761199871%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199771200268%_))
                                          (let ((_%e199861199892%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199771200268%_))))
                                            (let ((_%tl199863199897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199861199892%_)))
                                                  (_%hd199862199895%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199861199892%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199863199897%_))
                                                  (let ((_%e199864199900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199863199897%_))))
                                                    (let ((_%tl199866199905%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199864199900%_)))
                                                          (_%hd199865199903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199864199900%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199866199905%_))
                                                          (_%__kont204246204247%_
                                                           _%hd199865199903%_
                                                           _%hd199862199895%_
                                                           _%hd199770200266%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g199761199871%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199761199871%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199761199871%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199771200268%_))
                                      (let ((_%e199861199892%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199771200268%_))))
                                        (let ((_%tl199863199897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199861199892%_)))
                                              (_%hd199862199895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199861199892%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199863199897%_))
                                              (let ((_%e199864199900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199863199897%_))))
                                                (let ((_%tl199866199905%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199864199900%_)))
                                                      (_%hd199865199903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199864199900%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199866199905%_))
                                                      (_%__kont204246204247%_
                                                       _%hd199865199903%_
                                                       _%hd199862199895%_
                                                       _%hd199770200266%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199761199871%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199761199871%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199761199871%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199771200268%_))
                                  (let ((_%e199861199892%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl199771200268%_))))
                                    (let ((_%tl199863199897%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199861199892%_)))
                                          (_%hd199862199895%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199861199892%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199863199897%_))
                                          (let ((_%e199864199900%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199863199897%_))))
                                            (let ((_%tl199866199905%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199864199900%_)))
                                                  (_%hd199865199903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199864199900%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199866199905%_))
                                                  (_%__kont204246204247%_
                                                   _%hd199865199903%_
                                                   _%hd199862199895%_
                                                   _%hd199770200266%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199761199871%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199761199871%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199761199871%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199771200268%_))
                          (let ((_%e199861199892%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199771200268%_))))
                            (let ((_%tl199863199897%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199861199892%_)))
                                  (_%hd199862199895%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199861199892%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199863199897%_))
                                  (let ((_%e199864199900%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl199863199897%_))))
                                    (let ((_%tl199866199905%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199864199900%_)))
                                          (_%hd199865199903%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199864199900%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199866199905%_))
                                          (_%__kont204246204247%_
                                           _%hd199865199903%_
                                           _%hd199862199895%_
                                           _%hd199770200266%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g199761199871%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199761199871%_)))))
                          (let () (declare (not safe)) (_%g199761199871%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl199771200268%_))
                  (let ((_%e199861199892%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl199771200268%_))))
                    (let ((_%tl199863199897%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199861199892%_)))
                          (_%hd199862199895%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199861199892%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199863199897%_))
                          (let ((_%e199864199900%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199863199897%_))))
                            (let ((_%tl199866199905%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199864199900%_)))
                                  (_%hd199865199903%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199864199900%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199866199905%_))
                                  (_%__kont204246204247%_
                                   _%hd199865199903%_
                                   _%hd199862199895%_
                                   _%hd199770200266%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g199761199871%_)))))
                          (let () (declare (not safe)) (_%g199761199871%_)))))
                  (let () (declare (not safe)) (_%g199761199871%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199771200268%_))
                                                      (let ((_%e199861199892%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199771200268%_))))
                (let ((_%tl199863199897%_
                       (let () (declare (not safe)) (##cdr _%e199861199892%_)))
                      (_%hd199862199895%_
                       (let ()
                         (declare (not safe))
                         (##car _%e199861199892%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199863199897%_))
                      (let ((_%e199864199900%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199863199897%_))))
                        (let ((_%tl199866199905%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199864199900%_)))
                              (_%hd199865199903%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199864199900%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199866199905%_))
                              (_%__kont204246204247%_
                               _%hd199865199903%_
                               _%hd199862199895%_
                               _%hd199770200266%_)
                              (let ()
                                (declare (not safe))
                                (_%g199761199871%_)))))
                      (let () (declare (not safe)) (_%g199761199871%_)))))
              (let () (declare (not safe)) (_%g199761199871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199771200268%_))
                                              (let ((_%e199861199892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199771200268%_))))
                                                (let ((_%tl199863199897%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199861199892%_)))
                                                      (_%hd199862199895%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199861199892%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199863199897%_))
                                                      (let ((_%e199864199900%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199863199897%_))))
                (let ((_%tl199866199905%_
                       (let () (declare (not safe)) (##cdr _%e199864199900%_)))
                      (_%hd199865199903%_
                       (let ()
                         (declare (not safe))
                         (##car _%e199864199900%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199866199905%_))
                      (_%__kont204246204247%_
                       _%hd199865199903%_
                       _%hd199862199895%_
                       _%hd199770200266%_)
                      (let () (declare (not safe)) (_%g199761199871%_)))))
              (let () (declare (not safe)) (_%g199761199871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199761199871%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199771200268%_))
                                      (let ((_%e199861199892%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199771200268%_))))
                                        (let ((_%tl199863199897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199861199892%_)))
                                              (_%hd199862199895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199861199892%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199863199897%_))
                                              (let ((_%e199864199900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199863199897%_))))
                                                (let ((_%tl199866199905%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199864199900%_)))
                                                      (_%hd199865199903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199864199900%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199866199905%_))
                                                      (_%__kont204246204247%_
                                                       _%hd199865199903%_
                                                       _%hd199862199895%_
                                                       _%hd199770200266%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199761199871%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199761199871%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199761199871%_))))))
                          (let () (declare (not safe)) (_%g199761199871%_)))))
                  (let () (declare (not safe)) (_%g199761199871%_))))))))))
