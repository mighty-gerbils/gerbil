(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1734131753)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp197450 (list gxc#::basic-xform::t))
            (__tmp197449 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp197450
         '()
         __tmp197449
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args196727%_
        (apply make-instance gxc#::optimize-call::t _%$args196727%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp197451
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
        (__make-promise __tmp197451)))
    (define gxc#apply-optimize-call
      (lambda (_%stx196719%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self196722%_
                (let ((__obj197441
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj197441))
               (__tmp197452
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self196722%_ _%stx196719%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp197452
           gxc#current-compile-method
           _%self196722%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp197454 (list gxc#::void::t))
            (__tmp197453 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp197454
         '()
         __tmp197453
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args196716%_
        (apply make-instance gxc#::check-return-type::t _%$args196716%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp197455
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
        (__make-promise __tmp197455)))
    (define gxc#apply-check-return-type
      (lambda (_%stx196708%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self196711%_
                (let ((__obj197443
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj197443))
               (__tmp197456
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self196711%_ _%stx196708%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp197456
           gxc#current-compile-method
           _%self196711%_))))
    (define gxc#optimize-call%
      (lambda (_%self196309%_ _%stx196310%_)
        (let* ((_%__stx196796196797%_ _%stx196310%_)
               (_%g196313196359%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx196796196797%_)))))
          (let ((_%__kont196798196799%_
                 (lambda (_%L196502%_ _%L196503%_)
                   (let* ((_%rator-id196523%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L196503%_)))
                          (_%rator-type196525%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id196523%_))))
                     (if (or (not _%rator-type196525%_)
                             (eq? (##structure-ref
                                   _%rator-type196525%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self196309%_ _%stx196310%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type196525%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp197457
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type196525%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id196523%_
                                  '" => "
                                  _%rator-type196525%_
                                  '" "
                                  __tmp197457))
                               (let* ((_%optimized196540%_
                                       (let ((__method197444
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type196525%_
                                                 'optimize-call))))
                                         (if __method197444
                                             (let ((__tmp197458
                                                    (let ((__tmp197459
                                                           (lambda (_%g196532196535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g196533196537%_)
                     (cons _%g196532196535%_ _%g196533196537%_))))
              (declare (not safe))
              (__foldr1 __tmp197459 '() _%L196502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method197444
                                                _%rator-type196525%_
                                                _%self196309%_
                                                _%stx196310%_
                                                __tmp197458))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type196525%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx196744196745%_
                                       _%optimized196540%_)
                                      (_%g196543196572%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx196744196745%_)))))
                                 (let ((_%__kont196746196747%_
                                        (lambda (_%L196640%_ _%L196641%_)
                                          (let* ((_%optimized-rator-id196668%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L196641%_)))
                                                 (_%rator-type196673%_
                                                  (let ((_%$e196670%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id196668%_))))
                                                    (if _%$e196670%_
                                                        _%$e196670%_
                                                        _%rator-type196525%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type196673%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id196668%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type196673%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type196673%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized196540%_
                                                (let ((__tmp197460
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L196641%_ '()))
                           (let ((__tmp197461
                                  (lambda (_%g196681196684%_ _%g196682196686%_)
                                    (cons _%g196681196684%_
                                          _%g196682196686%_))))
                             (declare (not safe))
                             (__foldr1 __tmp197461 '() _%L196640%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp197460
                                                   _%stx196310%_))))))
                                       (_%__kont196750196751%_
                                        (lambda () _%optimized196540%_)))
                                   (let ((_%__match196793196794%_
                                          (lambda (_%e196547196584%_
                                                   _%hd196548196587%_
                                                   _%tl196549196589%_
                                                   _%e196550196592%_
                                                   _%hd196551196595%_
                                                   _%tl196552196597%_
                                                   _%e196553196600%_
                                                   _%hd196554196603%_
                                                   _%tl196555196605%_
                                                   _%e196556196608%_
                                                   _%hd196557196611%_
                                                   _%tl196558196613%_
                                                   _%__splice196748196749%_
                                                   _%target196559196616%_
                                                   _%tl196561196618%_)
                                            (letrec ((_%loop196562196621%_
                                                      (lambda (_%hd196560196624%_
                                                               _%arg196566196626%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd196560196624%_))
                                                            (let ((_%e196563196629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd196560196624%_))))
                      (let ((_%lp-tl196565196634%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e196563196629%_)))
                            (_%lp-hd196564196632%_
                             (let ()
                               (declare (not safe))
                               (##car _%e196563196629%_))))
                        (_%loop196562196621%_
                         _%lp-tl196565196634%_
                         (cons _%lp-hd196564196632%_ _%arg196566196626%_))))
                    (let ((_%arg196567196637%_ (reverse _%arg196566196626%_)))
                      (_%__kont196746196747%_
                       _%arg196567196637%_
                       _%hd196557196611%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop196562196621%_
                                               _%target196559196616%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx196744196745%_))
                                         (let ((_%e196547196584%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx196744196745%_))))
                                           (let ((_%tl196549196589%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e196547196584%_)))
                                                 (_%hd196548196587%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e196547196584%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd196548196587%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd196548196587%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl196549196589%_))
                                                         (let ((_%e196550196592%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl196549196589%_))))
                   (let ((_%tl196552196597%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e196550196592%_)))
                         (_%hd196551196595%_
                          (let ()
                            (declare (not safe))
                            (##car _%e196550196592%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd196551196595%_))
                         (let ((_%e196553196600%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd196551196595%_))))
                           (let ((_%tl196555196605%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e196553196600%_)))
                                 (_%hd196554196603%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e196553196600%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd196554196603%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd196554196603%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl196555196605%_))
                                         (let ((_%e196556196608%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl196555196605%_))))
                                           (let ((_%tl196558196613%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e196556196608%_)))
                                                 (_%hd196557196611%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e196556196608%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl196558196613%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl196552196597%_))
                                                     (let ((_%__splice196748196749%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl196552196597%_
                                                               '0))))
                                                       (let ((_%tl196561196618%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice196748196749%_ '1)))
                     (_%target196559196616%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice196748196749%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl196561196618%_))
                     (_%__match196793196794%_
                      _%e196547196584%_
                      _%hd196548196587%_
                      _%tl196549196589%_
                      _%e196550196592%_
                      _%hd196551196595%_
                      _%tl196552196597%_
                      _%e196553196600%_
                      _%hd196554196603%_
                      _%tl196555196605%_
                      _%e196556196608%_
                      _%hd196557196611%_
                      _%tl196558196613%_
                      _%__splice196748196749%_
                      _%target196559196616%_
                      _%tl196561196618%_)
                     (_%__kont196750196751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont196750196751%_))
                                                 (_%__kont196750196751%_))))
                                         (_%__kont196750196751%_))
                                     (_%__kont196750196751%_))
                                 (_%__kont196750196751%_))))
                         (_%__kont196750196751%_))))
                 (_%__kont196750196751%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont196750196751%_))
                                                 (_%__kont196750196751%_))))
                                         (_%__kont196750196751%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type196525%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type196525%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp197462
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L196503%_
                                                                '()))
                                                    (map (lambda (_%g196692196694%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self196309%_
                                                              _%g196692196694%_)))
                                                         (let ((__tmp197463
                                                                (lambda (_%g196696196699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g196697196701%_)
                          (cons _%g196696196699%_ _%g196697196701%_))))
                   (declare (not safe))
                   (__foldr1 __tmp197463 '() _%L196502%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp197462
                                    _%stx196310%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx196310%_
                                    _%rator-type196525%_))))))))
                (_%__kont196802196803%_
                 (lambda (_%L196404%_ _%L196405%_)
                   (let ((_%rator-type196422%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L196405%_))))
                     (if (and _%rator-type196422%_
                              (eq? (##structure-ref
                                    _%rator-type196422%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type196422%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type196422%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type196422%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp197464
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self196309%_
                                               _%L196405%_))
                                            (map (lambda (_%g196424196426%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self196309%_
                                                      _%g196424196426%_)))
                                                 (let ((__tmp197465
                                                        (lambda (_%g196428196431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g196429196433%_)
                  (cons _%g196428196431%_ _%g196429196433%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp197465
                                                    '()
                                                    _%L196404%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp197464 _%stx196310%_))
                         (if (or (not _%rator-type196422%_)
                                 (let ((__tmp197466
                                        (##structure-ref
                                         _%rator-type196422%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp197466 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self196309%_ _%stx196310%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx196310%_
                                _%rator-type196422%_))))))))
            (let* ((_%__match196863196864%_
                    (lambda (_%e196340196364%_
                             _%hd196341196367%_
                             _%tl196342196369%_
                             _%e196343196372%_
                             _%hd196344196375%_
                             _%tl196345196377%_
                             _%__splice196804196805%_
                             _%target196346196380%_
                             _%tl196348196382%_)
                      (letrec ((_%loop196349196385%_
                                (lambda (_%hd196347196388%_
                                         _%rand196353196390%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196347196388%_))
                                      (let ((_%e196350196393%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196347196388%_))))
                                        (let ((_%lp-tl196352196398%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196350196393%_)))
                                              (_%lp-hd196351196396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196350196393%_))))
                                          (_%loop196349196385%_
                                           _%lp-tl196352196398%_
                                           (cons _%lp-hd196351196396%_
                                                 _%rand196353196390%_))))
                                      (let ((_%rand196354196401%_
                                             (reverse _%rand196353196390%_)))
                                        (_%__kont196802196803%_
                                         _%rand196354196401%_
                                         _%hd196344196375%_))))))
                        (_%loop196349196385%_ _%target196346196380%_ '()))))
                   (_%__match196843196844%_
                    (lambda (_%e196317196446%_
                             _%hd196318196449%_
                             _%tl196319196451%_
                             _%e196320196454%_
                             _%hd196321196457%_
                             _%tl196322196459%_
                             _%e196323196462%_
                             _%hd196324196465%_
                             _%tl196325196467%_
                             _%e196326196470%_
                             _%hd196327196473%_
                             _%tl196328196475%_
                             _%__splice196800196801%_
                             _%target196329196478%_
                             _%tl196331196480%_)
                      (letrec ((_%loop196332196483%_
                                (lambda (_%hd196330196486%_
                                         _%rand196336196488%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196330196486%_))
                                      (let ((_%e196333196491%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196330196486%_))))
                                        (let ((_%lp-tl196335196496%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196333196491%_)))
                                              (_%lp-hd196334196494%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196333196491%_))))
                                          (_%loop196332196483%_
                                           _%lp-tl196335196496%_
                                           (cons _%lp-hd196334196494%_
                                                 _%rand196336196488%_))))
                                      (let ((_%rand196337196499%_
                                             (reverse _%rand196336196488%_)))
                                        (_%__kont196798196799%_
                                         _%rand196337196499%_
                                         _%hd196327196473%_))))))
                        (_%loop196332196483%_ _%target196329196478%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx196796196797%_))
                  (let ((_%e196317196446%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx196796196797%_))))
                    (let ((_%tl196319196451%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196317196446%_)))
                          (_%hd196318196449%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196317196446%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196319196451%_))
                          (let ((_%e196320196454%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196319196451%_))))
                            (let ((_%tl196322196459%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196320196454%_)))
                                  (_%hd196321196457%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196320196454%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd196321196457%_))
                                  (let ((_%e196323196462%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196321196457%_))))
                                    (let ((_%tl196325196467%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196323196462%_)))
                                          (_%hd196324196465%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196323196462%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd196324196465%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd196324196465%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196325196467%_))
                                                  (let ((_%e196326196470%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196325196467%_))))
                                                    (let ((_%tl196328196475%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196326196470%_)))
                                                          (_%hd196327196473%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196326196470%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196328196475%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl196322196459%_))
                      (let ((_%__splice196800196801%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl196322196459%_
                                '0))))
                        (let ((_%tl196331196480%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196800196801%_ '1)))
                              (_%target196329196478%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196800196801%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196331196480%_))
                              (_%__match196843196844%_
                               _%e196317196446%_
                               _%hd196318196449%_
                               _%tl196319196451%_
                               _%e196320196454%_
                               _%hd196321196457%_
                               _%tl196322196459%_
                               _%e196323196462%_
                               _%hd196324196465%_
                               _%tl196325196467%_
                               _%e196326196470%_
                               _%hd196327196473%_
                               _%tl196328196475%_
                               _%__splice196800196801%_
                               _%target196329196478%_
                               _%tl196331196480%_)
                              (let ()
                                (declare (not safe))
                                (_%g196313196359%_)))))
                      (let () (declare (not safe)) (_%g196313196359%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl196322196459%_))
                      (let ((_%__splice196804196805%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl196322196459%_
                                '0))))
                        (let ((_%tl196348196382%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196804196805%_ '1)))
                              (_%target196346196380%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196804196805%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196348196382%_))
                              (_%__match196863196864%_
                               _%e196317196446%_
                               _%hd196318196449%_
                               _%tl196319196451%_
                               _%e196320196454%_
                               _%hd196321196457%_
                               _%tl196322196459%_
                               _%__splice196804196805%_
                               _%target196346196380%_
                               _%tl196348196382%_)
                              (let ()
                                (declare (not safe))
                                (_%g196313196359%_)))))
                      (let () (declare (not safe)) (_%g196313196359%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl196322196459%_))
                                                      (let ((_%__splice196804196805%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl196322196459%_ '0))))
                (let ((_%tl196348196382%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice196804196805%_ '1)))
                      (_%target196346196380%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice196804196805%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl196348196382%_))
                      (_%__match196863196864%_
                       _%e196317196446%_
                       _%hd196318196449%_
                       _%tl196319196451%_
                       _%e196320196454%_
                       _%hd196321196457%_
                       _%tl196322196459%_
                       _%__splice196804196805%_
                       _%target196346196380%_
                       _%tl196348196382%_)
                      (let () (declare (not safe)) (_%g196313196359%_)))))
              (let () (declare (not safe)) (_%g196313196359%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl196322196459%_))
                                                  (let ((_%__splice196804196805%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl196322196459%_
                                                            '0))))
                                                    (let ((_%tl196348196382%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196804196805%_
                                                              '1)))
                                                          (_%target196346196380%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196804196805%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196348196382%_))
                                                          (_%__match196863196864%_
                                                           _%e196317196446%_
                                                           _%hd196318196449%_
                                                           _%tl196319196451%_
                                                           _%e196320196454%_
                                                           _%hd196321196457%_
                                                           _%tl196322196459%_
                                                           _%__splice196804196805%_
                                                           _%target196346196380%_
                                                           _%tl196348196382%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g196313196359%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g196313196359%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl196322196459%_))
                                              (let ((_%__splice196804196805%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl196322196459%_
                                                        '0))))
                                                (let ((_%tl196348196382%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice196804196805%_
                                                          '1)))
                                                      (_%target196346196380%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice196804196805%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196348196382%_))
                                                      (_%__match196863196864%_
                                                       _%e196317196446%_
                                                       _%hd196318196449%_
                                                       _%tl196319196451%_
                                                       _%e196320196454%_
                                                       _%hd196321196457%_
                                                       _%tl196322196459%_
                                                       _%__splice196804196805%_
                                                       _%target196346196380%_
                                                       _%tl196348196382%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g196313196359%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g196313196359%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196322196459%_))
                                      (let ((_%__splice196804196805%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196322196459%_
                                                '0))))
                                        (let ((_%tl196348196382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196804196805%_
                                                  '1)))
                                              (_%target196346196380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196804196805%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196348196382%_))
                                              (_%__match196863196864%_
                                               _%e196317196446%_
                                               _%hd196318196449%_
                                               _%tl196319196451%_
                                               _%e196320196454%_
                                               _%hd196321196457%_
                                               _%tl196322196459%_
                                               _%__splice196804196805%_
                                               _%target196346196380%_
                                               _%tl196348196382%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g196313196359%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g196313196359%_))))))
                          (let () (declare (not safe)) (_%g196313196359%_)))))
                  (let () (declare (not safe)) (_%g196313196359%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self192688196269%_ _%ctx196271%_ _%stx196272%_ _%args196273%_)
        (let* ((_%self196275%_ _%self192688196269%_)
               (_%self196277%_ _%self196275%_))
          (if (let ((__method197445
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self196277%_ 'check-arguments))))
                (if __method197445
                    (let ()
                      (declare (not safe))
                      (__method197445
                       _%self196277%_
                       _%ctx196271%_
                       _%stx196272%_
                       _%args196273%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self196277%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature196287%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196277%_ '2 '#f '#f)))
                     (_%signature196289%_ _%signature196287%_)
                     (_%$e196299%_
                      (if _%signature196289%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature196289%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e196299%_
                    ((lambda (_%unchecked196302%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked196302%_))
                           (let ((__tmp197467
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked196302%_
                                                          '()))
                                              (map (lambda (_%g196303196305%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx196271%_
                                                        _%g196303196305%_)))
                                                   _%args196273%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp197467
                              _%stx196272%_
                              _%ctx196271%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx196271%_ _%stx196272%_))))
                     _%$e196299%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx196271%_ _%stx196272%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx196271%_ _%stx196272%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass196729 __method-table196730)
        (let ((__check-arguments196731
               (let ((__tmp197468
                      (lambda ()
                        (let ((__method196732
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table196730
                                  'check-arguments
                                  '#f))))
                          (if __method196732
                              __method196732
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp197468))))
          (lambda (_%self192688196269%_
                   _%ctx196271%_
                   _%stx196272%_
                   _%args196273%_)
            (let* ((_%self196275%_ _%self192688196269%_)
                   (_%self196277%_ _%self196275%_))
              (if ((force __check-arguments196731)
                   _%self196277%_
                   _%ctx196271%_
                   _%stx196272%_
                   _%args196273%_)
                  (let* ((_%signature196287%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self196277%_
                             '2
                             '#f
                             '#f)))
                         (_%signature196289%_ _%signature196287%_)
                         (_%$e196299%_
                          (if _%signature196289%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature196289%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e196299%_
                        ((lambda (_%unchecked196302%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked196302%_))
                               (let ((__tmp197469
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked196302%_
                                                              '()))
                                                  (map (lambda (_%g196303196305%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx196271%_
                                                            _%g196303196305%_)))
                                                       _%args196273%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp197469
                                  _%stx196272%_
                                  _%ctx196271%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx196271%_
                                  _%stx196272%_))))
                         _%$e196299%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx196271%_ _%stx196272%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx196271%_ _%stx196272%_))))))))
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
      (lambda (_%self192689196018%_ _%ctx196020%_ _%stx196021%_ _%args196022%_)
        (let* ((_%self196024%_ _%self192689196018%_)
               (_%self196026%_ _%self196024%_)
               (_%signature196035196037%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196026%_ '2 '#f '#f))))
          (if _%signature196035196037%_
              (let* ((_%signature196040%_ _%signature196035196037%_)
                     (_%argument-types196041196043%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature196040%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types196041196043%_
                    (let* ((_%argument-types196046%_
                            _%argument-types196041196043%_)
                           (_%argument-types196051%_
                            (let ((__tmp197470
                                   (lambda (_%t196049%_)
                                     (if _%t196049%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196021%_
                                            _%t196049%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp197470
                               _%argument-types196046%_))))
                      (let _%loop196053%_ ((_%rest-args196055%_ _%args196022%_)
                                           (_%rest-types196056%_
                                            _%argument-types196051%_)
                                           (_%result196057%_ '#t))
                        (let* ((_%rest-args196058196066%_ _%rest-args196055%_)
                               (_%else196060196074%_
                                (lambda () _%result196057%_))
                               (_%K196062196135%_
                                (lambda (_%rest-args196077%_ _%arg196078%_)
                                  (let* ((_%rest-types196079196090%_
                                          _%rest-types196056%_)
                                         (_%E196083196094%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types196079196090%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K196086196123%_
                                           (lambda (_%rest-types196120%_
                                                    _%type196121%_)
                                             (_%loop196053%_
                                              _%rest-args196077%_
                                              _%rest-types196120%_
                                              (if (gxc#check-expression-type!
                                                   _%stx196021%_
                                                   _%arg196078%_
                                                   _%type196121%_)
                                                  _%result196057%_
                                                  '#f))))
                                          (_%K196085196114%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx196021%_
                                                _%argument-types196051%_))))
                                          (_%K196084196104%_
                                           (lambda (_%tail-type196098%_)
                                             (if (let ((__tmp197471
                                                        (lambda (_%g196099196101%_)
                                                          (gxc#check-expression-type!
                                                           _%stx196021%_
                                                           _%g196099196101%_
                                                           _%tail-type196098%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp197471
                                                    _%rest-args196077%_))
                                                 _%result196057%_
                                                 '#f))))
                                      (let ((_%try-match196081196117%_
                                             (lambda ()
                                               (if (null? _%rest-types196079196090%_)
                                                   (_%K196085196114%_)
                                                   (let ((_%tail-type196107%_
                                                          _%rest-types196079196090%_))
                                                     (_%K196084196104%_
                                                      _%tail-type196107%_))))))
                                        (if (pair? _%rest-types196079196090%_)
                                            (let ((_%tl196088196128%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types196079196090%_)))
                                                  (_%hd196087196126%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types196079196090%_))))
                                              (let ((_%type196131%_
                                                     _%hd196087196126%_)
                                                    (_%rest-types196133%_
                                                     _%tl196088196128%_))
                                                (_%K196086196123%_
                                                 _%rest-types196133%_
                                                 _%type196131%_)))
                                            (_%try-match196081196117%_))))))))
                          (if (pair? _%rest-args196058196066%_)
                              (let ((_%hd196063196138%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args196058196066%_)))
                                    (_%tl196064196140%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args196058196066%_))))
                                (let* ((_%arg196143%_ _%hd196063196138%_)
                                       (_%rest-args196145%_
                                        _%tl196064196140%_))
                                  (_%K196062196135%_
                                   _%rest-args196145%_
                                   _%arg196143%_)))
                              (_%else196060196074%_)))))
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
      (lambda (_%self192690195827%_ _%ctx195829%_ _%stx195830%_ _%args195831%_)
        (let* ((_%self195833%_ _%self192690195827%_)
               (_%self195835%_ _%self195833%_)
               (_%g195845195855%_
                (lambda (_%g195846195852%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195846195852%_))))
               (_%g195844195893%_
                (lambda (_%g195846195858%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195846195858%_))
                      (let ((_%e195848195860%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195846195858%_))))
                        (let ((_%hd195849195863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195848195860%_)))
                              (_%tl195850195865%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195848195860%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195850195865%_))
                              ((lambda (_%L195868%_)
                                 (let* ((_%klass195880%_
                                         (let ((__tmp197472
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195835%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195830%_
                                            __tmp197472)))
                                        (_%object195882%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195829%_
                                            _%L195868%_)))
                                        (_%instance?195887%_
                                         (let ((_%$e195884%_
                                                (gxc#expression-type?
                                                 _%object195882%_
                                                 _%klass195880%_)))
                                           (if _%$e195884%_
                                               _%$e195884%_
                                               (gxc#expression-type?
                                                _%L195868%_
                                                _%klass195880%_)))))
                                   (if _%instance?195887%_
                                       (let ((__tmp197473
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object195882%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L195868%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object195882%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197473
                                          _%stx195830%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx195829%_
                                          _%stx195830%_)))))
                               _%hd195849195863%_)
                              (_%g195845195855%_ _%g195846195858%_))))
                      (_%g195845195855%_ _%g195846195858%_)))))
          (_%g195844195893%_ _%args195831%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self192691195621%_ _%ctx195623%_ _%stx195624%_ _%args195625%_)
        (let* ((_%self195627%_ _%self192691195621%_)
               (_%self195629%_ _%self195627%_)
               (_%g195639195649%_
                (lambda (_%g195640195646%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195640195646%_))))
               (_%g195638195702%_
                (lambda (_%g195640195652%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195640195652%_))
                      (let ((_%e195642195654%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195640195652%_))))
                        (let ((_%hd195643195657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195642195654%_)))
                              (_%tl195644195659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195642195654%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195644195659%_))
                              ((lambda (_%L195662%_)
                                 (let* ((_%klass195674%_
                                         (let ((__tmp197474
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195629%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195624%_
                                            __tmp197474)))
                                        (_%object195676%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195623%_
                                            _%L195662%_)))
                                        (_%instance?195681%_
                                         (let ((_%$e195678%_
                                                (gxc#expression-type?
                                                 _%object195676%_
                                                 _%klass195674%_)))
                                           (if _%$e195678%_
                                               _%$e195678%_
                                               (gxc#expression-type?
                                                _%L195662%_
                                                _%klass195674%_))))
                                        (_%klass195684%_ _%klass195674%_))
                                   (if _%instance?195681%_
                                       (let ((__tmp197475
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object195676%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L195662%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object195676%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197475
                                          _%stx195624%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195684%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp197476
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass195684%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object195676%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197476
                                              _%stx195624%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195684%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp197477
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass195684%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object195676%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197477
                                                  _%stx195624%_))
                                               (let ((__tmp197478
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self195629%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object195676%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197478
                                                  _%stx195624%_)))))))
                               _%hd195643195657%_)
                              (_%g195639195649%_ _%g195640195652%_))))
                      (_%g195639195649%_ _%g195640195652%_)))))
          (_%g195638195702%_ _%args195625%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx195284%_)
        (let* ((_%__stx196873196874%_ _%stx195284%_)
               (_%g195289195330%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx196873196874%_)))))
          (let ((_%__kont196875196876%_ (lambda () '#t))
                (_%__kont196877196878%_ (lambda () '#t))
                (_%__kont196879196880%_
                 (lambda (_%L195398%_ _%L195399%_)
                   (let ((_%rator-type195420195422%_
                          (let ((__tmp197479
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L195399%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp197479))))
                     (if _%rator-type195420195422%_
                         (let* ((_%rator-type195425%_
                                 _%rator-type195420195422%_)
                                (_%rator-signature195426195428%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type195425%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type195425%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature195426195428%_
                               (let* ((_%rator-signature195431%_
                                       _%rator-signature195426195428%_)
                                      (_%rator-effect195432195434%_
                                       (if _%rator-signature195431%_
                                           (##direct-structure-ref
                                            _%rator-signature195431%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect195432195434%_
                                     (let ((_%rator-effect195437%_
                                            _%rator-effect195432195434%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect195437%_)
                                               (equal? '(alloc)
                                                       _%rator-effect195437%_))
                                           (let ((__tmp197480
                                                  (let ((__tmp197481
                                                         (lambda (_%g195442195445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g195443195447%_)
                   (cons _%g195442195445%_ _%g195443195447%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp197481
                                                     '()
                                                     _%L195398%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp197480))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont196883196884%_ (lambda () '#f)))
            (let ((_%__match196962196963%_
                   (lambda (_%e195305195342%_
                            _%hd195306195345%_
                            _%tl195307195347%_
                            _%e195308195350%_
                            _%hd195309195353%_
                            _%tl195310195355%_
                            _%e195311195358%_
                            _%hd195312195361%_
                            _%tl195313195363%_
                            _%e195314195366%_
                            _%hd195315195369%_
                            _%tl195316195371%_
                            _%__splice196881196882%_
                            _%target195317195374%_
                            _%tl195319195376%_)
                     (letrec ((_%loop195320195379%_
                               (lambda (_%hd195318195382%_
                                        _%rand195324195384%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd195318195382%_))
                                     (let ((_%e195321195387%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd195318195382%_))))
                                       (let ((_%lp-tl195323195392%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e195321195387%_)))
                                             (_%lp-hd195322195390%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e195321195387%_))))
                                         (_%loop195320195379%_
                                          _%lp-tl195323195392%_
                                          (cons _%lp-hd195322195390%_
                                                _%rand195324195384%_))))
                                     (let ((_%rand195325195395%_
                                            (reverse _%rand195324195384%_)))
                                       (_%__kont196879196880%_
                                        _%rand195325195395%_
                                        _%hd195315195369%_))))))
                       (_%loop195320195379%_ _%target195317195374%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx196873196874%_))
                  (let ((_%e195291195478%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx196873196874%_))))
                    (let ((_%tl195293195483%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195291195478%_)))
                          (_%hd195292195481%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195291195478%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd195292195481%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd195292195481%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195293195483%_))
                                  (let ((_%e195294195486%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl195293195483%_))))
                                    (let ((_%tl195296195491%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195294195486%_)))
                                          (_%hd195295195489%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195294195486%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl195296195491%_))
                                          (_%__kont196875196876%_)
                                          (_%__kont196883196884%_))))
                                  (_%__kont196883196884%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd195292195481%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195293195483%_))
                                      (let ((_%e195300195463%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195293195483%_))))
                                        (let ((_%tl195302195468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195300195463%_)))
                                              (_%hd195301195466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195300195463%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195302195468%_))
                                              (_%__kont196877196878%_)
                                              (_%__kont196883196884%_))))
                                      (_%__kont196883196884%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd195292195481%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl195293195483%_))
                                          (let ((_%e195308195350%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl195293195483%_))))
                                            (let ((_%tl195310195355%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e195308195350%_)))
                                                  (_%hd195309195353%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e195308195350%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd195309195353%_))
                                                  (let ((_%e195311195358%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd195309195353%_))))
                                                    (let ((_%tl195313195363%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195311195358%_)))
                                                          (_%hd195312195361%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195311195358%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd195312195361%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd195312195361%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195313195363%_))
                          (let ((_%e195314195366%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl195313195363%_))))
                            (let ((_%tl195316195371%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195314195366%_)))
                                  (_%hd195315195369%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195314195366%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl195316195371%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl195310195355%_))
                                      (let ((_%__splice196881196882%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl195310195355%_
                                                '0))))
                                        (let ((_%tl195319195376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196881196882%_
                                                  '1)))
                                              (_%target195317195374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196881196882%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195319195376%_))
                                              (_%__match196962196963%_
                                               _%e195291195478%_
                                               _%hd195292195481%_
                                               _%tl195293195483%_
                                               _%e195308195350%_
                                               _%hd195309195353%_
                                               _%tl195310195355%_
                                               _%e195311195358%_
                                               _%hd195312195361%_
                                               _%tl195313195363%_
                                               _%e195314195366%_
                                               _%hd195315195369%_
                                               _%tl195316195371%_
                                               _%__splice196881196882%_
                                               _%target195317195374%_
                                               _%tl195319195376%_)
                                              (_%__kont196883196884%_))))
                                      (_%__kont196883196884%_))
                                  (_%__kont196883196884%_))))
                          (_%__kont196883196884%_))
                      (_%__kont196883196884%_))
                  (_%__kont196883196884%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont196883196884%_))))
                                          (_%__kont196883196884%_))
                                      (_%__kont196883196884%_))))
                          (_%__kont196883196884%_))))
                  (_%__kont196883196884%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx195279%_ _%klass195280%_)
        (let ((_%expr-type195282%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx195279%_))))
          (if _%expr-type195282%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type195282%_ _%klass195280%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx195257%_ _%expr195258%_ _%type195259%_)
        (if (not _%type195259%_)
            '#f
            (let ((_%$e195262%_
                   (eq? (##structure-ref _%type195259%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e195262%_
                  _%$e195262%_
                  (let ((_%expr-type195266%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr195258%_))))
                    (if (not _%expr-type195266%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type195266%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e195270%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type195266%_
                                      'gxc#!abort::t))))
                              (if _%$e195270%_
                                  _%$e195270%_
                                  (let ((_%$e195273%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type195266%_
                                            _%type195259%_))))
                                    (if _%$e195273%_
                                        _%$e195273%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type195259%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type195259%_
                                                   _%expr-type195266%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx195257%_
                                                   _%expr195258%_
                                                   _%expr-type195266%_
                                                   _%type195259%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self192692195069%_ _%ctx195071%_ _%stx195072%_ _%args195073%_)
        (let* ((_%self195075%_ _%self192692195069%_)
               (_%self195077%_ _%self195075%_)
               (_%klass195087%_
                (let ((__tmp197482
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self195077%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx195072%_ __tmp197482)))
               (_%fields195089%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass195087%_
                           '5
                           '#f
                           '#f))))
               (_%args195095%_
                (map (lambda (_%g195090195092%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx195071%_ _%g195090195092%_)))
                     _%args195073%_))
               (_%inline-make-object195097%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self195077%_
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
                           _%self195077%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields195089%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass195100%_ _%klass195087%_)
               (_%$e195114%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass195100%_ '6 '#f '#f))))
          (if _%$e195114%_
              ((lambda (_%ctor195117%_)
                 (let ((_%$obj195119%_
                        (let ((__tmp197483
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp197483)))
                       (_%ctor-impl195120%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass195100%_
                           _%ctor195117%_))))
                   (let ((__tmp197484
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj195119%_ '())
                                                  (cons _%inline-make-object195097%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl195120%_
                                                            (let ((__tmp197485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl195120%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj195119%_ '()))
                                             _%args195095%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp197485
                       _%stx195072%_
                       _%ctx195071%_))
                    (let ((_%$ctor195122%_
                           (let ((__tmp197486
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp197486))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor195122%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195077%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj195119%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor195117%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor195122%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor195122%_ '()))
                              (cons (cons '%#ref (cons _%$obj195119%_ '()))
                                    _%args195095%_)))
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
                             _%self195077%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor195117%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj195119%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp197484 _%stx195072%_))))
               _%$e195114%_)
              (let ((_%$e195124%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass195100%_
                        '10
                        '#f
                        '#f))))
                (if _%$e195124%_
                    ((lambda (_%metaclass195127%_)
                       (let* ((_%$obj195129%_
                               (let ((__tmp197487
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp197487)))
                              (_%metakons195131%_
                               (let ((__tmp197488
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx195072%_
                                         _%metaclass195127%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp197488
                                  'instance-init!)))
                              (__tmp197489
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj195129%_
                                                             '())
                                                       (cons _%inline-make-object195097%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons195131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp197490
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons195131%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self195077%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj195129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args195095%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp197490
                            _%stx195072%_
                            _%ctx195071%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self195077%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj195129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args195095%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj195129%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp197489 _%stx195072%_)))
                     _%$e195124%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass195100%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp197491
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args195095%_))))
                              (declare (not safe))
                              (##fx= __tmp197491 _%fields195089%_))
                            (let ((__tmp197492
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self195077%_
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
                                              _%self195077%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args195095%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp197492
                               _%stx195072%_))
                            (let ((__tmp197494
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self195077%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp197493
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195100%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx195072%_
                               __tmp197494
                               __tmp197493)))
                        (let ((_%$obj195136%_
                               (let ((__tmp197495
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp197495))))
                          (let _%lp195138%_ ((_%rest195140%_ _%args195095%_)
                                             (_%initializers195141%_ '()))
                            (let* ((_%__stx196965196966%_ _%rest195140%_)
                                   (_%g195145195166%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx196965196966%_)))))
                              (let ((_%__kont196967196968%_
                                     (lambda (_%L195220%_
                                              _%L195221%_
                                              _%L195222%_)
                                       (let* ((_%slot195249%_
                                               (let ((__tmp197496
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L195222%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp197496)))
                                              (_%off195251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass195100%_
                                                  _%slot195249%_))))
                                         (if _%off195251%_
                                             (_%lp195138%_
                                              _%L195220%_
                                              (cons (cons _%off195251%_
                                                          _%L195221%_)
                                                    _%initializers195141%_))
                                             (let ((__tmp197497
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195077%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx195072%_
                                                __tmp197497
                                                _%slot195249%_))))))
                                    (_%__kont196969196970%_
                                     (lambda ()
                                       (let ((__tmp197498
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj195136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object195097%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp197501
                                     (cons (cons '%#ref
                                                 (cons _%$obj195136%_ '()))
                                           '()))
                                    (__tmp197499
                                     (let ((__tmp197500
                                            (lambda (_%i195180%_ _%r195181%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self195077%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i195180%_) '()))
                              (cons (cons '%#ref (cons _%$obj195136%_ '()))
                                    (cons (cdr _%i195180%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r195181%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp197500
                                        '()
                                        _%initializers195141%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp197501 __tmp197499)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197498
                                          _%stx195072%_))))
                                    (_%__kont196971196972%_
                                     (lambda ()
                                       (let ((__tmp197502
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj195136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object195097%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj195136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args195095%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj195136%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197502
                                          _%stx195072%_)))))
                                (let* ((_%g195143195183%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx196965196966%_))
                                              (_%__kont196969196970%_)
                                              (_%__kont196971196972%_))))
                                       (_%__match197002197003%_
                                        (lambda (_%e195150195188%_
                                                 _%hd195151195191%_
                                                 _%tl195152195193%_
                                                 _%e195153195196%_
                                                 _%hd195154195199%_
                                                 _%tl195155195201%_
                                                 _%e195156195204%_
                                                 _%hd195157195207%_
                                                 _%tl195158195209%_
                                                 _%e195159195212%_
                                                 _%hd195160195215%_
                                                 _%tl195161195217%_)
                                          (let ((_%L195220%_
                                                 _%tl195161195217%_)
                                                (_%L195221%_
                                                 _%hd195160195215%_)
                                                (_%L195222%_
                                                 _%hd195157195207%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L195222%_))
                                                (_%__kont196967196968%_
                                                 _%L195220%_
                                                 _%L195221%_
                                                 _%L195222%_)
                                                (_%__kont196971196972%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx196965196966%_))
                                      (let ((_%e195150195188%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx196965196966%_))))
                                        (let ((_%tl195152195193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195150195188%_)))
                                              (_%hd195151195191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195150195188%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd195151195191%_))
                                              (let ((_%e195153195196%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd195151195191%_))))
                                                (let ((_%tl195155195201%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195153195196%_)))
                                                      (_%hd195154195199%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195153195196%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd195154195199%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd195154195199%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl195155195201%_))
                      (let ((_%e195156195204%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl195155195201%_))))
                        (let ((_%tl195158195209%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195156195204%_)))
                              (_%hd195157195207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195156195204%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195158195209%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195152195193%_))
                                  (let ((_%e195159195212%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl195152195193%_))))
                                    (let ((_%tl195161195217%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195159195212%_)))
                                          (_%hd195160195215%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195159195212%_))))
                                      (_%__match197002197003%_
                                       _%e195150195188%_
                                       _%hd195151195191%_
                                       _%tl195152195193%_
                                       _%e195153195196%_
                                       _%hd195154195199%_
                                       _%tl195155195201%_
                                       _%e195156195204%_
                                       _%hd195157195207%_
                                       _%tl195158195209%_
                                       _%e195159195212%_
                                       _%hd195160195215%_
                                       _%tl195161195217%_)))
                                  (_%__kont196971196972%_))
                              (_%__kont196971196972%_))))
                      (_%__kont196971196972%_))
                  (_%__kont196971196972%_))
              (_%__kont196971196972%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont196971196972%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g195143195183%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self192693194850%_ _%ctx194852%_ _%stx194853%_ _%args194854%_)
        (let* ((_%self194856%_ _%self192693194850%_)
               (_%self194858%_ _%self194856%_)
               (_%arguments-ok?194868%_
                (let ((__method197446
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self194858%_ 'check-arguments))))
                  (if __method197446
                      (let ()
                        (declare (not safe))
                        (__method197446
                         _%self194858%_
                         _%ctx194852%_
                         _%stx194853%_
                         _%args194854%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self194858%_
                                 'check-arguments))
                        '#!void))))
               (_%g194870194880%_
                (lambda (_%g194871194877%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194871194877%_))))
               (_%g194869194944%_
                (lambda (_%g194871194883%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194871194883%_))
                      (let ((_%e194873194885%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194871194883%_))))
                        (let ((_%hd194874194888%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194873194885%_)))
                              (_%tl194875194890%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194873194885%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194875194890%_))
                              ((lambda (_%L194893%_)
                                 (let* ((_%klass194906%_
                                         (let ((__tmp197503
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194858%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx194853%_
                                            __tmp197503)))
                                        (_%field194908%_
                                         (let ((__tmp197504
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194858%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass194906%_
                                            __tmp197504)))
                                        (_%object194910%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx194852%_
                                            _%L194893%_)))
                                        (_%klass194913%_ _%klass194906%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass194913%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp197505
                                              (cons (if (or _%arguments-ok?194868%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self194858%_
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
                                 _%self194858%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field194908%_ '()))
                        (cons _%object194910%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197505
                                          _%stx194853%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass194913%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp197506
                                                  (cons (if (or _%arguments-ok?194868%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self194858%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194858%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field194908%_ '()))
                            (cons _%object194910%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197506
                                              _%stx194853%_))
                                           (let ((_%$e194932%_
                                                  (let ((__tmp197507
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self194858%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass194913%_
                                                     __tmp197507))))
                                             (if _%$e194932%_
                                                 ((lambda (_%klass194935%_)
                                                    (let ((__tmp197508
                                                           (cons (if (or _%arguments-ok?194868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194858%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self194858%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field194908%_ '()))
                                     (cons _%object194910%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp197508 _%stx194853%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e194932%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self194858%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp197509
                                                            (let ((_%$obj194941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp197510
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp197510))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj194941%_ '())
                                              (cons _%object194910%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass194913%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj194941%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194858%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field194908%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj194941%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?194868%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj194941%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self194858%_
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
                                                             _%self194858%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj194941%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self194858%_
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
               (gxc#xform-wrap-source __tmp197509 _%stx194853%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp197511
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object194910%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self194858%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp197511 _%stx194853%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd194874194888%_)
                              (_%g194870194880%_ _%g194871194883%_))))
                      (_%g194870194880%_ _%g194871194883%_)))))
          (_%g194869194944%_ _%args194854%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass196733 __method-table196734)
        (let ((__check-arguments196735
               (let ((__tmp197512
                      (lambda ()
                        (let ((__method196736
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table196734
                                  'check-arguments
                                  '#f))))
                          (if __method196736
                              __method196736
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp197512)))
              (__slot196737
               (let ((__slot196738
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass196733 'slot))))
                 (if __slot196738
                     __slot196738
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self192693194850%_
                   _%ctx194852%_
                   _%stx194853%_
                   _%args194854%_)
            (let* ((_%self194856%_ _%self192693194850%_)
                   (_%self194858%_ _%self194856%_)
                   (_%arguments-ok?194868%_
                    ((force __check-arguments196735)
                     _%self194858%_
                     _%ctx194852%_
                     _%stx194853%_
                     _%args194854%_))
                   (_%g194870194880%_
                    (lambda (_%g194871194877%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g194871194877%_))))
                   (_%g194869194944%_
                    (lambda (_%g194871194883%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g194871194883%_))
                          (let ((_%e194873194885%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g194871194883%_))))
                            (let ((_%hd194874194888%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194873194885%_)))
                                  (_%tl194875194890%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194873194885%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl194875194890%_))
                                  ((lambda (_%L194893%_)
                                     (let* ((_%klass194906%_
                                             (let ((__tmp197513
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self194858%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx194853%_
                                                __tmp197513)))
                                            (_%field194908%_
                                             (let ((__tmp197514
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self194858%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass194906%_
                                                __tmp197514)))
                                            (_%object194910%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx194852%_
                                                _%L194893%_)))
                                            (_%klass194913%_ _%klass194906%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass194913%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp197515
                                                  (cons (if (or _%arguments-ok?194868%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self194858%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194858%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field194908%_ '()))
                            (cons _%object194910%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197515
                                              _%stx194853%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass194913%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp197516
                                                      (cons (if (or _%arguments-ok?194868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self194858%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194858%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field194908%_ '()))
                                (cons _%object194910%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197516
                                                  _%stx194853%_))
                                               (let ((_%$e194932%_
                                                      (let ((__tmp197517
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self194858%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass194913%_ __tmp197517))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e194932%_
                                                     ((lambda (_%klass194935%_)
                                                        (let ((__tmp197518
                                                               (cons (if (or _%arguments-ok?194868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194858%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self194858%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field194908%_ '()))
                                         (cons _%object194910%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp197518 _%stx194853%_)))
              _%$e194932%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self194858%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp197519
                                                                (let ((_%$obj194941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp197520
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp197520))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj194941%_ '())
                                                  (cons _%object194910%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass194913%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj194941%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self194858%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field194908%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj194941%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?194868%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj194941%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self194858%_
                               __slot196737
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
                        (##unchecked-structure-ref _%self194858%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj194941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194858%_
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
                   (gxc#xform-wrap-source __tmp197519 _%stx194853%_))
                 (let ((__tmp197521
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object194910%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self194858%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp197521 _%stx194853%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd194874194888%_)
                                  (_%g194870194880%_ _%g194871194883%_))))
                          (_%g194870194880%_ _%g194871194883%_)))))
              (_%g194869194944%_ _%args194854%_))))))
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
      (lambda (_%self192694194612%_ _%ctx194614%_ _%stx194615%_ _%args194616%_)
        (let* ((_%self194618%_ _%self192694194612%_)
               (_%self194620%_ _%self194618%_)
               (_%arguments-ok?194630%_
                (let ((__method197447
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self194620%_ 'check-arguments))))
                  (if __method197447
                      (let ()
                        (declare (not safe))
                        (__method197447
                         _%self194620%_
                         _%ctx194614%_
                         _%stx194615%_
                         _%args194616%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self194620%_
                                 'check-arguments))
                        '#!void))))
               (_%g194632194646%_
                (lambda (_%g194633194643%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194633194643%_))))
               (_%g194631194725%_
                (lambda (_%g194633194649%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194633194649%_))
                      (let ((_%e194636194651%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194633194649%_))))
                        (let ((_%hd194637194654%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194636194651%_)))
                              (_%tl194638194656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194636194651%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194638194656%_))
                              (let ((_%e194639194659%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194638194656%_))))
                                (let ((_%hd194640194662%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194639194659%_)))
                                      (_%tl194641194664%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194639194659%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl194641194664%_))
                                      ((lambda (_%L194667%_ _%L194668%_)
                                         (let* ((_%klass194684%_
                                                 (let ((__tmp197522
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self194620%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx194615%_
                                                    __tmp197522)))
                                                (_%field194686%_
                                                 (let ((__tmp197523
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self194620%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass194684%_
                                                    __tmp197523)))
                                                (_%object194688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx194614%_
                                                    _%L194668%_)))
                                                (_%value194690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx194614%_
                                                    _%L194667%_)))
                                                (_%klass194693%_
                                                 _%klass194684%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass194693%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp197524
                                                      (cons (if (or _%arguments-ok?194630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self194620%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194620%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field194686%_ '()))
                                (cons _%object194688%_
                                      (cons _%value194690%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197524
                                                  _%stx194615%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass194693%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp197525
                                                          (cons (if (or _%arguments-ok?194630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self194620%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194620%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field194686%_ '()))
                                    (cons _%object194688%_
                                          (cons _%value194690%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp197525
                                                      _%stx194615%_))
                                                   (let ((_%$e194713%_
                                                          (let ((__tmp197526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self194620%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass194693%_
                     __tmp197526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e194713%_
                                                         ((lambda (_%klass194716%_)
                                                            (let ((__tmp197527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?194630%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self194620%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self194620%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field194686%_ '()))
                                             (cons _%object194688%_
                                                   (cons _%value194690%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp197527 _%stx194615%_)))
                  _%$e194713%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self194620%_ '4 '#f '#f))
                     (let ((__tmp197528
                            (let ((_%$obj194722%_
                                   (let ((__tmp197529
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp197529))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj194722%_ '())
                                                      (cons _%object194688%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass194693%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj194722%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self194620%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field194686%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj194722%_
                                                              '()))
                                                  (cons _%value194690%_
                                                        '())))))
                          (cons (if _%arguments-ok?194630%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj194722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self194620%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value194690%_ '())))))
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
                             _%self194620%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj194722%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194620%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value194690%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp197528 _%stx194615%_))
                     (let ((__tmp197530
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object194688%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self194620%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value194690%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp197530
                        _%stx194615%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd194640194662%_
                                       _%hd194637194654%_)
                                      (_%g194632194646%_ _%g194633194649%_))))
                              (_%g194632194646%_ _%g194633194649%_))))
                      (_%g194632194646%_ _%g194633194649%_)))))
          (_%g194631194725%_ _%args194616%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass196739 __method-table196740)
        (let ((__check-arguments196741
               (let ((__tmp197531
                      (lambda ()
                        (let ((__method196742
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table196740
                                  'check-arguments
                                  '#f))))
                          (if __method196742
                              __method196742
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp197531))))
          (lambda (_%self192694194612%_
                   _%ctx194614%_
                   _%stx194615%_
                   _%args194616%_)
            (let* ((_%self194618%_ _%self192694194612%_)
                   (_%self194620%_ _%self194618%_)
                   (_%arguments-ok?194630%_
                    ((force __check-arguments196741)
                     _%self194620%_
                     _%ctx194614%_
                     _%stx194615%_
                     _%args194616%_))
                   (_%g194632194646%_
                    (lambda (_%g194633194643%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g194633194643%_))))
                   (_%g194631194725%_
                    (lambda (_%g194633194649%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g194633194649%_))
                          (let ((_%e194636194651%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g194633194649%_))))
                            (let ((_%hd194637194654%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194636194651%_)))
                                  (_%tl194638194656%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194636194651%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl194638194656%_))
                                  (let ((_%e194639194659%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl194638194656%_))))
                                    (let ((_%hd194640194662%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194639194659%_)))
                                          (_%tl194641194664%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194639194659%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl194641194664%_))
                                          ((lambda (_%L194667%_ _%L194668%_)
                                             (let* ((_%klass194684%_
                                                     (let ((__tmp197532
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self194620%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx194615%_
                                                        __tmp197532)))
                                                    (_%field194686%_
                                                     (let ((__tmp197533
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self194620%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass194684%_
                                                        __tmp197533)))
                                                    (_%object194688%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx194614%_
                                                        _%L194668%_)))
                                                    (_%value194690%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx194614%_
                                                        _%L194667%_)))
                                                    (_%klass194693%_
                                                     _%klass194684%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass194693%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp197534
                                                          (cons (if (or _%arguments-ok?194630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self194620%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194620%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field194686%_ '()))
                                    (cons _%object194688%_
                                          (cons _%value194690%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp197534
                                                      _%stx194615%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass194693%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp197535
                                                              (cons (if (or _%arguments-ok?194630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self194620%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self194620%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field194686%_ '()))
                                        (cons _%object194688%_
                                              (cons _%value194690%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp197535 _%stx194615%_))
               (let ((_%$e194713%_
                      (let ((__tmp197536
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self194620%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass194693%_
                         __tmp197536))))
                 (if _%$e194713%_
                     ((lambda (_%klass194716%_)
                        (let ((__tmp197537
                               (cons (if (or _%arguments-ok?194630%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self194620%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self194620%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field194686%_
                                                             '()))
                                                 (cons _%object194688%_
                                                       (cons _%value194690%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp197537 _%stx194615%_)))
                      _%$e194713%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self194620%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp197538
                                (let ((_%$obj194722%_
                                       (let ((__tmp197539
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp197539))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj194722%_
                                                                '())
                                                          (cons _%object194688%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass194693%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj194722%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self194620%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field194686%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj194722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value194690%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?194630%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj194722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self194620%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value194690%_ '())))))
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
                                 _%self194620%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj194722%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194620%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value194690%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp197538 _%stx194615%_))
                         (let ((__tmp197540
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object194688%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self194620%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value194690%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp197540
                            _%stx194615%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd194640194662%_
                                           _%hd194637194654%_)
                                          (_%g194632194646%_
                                           _%g194633194649%_))))
                                  (_%g194632194646%_ _%g194633194649%_))))
                          (_%g194632194646%_ _%g194633194649%_)))))
              (_%g194631194725%_ _%args194616%_))))))
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
      (lambda (_%self192695194425%_ _%ctx194427%_ _%stx194428%_ _%args194429%_)
        (let* ((_%self194431%_ _%self192695194425%_)
               (_%self194433%_ _%self194431%_)
               (_%self194442194452%_ _%self194433%_)
               (_%E194444194456%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self194442194452%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K194445194466%_
                (lambda (_%inline194459%_ _%dispatch194460%_ _%arity194461%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self194433%_
                         _%args194429%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx194428%_
                         _%arity194461%_)))
                  (if _%inline194459%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp197541 (_%inline194459%_ _%stx194428%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp197541
                           _%stx194428%_
                           _%ctx194427%_)))
                      (if (and _%dispatch194460%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch194460%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch194460%_))
                            (let ((__tmp197542
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch194460%_
                                                           '()))
                                               _%args194429%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp197542
                               _%stx194428%_
                               _%ctx194427%_)))
                          (gxc#!procedure::optimize-call
                           _%self194433%_
                           _%ctx194427%_
                           _%stx194428%_
                           _%args194429%_)))))
               (_%e194446194469%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194442194452%_ '1 '#f '#f)))
               (_%e194447194472%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194442194452%_ '2 '#f '#f)))
               (_%e194448194475%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194442194452%_ '3 '#f '#f)))
               (_%arity194478%_ _%e194448194475%_)
               (_%e194449194480%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194442194452%_ '4 '#f '#f)))
               (_%dispatch194483%_ _%e194449194480%_)
               (_%e194450194485%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194442194452%_ '5 '#f '#f)))
               (_%inline194488%_ _%e194450194485%_))
          (_%K194445194466%_
           _%inline194488%_
           _%dispatch194483%_
           _%arity194478%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self192696194275%_ _%ctx194277%_ _%stx194278%_ _%args194279%_)
        (let* ((_%self194281%_ _%self192696194275%_)
               (_%self194283%_ _%self194281%_)
               (_%$e194297%_
                (let ((__tmp197544
                       (lambda (_%g194292194294%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g194292194294%_
                            _%args194279%_))))
                      (__tmp197543
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self194283%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp197544 __tmp197543))))
          (if _%$e194297%_
              ((lambda (_%clause194300%_)
                 (let ((__method197448
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause194300%_ 'optimize-call))))
                   (if __method197448
                       (let ()
                         (declare (not safe))
                         (__method197448
                          _%clause194300%_
                          _%ctx194277%_
                          _%stx194278%_
                          _%args194279%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause194300%_
                                  'optimize-call))
                         '#!void))))
               _%$e194297%_)
              (let ((__tmp197545
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self194283%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx194278%_
                 __tmp197545))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self192697194013%_ _%ctx194015%_ _%stx194016%_ _%args194017%_)
        (let* ((_%self194019%_ _%self192697194013%_)
               (_%self194021%_ _%self194019%_)
               (_%self194030194039%_ _%self194021%_)
               (_%E194032194043%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self194030194039%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K194033194134%_
                (lambda (_%dispatch194046%_ _%table194047%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch194046%_))
                      (let* ((_%g194048194058%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch194046%_)))
                             (_%else194050194066%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch194046%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx194015%_
                                   _%stx194016%_))))
                             (_%K194052194115%_
                              (lambda (_%main194069%_ _%keys194070%_)
                                (let ((_g197546_
                                       (gxc#!kw-lambda-split-args
                                        _%stx194016%_
                                        _%args194017%_)))
                                  (begin
                                    (let ((_g197547_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g197546_)
                                                 (##values-length _g197546_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g197547_ 2)))
                                          (error "Context expects 2 values"
                                                 _g197547_)))
                                    (let ((_%pargs194072%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g197546_ 0)))
                                          (_%kwargs194073%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g197546_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main194069%_))
                                        (if _%table194047%_
                                            (let ((_%xargs194081%_
                                                   (map (lambda (_%key194075%_)
                                                          (let ((_%$e194077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key194075%_ _%kwargs194073%_))))
                    (if _%$e194077%_ _%$e194077%_ '(%#ref absent-value))))
                _%keys194070%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw194083%_)
                                                 (if (memq (car _%kw194083%_)
                                                           _%keys194070%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx194016%_
                                                        _%keys194070%_
                                                        _%kw194083%_))))
                                               _%kwargs194073%_)
                                              (let ((__tmp197548
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main194069%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs194072%_
                                  _%xargs194081%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp197548
                                                 _%stx194016%_
                                                 _%ctx194015%_)))
                                            (let* ((_%kwt194085%_
                                                    (let ((__tmp197549
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp197549)))
                                                   (_%kwvars194089%_
                                                    (map (lambda (_%_194087%_)
                                                           (let ((__tmp197550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp197550)))
                 _%kwargs194073%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind194094%_
                                                    (map (lambda (_%kw194091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar194092%_)
                   (cons (cons _%kwvar194092%_ '())
                         (cons (cdr _%kw194091%_) '())))
                 _%kwargs194073%_
                 _%kwvars194089%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset194099%_
                                                    (map (lambda (_%kw194096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar194097%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt194085%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw194096%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar194097%_
                                                             '()))
                                                 '()))))))
                 _%kwargs194073%_
                 _%kwvars194089%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs194104%_
                                                    (map (lambda (_%kw194101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar194102%_)
                   (cons (car _%kw194101%_)
                         (cons '%#ref (cons _%kwvar194102%_ '()))))
                 _%kwargs194073%_
                 _%kwvars194089%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs194112%_
                                                    (map (lambda (_%key194106%_)
                                                           (let ((_%$e194108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key194106%_ _%xkwargs194104%_))))
                     (if _%$e194108%_ _%$e194108%_ '(%#ref absent-value))))
                 _%keys194070%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp197551
                                                    (cons '%#let-values
                                                          (cons _%kwbind194094%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt194085%_ '())
                                                      (cons (let ((__tmp197552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs194073%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp197552 _%stx194016%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp197553
                                                             (cons (let ((__tmp197554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main194069%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt194085%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs194072%_
                                                       _%xargs194112%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp197554 _%stx194016%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp197553 _%kwset194099%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp197551
                                               _%stx194016%_
                                               _%ctx194015%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g194048194058%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e194053194118%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194048194058%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e194054194121%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194048194058%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e194055194124%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194048194058%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys194127%_ _%e194055194124%_)
                                   (_%e194056194129%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194048194058%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main194132%_ _%e194056194129%_))
                              (_%K194052194115%_
                               _%main194132%_
                               _%keys194127%_))
                            (_%else194050194066%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx194015%_ _%stx194016%_)))))
               (_%e194034194137%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194030194039%_ '1 '#f '#f)))
               (_%e194035194140%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194030194039%_ '2 '#f '#f)))
               (_%e194036194143%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194030194039%_ '3 '#f '#f)))
               (_%table194146%_ _%e194036194143%_)
               (_%e194037194148%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194030194039%_ '4 '#f '#f)))
               (_%dispatch194151%_ _%e194037194148%_))
          (_%K194033194134%_ _%dispatch194151%_ _%table194146%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx193626%_ _%args193627%_)
        (let _%lp193629%_ ((_%rest193631%_ _%args193627%_)
                           (_%pargs193632%_ '())
                           (_%kwargs193633%_ '()))
          (let* ((_%__stx197007197008%_ _%rest193631%_)
                 (_%g193639193691%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx197007197008%_)))))
            (let ((_%__kont197009197010%_
                   (lambda (_%L193870%_ _%L193871%_)
                     (_%lp193629%_
                      _%L193870%_
                      (cons _%L193871%_ _%pargs193632%_)
                      _%kwargs193633%_)))
                  (_%__kont197011197012%_
                   (lambda (_%L193816%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L193816%_ _%pargs193632%_))
                             (reverse _%kwargs193633%_))))
                  (_%__kont197013197014%_
                   (lambda (_%L193763%_ _%L193764%_ _%L193765%_)
                     (let ((_%kw193782%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L193765%_))))
                       (if (assq _%kw193782%_ _%kwargs193633%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx193626%_
                              _%kw193782%_))
                           (_%lp193629%_
                            _%L193763%_
                            _%pargs193632%_
                            (cons (cons _%kw193782%_ _%L193764%_)
                                  _%kwargs193633%_))))))
                  (_%__kont197015197016%_
                   (lambda (_%L193711%_ _%L193712%_)
                     (_%lp193629%_
                      _%L193711%_
                      (cons _%L193712%_ _%pargs193632%_)
                      _%kwargs193633%_)))
                  (_%__kont197017197018%_
                   (lambda ()
                     (values (reverse _%pargs193632%_)
                             (reverse _%kwargs193633%_)))))
              (let ((_%__match197114197115%_
                     (lambda (_%e193670193731%_
                              _%hd193671193734%_
                              _%tl193672193736%_
                              _%e193673193739%_
                              _%hd193674193742%_
                              _%tl193675193744%_
                              _%e193676193747%_
                              _%hd193677193750%_
                              _%tl193678193752%_
                              _%e193679193755%_
                              _%hd193680193758%_
                              _%tl193681193760%_)
                       (let ((_%L193763%_ _%tl193681193760%_)
                             (_%L193764%_ _%hd193680193758%_)
                             (_%L193765%_ _%hd193677193750%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L193765%_))
                             (_%__kont197013197014%_
                              _%L193763%_
                              _%L193764%_
                              _%L193765%_)
                             (_%__kont197015197016%_
                              _%tl193672193736%_
                              _%hd193671193734%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx197007197008%_))
                    (let ((_%e193643193835%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx197007197008%_))))
                      (let ((_%tl193645193840%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193643193835%_)))
                            (_%hd193644193838%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193643193835%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd193644193838%_))
                            (let ((_%e193646193843%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd193644193838%_))))
                              (let ((_%tl193648193848%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193646193843%_)))
                                    (_%hd193647193846%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193646193843%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd193647193846%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd193647193846%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193648193848%_))
                                            (let ((_%e193649193851%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193648193848%_))))
                                              (let ((_%tl193651193856%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193649193851%_)))
                                                    (_%hd193650193854%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193649193851%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd193650193854%_))
                                                    (let ((_%e193652193859%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd193650193854%_))))
                                                      (if (equal? _%e193652193859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193651193856%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193645193840%_))
                          (let ((_%e193653193862%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193645193840%_))))
                            (let ((_%tl193655193867%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193653193862%_)))
                                  (_%hd193654193865%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193653193862%_))))
                              (_%__kont197009197010%_
                               _%tl193655193867%_
                               _%hd193654193865%_)))
                          (_%__kont197015197016%_
                           _%tl193645193840%_
                           _%hd193644193838%_))
                      (_%__kont197015197016%_
                       _%tl193645193840%_
                       _%hd193644193838%_))
                  (if (equal? _%e193652193859%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193651193856%_))
                          (_%__kont197011197012%_ _%tl193645193840%_)
                          (_%__kont197015197016%_
                           _%tl193645193840%_
                           _%hd193644193838%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193651193856%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193645193840%_))
                              (let ((_%e193679193755%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193645193840%_))))
                                (let ((_%tl193681193760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193679193755%_)))
                                      (_%hd193680193758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193679193755%_))))
                                  (_%__match197114197115%_
                                   _%e193643193835%_
                                   _%hd193644193838%_
                                   _%tl193645193840%_
                                   _%e193646193843%_
                                   _%hd193647193846%_
                                   _%tl193648193848%_
                                   _%e193649193851%_
                                   _%hd193650193854%_
                                   _%tl193651193856%_
                                   _%e193679193755%_
                                   _%hd193680193758%_
                                   _%tl193681193760%_)))
                              (_%__kont197015197016%_
                               _%tl193645193840%_
                               _%hd193644193838%_))
                          (_%__kont197015197016%_
                           _%tl193645193840%_
                           _%hd193644193838%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193651193856%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl193645193840%_))
                                                            (let ((_%e193679193755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193645193840%_))))
                      (let ((_%tl193681193760%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193679193755%_)))
                            (_%hd193680193758%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193679193755%_))))
                        (_%__match197114197115%_
                         _%e193643193835%_
                         _%hd193644193838%_
                         _%tl193645193840%_
                         _%e193646193843%_
                         _%hd193647193846%_
                         _%tl193648193848%_
                         _%e193649193851%_
                         _%hd193650193854%_
                         _%tl193651193856%_
                         _%e193679193755%_
                         _%hd193680193758%_
                         _%tl193681193760%_)))
                    (_%__kont197015197016%_
                     _%tl193645193840%_
                     _%hd193644193838%_))
                (_%__kont197015197016%_
                 _%tl193645193840%_
                 _%hd193644193838%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont197015197016%_
                                             _%tl193645193840%_
                                             _%hd193644193838%_))
                                        (_%__kont197015197016%_
                                         _%tl193645193840%_
                                         _%hd193644193838%_))
                                    (_%__kont197015197016%_
                                     _%tl193645193840%_
                                     _%hd193644193838%_))))
                            (_%__kont197015197016%_
                             _%tl193645193840%_
                             _%hd193644193838%_))))
                    (_%__kont197017197018%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self192698193608%_ _%ctx193610%_ _%stx193611%_ _%args193612%_)
        (let* ((_%self193614%_ _%self192698193608%_)
               (_%self193616%_ _%self193614%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx193610%_ _%stx193611%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self193296%_ _%stx193297%_)
        (let* ((_%__stx197123197124%_ _%stx193297%_)
               (_%g193300193340%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197123197124%_)))))
          (let ((_%__kont197125197126%_
                 (lambda (_%L193446%_ _%L193447%_)
                   (let ((_%$e193474%_
                          (member 'return:
                                  (let ((__tmp197555
                                         (lambda (_%g193466193469%_
                                                  _%g193467193471%_)
                                           (cons _%g193466193469%_
                                                 _%g193467193471%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp197555 '() _%L193447%_))
                                  gx#stx-eq?)))
                     (if _%$e193474%_
                         ((lambda (_%tail193477%_)
                            (let ((_%type193479%_
                                   (let ((__tmp197556
                                          (let ((__tmp197557
                                                 (cadr _%tail193477%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp197557))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx193297%_
                                      __tmp197556))))
                              (gxc#check-return-type!
                               _%stx193297%_
                               _%L193446%_
                               _%type193479%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self193296%_
                                 _%L193446%_))))
                          _%$e193474%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self193296%_ _%L193446%_))))))
                (_%__kont197129197130%_
                 (lambda (_%L193369%_ _%L193370%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self193296%_ _%L193369%_)))))
            (let ((_%__match197160197161%_
                   (lambda (_%e193304193390%_
                            _%hd193305193393%_
                            _%tl193306193395%_
                            _%e193307193398%_
                            _%hd193308193401%_
                            _%tl193309193403%_
                            _%e193310193406%_
                            _%hd193311193409%_
                            _%tl193312193411%_
                            _%__splice197127197128%_
                            _%target193313193414%_
                            _%tl193315193416%_)
                     (letrec ((_%loop193316193419%_
                               (lambda (_%hd193314193422%_
                                        _%signature193320193424%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd193314193422%_))
                                     (let ((_%e193317193427%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd193314193422%_))))
                                       (let ((_%lp-tl193319193432%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e193317193427%_)))
                                             (_%lp-hd193318193430%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e193317193427%_))))
                                         (_%loop193316193419%_
                                          _%lp-tl193319193432%_
                                          (cons _%lp-hd193318193430%_
                                                _%signature193320193424%_))))
                                     (let ((_%signature193321193435%_
                                            (reverse _%signature193320193424%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl193309193403%_))
                                           (let ((_%e193322193438%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl193309193403%_))))
                                             (let ((_%tl193324193443%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e193322193438%_)))
                                                   (_%hd193323193441%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e193322193438%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl193324193443%_))
                                                   (_%__kont197125197126%_
                                                    _%hd193323193441%_
                                                    _%signature193321193435%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g193300193340%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g193300193340%_))))))))
                       (_%loop193316193419%_ _%target193313193414%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197123197124%_))
                  (let ((_%e193304193390%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197123197124%_))))
                    (let ((_%tl193306193395%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193304193390%_)))
                          (_%hd193305193393%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193304193390%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193306193395%_))
                          (let ((_%e193307193398%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193306193395%_))))
                            (let ((_%tl193309193403%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193307193398%_)))
                                  (_%hd193308193401%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193307193398%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193308193401%_))
                                  (let ((_%e193310193406%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193308193401%_))))
                                    (let ((_%tl193312193411%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193310193406%_)))
                                          (_%hd193311193409%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193310193406%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193311193409%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd193311193409%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl193312193411%_))
                                                  (let ((_%__splice197127197128%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl193312193411%_
                                                            '0))))
                                                    (let ((_%tl193315193416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197127197128%_
                                                              '1)))
                                                          (_%target193313193414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197127197128%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193315193416%_))
                                                          (_%__match197160197161%_
                                                           _%e193304193390%_
                                                           _%hd193305193393%_
                                                           _%tl193306193395%_
                                                           _%e193307193398%_
                                                           _%hd193308193401%_
                                                           _%tl193309193403%_
                                                           _%e193310193406%_
                                                           _%hd193311193409%_
                                                           _%tl193312193411%_
                                                           _%__splice197127197128%_
                                                           _%target193313193414%_
                                                           _%tl193315193416%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193309193403%_))
                      (let ((_%e193333193361%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193309193403%_))))
                        (let ((_%tl193335193366%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193333193361%_)))
                              (_%hd193334193364%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193333193361%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193335193366%_))
                              (_%__kont197129197130%_
                               _%hd193334193364%_
                               _%hd193308193401%_)
                              (let ()
                                (declare (not safe))
                                (_%g193300193340%_)))))
                      (let () (declare (not safe)) (_%g193300193340%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193309193403%_))
                                                      (let ((_%e193333193361%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193309193403%_))))
                (let ((_%tl193335193366%_
                       (let () (declare (not safe)) (##cdr _%e193333193361%_)))
                      (_%hd193334193364%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193333193361%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193335193366%_))
                      (_%__kont197129197130%_
                       _%hd193334193364%_
                       _%hd193308193401%_)
                      (let () (declare (not safe)) (_%g193300193340%_)))))
              (let () (declare (not safe)) (_%g193300193340%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193309193403%_))
                                                  (let ((_%e193333193361%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193309193403%_))))
                                                    (let ((_%tl193335193366%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193333193361%_)))
                                                          (_%hd193334193364%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193333193361%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193335193366%_))
                                                          (_%__kont197129197130%_
                                                           _%hd193334193364%_
                                                           _%hd193308193401%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193300193340%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193300193340%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193309193403%_))
                                              (let ((_%e193333193361%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193309193403%_))))
                                                (let ((_%tl193335193366%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193333193361%_)))
                                                      (_%hd193334193364%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193333193361%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193335193366%_))
                                                      (_%__kont197129197130%_
                                                       _%hd193334193364%_
                                                       _%hd193308193401%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193300193340%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193300193340%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193309193403%_))
                                      (let ((_%e193333193361%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193309193403%_))))
                                        (let ((_%tl193335193366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193333193361%_)))
                                              (_%hd193334193364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193333193361%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193335193366%_))
                                              (_%__kont197129197130%_
                                               _%hd193334193364%_
                                               _%hd193308193401%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g193300193340%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193300193340%_))))))
                          (let () (declare (not safe)) (_%g193300193340%_)))))
                  (let () (declare (not safe)) (_%g193300193340%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx193274%_ _%expr193275%_ _%type193276%_)
        (let ((_%$e193278%_ (not _%type193276%_)))
          (if _%$e193278%_
              _%$e193278%_
              (let ((_%$e193281%_
                     (eq? (##structure-ref _%type193276%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e193281%_
                    _%$e193281%_
                    (let ((_%expr-type193285%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr193275%_))))
                      (if (not _%expr-type193285%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx193274%_
                             _%type193276%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type193285%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx193274%_
                                 _%type193276%_
                                 _%expr-type193285%_))
                              (let ((_%$e193289%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type193285%_
                                        'gxc#!abort::t))))
                                (if _%$e193289%_
                                    _%$e193289%_
                                    (let ((_%$e193292%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type193285%_
                                              _%type193276%_))))
                                      (if _%$e193292%_
                                          _%$e193292%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx193274%_
                                             _%type193276%_
                                             _%expr-type193285%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self192700%_ _%stx192701%_)
        (let* ((_%__stx197205197206%_ _%stx192701%_)
               (_%g192706192816%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197205197206%_)))))
          (let ((_%__kont197207197208%_
                 (lambda (_%L193248%_ _%L193249%_ _%L193250%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L193250%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self192700%_ _%L193249%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self192700%_ _%L193248%_)))))
                (_%__kont197209197210%_
                 (lambda (_%L193074%_ _%L193075%_ _%L193076%_ _%L193077%_)
                   (let ((_%$e193109%_
                          (let ((__tmp197558
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L193077%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp197558))))
                     (if _%$e193109%_
                         ((lambda (_%pred-type193112%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type193112%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type193112%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test193117%_
                                        (let ((__tmp197559
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L193077%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L193076%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp197559
                                           _%stx192701%_
                                           _%self192700%_)))
                                       (_%K193121%_
                                        (let ((__tmp197560
                                               (lambda ()
                                                 (let ((__tmp197563
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self192700%_
                                                             _%L193075%_))))
                                                       (__tmp197561
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L193076%_))
                            (let ((__tmp197562
                                   (##structure-ref
                                    _%pred-type193112%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx192701%_
                               __tmp197562)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp197563
                                                    gxc#current-compile-path-type
                                                    __tmp197561)))))
                                          (declare (not safe))
                                          (__make-promise __tmp197560)))
                                       (_%E193124%_
                                        (let ((__tmp197564
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self192700%_
                                                    _%L193074%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp197564)))
                                       (_%__stx197183197184%_ _%test193117%_)
                                       (_%g193128193142%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx197183197184%_)))))
                                  (let ((_%__kont197185197186%_
                                         (lambda (_%L193170%_ _%L193171%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L193170%_))
                                               (force _%K193121%_)
                                               (force _%E193124%_))))
                                        (_%__kont197187197188%_
                                         (lambda ()
                                           (let ((__tmp197565
                                                  (cons '%#if
                                                        (cons _%test193117%_
                                                              (cons (force _%K193121%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E193124%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197565
                                              _%stx192701%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx197183197184%_))
                                        (let ((_%e193132193154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx197183197184%_))))
                                          (let ((_%tl193134193159%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193132193154%_)))
                                                (_%hd193133193157%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193132193154%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193134193159%_))
                                                (let ((_%e193135193162%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193134193159%_))))
                                                  (let ((_%tl193137193167%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193135193162%_)))
                                                        (_%hd193136193165%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193135193162%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193137193167%_))
                                                        (_%__kont197185197186%_
                                                         _%hd193136193165%_
                                                         _%hd193133193157%_)
                                                        (_%__kont197187197188%_))))
                                                (_%__kont197187197188%_))))
                                        (_%__kont197187197188%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self192700%_
                                   _%stx192701%_))))
                          _%$e193109%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self192700%_
                            _%stx192701%_))))))
                (_%__kont197211197212%_
                 (lambda (_%L192950%_ _%L192951%_ _%L192952%_ _%L192953%_)
                   (gxc#optimize-if%
                    _%self192700%_
                    (let ((__tmp197566
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L192952%_
                                       (cons _%L192950%_
                                             (cons _%L192951%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp197566 _%stx192701%_)))))
                (_%__kont197213197214%_
                 (lambda (_%L192853%_ _%L192854%_ _%L192855%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self192700%_ _%stx192701%_)))))
            (let ((_%__match197412197413%_
                   (lambda (_%e192770192878%_
                            _%hd192771192881%_
                            _%tl192772192883%_
                            _%e192773192886%_
                            _%hd192774192889%_
                            _%tl192775192891%_
                            _%e192776192894%_
                            _%hd192777192897%_
                            _%tl192778192899%_
                            _%e192779192902%_
                            _%hd192780192905%_
                            _%tl192781192907%_
                            _%e192782192910%_
                            _%hd192783192913%_
                            _%tl192784192915%_
                            _%e192785192918%_
                            _%hd192786192921%_
                            _%tl192787192923%_
                            _%e192788192926%_
                            _%hd192789192929%_
                            _%tl192790192931%_
                            _%e192791192934%_
                            _%hd192792192937%_
                            _%tl192793192939%_
                            _%e192794192942%_
                            _%hd192795192945%_
                            _%tl192796192947%_)
                     (let ((_%L192950%_ _%hd192795192945%_)
                           (_%L192951%_ _%hd192792192937%_)
                           (_%L192952%_ _%hd192789192929%_)
                           (_%L192953%_ _%hd192786192921%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L192953%_ 'not))
                           (_%__kont197211197212%_
                            _%L192950%_
                            _%L192951%_
                            _%L192952%_
                            _%L192953%_)
                           (_%__kont197213197214%_
                            _%hd192795192945%_
                            _%hd192792192937%_
                            _%hd192774192889%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197205197206%_))
                  (let ((_%e192711193200%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197205197206%_))))
                    (let ((_%tl192713193205%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192711193200%_)))
                          (_%hd192712193203%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192711193200%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192713193205%_))
                          (let ((_%e192714193208%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192713193205%_))))
                            (let ((_%tl192716193213%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192714193208%_)))
                                  (_%hd192715193211%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192714193208%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd192715193211%_))
                                  (let ((_%e192717193216%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd192715193211%_))))
                                    (let ((_%tl192719193221%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192717193216%_)))
                                          (_%hd192718193219%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192717193216%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd192718193219%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd192718193219%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192719193221%_))
                                                  (let ((_%e192720193224%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192719193221%_))))
                                                    (let ((_%tl192722193229%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192720193224%_)))
                                                          (_%hd192721193227%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192720193224%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192722193229%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl192716193213%_))
                      (let ((_%e192723193232%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192716193213%_))))
                        (let ((_%tl192725193237%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192723193232%_)))
                              (_%hd192724193235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192723193232%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192725193237%_))
                              (let ((_%e192726193240%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192725193237%_))))
                                (let ((_%tl192728193245%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192726193240%_)))
                                      (_%hd192727193243%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192726193240%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192728193245%_))
                                      (_%__kont197207197208%_
                                       _%hd192727193243%_
                                       _%hd192724193235%_
                                       _%hd192721193227%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g192706192816%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g192706192816%_)))))
                      (let () (declare (not safe)) (_%g192706192816%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192716193213%_))
                      (let ((_%e192806192837%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192716193213%_))))
                        (let ((_%tl192808192842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192806192837%_)))
                              (_%hd192807192840%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192806192837%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192808192842%_))
                              (let ((_%e192809192845%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192808192842%_))))
                                (let ((_%tl192811192850%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192809192845%_)))
                                      (_%hd192810192848%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192809192845%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192811192850%_))
                                      (_%__kont197213197214%_
                                       _%hd192810192848%_
                                       _%hd192807192840%_
                                       _%hd192715193211%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g192706192816%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g192706192816%_)))))
                      (let () (declare (not safe)) (_%g192706192816%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192716193213%_))
                                                      (let ((_%e192806192837%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192716193213%_))))
                (let ((_%tl192808192842%_
                       (let () (declare (not safe)) (##cdr _%e192806192837%_)))
                      (_%hd192807192840%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192806192837%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192808192842%_))
                      (let ((_%e192809192845%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192808192842%_))))
                        (let ((_%tl192811192850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192809192845%_)))
                              (_%hd192810192848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192809192845%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192811192850%_))
                              (_%__kont197213197214%_
                               _%hd192810192848%_
                               _%hd192807192840%_
                               _%hd192715193211%_)
                              (let ()
                                (declare (not safe))
                                (_%g192706192816%_)))))
                      (let () (declare (not safe)) (_%g192706192816%_)))))
              (let () (declare (not safe)) (_%g192706192816%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd192718193219%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192719193221%_))
                                                      (let ((_%e192742193010%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192719193221%_))))
                (let ((_%tl192744193015%_
                       (let () (declare (not safe)) (##cdr _%e192742193010%_)))
                      (_%hd192743193013%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192742193010%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd192743193013%_))
                      (let ((_%e192745193018%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd192743193013%_))))
                        (let ((_%tl192747193023%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192745193018%_)))
                              (_%hd192746193021%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192745193018%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd192746193021%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd192746193021%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192747193023%_))
                                      (let ((_%e192748193026%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192747193023%_))))
                                        (let ((_%tl192750193031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192748193026%_)))
                                              (_%hd192749193029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192748193026%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192750193031%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192744193015%_))
                                                  (let ((_%e192751193034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192744193015%_))))
                                                    (let ((_%tl192753193039%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192751193034%_)))
                                                          (_%hd192752193037%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192751193034%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd192752193037%_))
                                                          (let ((_%e192754193042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd192752193037%_))))
                    (let ((_%tl192756193047%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192754193042%_)))
                          (_%hd192755193045%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192754193042%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd192755193045%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd192755193045%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192756193047%_))
                                  (let ((_%e192757193050%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192756193047%_))))
                                    (let ((_%tl192759193055%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192757193050%_)))
                                          (_%hd192758193053%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192757193050%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192759193055%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192753193039%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192716193213%_))
                                                  (let ((_%e192760193058%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192716193213%_))))
                                                    (let ((_%tl192762193063%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192760193058%_)))
                                                          (_%hd192761193061%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192760193058%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192762193063%_))
                                                          (let ((_%e192763193066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192762193063%_))))
                    (let ((_%tl192765193071%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192763193066%_)))
                          (_%hd192764193069%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192763193066%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192765193071%_))
                          (_%__kont197209197210%_
                           _%hd192764193069%_
                           _%hd192761193061%_
                           _%hd192758193053%_
                           _%hd192749193029%_)
                          (let () (declare (not safe)) (_%g192706192816%_)))))
                  (let () (declare (not safe)) (_%g192706192816%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192706192816%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192716193213%_))
                                                  (let ((_%e192806192837%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192716193213%_))))
                                                    (let ((_%tl192808192842%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192806192837%_)))
                                                          (_%hd192807192840%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192806192837%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192808192842%_))
                                                          (let ((_%e192809192845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192808192842%_))))
                    (let ((_%tl192811192850%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192809192845%_)))
                          (_%hd192810192848%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192809192845%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192811192850%_))
                          (_%__kont197213197214%_
                           _%hd192810192848%_
                           _%hd192807192840%_
                           _%hd192715193211%_)
                          (let () (declare (not safe)) (_%g192706192816%_)))))
                  (let () (declare (not safe)) (_%g192706192816%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192706192816%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192753193039%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192716193213%_))
                                                  (let ((_%e192791192934%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192716193213%_))))
                                                    (let ((_%tl192793192939%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192791192934%_)))
                                                          (_%hd192792192937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192791192934%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192793192939%_))
                                                          (let ((_%e192794192942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192793192939%_))))
                    (let ((_%tl192796192947%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192794192942%_)))
                          (_%hd192795192945%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192794192942%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192796192947%_))
                          (_%__match197412197413%_
                           _%e192711193200%_
                           _%hd192712193203%_
                           _%tl192713193205%_
                           _%e192714193208%_
                           _%hd192715193211%_
                           _%tl192716193213%_
                           _%e192717193216%_
                           _%hd192718193219%_
                           _%tl192719193221%_
                           _%e192742193010%_
                           _%hd192743193013%_
                           _%tl192744193015%_
                           _%e192745193018%_
                           _%hd192746193021%_
                           _%tl192747193023%_
                           _%e192748193026%_
                           _%hd192749193029%_
                           _%tl192750193031%_
                           _%e192751193034%_
                           _%hd192752193037%_
                           _%tl192753193039%_
                           _%e192791192934%_
                           _%hd192792192937%_
                           _%tl192793192939%_
                           _%e192794192942%_
                           _%hd192795192945%_
                           _%tl192796192947%_)
                          (let () (declare (not safe)) (_%g192706192816%_)))))
                  (let () (declare (not safe)) (_%g192706192816%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192706192816%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192716193213%_))
                                                  (let ((_%e192806192837%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192716193213%_))))
                                                    (let ((_%tl192808192842%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192806192837%_)))
                                                          (_%hd192807192840%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192806192837%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192808192842%_))
                                                          (let ((_%e192809192845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192808192842%_))))
                    (let ((_%tl192811192850%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192809192845%_)))
                          (_%hd192810192848%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192809192845%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192811192850%_))
                          (_%__kont197213197214%_
                           _%hd192810192848%_
                           _%hd192807192840%_
                           _%hd192715193211%_)
                          (let () (declare (not safe)) (_%g192706192816%_)))))
                  (let () (declare (not safe)) (_%g192706192816%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192706192816%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192753193039%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192716193213%_))
                                          (let ((_%e192791192934%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192716193213%_))))
                                            (let ((_%tl192793192939%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192791192934%_)))
                                                  (_%hd192792192937%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192791192934%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192793192939%_))
                                                  (let ((_%e192794192942%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192793192939%_))))
                                                    (let ((_%tl192796192947%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192794192942%_)))
                                                          (_%hd192795192945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192794192942%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192796192947%_))
                                                          (_%__match197412197413%_
                                                           _%e192711193200%_
                                                           _%hd192712193203%_
                                                           _%tl192713193205%_
                                                           _%e192714193208%_
                                                           _%hd192715193211%_
                                                           _%tl192716193213%_
                                                           _%e192717193216%_
                                                           _%hd192718193219%_
                                                           _%tl192719193221%_
                                                           _%e192742193010%_
                                                           _%hd192743193013%_
                                                           _%tl192744193015%_
                                                           _%e192745193018%_
                                                           _%hd192746193021%_
                                                           _%tl192747193023%_
                                                           _%e192748193026%_
                                                           _%hd192749193029%_
                                                           _%tl192750193031%_
                                                           _%e192751193034%_
                                                           _%hd192752193037%_
                                                           _%tl192753193039%_
                                                           _%e192791192934%_
                                                           _%hd192792192937%_
                                                           _%tl192793192939%_
                                                           _%e192794192942%_
                                                           _%hd192795192945%_
                                                           _%tl192796192947%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g192706192816%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192706192816%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192706192816%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192716193213%_))
                                          (let ((_%e192806192837%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192716193213%_))))
                                            (let ((_%tl192808192842%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192806192837%_)))
                                                  (_%hd192807192840%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192806192837%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192808192842%_))
                                                  (let ((_%e192809192845%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192808192842%_))))
                                                    (let ((_%tl192811192850%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192809192845%_)))
                                                          (_%hd192810192848%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192809192845%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192811192850%_))
                                                          (_%__kont197213197214%_
                                                           _%hd192810192848%_
                                                           _%hd192807192840%_
                                                           _%hd192715193211%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g192706192816%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192706192816%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192706192816%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192753193039%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192716193213%_))
                                      (let ((_%e192791192934%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192716193213%_))))
                                        (let ((_%tl192793192939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192791192934%_)))
                                              (_%hd192792192937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192791192934%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192793192939%_))
                                              (let ((_%e192794192942%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192793192939%_))))
                                                (let ((_%tl192796192947%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192794192942%_)))
                                                      (_%hd192795192945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192794192942%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192796192947%_))
                                                      (_%__match197412197413%_
                                                       _%e192711193200%_
                                                       _%hd192712193203%_
                                                       _%tl192713193205%_
                                                       _%e192714193208%_
                                                       _%hd192715193211%_
                                                       _%tl192716193213%_
                                                       _%e192717193216%_
                                                       _%hd192718193219%_
                                                       _%tl192719193221%_
                                                       _%e192742193010%_
                                                       _%hd192743193013%_
                                                       _%tl192744193015%_
                                                       _%e192745193018%_
                                                       _%hd192746193021%_
                                                       _%tl192747193023%_
                                                       _%e192748193026%_
                                                       _%hd192749193029%_
                                                       _%tl192750193031%_
                                                       _%e192751193034%_
                                                       _%hd192752193037%_
                                                       _%tl192753193039%_
                                                       _%e192791192934%_
                                                       _%hd192792192937%_
                                                       _%tl192793192939%_
                                                       _%e192794192942%_
                                                       _%hd192795192945%_
                                                       _%tl192796192947%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192706192816%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192706192816%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192706192816%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192716193213%_))
                                      (let ((_%e192806192837%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192716193213%_))))
                                        (let ((_%tl192808192842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192806192837%_)))
                                              (_%hd192807192840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192806192837%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192808192842%_))
                                              (let ((_%e192809192845%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192808192842%_))))
                                                (let ((_%tl192811192850%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192809192845%_)))
                                                      (_%hd192810192848%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192809192845%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192811192850%_))
                                                      (_%__kont197213197214%_
                                                       _%hd192810192848%_
                                                       _%hd192807192840%_
                                                       _%hd192715193211%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192706192816%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192706192816%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192706192816%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192753193039%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192716193213%_))
                                  (let ((_%e192791192934%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192716193213%_))))
                                    (let ((_%tl192793192939%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192791192934%_)))
                                          (_%hd192792192937%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192791192934%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192793192939%_))
                                          (let ((_%e192794192942%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192793192939%_))))
                                            (let ((_%tl192796192947%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192794192942%_)))
                                                  (_%hd192795192945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192794192942%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192796192947%_))
                                                  (_%__match197412197413%_
                                                   _%e192711193200%_
                                                   _%hd192712193203%_
                                                   _%tl192713193205%_
                                                   _%e192714193208%_
                                                   _%hd192715193211%_
                                                   _%tl192716193213%_
                                                   _%e192717193216%_
                                                   _%hd192718193219%_
                                                   _%tl192719193221%_
                                                   _%e192742193010%_
                                                   _%hd192743193013%_
                                                   _%tl192744193015%_
                                                   _%e192745193018%_
                                                   _%hd192746193021%_
                                                   _%tl192747193023%_
                                                   _%e192748193026%_
                                                   _%hd192749193029%_
                                                   _%tl192750193031%_
                                                   _%e192751193034%_
                                                   _%hd192752193037%_
                                                   _%tl192753193039%_
                                                   _%e192791192934%_
                                                   _%hd192792192937%_
                                                   _%tl192793192939%_
                                                   _%e192794192942%_
                                                   _%hd192795192945%_
                                                   _%tl192796192947%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192706192816%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192706192816%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192706192816%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192716193213%_))
                                  (let ((_%e192806192837%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192716193213%_))))
                                    (let ((_%tl192808192842%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192806192837%_)))
                                          (_%hd192807192840%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192806192837%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192808192842%_))
                                          (let ((_%e192809192845%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192808192842%_))))
                                            (let ((_%tl192811192850%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192809192845%_)))
                                                  (_%hd192810192848%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192809192845%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192811192850%_))
                                                  (_%__kont197213197214%_
                                                   _%hd192810192848%_
                                                   _%hd192807192840%_
                                                   _%hd192715193211%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192706192816%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192706192816%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192706192816%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192753193039%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192716193213%_))
                          (let ((_%e192791192934%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192716193213%_))))
                            (let ((_%tl192793192939%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192791192934%_)))
                                  (_%hd192792192937%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192791192934%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192793192939%_))
                                  (let ((_%e192794192942%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192793192939%_))))
                                    (let ((_%tl192796192947%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192794192942%_)))
                                          (_%hd192795192945%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192794192942%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192796192947%_))
                                          (_%__match197412197413%_
                                           _%e192711193200%_
                                           _%hd192712193203%_
                                           _%tl192713193205%_
                                           _%e192714193208%_
                                           _%hd192715193211%_
                                           _%tl192716193213%_
                                           _%e192717193216%_
                                           _%hd192718193219%_
                                           _%tl192719193221%_
                                           _%e192742193010%_
                                           _%hd192743193013%_
                                           _%tl192744193015%_
                                           _%e192745193018%_
                                           _%hd192746193021%_
                                           _%tl192747193023%_
                                           _%e192748193026%_
                                           _%hd192749193029%_
                                           _%tl192750193031%_
                                           _%e192751193034%_
                                           _%hd192752193037%_
                                           _%tl192753193039%_
                                           _%e192791192934%_
                                           _%hd192792192937%_
                                           _%tl192793192939%_
                                           _%e192794192942%_
                                           _%hd192795192945%_
                                           _%tl192796192947%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g192706192816%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192706192816%_)))))
                          (let () (declare (not safe)) (_%g192706192816%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192716193213%_))
                          (let ((_%e192806192837%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192716193213%_))))
                            (let ((_%tl192808192842%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192806192837%_)))
                                  (_%hd192807192840%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192806192837%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192808192842%_))
                                  (let ((_%e192809192845%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192808192842%_))))
                                    (let ((_%tl192811192850%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192809192845%_)))
                                          (_%hd192810192848%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192809192845%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192811192850%_))
                                          (_%__kont197213197214%_
                                           _%hd192810192848%_
                                           _%hd192807192840%_
                                           _%hd192715193211%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g192706192816%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192706192816%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g192706192816%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192716193213%_))
                                                      (let ((_%e192806192837%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192716193213%_))))
                (let ((_%tl192808192842%_
                       (let () (declare (not safe)) (##cdr _%e192806192837%_)))
                      (_%hd192807192840%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192806192837%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192808192842%_))
                      (let ((_%e192809192845%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192808192842%_))))
                        (let ((_%tl192811192850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192809192845%_)))
                              (_%hd192810192848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192809192845%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192811192850%_))
                              (_%__kont197213197214%_
                               _%hd192810192848%_
                               _%hd192807192840%_
                               _%hd192715193211%_)
                              (let ()
                                (declare (not safe))
                                (_%g192706192816%_)))))
                      (let () (declare (not safe)) (_%g192706192816%_)))))
              (let () (declare (not safe)) (_%g192706192816%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192716193213%_))
                                                  (let ((_%e192806192837%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192716193213%_))))
                                                    (let ((_%tl192808192842%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192806192837%_)))
                                                          (_%hd192807192840%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192806192837%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192808192842%_))
                                                          (let ((_%e192809192845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192808192842%_))))
                    (let ((_%tl192811192850%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192809192845%_)))
                          (_%hd192810192848%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192809192845%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192811192850%_))
                          (_%__kont197213197214%_
                           _%hd192810192848%_
                           _%hd192807192840%_
                           _%hd192715193211%_)
                          (let () (declare (not safe)) (_%g192706192816%_)))))
                  (let () (declare (not safe)) (_%g192706192816%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192706192816%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192716193213%_))
                                          (let ((_%e192806192837%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192716193213%_))))
                                            (let ((_%tl192808192842%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192806192837%_)))
                                                  (_%hd192807192840%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192806192837%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192808192842%_))
                                                  (let ((_%e192809192845%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192808192842%_))))
                                                    (let ((_%tl192811192850%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192809192845%_)))
                                                          (_%hd192810192848%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192809192845%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192811192850%_))
                                                          (_%__kont197213197214%_
                                                           _%hd192810192848%_
                                                           _%hd192807192840%_
                                                           _%hd192715193211%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g192706192816%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192706192816%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192706192816%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192716193213%_))
                                      (let ((_%e192806192837%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192716193213%_))))
                                        (let ((_%tl192808192842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192806192837%_)))
                                              (_%hd192807192840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192806192837%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192808192842%_))
                                              (let ((_%e192809192845%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192808192842%_))))
                                                (let ((_%tl192811192850%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192809192845%_)))
                                                      (_%hd192810192848%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192809192845%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192811192850%_))
                                                      (_%__kont197213197214%_
                                                       _%hd192810192848%_
                                                       _%hd192807192840%_
                                                       _%hd192715193211%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192706192816%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192706192816%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192706192816%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192716193213%_))
                                  (let ((_%e192806192837%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192716193213%_))))
                                    (let ((_%tl192808192842%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192806192837%_)))
                                          (_%hd192807192840%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192806192837%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192808192842%_))
                                          (let ((_%e192809192845%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192808192842%_))))
                                            (let ((_%tl192811192850%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192809192845%_)))
                                                  (_%hd192810192848%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192809192845%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192811192850%_))
                                                  (_%__kont197213197214%_
                                                   _%hd192810192848%_
                                                   _%hd192807192840%_
                                                   _%hd192715193211%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192706192816%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192706192816%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192706192816%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192716193213%_))
                          (let ((_%e192806192837%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192716193213%_))))
                            (let ((_%tl192808192842%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192806192837%_)))
                                  (_%hd192807192840%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192806192837%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192808192842%_))
                                  (let ((_%e192809192845%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192808192842%_))))
                                    (let ((_%tl192811192850%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192809192845%_)))
                                          (_%hd192810192848%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192809192845%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192811192850%_))
                                          (_%__kont197213197214%_
                                           _%hd192810192848%_
                                           _%hd192807192840%_
                                           _%hd192715193211%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g192706192816%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192706192816%_)))))
                          (let () (declare (not safe)) (_%g192706192816%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl192716193213%_))
                  (let ((_%e192806192837%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192716193213%_))))
                    (let ((_%tl192808192842%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192806192837%_)))
                          (_%hd192807192840%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192806192837%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192808192842%_))
                          (let ((_%e192809192845%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192808192842%_))))
                            (let ((_%tl192811192850%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192809192845%_)))
                                  (_%hd192810192848%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192809192845%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192811192850%_))
                                  (_%__kont197213197214%_
                                   _%hd192810192848%_
                                   _%hd192807192840%_
                                   _%hd192715193211%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g192706192816%_)))))
                          (let () (declare (not safe)) (_%g192706192816%_)))))
                  (let () (declare (not safe)) (_%g192706192816%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192716193213%_))
                                                      (let ((_%e192806192837%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192716193213%_))))
                (let ((_%tl192808192842%_
                       (let () (declare (not safe)) (##cdr _%e192806192837%_)))
                      (_%hd192807192840%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192806192837%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192808192842%_))
                      (let ((_%e192809192845%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192808192842%_))))
                        (let ((_%tl192811192850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192809192845%_)))
                              (_%hd192810192848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192809192845%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192811192850%_))
                              (_%__kont197213197214%_
                               _%hd192810192848%_
                               _%hd192807192840%_
                               _%hd192715193211%_)
                              (let ()
                                (declare (not safe))
                                (_%g192706192816%_)))))
                      (let () (declare (not safe)) (_%g192706192816%_)))))
              (let () (declare (not safe)) (_%g192706192816%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192716193213%_))
                                              (let ((_%e192806192837%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192716193213%_))))
                                                (let ((_%tl192808192842%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192806192837%_)))
                                                      (_%hd192807192840%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192806192837%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192808192842%_))
                                                      (let ((_%e192809192845%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192808192842%_))))
                (let ((_%tl192811192850%_
                       (let () (declare (not safe)) (##cdr _%e192809192845%_)))
                      (_%hd192810192848%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192809192845%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192811192850%_))
                      (_%__kont197213197214%_
                       _%hd192810192848%_
                       _%hd192807192840%_
                       _%hd192715193211%_)
                      (let () (declare (not safe)) (_%g192706192816%_)))))
              (let () (declare (not safe)) (_%g192706192816%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g192706192816%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192716193213%_))
                                      (let ((_%e192806192837%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192716193213%_))))
                                        (let ((_%tl192808192842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192806192837%_)))
                                              (_%hd192807192840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192806192837%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192808192842%_))
                                              (let ((_%e192809192845%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192808192842%_))))
                                                (let ((_%tl192811192850%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192809192845%_)))
                                                      (_%hd192810192848%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192809192845%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192811192850%_))
                                                      (_%__kont197213197214%_
                                                       _%hd192810192848%_
                                                       _%hd192807192840%_
                                                       _%hd192715193211%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192706192816%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192706192816%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192706192816%_))))))
                          (let () (declare (not safe)) (_%g192706192816%_)))))
                  (let () (declare (not safe)) (_%g192706192816%_))))))))))
